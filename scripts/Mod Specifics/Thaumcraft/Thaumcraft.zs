import mods.thaumcraft.SalisMundus as SalisMundus;
import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;
import mods.jei.JEI as JEI;
import mods.thaumcraft.SmeltingBonus;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

import mods.thermalexpansion.Insolator as Insolator;
import mods.thaumcraft.Infusion as Infusion;

# Temp Fix to Wrong Recipes from Certain TC Addons

<thaumcraft:plate>.displayName = "Unknown Brass Plate";
<thaumcraft:plate:2>.displayName = "Unknown Thaumium Plate";
<thaumcraft:plate:3>.displayName = "Unknown Void Plate";
<thaumcraft:amber>.displayName = "Unknown Amber";

#Brass Plate
recipes.addShapeless("ConvertingBrass",<thaumcraft:plate>,[<ore:plateBrass>]);
recipes.addShapeless("ConvertingBrass1",<ore:plateBrass>.firstItem,[<thaumcraft:plate>]);

#Thaumium Plate
recipes.addShapeless("ConvertingThaumium",<thaumcraft:plate:2>,[<ore:plateThaumium>]);
recipes.addShapeless("ConvertingThaumium1",<ore:plateThaumium>.firstItem,[<thaumcraft:plate:2>]);

#Void Plate
recipes.addShapeless("ConvertingVoid",<thaumcraft:plate:3>,[<ore:plateVoid>]);
recipes.addShapeless("ConvertingVoid1",<ore:plateVoid>.firstItem,[<thaumcraft:plate:3>]);

#Amber
recipes.addShapeless("ConvertingAmber",<thaumcraft:amber>,[<ore:gemAmber>]);
recipes.addShapeless("ConvertingAmber1",<ore:gemAmber>.firstItem,[<thaumcraft:amber>]);

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

# [Blank Label]*4 from [Grog][+2]
recipes.removeByRecipeName("thaumcraft:jarlabelnull");
recipes.removeByRecipeName("thaumcraft:jarlabel");
craft.shapeless(<thaumcraft:label> * 4, "B:pppp", {
  "B": <ore:itemBeeswax>,     # Beeswax
  ":": <ore:oc:materialAcid>, # Grog
  "p": <ore:paper> | <ore:platePaper> | <ore:paperEmpty>, # Paper
});

# [Goggles of Revealing] from [Brass Rod][+10]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "goggles", # Name
  "UNLOCKARTIFICE", # Research
  50, # Vis cost
  [<aspect:aqua> * 5, <aspect:aer> * 5, <aspect:terra> * 5, <aspect:ignis> * 5, <aspect:perditio> * 5, <aspect:ordo> * 5, ],
  <thaumcraft:goggles>, # Output
  Grid(["pretty",
  "M ╱ M",
  "M   M",
  "T □ T"], {
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "╱": <ore:stickBrass>,                 # Brass Rod
  "T": <thaumcraft:thaumometer>,         # Thaumometer
  "□": <ore:lightPlateBrass>,            # Light Brass Plate
}).shaped());

# Enchanted Fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:fabric", "UNLOCKINFUSION", 2, [<aspect:ordo> * 1], <thaumcraft:fabric>, [[<botania:manaresource:22>,<thaumcraft:salis_mundus>,<botania:manaresource:22>],[<thaumcraft:alumentum>,<botania:manaresource:1>,<thaumcraft:alumentum>],[<botania:manaresource:22>,<thaumcraft:salis_mundus>,<botania:manaresource:22>]]);

# Thaumaturge's Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_chest", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_chest>, [[<thaumcraft:fabric>,<botania:manaweavechest>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>]]);

# Thaumaturge's Leggings
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_legs", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_legs>, [[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweavelegs>,<thaumcraft:fabric>],[<thaumcraft:fabric>,null,<thaumcraft:fabric>]]);

# Thaumaturge's Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[null,null,null],[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);

# Workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:workbenchcharger", "WORKBENCHCHARGER", 350, [<aspect:ordo> * 5,<aspect:aer> * 5,<aspect:aqua> * 5], <thaumcraft:arcane_workbench_charger>, [[null,<thaumcraft:vis_resonator>,null],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<ore:lightPlateBrass>,null,<ore:lightPlateBrass>]]);
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Find the perfect chunk in a Magical"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Forest biome and have a full set of"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Thaumaturge Armor on to craft this!"));

# Glass Phial
recipes.remove(<thaumcraft:phial>);
extruder.recipeBuilder()
    .inputs(<ore:glassSoul>)
    .notConsumable(<gregtech:meta_item_1:53>)
    .outputs(<thaumcraft:phial>*4)
    .duration(40)
    .EUt(130)
.buildAndRegister();

# [Filling Essentia Transfuser] from [HV Electric Piston][+6]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "essentia_input", # Name
  "ESSENTIATRANSPORT", # Research
  100, # Vis cost
  [<aspect:aqua> * 4, <aspect:aer> * 4],
  <thaumcraft:essentia_input>, # Output
  Grid(["pretty",
  "□ H □",
  "п A п"], {
  "□": <ore:lightPlateBrass>,          # Light Brass Plate
  "H": <gregtech:meta_item_1:174>,     # HV Electric Piston
  "п": <ore:plateDoubleVanadiumSteel>, # Double Vanadiumsteel Plate
  "A": <thaumcraft:metal_alchemical>,  # Alchemical Construct
}).shaped());

# [Emptying Essentia Transfuser] from [HV Electric Pump][+6]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "essentia_output", # Name
  "ESSENTIATRANSPORT", # Research
  100, # Vis cost
  [<aspect:aqua> * 4, <aspect:aer> * 4],
  <thaumcraft:essentia_output>, # Output
  Grid(["pretty",
  "□ H □",
  "п A п"], {
  "□": <ore:lightPlateBrass>,          # Light Brass Plate
  "H": <gregtech:meta_item_1:144>,     # HV Electric Pump
  "п": <ore:plateDoubleVanadiumSteel>, # Double Vanadiumsteel Plate
  "A": <thaumcraft:metal_alchemical>,  # Alchemical Construct
}).shaped());

# [Essentia Resonator] from [Nether Quartz][+4]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "resonator", # Name
  "TUBES", # Research
  110, # Vis cost
  [<aspect:aqua> * 4, <aspect:aer> * 4],
  <thaumcraft:resonator>, # Output
  Grid(["pretty",
  "□   □",
  "□ ⌃ □",
  "D ╱ D"], {
  "□": <ore:plateVanadiumSteel>,                # Vanadiumsteel Plate
  "⌃": <ore:gemNetherQuartz>,                   # Nether Quartz
  "D": <pyrotech:material:44>,                  # Durable Leather Cord
  "╱": <ore:itemNutritiousStick>,               # Nutritious Stick
}).shaped());

# Void Seed
<thaumcraft:void_seed>.addTooltip(format.white("Obtained by throwing a Causality Collapser on a"));
<thaumcraft:void_seed>.addTooltip(format.white("Flux Rift, or using a Void Siphon in the same chunk."));

# Primordial Pearl repair

var repair_bee =<forestry:bee_drone_ge>.withTag({MaxH: 50, Mate: {Chromosomes: [{UID1: "careerbees.repair", UID0: "careerbees.repair", Slot: 0 as byte}, {UID1: "careerbees.effect.repair", UID0: "careerbees.effect.repair", Slot: 12 as byte}]}, Health: 50, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "careerbees.repair", UID0: "careerbees.repair", Slot: 0 as byte}, {UID1: "careerbees.effect.repair", UID0: "careerbees.effect.repair", Slot: 12 as byte}]}});

<thaumcraft:primordial_pearl:*>.addTooltip(format.white("Can be Repaired with a ") + format.blue("Pure Repair Drone") + format.white("."));

recipes.addShapeless("thaumcraft_primordial_pearl_repair", <thaumcraft:primordial_pearl>, [<thaumcraft:primordial_pearl>.anyDamage().noReturn().marked("pearl"),repair_bee],
	function(out,ins,cInfo) {
		if(ins.pearl.damage != 0) {
			return out.withDamage(ins.pearl.damage - 1);
		} else {
			return out;
		}
	}, null);
