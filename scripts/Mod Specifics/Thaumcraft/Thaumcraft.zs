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
  [<aspect:aer>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:ignis>, <aspect:terra>],
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

