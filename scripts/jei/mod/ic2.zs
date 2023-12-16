#priority 950
#modloaded ic2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import scripts.jei.requious.add as addRecipe;

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
var x = <assembly:ic2_crops>;
x.addJEICatalyst(<ic2:crop_stick>);
x.addJEICatalyst(<ic2:te:58>);
x.addJEICatalyst(<ic2:crop_seed_bag>);
x.setJEIDurationSlot(2,0,"duration", scripts.jei.requious.getVisSlots(11,1));
x.setJEIItemSlot(1, 0, 'input1', scripts.jei.requious.getVisSlots(0,2));
scripts.jei.requious.addInsOuts(x, [[0,0]], [[3,0],[4,0],[5,0],[6,0]]);

static glyphs as IItemStack[] = [
<pyrotech:crude_hoe>,
<minecraft:wooden_hoe>,
<minecraft:stone_hoe>,
<minecraft:iron_hoe>,
<minecraft:golden_hoe>,
<minecraft:diamond_hoe>,
<pyrotech:obsidian_hoe>,
<roots:living_hoe>,
<railcraft:tool_hoe_steel>,
<roots:terrastone_hoe>,
<fossil:scarab_hoe>,
<thaumcraft:thaumium_hoe>,
<thaumcraft:elemental_hoe>,
] as IItemStack[];

function addCrop(id as string, drops as IItemStack[], tier as int, attributes as string, requirments as string = null) as void {
  val seed = <ic2:crop_seed_bag>.withTag({owner: "ic2", scan: 1 as byte, growth: 1 as byte, id: id, resistance: 1 as byte, gain: 1 as byte});
  addRecipe(<assembly:ic2_crops>, {[
    isNull(requirments) ? seed : seed.withLore(["§6§lRequirments: ", requirments]),
    glyphs[tier].withDisplayName("§bTier: "~tier).withLore(["§e§lAttributes: ", "§e" ~ attributes])
  ] : drops});
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