<thaumcraft:primordial_pearl>.addTooltip(format.white("Dropped rarely by ") + format.darkPurple("Void Rifts") + format.white(" when"));
<thaumcraft:primordial_pearl>.addTooltip(format.white("closed by a ") + format.lightPurple("Causality Collapser") + format.white("."));

# [Thaumium Caster's Gauntlet] from [Vis Resonator][+11]
mods.thaumcraft.ArcaneWorkbench.removeRecipe("thaumium_gauntlet");
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumicaugmentation:gauntlet", # Name
  "GAUNTLET_THAUMIUM", # Research
  250, # Vis cost
  [<aspect:aer>*2, <aspect:terra>*2, <aspect:aqua>*2, <aspect:ignis>*2, <aspect:perditio>*2, <aspect:ordo>*2],
  <thaumicaugmentation:gauntlet>.withTag({cap: {slots: 3}, color: 8022208}), # Output
  Grid(["pretty",
  "□ □ □",
  "E V E",
  "M a M"], {
  "□": <ore:lightPlateThaumium>,         # Light Thaumium Plate
  "E": <ore:itemEnchantedFabric>,        # Enchanted Fabric
  "V": <thaumcraft:vis_resonator>,       # Vis Resonator
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "a": <thaumcraft:thaumometer>,         # Thaumometer
}).shaped());

# [Voidseer Caster's Gauntlet] from [Voidseer's Pearl][+11]
mods.thaumcraft.ArcaneWorkbench.removeRecipe("void_gauntlet");
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumicaugmentation:gauntlet", # Name
  "GAUNTLET_VOID", # Research
  300, # Vis cost
  [<aspect:aer> * 4, <aspect:terra> * 4, <aspect:aqua> * 4, <aspect:ignis> * 4, <aspect:perditio> * 4, <aspect:ordo> * 4],
  <thaumicaugmentation:gauntlet:1>.withTag({cap: {slots: 3}, color: 2498903}), # Output
  Grid(["pretty",
  "□ □ □",
  "E V E",
  "S o S"], {
  "□": <ore:lightPlateVoid>,              # Light Void Metal Plate
  "E": <ore:itemEnchantedFabric>,         # Enchanted Fabric
  "V": <thaumcraft:voidseer_charm>,       # Voidseer's Pearl
  "S": <contenttweaker:star_leather>,     # Star Leather
  "o": <thaumadditions:void_thaumometer>, # Void Thaumometer
}).shaped());

# [Fracture Locator] from [Void Thaumometer][+6]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:fracture_locator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumicaugmentation:fracture_locator", # Name
  "", # Research
  25, # Vis cost
  [<aspect:aer> * 5, <aspect:perditio> * 5],
  <thaumicaugmentation:fracture_locator>, # Output
  Grid(["pretty",
  "□ п □",
  "* V *",
  "□ п □"], {
  "□": <ore:lightPlateBrass>,             # Light Brass Plate
  "п": <ore:plateMithrillium>,            # Mithrillium Plate
  "*": <contenttweaker:condensed_vis_crystal_vacuos>, # Condensed Vacuos Vis Crystal
  "V": <thaumadditions:void_thaumometer>, # Void Thaumometer
}).shaped());

# [Fragrant Pendant] from [Fancy Amulet][+11]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumadditions:fragnant_pendant>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumadditions:fragnant_pendant", # Name
  "TAR_FRAGNANT_PENDANT", # Research
  50, # Vis cost
  [<aspect:aqua> * 5, <aspect:ignis> * 5, <aspect:ordo> * 5, <aspect:perditio> * 5, <aspect:aer> * 5, <aspect:terra> * 5],
  <thaumadditions:fragnant_pendant>, # Output
  Grid(["pretty",
  "  E  ",
  "S F E",
  "◊ O  "], {
  "E": <thaumcraft:filter>,           # Essentia Filter
  "S": <thaumcraft:salis_mundus>,     # Salis Mundus
  "F": <thaumcraft:baubles:4>,        # Fancy Amulet
  "◊": <ore:gemFlawlessAmber>,        # Flawless Amber
  "O": <thaumadditions:odour_powder>, # Odour Powder
}).shaped());

