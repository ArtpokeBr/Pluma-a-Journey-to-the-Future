import mods.thaumcraft.Infusion as Infusion;

/*
██╗███╗   ██╗███████╗██╗   ██╗███████╗██╗ ██████╗ ███╗   ██╗
██║████╗  ██║██╔════╝██║   ██║██╔════╝██║██╔═══██╗████╗  ██║
██║██╔██╗ ██║█████╗  ██║   ██║███████╗██║██║   ██║██╔██╗ ██║
██║██║╚██╗██║██╔══╝  ██║   ██║╚════██║██║██║   ██║██║╚██╗██║
██║██║ ╚████║██║     ╚██████╔╝███████║██║╚██████╔╝██║ ╚████║
╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝ ╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝
*/

// # Mining Dimension Portal
// recipes.remove(<utilityworlds:portal_mining>);
// Infusion.registerRecipe("utilityworlds:portal_mining", "TCONEVO_PRIMALMETAL", <utilityworlds:portal_mining>, 0, [<aspect:chronos> * 100, <aspect:instrumentum> * 80, <aspect:metallum>*80, <aspect:terra>*100], <ore:gearPrimordial>, 
// [<ore:oreClusterLapis>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:dark_magic_dust>,<actuallyadditions:block_crystal_empowered:1>,<ore:oreClusterLapis>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:white_magic_dust>,<actuallyadditions:block_crystal_empowered:1>]);

# Blank Advanced Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:focus_2", "FOCUSADVANCED@1", <thaumcraft:focus_2>, 3, [<aspect:vitreus> * 80,<aspect:praecantatio> * 40,<aspect:ordo> * 40,<aspect:instrumentum> * 40,<aspect:auram> * 20], <thaumcraft:focus_1>, [<ore:gemFlawlessAmethyst>,<thaumcraft:alumentum>,<ore:ingotThaumium>,<thaumcraft:vis_resonator>,<thaumcraft:alumentum>,<ore:ingotThaumium>]);

# Blank Greater Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_3>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:focus_3", "FOCUSGREATER@1", <thaumcraft:focus_3>, 8, [<aspect:vacuos> * 150,<aspect:vitreus> * 150,<aspect:ordo> * 100,<aspect:praecantatio> * 100,<aspect:instrumentum> * 50,<aspect:auram> * 50], <thaumcraft:focus_2>, [<ore:ingotTitanium>,<thaumcraft:mirrored_glass>,<ore:ingotTitanium>,<contenttweaker:primordial_fragment>,<ore:ingotTitanium>,<thaumcraft:mirrored_glass>,<ore:ingotTitanium>,<minecraft:nether_star>]);

# Impetus Cell
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:material:3>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_cell", "", <thaumicaugmentation:material:3>, 8, [<aspect:alienis> * 240,<aspect:vacuos> * 240,<aspect:potentia> * 240], <enderutilities:enderpart:17>, [<contenttweaker:impetus_crystal>,<ore:blockAmber>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_vacuos>,<contenttweaker:impetus_crystal>,<ore:blockAmber>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_alienis>]);

# [Alchemical Construct]*4 from [Simple Arcane Mechanism][+8]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
mods.thaumcraft.Infusion.registerRecipe(
  "metal_alchemical", # Name
  "ESSENTIATRANSPORT", # Research
  <thaumcraft:metal_alchemical> * 4, # Output
  4, # Instability
  [<aspect:ignis> * 10, <aspect:imperium> * 25, <aspect:fluctus> * 20, <aspect:machina> * 80],
  <thaumcraft:mechanism_simple>, # Central Item
  Grid(["pretty",
  "□ E □",
  "s   s",
  "□ E □"], {
  "□": <ore:lightPlateRunicSteel>, # Light Runic Steel Plate
  "E": <thaumcraft:tube>,          # Essentia Tube
  "s": <thaumcraft:tube_valve>,    # Essentia Valve
}).spiral(1));

