import mods.thaumcraft.SalisMundus as SalisMundus;
import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;
import mods.jei.JEI as JEI;
import mods.thaumcraft.SmeltingBonus;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

//Purifying Fluid
<thaumcraft:bath_salts>.addTooltip(format.white("You can also drop it in a ") + format.darkAqua("Water Pool ") + format.white("to make the ") + format.aqua("Purifying Fluid"));

chemreactor.recipeBuilder()
    .inputs(<thaumcraft:bath_salts>)
    .circuit(13)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:purifying_fluid>*1000)
    .duration(80)
    .EUt(130)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<thaumadditions:odour_powder>)
    .circuit(13)
    .fluidInputs(<liquid:water>*500)
    .fluidOutputs(<liquid:purifying_fluid>*500)
    .duration(40)
    .EUt(130)
.buildAndRegister();

// Thaumonomicon tooltip
<thaumcraft:thaumonomicon>.addTooltip(format.red(format.bold("Warning:")) + format.white(format.bold(" Recipes shown may be incorrect.")));
<thaumcraft:thaumonomicon>.addTooltip(format.white(format.bold("Always refer to JEI when crafting.")));

// Arcane Workbench
SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
SalisMundus.addSingleConversion(<artisanworktables:worktable:5>.asBlock(), <thaumcraft:arcane_workbench>, "FIRSTSTEPS@1");
<thaumcraft:arcane_workbench>.addTooltip(format.white("Created by Right Clicking on an Basic Worktable"));
<thaumcraft:arcane_workbench>.addTooltip(format.white("Basic Worktable with some ") + format.lightPurple("Salis Mundus") + format.white("."));

// Thaumometter
recipes.remove(<thaumcraft:thaumometer>);
ArcaneWorkbench.registerShapedRecipe("thaumcraft:thaumometer", "FIRSTSTEPS@2", 20, [<aspect:aer>*4,<aspect:aqua>*4,<aspect:ordo>*4,<aspect:perditio>*4,<aspect:terra>*4,<aspect:ignis>*4], <thaumcraft:thaumometer>, [[<ore:foilGold>, <ore:plateRoseGold>, <ore:foilGold>], [<ore:plateRoseGold>, <ore:lensVinteum>, <ore:plateRoseGold>],[<ore:foilGold>, <ore:plateRoseGold>, <ore:foilGold>]]);

// Crucible
SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
SalisMundus.addSingleConversion(<evilcraft:purifier>.asBlock(), <thaumcraft:crucible>, "UNLOCKALCHEMY@1");
<thaumcraft:crucible>.addTooltip(format.white("Created by Right Clicking on an EvilCraft"));
<thaumcraft:crucible>.addTooltip(format.white("Purifier with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# [Runic Matrix] from [Blood Infusion Core][+10]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "infusion_matrix", # Name
  "INFUSION", # Research
  150, # Vis cost
  [<aspect:aer>*64, <aspect:aqua>*64, <aspect:ordo>*64, <aspect:perditio>*64, <aspect:ignis>*64, <aspect:terra>*64],
  <thaumcraft:infusion_matrix>, # Output
  Grid(["pretty",
  "A n A",
  "I B I",
  "A n A"], {
  "A": <thaumcraft:stone_arcane>,       # Arcane Stone
  "n": <ore:nitor>,                     # Black Nitor
  "I": <ore:livingrock>,                # Livingrock
  "B": <evilcraft:blood_infusion_core>, # Blood Infusion Core
}).shaped());

# [Hungry Chest] from [Mechanical Hopper][+5]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "hungry_chest", # Name
  "HUNGRYCHEST", # Research
  80, # Vis cost
  [<aspect:terra> * 16, <aspect:perditio> * 8],
  <thaumcraft:hungry_chest>, # Output
  Grid(["pretty",
  "# □ #",
  "# M #",
  "# # #"], {
  "#": <thaumcraft:plank_greatwood>,          # Greatwood Planks
  "□": <roots:runed_obsidian_pressure_plate>, # Runed Obsidian Pressure Plate
  "M": <pyrotech:mechanical_hopper>, # Mechanical Hopper
}).shaped());

