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
    .duration(20)
    .EUt(32)
.buildAndRegister();

//Adding Crystallized Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:crystaloil> * 1)
    .duration(15)
    .EUt(32)
.buildAndRegister();

//Adding Refined Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:refinedcanolaoil> * 1)
    .duration(10)
    .EUt(32)
.buildAndRegister();

//Adding Canola Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:canolaoil> * 1)
    .duration(5)
    .EUt(32)
.buildAndRegister();

//Adding Thermal Expansion's Fuel's

# Refined Fuel
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:refined_fuel> * 1)
    .duration(15)
    .EUt(32)
.buildAndRegister();

#Grassoline
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:refined_biofuel> * 1)
    .duration(15)
    .EUt(32)
.buildAndRegister();

# Tree Oil
RecipeMaps.COMBUSTION_GENERATOR_FUELS.recipeBuilder()
    .fluidInputs(<liquid:tree_oil> * 1)
    .duration(10)
    .EUt(32)
.buildAndRegister();