# [Advanced Alchemical Construct]*4 from [Complex Arcane Mechanism][+8]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical_advanced>);
mods.thaumcraft.Infusion.registerRecipe(
  "metal_alchemical_advanced", # Name
  "ESSENTIASMELTERVOID", # Research
  <thaumcraft:metal_alchemical_advanced> * 4, # Output
  8, # Instability
  [<aspect:ignis> * 20, <aspect:imperium> * 40, <aspect:fluctus> * 80, <aspect:machina> * 160],
  <thaumcraft:mechanism_complex>, # Central Item
  Grid(["pretty",
  "□ A □",
  "§   §",
  "□ A □"], {
  "□": <ore:lightPlateVoid>,                 # Light Void Metal Plate
  "A": <thaumcraft:metal_alchemical>,        # Alchemical Construct
  "§": <contenttweaker:primordial_fragment>, # Primordial Fragment
}).spiral(1));

# Causaility Collapser
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:CausalityCollapser", "RIFTCLOSER", <thaumcraft:causality_collapser>, 7, [<aspect:perditio> * 40,<aspect:potentia> * 30,<aspect:alienis> * 30,<aspect:vitium> * 30], <mekanism:obsidiantnt>, [<thaumcraft:vis_resonator>,<thaumcraft:nitor_pink>,<thaumcraft:alumentum>,<contenttweaker:devil_dust>,<thaumcraft:morphic_resonator>,<thaumcraft:nitor_pink>,<thaumcraft:alumentum>,<contenttweaker:devil_dust>]);

# [Mithrillium Ingot]*3 from [Void Metal Ingot][+10]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:mithrillium_ingot>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:mithrillium_ingot", # Name
  "TAR_MITHRILLIUM", # Research
  <thaumadditions:mithrillium_ingot> * 3, # Output
  4, # Instability
  [<aspect:praecantatio> * 10, <aspect:alienis> * 10, <aspect:potentia> * 15, <aspect:metallum> * 30, <aspect:vitreus> * 30],
  <ore:ingotVoid>, # Central Item
  Grid(["pretty",
  "▬ A ⌃",
  "E   E",
  "⌃ A ▬"], {
  "▬": <ore:ingotMithril>,        # Mithril Ingot
  "A": <thaumcraft:alumentum>,    # Alumentum
  "⌃": <botanicadds:mana_lapis>,  # Mana Lapis
  "E": <ore:itemEnchantedFabric>, # Enchanted Fabric
}).spiral(1));

# [Adaminite Ingot]*2 from [Mithrillium Ingot][+12]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:adaminite_ingot>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:adaminite_ingot", # Name
  "TAR_ADAMINITE", # Research
  <thaumadditions:adaminite_ingot> * 4, # Output
  12, # Instability
  [<aspect:draco> * 10, <aspect:alkimia> * 30, <aspect:spiritus> * 120, <aspect:metallum> * 40, <aspect:infernum> * 50, <aspect:dreadia> * 100, <aspect:praecantatio> * 100, <aspect:victus> * 100],
  <thaumadditions:mithrillium_ingot>, # Central Item
  Grid(["pretty",
  "▬ A ▬",
  "⌃   ⌃",
  "▬ A ▬"], {
  "▬": <ore:crystalClusterDreadium>,         # Crystallized Dreadium Cluster
  "A": <ore:compressed1xTaintedSoil>,        # Compressed Tainted Soil
  "⌃": <contenttweaker:primordial_fragment>, # Primordial Fragment
}).spiral(1));

# Void Thaumometer
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_thaumometer>);
mods.thaumcraft.Infusion.registerRecipe("thaumadditions:void_thaumometer", "TAR_VOID_THAUMOMETER", <thaumadditions:void_thaumometer>, 4, [<aspect:alienis> * 40,<aspect:cognitio> * 20,<aspect:aer> * 10,<aspect:aqua> * 10, <aspect:ordo> * 10,<aspect:perditio> * 10, <aspect:ignis> * 10,<aspect:terra> * 10], <thaumcraft:thaumometer>, [<ore:ingotVoid>.firstItem, <ore:AAVoidCrystal>.firstItem,<ore:ingotVoid>.firstItem, <ore:AAVoidCrystal>.firstItem,<ore:ingotVoid>.firstItem, <ore:AAVoidCrystal>.firstItem,<ore:ingotVoid>.firstItem, <ore:AAVoidCrystal>.firstItem]);

