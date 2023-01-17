import mods.thaumcraft.SalisMundus as SalisMundus;
import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;
import mods.jei.JEI as JEI;

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
  "FIRSTSTEPS@2", # Research
  80, # Vis cost
  [<aspect:terra> * 16, <aspect:perditio> * 8],
  <thaumcraft:hungry_chest>, # Output
  Grid(["pretty",
  "# □ #",
  "# M #",
  "# # #"], {
  "#": <thaumcraft:plank_greatwood>,                          # Greatwood Planks
  "□": <thaumicaugmentation:warded_pressure_plate_greatwood>, # Greatwood Arcane Pressure Plate
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

