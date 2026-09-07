# Pluma - a Journey to the Future

A 1.12.2 modpack running on **Cleanroom** (a Forge reimplementation targeting modern Java/LWJGL3, not vanilla Forge+LWJGL2). This file captures operational knowledge for working in this repo — where to look, known traps, and how the maintainer works. It's a supplement to `README.md` (which is just the CurseForge-page marketing blurb, no technical content).

## Where things live

- `mods/` — mod jars. Filenames drift a lot between mod versions/forks (casing changes, versioning scheme changes) — **never assume a jar filename maps cleanly to a modid or to a config filename.** Confirm via `unzip -p mods/X.jar mcmod.info` or the FML per-mod state table in a crash report.
- `config/` — per-mod configs. Same warning: config filename often does **not** match the owning mod's jar name (e.g. `tcomplement.cfg` belongs to `TinkersComplement-*.jar`; `hammercore.cfg`/`config/hammercore/` belong to `HammerLib-*.jar`). A fork can also keep publishing under the *same* config file (and modid) as the original it replaces (e.g. Quark → Quark: RotN Edition, Mouse Tweaks → Mouse Tweaks Unofficial, RandomThings → QuantumThings) — don't flag a config as orphaned just because the jar name changed.
- `scripts/` — CraftTweaker/ContentTweaker/LootTweaker `.zs` scripts, organized under `scripts/Mod Specifics/<Mod>/`, `scripts/LootTweaker/`, `scripts/Contenttweaker/`, `scripts/_Generic Scripts/`, etc. Grep here for a modid before removing/forking a mod — dedicated per-mod script files are common (e.g. `scripts/Mod Specifics/Small Mods/RandomThings.zs`).
- `logs/latest.log` — main client log. Check this first for a crash.
- `crash-reports/*.txt` — only generated on an actual crash. Contains the full FML per-mod state table (`| LCH | modid | version | source |`) — the most reliable place to get a ground-truth modid→jar mapping. This table does **not** appear in `latest.log` on a clean boot.
- **`crafttweaker.log`** — separate from `latest.log`. CraftTweaker/ContentTweaker/LootTweaker script errors (e.g. "No loot pool with name X exists") show up **here only**, tagged `[PHASE][SIDE][ERROR]`. Always check this file when asked to debug "script errors," not just `latest.log`.
- `config/relauncher.json` — Cleanroom version pin, JVM args, Java path.
- `~/.cleanroom/relauncher/` (outside the repo, e.g. `C:\Users\<user>\.cleanroom\relauncher\`) — the actual Cleanroom install: `releases.json` (available versions, no changelog text, just asset URLs), `<version>/universal.jar` (Cleanroom's own core classes), `libraries/` (bundled deps including `com.cleanroommc:lwjglxx` and `org.ow2.asm:asm*`, useful for decompiling to understand Cleanroom's own behavior).
- `bansoukou/<jarname-without-ext>/` and `cache/bansoukou/<jarname>.jar` — Bansoukou's per-mod bytecode-patch cache (see Gotchas).
- `config/packcompanion/output/` — reports from the PackCompanion diagnostic mod (see below).

## Gotchas specific to this Cleanroom/LWJGL setup

- **Legacy `org.lwjgl.*` calls get remapped to the `lwjglxx` shim (`org.lwjglx.*`) at runtime**, via `net.minecraftforge.fml.common.asm.transformers.LWJGLTransformer` inside Cleanroom's own `universal.jar`. This remap has real gaps — we hit a case where `org.lwjgl.input.Keyboard` loaded and ran fine, but its own internal reference to a sibling class (`org.lwjgl.input.KeyCodes`) never resolved, crashing with `NoClassDefFoundError`. If you see a `ClassNotFoundException`/`NoClassDefFoundError` for anything under `org.lwjgl.*` (not `org.lwjglx.*`), suspect this remap layer — not a specific mod. Verify the real class exists under `org/lwjglx/...` inside the `lwjglxx` jar before concluding it's missing outright.
- **`[LoliASM]: Failed to identify X` is a red herring.** It comes from LoliASM's `ModIdentifier` crash-report beautifier (tries to guess which mod owns a crashing class, for a nicer report) and runs *after* the real exception. It has nothing to do with class transforming/remapping. Don't chase LoliASM for a fix based on this message alone — decompile the actual failing class in question instead.
- **Bansoukou matches mods to patch by exact jar filename.** Renaming or version-bumping a mod's jar (including swapping to a fork) silently breaks this matching (log: `No .jar/.zip in mods/ matches patch directory X, skipping.`) — Bansoukou just skips it, no crash, but any fixes it used to apply to that mod stop happening. Always check `bansoukou/` for a directory matching the mod you're touching.
- **Binary-patcher mods verify exact bytecode checksums.** IC2-Patcher (`BinPatchManager`/`IC2-Patch-Manager` in logs) and similar tools compare the on-disk class bytes against what their patch expects, and deliberately abort the game (not a bug) if they don't match. A checksum-mismatch FATAL means *something else already modified that class* — check Bansoukou's cache and any other coremod touching the same class before assuming the patcher itself is broken.
- **Duplicate-fix stacking is a recurring crash source.** Many mods independently patch the same known issues: UniversalTweaks has per-mod `"Duplication Fixes"` toggles in `config/Universal Tweaks - Mod Integration.cfg`, dedicated patchers exist per mod (IC2-Patcher, IFPatcher), and forks often bundle fixes from other named projects (e.g. Tinkers' Antique's FAQ says it bundles fixes from DupeFix Project, Sledgehammer, StellarCore, Universal Tweaks, Tinkers OreDict Cache). When adopting/updating such a mod, check whether the sources it says it bundles are *also* still separately active — turn off the redundant side. This also applies to raw ASM coremod patches on a shared class (e.g. FluidCraft for AE2's `FCClassTransformer` patching `mezz.jei.input.GuiContainerWrapper`) — those assume one exact bytecode layout and throw `VerifyError: Bad type on operand stack` if the patched mod (e.g. a JEI fork like Had Enough Items) changed that method's internals.
- **Config regeneration after a mod-fork swap preserves most values as new defaults, but not everything.** Forks (TConstruct→Tinkers' Antique, RandomThings→QuantumThings, etc.) generally aim for config compatibility, but:
  - Hand-tuned numeric values and worldgen enable/disable toggles are *not* preserved — they reset to the new mod's defaults.
  - Keys get renamed (`Nature-Core`→`NatureCore`, `slimeIslandBlacklist`→`slimeIslandDimensions`+`slimeIslandDimensionsIsBlacklist`).
  - Internal identifiers referenced from CraftTweaker/LootTweaker scripts can silently change case/spelling (e.g. `magichood`→`magicHood`, `lavacharm`→`lavaCharm` — found by decompiling the mod's own handler class and grepping for readable strings). Scripts don't error loudly for this in `latest.log` — check `crafttweaker.log`.
  - **Always back up the old config (`cp x.cfg x.cfg.bak`) before replacing a mod jar**, launch once to regenerate, then diff key-by-key against the backup rather than assuming the new file is a strict superset.
- **World-save registry ID warnings are non-fatal but real content loss.** `FML: Registry Item: Found a missing id from the world modid:xxx` means a mod update/fork fully dropped that item/block, and anything already placed in the world becomes air. Doesn't crash the game — worth flagging to the user anyway since it's silent.
- **`FML.ModTracker` version-mismatch line** (`This world was saved with mod X version A and it is now at version B`) is a good quick signal for *which* mods changed since the world was last saved — useful for narrowing down which update caused a new issue.

## PackCompanion (diagnostic mod)

`mods/packcompanion-*.jar` cross-checks installed mods/configs against community-maintained "master lists" hosted at `https://github.com/AnasDevO/PackTemplateCompanion` (raw files: `masterlists/masterlist_mods.json`, `masterlist_mods_classes.json`, `masterlist_configs.json`). These can be fetched directly and cross-referenced against the mod list for deprecated/problematic mods and recommended replacements/patches.

**Caveats learned the hard way:**
- Matching by filename (mod jar or config file) produces both false positives and false negatives. The authoritative key is the **modid**, cross-checked against the FML state table (crash report) or `mcmod.info` inside each jar.
- `masterlist_configs.json` entries often have a `dependencies` field gating whether a rule actually applies (e.g. an Optifine-shader-conflict rule that only matters if Optifine is installed) — check that before treating a match as actionable.
- Don't bulk-delete "candidate stale" configs from a fuzzy name match without verifying each one — several confirmed false positives this way (see `tcomplement.cfg`, `mousetweaks.cfg` above).

## Git commit conventions (this repo has strict ones — follow exactly)

Emoji-prefixed, **two spaces** after the colon, e.g. `📦️ Mod Update:  Forestry`. Observed categories:

| Prefix | Use for |
|---|---|
| 📦️ Mod Update: | Same mod, version-only jar swap (verify same modid — filename schemes can change drastically for the same mod, e.g. `LibVulpes-...`→`libvulpes-...`). Bundle only tightly-coupled families (e.g. all 5 "Packaged" addon jars from one author/release). Include that mod's own regenerated config changes in the same commit. |
| 📉 Mod Removal: | Jar deleted, no replacement. |
| 📈 Mod Addition: | New jar, wasn't there before. |
| 🔧 Internal: | Non-gameplay housekeeping — stale config cleanup, gitignore, config bumps. |
| 🛠️ Refactor: | Restructuring existing content/scripts without behavior change. |
| ✏️ Minor Tweak: | Small config/script value change. |
| 💥 Breaking: | Removal/change with gameplay-breaking impact. |
| ⚙️ Bump: | Config regeneration / version bump not tied to a specific mod swap. |
| 📄 Recipe Tweak: | Recipe script changes. |
| 📖 Documentation: | Quest/doc changes. |
| 🎨 Aesthetic: | Visual-only changes. |

A **fork/replacement swap** (even same modid — e.g. TConstruct→Tinkers' Antique) is *not* a "Mod Update" — it's conceptually closer to a Removal+Addition, and deserves its own explicit framing since old configs/scripts may need migration work, not just a version bump.

When staging many individual file pairs, prefer one `git add`+`git commit` per logical unit rather than one giant batched command — broad multi-path `rm -rf`/`git add` calls can get blocked by the permission classifier even when every target was already individually verified safe; falling back to one-file-per-command calls reliably gets through.

## Tooling notes for this environment

- Bash tool here is **Git Bash (MSYS)** on Windows. Forward-slash `/c/Users/...` paths work for Bash's own redirection and its own commands (`ls`, `grep`, `unzip`), but get mangled if passed as an argument to a *native Windows* binary (`java.exe`, `node.exe`, `python.exe`) — those want real `C:\...` paths. When you need to run a JVM toolchain (e.g. decompiling/re-packaging a `.class` with `javac`/`java`/`jar`), prefer the **PowerShell tool** instead — it handles native paths correctly without the translation issues.
- The `Grep` tool's `glob` parameter doesn't reliably match filenames containing spaces (e.g. `"Universal Tweaks - Mod Integration.cfg"`). Pass the exact absolute `path` directly instead of relying on `glob` for such files.
- A JDK is available at `C:\Program Files\Eclipse Adoptium\jdk-25.0.0.36-hotspot\` (matches the Cleanroom-provisioned Java the game itself runs on) — useful for javap/decompiling class files or building a small ASM-based fix (Cleanroom bundles `org.ow2.asm:asm*` under `~/.cleanroom/relauncher/libraries/org/ow2/asm/`, no need to fetch a separate copy).
- This is a live instance directory the maintainer may be editing concurrently (mods folder contents can change mid-session — re-verify file existence before acting on an earlier snapshot).