# [Crystal Bore] from [Morphic Resonator][+7]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:crystal_bore>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:crystal_bore", # Name
  "TAR_CRYSTAL_BORE", # Research
  <thaumadditions:crystal_bore>, # Output
  1, # Instability
  [<aspect:perditio> * 30, <aspect:exitium> * 10, <aspect:terra> * 10],
  <thaumcraft:morphic_resonator>, # Central Item
  Grid(["pretty",
  "  M  ",
  "A   A",
  "□ A □"], {
  "A": <thaumcraft:stone_arcane>,      # Arcane Stone
  "M": <thaumcraft:mechanism_complex>, # Complex Arcane Mechanism
  "□": <ore:plateBrass>,               # Brass Plate
}).spiral(1));

# [Crystal Growth Chamber] from [Praecantatio Crystal Block][+9]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:growth_chamber>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:growth_chamber", # Name
  "TAR_GROWTH_CHAMBER", # Research
  <thaumadditions:growth_chamber>, # Output
  1, # Instability
  [<aspect:ordo> * 10, <aspect:machina> * 15, <aspect:imperium> * 10],
  <thaumadditions:crystal_block>, # Central Item
  Grid(["pretty",
  "C □ ◊",
  "□   □",
  "V □ M"], {
  "C": <thaumcraft:mechanism_complex>, # Complex Arcane Mechanism
  "◊": <ore:gemFlawlessAmber>,         # Flawless Amber
  "□": <ore:lightPlateThaumium>,       # Light Thaumium Plate
  "V": <thaumcraft:vis_resonator>,     # Vis Resonator
  "M": <thaumcraft:morphic_resonator>, # Morphic Resonator
}).spiral(1));

# [The Beheader] from [Thaumium Axe][+9]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:the_beheader>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:the_beheader", # Name
  "TAR_THE_BEHEADER", # Research
  <thaumadditions:the_beheader>, # Output
  8, # Instability
  [<aspect:aversio> * 120, <aspect:exanimis> * 100, <aspect:praecantatio> * 90, <aspect:perditio> * 70, <aspect:mortuus> * 70],
  <thaumcraft:thaumium_axe>, # Central Item
  Grid(["pretty",
  "  S  ",
  "□   □",
  "п □ S"], {
  "S": <minecraft:skull:1>, # Wither Skeleton Skull
  "□": <ore:plateMithrillium>,       # Mithrillium Plate
  "п": <ore:lightPlateThaumium>,     # Light Thaumium Plate
}).spiral(1));

# [Void Hoe of Growth] from [Hoe of Growth][+6]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_elemental_hoe>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:void_elemental_hoe", # Name
  "TAR_VOID_ELEMENTAL_HOE", # Research
  <thaumadditions:void_elemental_hoe>, # Output
  6, # Instability
  [<aspect:victus> * 100, <aspect:herba> * 80, <aspect:alienis> * 40],
  <thaumcraft:elemental_hoe>.anyDamage(), # Central Item
  Grid(["pretty",
  "  □  ",
  "     ",
  "□   P"], {
  "□": <ore:lightPlateVoid>,                      # Light Void Metal Plate
  "P": <thaumcraft:primordial_pearl>.anyDamage(), # Primordial Pearl
}).spiral(1));

# [Void Shovel of the Earthmover] from [Shovel of the Earthmover][+6]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_elemental_shovel>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:void_elemental_shovel", # Name
  "TAR_VOID_ELEMENTAL_SHOVEL", # Research
  <thaumadditions:void_elemental_shovel>, # Output
  6, # Instability
  [<aspect:terra> * 150, <aspect:fabrico> * 100, <aspect:alienis> * 40],
  <thaumcraft:elemental_shovel>.anyDamage(), # Central Item
  Grid(["pretty",
  "  □  ",
  "     ",
  "□   P"], {
  "□": <ore:lightPlateVoid>,                      # Light Void Metal Plate
  "P": <thaumcraft:primordial_pearl>.anyDamage(), # Primordial Pearl
}).spiral(1));