########################## Jars ##########################

# [Thaumium Reinforced Jar] from [Brass Warded Jar][+4]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumadditions:jar_thaumium>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumadditions:jar_thaumium", # Name
  "TAR_THAUMIUM_JAR", # Research
  10, # Vis cost
  [<aspect:aqua>*2],
  <thaumadditions:jar_thaumium>, # Output
  Grid(["pretty",
  "G □ G",
  "G B G",
  "G G G"], {
  "G": <ore:paneGlass>, # Glass Pane
  "□": <ore:lightPlateThaumium>,                   # Light Thaumium Plate
  "B": <thaumadditions:jar_brass>,                 # Brass Warded Jar
}).shaped());

# [Void Reinforced Jar] from [Thaumium Reinforced Jar][+4]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumadditions:jar_eldritch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumadditions:jar_eldritch", # Name
  "TAR_ELDRITCH_JAR", # Research
  150, # Vis cost
  [<aspect:aqua> * 6],
  <thaumadditions:jar_eldritch>, # Output
  Grid(["pretty",
  "G □ G",
  "G T G",
  "G G G"], {
  "G": <ore:paneGlass>, # Glass Pane
  "□": <ore:lightPlateVoid>,                       # Light Void Metal Plate
  "T": <thaumadditions:jar_thaumium>,              # Thaumium Reinforced Jar
}).shaped());

# [Brass Warded Jar] from [Warded Jar][+3]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumadditions:jar_brass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "thaumadditions:jar_brass", # Name
  "TAR_BRASS_JAR", # Research
  10, # Vis cost
  [],
  <thaumadditions:jar_brass>, # Output
  Grid(["pretty",
  "G □ G",
  "G W G",
  "G G G"], {
  "G": <ore:paneGlass>, # Glass Pane
  "□": <ore:lightPlateBrass>,                      # Light Brass Plate
  "W": <thaumcraft:jar_normal>,                    # Warded Jar
}).shaped());

# [Warded Jar] from [Ancient Wood Slab][+2]
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "jar_normal", # Name
  "WARDEDJARS", # Research
  5, # Vis cost
  [],
  <thaumcraft:jar_normal>, # Output
  Grid(["pretty",
  "G # G",
  "G   G",
  "G G G"], {
  "G": <ore:paneGlass>, # Glass Pane
  "#": <fossil:ancient_wood_slab>,                 # Ancient Wood Slab
}).shaped());

###############################################################################

// Void Anvil -> Eldrich Anvil
<thaumadditions:void_anvil>.displayName = "Eldrich Anvil";
<thaumadditions:void_anvil>.addTooltip(format.white("An Infinite Anvil... that") + format.lightPurple(" Strangely Whispers to you..."));
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:void_anvil>);

recipes.addShaped(<thaumadditions:void_anvil>, [
[<ore:blockVoid>, <ore:blockVoid>, <ore:blockVoid>],
[<ore:screwVoid>, <ore:blockVoid>, <ore:screwVoid>],
[<ore:plateVoid>, <ore:blockVoid>, <ore:plateVoid>]]);

alloy.recipeBuilder()
    .inputs(<ore:ingotVoid>*31)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<thaumadditions:void_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:void_metal>*4464)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<thaumadditions:void_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

########################## The Emptiness Integration ##########################

//Tainted Flower Integration
Insolator.addRecipe(<thaumicaugmentation:taint_flower> * 18, <thaumicaugmentation:taint_flower>, <thermalfoundation:fertilizer:2>, 16000, <thaumicaugmentation:taint_flower>, 0, 2500);
Insolator.addRecipe(<thaumicaugmentation:taint_flower> * 12, <thaumicaugmentation:taint_flower>, <thermalfoundation:fertilizer:1>, 16000, <thaumicaugmentation:taint_flower>, 0, 2500);
Insolator.addRecipe(<thaumicaugmentation:taint_flower> * 6, <thaumicaugmentation:taint_flower>, <thermalfoundation:fertilizer>, 16000, <thaumicaugmentation:taint_flower>, 0, 2500);

###############################################################################

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