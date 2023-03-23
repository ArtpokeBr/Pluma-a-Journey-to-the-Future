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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_cell", "", <thaumicaugmentation:material:3>, 8, [<aspect:alienis> * 240,<aspect:vacuos> * 240,<aspect:potentia> * 240], <enderutilities:enderpart:17>, [<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_vacuos>,<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_alienis>]);

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

# [Mithrillium Ingot]*2 from [Void Metal Ingot][+10]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:mithrillium_ingot>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:mithrillium_ingot", # Name
  "TAR_MITHRILLIUM", # Research
  <thaumadditions:mithrillium_ingot> * 2, # Output
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
  <thaumadditions:adaminite_ingot> * 2, # Output
  12, # Instability
  [<aspect:draco> * 10, <aspect:alkimia> * 30, <aspect:spiritus> * 120, <aspect:metallum> * 40, <aspect:infernum> * 50, <aspect:dreadia> * 100, <aspect:praecantatio> * 100, <aspect:victus> * 100],
  <thaumadditions:mithrillium_ingot>, # Central Item
  Grid(["pretty",
  "▬ A ▬",
  "⌃   ⌃",
  "▬ A ▬"], {
  "▬": <ore:crystalClusterDreadium>,         # Crystallized Dreadium Cluster
  "A": <ore:gemNetherStar>,                  # Nether Star
  "⌃": <contenttweaker:primordial_fragment>, # Primordial Fragment
}).spiral(1));

# Void Thaumometer
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_thaumometer>);
mods.thaumcraft.Infusion.registerRecipe("thaumadditions:void_thaumometer", "TAR_VOID_THAUMOMETER", <thaumadditions:void_thaumometer>, 4, [<aspect:alienis> * 40,<aspect:cognitio> * 20,<aspect:aer> * 10,<aspect:aqua> * 10, <aspect:ordo> * 10,<aspect:perditio> * 10, <aspect:ignis> * 10,<aspect:terra> * 10], <thaumcraft:thaumometer>, [<ore:ingotVoid>.firstItem,<ore:ingotVoid>.firstItem,<ore:ingotVoid>.firstItem,<ore:ingotVoid>.firstItem]);
