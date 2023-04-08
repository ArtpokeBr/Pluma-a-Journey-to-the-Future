import mods.thermalexpansion.Insolator as Insolator;

// Fixing the Stygian Tree =========================================

//Adding to the Sappling Infuser from Thermal
Insolator.addRecipeSaplingInfuser(<stygian:endlog> * 18, <stygian:endcanopysapling>, <thermalfoundation:fertilizer:2>, 16000, <stygian:endcanopysapling>, 100, 2500);
Insolator.addRecipeSaplingInfuser(<stygian:endlog> * 12, <stygian:endcanopysapling>, <thermalfoundation:fertilizer:1>, 16000, <stygian:endcanopysapling>, 100, 2500);
Insolator.addRecipeSaplingInfuser(<stygian:endlog> * 6, <stygian:endcanopysapling>, <thermalfoundation:fertilizer>, 16000, <stygian:endcanopysapling>, 100, 2500);

//Info Tooltip
<stygian:endcanopysapling>.addTooltip(format.red(format.bold("Attention: ")) + format.white("Not Compatible with the Farming Station and the Farm Multiblock."));
<stygian:endcanopysapling>.addTooltip(format.aqua(format.italic("But you can use a Phytogenic Insolator.")));

// Fixing Enbiotic

//Adding to the Phytogenic from Thermal
Insolator.addRecipe(<stygian:endglow> * 18, <stygian:endglow>, <thermalfoundation:fertilizer:2>, 16000, <stygian:endglow>, 0, 2500);
Insolator.addRecipe(<stygian:endglow> * 12, <stygian:endglow>, <thermalfoundation:fertilizer:1>, 16000, <stygian:endglow>, 0, 2500);
Insolator.addRecipe(<stygian:endglow> * 6, <stygian:endglow>, <thermalfoundation:fertilizer>, 16000, <stygian:endglow>, 0, 2500);

//Fixing Stygian Grass

//Adding to the Phytogenic from Thermal
Insolator.addRecipe(<stygian:endtallgrass> * 18, <stygian:endtallgrass>, <thermalfoundation:fertilizer:2>, 16000, <stygian:endtallgrass>, 0, 2500);
Insolator.addRecipe(<stygian:endtallgrass> * 12, <stygian:endtallgrass>, <thermalfoundation:fertilizer:1>, 16000, <stygian:endtallgrass>, 0, 2500);
Insolator.addRecipe(<stygian:endtallgrass> * 6, <stygian:endtallgrass>, <thermalfoundation:fertilizer>, 16000, <stygian:endtallgrass>, 0, 2500);

//Porphyry
large_chemical_reactor.recipeBuilder()
    .inputs(<contenttweaker:endermansheart>, <stygian:endlog>, <ore:compressed2xObsidian>)
	.fluidInputs(<liquid:chloromethane> * 580)
    .outputs(<stygian:endobsidian> * 9)
    .duration(1200)
    .EUt(510)
.buildAndRegister();

//Leachstone
large_chemical_reactor.recipeBuilder()
    .inputs(<stygian:endobsidian>, <integrateddynamics:crystalized_chorus_chunk>*4)
	.fluidInputs(<liquid:liquid_nightmares> * 580)
    .outputs(<stygian:endmagma> * 3)
    .duration(1200)
    .EUt(520)
.buildAndRegister();

//Stygian Acid
extractor.recipeBuilder()
    .inputs(<stygian:endmagma>)
	.fluidOutputs(<liquid:endacid> * 1000)
    .duration(200)
    .EUt(150)
.buildAndRegister();



