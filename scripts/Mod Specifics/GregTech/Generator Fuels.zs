import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Fuels Script                                                                                                            //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Adding Empowered Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:empoweredoil> * 1)
    .duration(50)
    .EUt(32)
.buildAndRegister();

//Adding Crystallized Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:crystaloil> * 1)
    .duration(25)
    .EUt(32)
.buildAndRegister();

//Adding Refined Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:refinedcanolaoil> * 1)
    .duration(12)
    .EUt(32)
.buildAndRegister();

//Adding Canola Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:canolaoil> * 1)
    .duration(6)
    .EUt(32)
.buildAndRegister();
