import mods.pyrotech.SoakingPot as SoakingPot;
import mods.gregtech.recipe.RecipeMap;

// Removing Unwanted Recipes
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:material:50>);

// Durable Twine ============================================

SoakingPot.addRecipe(
  "DurableTwine",             // unique recipe name
  <pyrotech:material:26>,       // recipe output
  <liquid:creosote> * 150, // input fluid
  <ore:twine>,   // input item
  1600            // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:creosote> * 150])
    .inputs(<ore:twine>)
    .outputs(<pyrotech:material:26>)
    .duration(150)
    .EUt(16)
    .buildAndRegister();

// Tarred Planks ============================================

SoakingPot.addRecipe(
  "TarredPlanks",             // unique recipe name
  <pyrotech:planks_tarred>,       // recipe output
  <liquid:creosote> * 250, // input fluid
  <mysticalworld:charred_planks>,   // input item
  1600            // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:creosote> * 150])
    .inputs(<mysticalworld:charred_planks>)
    .outputs(<pyrotech:planks_tarred>)
    .duration(150)
    .EUt(16)
    .buildAndRegister();

// Tarred Wool ============================================

SoakingPot.addRecipe(
  "TarredWool",             // unique recipe name
  <pyrotech:wool_tarred>,       // recipe output
  <liquid:creosote> * 250, // input fluid
  <ore:wool>,   // input item
  1600            // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:creosote> * 150])
    .inputs(<ore:wool>)
    .outputs(<pyrotech:wool_tarred>)
    .duration(150)
    .EUt(16)
    .buildAndRegister();     

// Flint Clay ============================================

SoakingPot.addRecipe(
  "FlintClay",             // unique recipe name
  <pyrotech:material:3>,       // recipe output
  <liquid:clay> * 200, // input fluid
  <ore:dustFlint>,   // input item
  1600            // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:clay> * 200])
    .inputs(<ore:dustFlint>)
    .outputs(<pyrotech:material:3>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();     
   
// Blasting Clay   ===========================================
SoakingPot.removeRecipes(<pyrotech:material:54>);

SoakingPot.addRecipe(
  "BlasticClay",             // unique recipe name
  <pyrotech:material:54>,       // recipe output
  <liquid:clay> * 200, // input fluid
  <ore:gunpowder>,   // input item
  1600            // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:clay> * 200])
    .inputs(<ore:gunpowder>)
    .outputs(<pyrotech:material:54>)
    .duration(100)
    .EUt(120)
.buildAndRegister();  
