import crafttweaker.item.IItemStack;
import mods.pyrotech.CrudeDryingRack as DryingRack;
import mods.pyrotech.DryingRack as DryingRackII;
import mods.pyrotech.SoakingPot as SoakingPot;
import mods.gregtech.recipe.RecipeMap;
import mods.bloodmagic.AlchemyTable as AlchemyTable;
import mods.pyrotech.Barrel as Barrel;

### Leather process Removals ###

recipes.remove(<minecraft:leather>);
AlchemyTable.removeRecipe([<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:flint>, <minecraft:water_bucket>]);


//Scraped Leather ======================================================================================================================

# Small Leathers
var SmallScraped as IItemStack[] = [

<pyrotech:pelt_bat>,
<minecraft:rabbit_hide>

     ];
for i in SmallScraped {   
<ore:rawSmallHide>.add(i);  

recipes.addShapeless(<pyrotech:hide_small_scraped>, [i, <ore:gtceKnife>]);  

saw.recipeBuilder()
    .inputs(i)
    .outputs(<pyrotech:hide_small_scraped>)
    .duration(38)
    .EUt(6)
.buildAndRegister();    
} 

SoakingPot.removeRecipes(<pyrotech:hide_small_washed>);
SoakingPot.addRecipe(
  "Small Washed Hide",             // unique recipe name
  <pyrotech:hide_small_washed>,  // recipe output
  <liquid:water> * 500,      // input fluid
  <pyrotech:hide_small_scraped>,   // input item
  4000                           // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .inputs(<pyrotech:hide_small_scraped>)
    .fluidInputs(<liquid:water> * 250)
    .outputs(<pyrotech:hide_small_washed>)
    .duration(130)
    .EUt(10)
.buildAndRegister();

recipes.addShapeless(<contenttweaker:small_hide_salted>, [<pyrotech:hide_small_washed>, <ore:dustSalt>]); 

mixer.recipeBuilder()
    .inputs(<ore:dustSalt>, <pyrotech:hide_small_washed>)
    .outputs(<contenttweaker:small_hide_salted>)
    .duration(80)
    .EUt(2)
.buildAndRegister();

SoakingPot.removeRecipes(<pyrotech:hide_small_tanned>);
SoakingPot.addRecipe(
  "Prepared Small Hide",             // unique recipe name
  <pyrotech:hide_small_tanned>,  // recipe output
  <liquid:tannin> * 250,      // input fluid
  <contenttweaker:small_hide_salted>,   // input item
  3000                           // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:small_hide_salted>)
    .fluidInputs(<liquid:tannin> * 80)
    .outputs(<pyrotech:hide_small_tanned>)
    .duration(90)
    .EUt(10)
.buildAndRegister();

//Small Leather into Big Leather by Compressing
compressor.recipeBuilder()
    .inputs(<pyrotech:material:45>*2)
    .outputs(<ore:leather>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();



// ===================================== //

var Scraped as IItemStack[] = [

<pyrotech:pelt_cow>,
<pyrotech:pelt_mooshroom>,
<pyrotech:pelt_polar_bear>,
<pyrotech:pelt_horse>,
<pyrotech:pelt_wolf>,
<pyrotech:pelt_llama_white>,
<pyrotech:pelt_llama_creamy>,
<pyrotech:pelt_llama_gray>,
<pyrotech:pelt_llama_brown>,
<pyrotech:hide_sheep_sheared>,
<pyrotech:hide_pig>

     ];
for i in Scraped {   
<ore:rawHide>.add(i);

recipes.addShapeless(<pyrotech:hide_scraped>, [i, <ore:gtceKnife>]);  

saw.recipeBuilder()
    .inputs(i)
    .outputs(<pyrotech:hide_scraped>)
    .duration(60)
    .EUt(8)
.buildAndRegister();    
}

//Washed Hide ======================================================================================================================

SoakingPot.removeRecipes(<pyrotech:hide_washed>);
SoakingPot.addRecipe(
  "Washed Hide",             // unique recipe name
  <pyrotech:hide_washed>,  // recipe output
  <liquid:water> * 750,      // input fluid
  <pyrotech:hide_scraped>,   // input item
  8000                           // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .inputs(<pyrotech:hide_scraped>)
    .fluidInputs(<liquid:water> * 500)
    .outputs(<pyrotech:hide_washed>)
    .duration(200)
    .EUt(12)
.buildAndRegister();


//Salted Hide ======================================================================================================================

recipes.addShapeless(<contenttweaker:saltedhide>, [<pyrotech:hide_washed>, <ore:dustSalt>, <ore:dustSalt>]); 

mixer.recipeBuilder()
    .inputs(<ore:dustSalt>, <pyrotech:hide_washed>)
    .outputs(<contenttweaker:saltedhide>)
    .duration(100)
    .EUt(4)
.buildAndRegister();

//Prepared Hide ======================================================================================================================

SoakingPot.removeRecipes(<pyrotech:hide_tanned>);
SoakingPot.addRecipe(
  "Prepared Hide",             // unique recipe name
  <pyrotech:hide_tanned>,  // recipe output
  <liquid:tannin> * 500,      // input fluid
  <contenttweaker:saltedhide>,   // input item
  8000                           // recipe duration in ticks
);

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:saltedhide>)
    .fluidInputs(<liquid:tannin> * 250)
    .outputs(<pyrotech:hide_tanned>)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Leather Itself ======================================================================================================================

// DryingRack.addRecipe(
//   "Leather",                // unique recipe name
//   <minecraft:leather>,     // recipe output
//   <pyrotech:hide_tanned>, // recipe input
//   6400,                        // recipe duration in ticks
//   false  // true if the recipe should be inherited
// );

// DryingRackII.addRecipe(
//   "Leather",                // unique recipe name
//   <minecraft:leather>,     // recipe output
//   <pyrotech:hide_tanned>, // recipe input
//   800,                        // recipe duration in ticks
//   false  // true if the recipe should be inherited
// );

extractor.recipeBuilder()
    .inputs(<pyrotech:hide_tanned>)
    .fluidOutputs(<liquid:tannin> * 50)
    .outputs(<minecraft:leather>)
    .duration(260)
    .EUt(20)
.buildAndRegister();


//Durable Leather ======================================================================================================================

// SoakingPot.addRecipe(
//   "DurableLeather",             // unique recipe name
//   <pyrotech:material:41>,       // recipe output
//   <liquid:creosote> * 150, // input fluid
//   <ore:leather>,   // input item
//   6400            // recipe duration in ticks
// );

chemical_bath.recipeBuilder()
    .inputs(<ore:leather>)
    .fluidInputs(<liquid:creosote> * 500)
    .outputs(<pyrotech:material:41>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:leather>)
    .fluidInputs(<liquid:canolaoil> * 250)
    .outputs(<pyrotech:material:41>)
    .duration(160)
    .EUt(25)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:leather>)
    .fluidInputs(<liquid:seed_oil> * 125)
    .outputs(<pyrotech:material:41>)
    .duration(100)
    .EUt(20)
    .buildAndRegister();

//Making Tanning Dust ===============================================================================
recipes.remove(<contenttweaker:tannin_mixture>);

recipes.addShapeless(<contenttweaker:tannin_mixture> * 2, [<ore:rootsBark>, <ore:Mulch>, <ore:dustFlint>]);

mixer.recipeBuilder()
    .inputs(<ore:rootsBark>, <ore:Mulch>, <ore:dustFlint>)
    .outputs(<contenttweaker:tannin_mixture> * 3)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

//Mixing Tannin into Water will make Tanning Liquid ===============================================

Barrel.removeRecipes(<liquid:tannin>);
Barrel.addRecipe(
  "tannin_fluid",              // unique recipe name
  <liquid:tannin>*1000, // output fluid
  <liquid:water>*1000,  // input fluid
  [<contenttweaker:tannin_mixture>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>], // input items
  6000           // recipe duration in ticks
);

mixer.recipeBuilder()
    .inputs(<contenttweaker:tannin_mixture>)
    .fluidInputs(<liquid:water> * 1000)
    .fluidOutputs(<liquid:tannin> * 1000)
    .duration(100)
    .EUt(40)
.buildAndRegister();

//Leather Strap ===============================================

recipes.addShapeless(<pyrotech:material:39> * 2, [<ore:leather>, <ore:gtceKnife>]);

saw.recipeBuilder()
    .inputs(<ore:leather>)
    .outputs(<pyrotech:material:39> * 4)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

//Leather Sheets ===============================================
recipes.remove(<pyrotech:material:38>);

compressor.recipeBuilder()
    .inputs(<ore:leather>)
    .outputs(<pyrotech:material:38>)
    .duration(80)
    .EUt(8)
.buildAndRegister();

//Leather Cords ===============================================

wiremill.recipeBuilder()
    .inputs(<pyrotech:material:38>)
    .outputs(<pyrotech:material:40>*3)
    .duration(80)
    .EUt(8)
.buildAndRegister();

// Durable Leather ===============================================

saw.recipeBuilder()
    .inputs(<pyrotech:material:41>)
    .outputs(<pyrotech:material:43> * 4)
    .duration(80)
    .EUt(8)
.buildAndRegister();

compressor.recipeBuilder()
    .inputs(<pyrotech:material:41>)
    .outputs(<pyrotech:material:42>)
    .duration(80)
    .EUt(8)
.buildAndRegister();

wiremill.recipeBuilder()
    .inputs(<pyrotech:material:42>)
    .outputs(<pyrotech:material:44>*3)
    .duration(80)
    .EUt(8)
.buildAndRegister();