# [Wormhole Mirror] from [Magic Hand Mirror][+6]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:wormhole_mirror>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:wormhole_mirror", # Name
  "TAR_WORMHOLE_MIRROR", # Research
  <thaumadditions:wormhole_mirror>, # Output
  6, # Instability
  [<aspect:imperium> * 100, <aspect:visum> * 80, <aspect:alienis> * 50],
  <thaumcraft:hand_mirror>, # Central Item
  Grid(["pretty",
  "  □  ",
  "     ",
  "□   V"], {
  "□": <ore:lightPlateVoid>,              # Light Void Metal Plate
  "V": <thaumadditions:void_thaumometer>, # Void Thaumometer
}).spiral(1));

# [Void Axe of the Stream] from [Axe of the Stream][+6]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_elemental_axe>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:void_elemental_axe", # Name
  "TAR_VOID_ELEMENTAL_AXE", # Research
  <thaumadditions:void_elemental_axe>, # Output
  6, # Instability
  [<aspect:herba> * 150, <aspect:aqua> * 100, <aspect:alienis> * 40],
  <thaumcraft:elemental_axe>.anyDamage(), # Central Item
  Grid(["pretty",
  "  □  ",
  "     ",
  "□   r"], {
  "□": <ore:lightPlateVoid>,                      # Light Void Metal Plate
  "r": <thaumcraft:primordial_pearl>.anyDamage(), # Primordial Pearl
}).spiral(1));

# [Void Pickaxe of the Core] from [Pickaxe of the Core][+7]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_elemental_pickaxe>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:void_elemental_pickaxe", # Name
  "TAR_VOID_ELEMENTAL_PICKAXE", # Research
  <thaumadditions:void_elemental_pickaxe>, # Output
  6, # Instability
  [<aspect:metallum> * 300, <aspect:ignis> * 80, <aspect:sensus> * 50, <aspect:alienis> * 40],
  <thaumcraft:elemental_pick>.anyDamage(), # Central Item
  Grid(["pretty",
  "  □  ",
  "     ",
  "□   P"], {
  "□": <ore:lightPlateVoid>,                      # Light Void Metal Plate
  "P": <thaumcraft:primordial_pearl>.anyDamage(), # Primordial Pearl
}).spiral(1));

# Crystal Crusher
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:crystal_crusher>);
mods.thaumcraft.Infusion.registerRecipe("thaumadditions:crystal_crusher", "TAR_CRYSTAL_CRUSHER", <thaumadditions:crystal_crusher>, 2, [<aspect:fabrico> * 20,<aspect:cognitio> * 20,<aspect:exitium> * 20,<aspect:instrumentum> * 20], <thaumcraft:mechanism_complex>,  [<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumadditions:salt_essence>, <thaumadditions:salt_essence>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <ore:plateDoubleThaumium>.firstItem, <ore:plateDoubleThaumium>.firstItem, <ore:plateDoubleThaumium>.firstItem]);

# [Mithminite Fortified Jar] from [Adaminite Fortified Jar][+9]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:jar_mithminite>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:jar_mithminite", # Name
  "TAR_MITHMINITE_JAR", # Research
  <thaumadditions:jar_mithminite>, # Output
  6, # Instability
  [<aspect:aqua> * 40, <aspect:alkimia> * 32, <aspect:caeles> * 16, <aspect:permutatio> * 10],
  <thaumadditions:jar_adaminite>, # Central Item
  Grid(["pretty",
  "A □ A",
  "l   l",
  "A ◊ A"], {
  "A": <botania:elfglasspane>,  # Alfglass Pane
  "□": <ore:plateMithminite>,   # Mithminite Plate
  "l": <thaumcraft:alumentum>,  # Alumentum
  "◊": <ore:gemExquisiteAmber>, # Exquisite Amber
}).spiral(1));

# [Striding Belt] from [Belt of the Traveller][+7]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:striding_belt>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:striding_belt", # Name
  "TAR_STRIDING_BELT", # Research
  <thaumadditions:striding_belt>, # Output
  1, # Instability
  [<aspect:aer> * 200, <aspect:motus> * 150, <aspect:volatus> * 150, <aspect:fluctus> * 50],
  <thaumadditions:traveller_belt>, # Central Item
  Grid(["pretty",
  "  f  ",
  "◊   ◊",
  "  f  "], {
  "f": <totemic:eagle_drops:1>,  # Eagle Feather
  "◊": <ore:gemAmber>.firstItem, # Amber
}).spiral(1));