# [Vis Resonator] from [Glass Lens][+5]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "vis_resonator", # Name
  "UNLOCKAUROMANCY", # Research
  40, # Vis cost
  [<aspect:aer> * 4, <aspect:aqua> * 4],
  <thaumcraft:vis_resonator>, # Output
  Grid(["pretty",
  "V □ V",
  "□ G □",
  "V □ V"], {
  "V": <ore:foilVanadiumSteel>,                 # Vanadiumsteel Foil
  "□": <ore:plateVanadiumSteel>,                # Vanadiumsteel Plate
  "G": <astralsorcery:itemcraftingcomponent:3>, # Glass Lens
}).shaped());

# [Caster's Gauntlet] from [Vis Resonator][+11]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "caster_basic", # Name
  "UNLOCKAUROMANCY", # Research
  100, # Vis cost
  [<aspect:aqua> * 10, <aspect:aer> * 10, <aspect:terra> * 10, <aspect:ordo> * 10, <aspect:perditio> * 10, <aspect:ignis> * 10, ],
  <thaumcraft:caster_basic>, # Output
  Grid(["pretty",
  "□ п □",
  "M V M",
  "M T M"], {
  "□": <ore:lightPlateStainlessSteel>,   # Light Stainless Steel Plate
  "п": <ore:lightPlateYttrium>,          # Light Yttrium Plate
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "V": <thaumcraft:vis_resonator>,       # Vis Resonator
  "T": <thaumcraft:thaumometer>,         # Thaumometer
}).shaped());

# [Focal Manipulator] from [Vis Resonator][+9]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "wand_workbench", # Name
  "BASEAUROMANCY", # Research
  120, # Vis cost
  [<aspect:terra> * 10, <aspect:aqua> * 8, <aspect:aer> * 8, ],
  <thaumcraft:wand_workbench>, # Output
  Grid(["pretty",
  "п r п",
  "A V A",
  "□ S □"], {
  "п": <ore:lightPlateStainlessSteel>, # Light Stainless Steel Plate
  "r": <thaumcraft:slab_arcane_stone>, # Arcane Stone Slab
  "A": <thaumcraft:stone_arcane>,      # Arcane Stone
  "V": <thaumcraft:vis_resonator>,     # Vis Resonator
  "□": <ore:plateDoubleRoseGold>,      # Double Rose Gold Plate
  "S": <thaumcraft:table_stone>,       # Stone Table
}).shaped());

# Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:focus_1", "UNLOCKAUROMANCY", <thaumcraft:focus_1>, <contenttweaker:base_focal_sphere>, [<aspect:vitreus> * 40, <aspect:praecantatio> * 20, <aspect:instrumentum> * 20, <aspect:auram> * 10]);

# Focus Pouch
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:FocusPouch", "FOCUSPOUCH", 20, [<aspect:ordo> * 10,<aspect:aer> * 5], <thaumcraft:focus_pouch>, [[<contenttweaker:magical_leather>,<ore:lightPlateBrass>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<thaumcraft:baubles:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]]);

# Impetus Conductor
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:augment_caster_rift_energy_storage>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:augment_caster_rift_energy_storage", "", 100, [<aspect:perditio> * 32,<aspect:terra> * 8,<aspect:ignis> * 8], <thaumicaugmentation:augment_caster_rift_energy_storage>, [[<randomthings:ingredient:2>,<ore:plateThaumium>.firstItem,<randomthings:ingredient:2>],[<ore:plateThaumium>.firstItem,<thaumicaugmentation:material:3>,<ore:plateThaumium>.firstItem],[<randomthings:ingredient:2>,<ore:plateThaumium>.firstItem,<randomthings:ingredient:2>]]);

# Void Stone Tooltip
<thaumicaugmentation:stone>.addTooltip(format.white("Base Stone of the Emptiness dimension."));

# Ancient Stone Tooltip
<thaumcraft:stone_ancient>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Ancient Pedestal Tooltip
<thaumcraft:pedestal_ancient>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Crusted Stone Tooltip
<thaumicaugmentation:stone:6>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Glowing Crusted Stone Tooltip
<thaumicaugmentation:stone:7>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Glyphed Stone Tooltip
<thaumcraft:stone_ancient_glyphed>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Ancient Bars Tooltip
<thaumicaugmentation:bars>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# [Infusion Cost Stone] from [Rune of Teleportation][+6]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_cost>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "matrix_cost", # Name
  "INFUSIONBOOST", # Research
  500, # Vis cost
  [<aspect:aqua> * 10, <aspect:aer> * 10, <aspect:perditio> * 10, ],
  <thaumcraft:matrix_cost>, # Output
  Grid(["pretty",
  "A l A",
  "l R l",
  "A l A"], {
  "A": <thaumcraft:stone_arcane>,              # Arcane Stone
  "l": <thaumcraft:alumentum>,                 # Alumentum
  "R": <contenttweaker:rune_of_teleportation>, # Rune of Teleportation
}).shaped());

# [Infusion Speed Stone] from [Rune of Energy][+5]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_speed>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "matrix_speed", # Name
  "INFUSIONBOOST", # Research
  500, # Vis cost
  [<aspect:aer> * 10, <aspect:ordo> * 10, ],
  <thaumcraft:matrix_speed>, # Output
  Grid(["pretty",
  "A n A",
  "n Ϟ n",
  "A n A"], {
  "A": <thaumcraft:stone_arcane>,       # Arcane Stone
  "n": <ore:nitor>,                     # Yellow Nitor
  "Ϟ": <contenttweaker:rune_of_energy>, # Rune of Energy
}).shaped());

// Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
extruder.recipeBuilder()
	.inputs(<ore:plateThaumicSteel>*3)
  .notConsumable(<gregtech:meta_item_1:40>)
	.outputs(<thaumcraft:tube>)
	.duration(1152)
	.EUt(180)
.buildAndRegister();

# [Essentia Valve] from [Essentia Tube][+3]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(
  "tube_valve", # Name
  "ESSENTIATRANSPORT", # Research
  10, # Vis cost
  [],
  <thaumcraft:tube_valve>, # Output
  Grid(["ECU"], {
  "E": <thaumcraft:tube>,       # Essentia Tube
  "C": <embers:caminite_lever>, # Caminite Lever
  "U": <ore:gearSmallThaumicSteel>,     # Small Thaumic Steel Metal Gear
}).shapeless());

# [Restricted Essentia Tube] from [Essentia Tube][+3]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(
  "tube_restrict", # Name
  "ESSENTIATRANSPORT", # Research
  10, # Vis cost
  [],
  <thaumcraft:tube_restrict>, # Output
  Grid(["E□S"], {
  "E": <thaumcraft:tube>,     # Essentia Tube
  "□": <ore:plateThaumicSteel>,       # Thaumic Steel Metal Plate
  "S": <ore:springSmallThaumicSteel>, # Small Thaumic Steel Metal Spring
}).shapeless());

// Thaumic Steel
mixer.recipeBuilder()
	.inputs(<ore:dustThaumium>, <ore:dustRunicSteel>)
	.outputs(<ore:dustThaumicSteel>.firstItem*2)
	.duration(200)
	.EUt(200)
.buildAndRegister();

# [Arcane Bellows] from [Stainless Steel Ring][+7]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "bellows", # Name
  "BELLOWS", # Research
  25, # Vis cost
  [<aspect:aer> * 10, <aspect:ignis> * 5, <aspect:ordo>, ],
  <thaumcraft:bellows>, # Output
  Grid(["pretty",
  "# # T",
  "M M S",
  "# # T"], {
  "#": <ore:plankTreatedWood>,           # Treated Wood Planks
  "T": <pyrotech:material:23>,           # Tarred Board
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "S": <ore:ringStainlessSteel>,         # Stainless Steel Ring
}).shaped());

# [Simple Arcane Mechanism] from [Brass Gear][+7]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "mechanism_simple", # Name
  "BASEARTIFICE", # Research
  10, # Vis cost
  [<aspect:ignis> * 5, <aspect:aqua> * 5],
  <thaumcraft:mechanism_simple>, # Output
  Grid(["pretty",
  "G B G",
  "B ¤ B",
  "□ п □"], {
  "G": <forestry:thermionic_tubes:4>, # Golden Electron Tube
  "B": <ore:boltBrass>,               # Brass Bolt
  "¤": <ore:gearBrass>,               # Brass Gear
  "□": <thaumcraft:nugget:10>,      # Rare Earths
  "п": <ore:lightPlateVanadiumSteel>, # Light Vanadiumsteel Plate
}).shaped());

# [Complex Arcane Mechanism] from [HV Electric Piston][+6]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "mechanism_complex", # Name
  "FIRSTSTEPS@2", # Research
  50, # Vis cost
  [<aspect:ignis> * 10, <aspect:aqua> * 10, ],
  <thaumcraft:mechanism_complex>, # Output
  Grid(["pretty",
  "O S O",
  "□ H □",
  "O S O"], {
  "O": <forestry:thermionic_tubes:6>, # Obsidian Electron Tube
  "S": <thaumcraft:mechanism_simple>, # Simple Arcane Mechanism
  "□": <ore:plateThaumicSteel>,       # Thaumic Steel Plate
  "H": <gregtech:meta_item_1:174>,    # HV Electric Piston
}).shaped());

# [Essentia Smeltery] from [Steam Furnace][+7]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "smelter_basic", # Name
  "ESSENTIASMELTER", # Research
  50, # Vis cost
  [<aspect:ignis> * 10, <aspect:perditio> * 4, ],
  <thaumcraft:smelter_basic>, # Output
  Grid(["pretty",
  "S C S",
  "B t B",
  "░ ░ ░"], {
  "S": <thaumcraft:mechanism_simple>, # Simple Arcane Mechanism
  "C": <thaumcraft:crucible>,         # Crucible
  "B": <ore:ringBrass>,               # Brass Ring
  "t": <gregtech:machine:15>,         # Steam Furnace
  "░": <ore:compressed1xCobblestone>, # 1x Compressed Cobblestone
}).shaped());

# [Essentia Filter]*4 from [Brass Plated Silverwood][+3]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(
  "filter", # Name
  "BASEALCHEMY", # Research
  10, # Vis cost
  [<aspect:aqua> * 16, ],
  <thaumcraft:filter> * 4, # Output
  Grid(["□B□"], {
  "□": <ore:lightPlateRoseGold>,                 # Light Rose Gold Plate
  "B": <thaumadditions:brass_plated_silverwood>, # Brass Plated Silverwood
}).shapeless());

# [Auxiliary Venting Port] from [Alchemical Construct][+4]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "smelter_vent", # Name
  "IMPROVEDSMELTING2", # Research
  100, # Vis cost
  [<aspect:aer> * 10, ],
  <thaumcraft:smelter_vent>, # Output
  Grid(["pretty",
  "  A  ",
  "E l E",
  "  A  "], {
  "A": <contenttweaker:aquasalus>,    # Aquasalus
  "E": <thaumcraft:filter>,           # Essentia Filter
  "l": <thaumcraft:metal_alchemical>, # Alchemical Construct
}).shaped());


/*
██╗███╗   ██╗███████╗███████╗██████╗ ███╗   ██╗ █████╗ ██╗
██║████╗  ██║██╔════╝██╔════╝██╔══██╗████╗  ██║██╔══██╗██║
██║██╔██╗ ██║█████╗  █████╗  ██████╔╝██╔██╗ ██║███████║██║
██║██║╚██╗██║██╔══╝  ██╔══╝  ██╔══██╗██║╚██╗██║██╔══██║██║
██║██║ ╚████║██║     ███████╗██║  ██║██║ ╚████║██║  ██║███████╗
╚═╝╚═╝  ╚═══╝╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝
*/

# Rare Earths
<thaumcraft:nugget:10>.addTooltip(format.gray(format.italic("<Hold Shift for info on how to acquire>")));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Dropped rarely by any of the following Ores:"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Coal, Redstone, Quartz, Diamond;"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in ascending order of drop rate."));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Alternatively, smelt any of the following Ores"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in the Infernal Furnace: Iron, Gold, Silver,"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Copper, Tin, Lead."));

# Unification for the Smelting Bonus
// IIngredient input, IItemStack stack
function swapBonus(input as IIngredient, wrong as IItemStack, right as WeightedItemStack) as void {
  mods.thaumcraft.SmeltingBonus.removeSmeltingBonus(input, wrong);
  mods.thaumcraft.SmeltingBonus.addSmeltingBonus(input, right);
}

for i, oreBase in "Copper Tin Silver Lead".split(' ') {
  val wrong = <thaumcraft:nugget>.definition.makeStack(i+1);
  val nugget = oreDict["nugget"~oreBase].firstItem;
  swapBonus(oreDict["ore"~oreBase], wrong, nugget % 33);
  // swapBonus(<thaumcraft:cluster>.definition.makeStack(i+2), wrong, nugget * 2 % 33);
  // swapBonus(<thaumicwonders:eldritch_cluster>.definition.makeStack(i+2), wrong, nugget * 4 % 33);
}