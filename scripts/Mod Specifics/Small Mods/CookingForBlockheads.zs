import mods.artisanworktables.builder.RecipeBuilder;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Cooking for Blockheads Script                                                                                                    //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Cooking Table
recipes.remove(<cookingforblockheads:cooking_table>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<minecraft:hardened_clay>, <cookingforblockheads:recipe_book:2>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<cookingforblockheads:cooking_table>)
.create();


// Oven
recipes.remove(<cookingforblockheads:oven>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:seared_glass>, <tconstruct:seared_glass>, <tconstruct:seared_glass>],
    [<ore:lightPlateIron>, <ore:craftingFurnace>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:gtceWrenches>, 10)
  .addOutput(<cookingforblockheads:oven>)
.create();


//Fridge
recipes.remove(<cookingforblockheads:fridge>);
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:crate_stone>, <ore:doorIron>, <ore:screwSteel>, <ore:screwSteel>])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<cookingforblockheads:fridge>)
.create();


// Sink
recipes.remove(<cookingforblockheads:sink>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>],
    [<minecraft:hardened_clay>, <pyrotech:brick_tank>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .setFluid(<liquid:water> * 8000)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<cookingforblockheads:sink>)
.create();


// Tool Rack
recipes.remove(<cookingforblockheads:tool_rack>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:boltSteel>, null, <ore:boltSteel>]])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<cookingforblockheads:tool_rack>)
.create();


// Toaster
recipes.remove(<cookingforblockheads:toaster>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, null, <quark:iron_button>],
    [<ore:lightPlateIron>, <ore:springIron>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <minecraft:lava_bucket>, <ore:lightPlateIron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .setFluid(<liquid:soldering_alloy> * 72)
  .addOutput(<cookingforblockheads:toaster>)
.create();


//Milk Jar
recipes.remove(<cookingforblockheads:milk_jar>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:blockGlassColorless>, <ore:slabWood>, <ore:blockGlassColorless>],
    [<ore:blockGlassColorless>, <pyrotech:brick_tank>, <ore:blockGlassColorless>],
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]])
  .addTool(<ore:gtceSaws>, 1)
  .addOutput(<cookingforblockheads:milk_jar>)
.create();


//SpiceRack
RecipeBuilder.get("basic")
  .setShapeless([<ore:slabWood>])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:gtceSaws>, 10)
  .addOutput(<cookingforblockheads:spice_rack>)
.create();


// Kitchen Counter
recipes.remove(<cookingforblockheads:counter>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<minecraft:hardened_clay>, <ore:chestWood>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<cookingforblockheads:counter>)
.create();


// Kitchen Cabinet
recipes.remove(<cookingforblockheads:cabinet>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:chestWood>, <minecraft:hardened_clay>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<cookingforblockheads:cabinet>)
.create();


//Kitchen Corner
recipes.remove(<cookingforblockheads:corner>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<cookingforblockheads:corner>)
.create();


//Fruits Basket
recipes.remove(<cookingforblockheads:fruit_basket>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <minecraft:wooden_pressure_plate>, <ore:slabWood>]])
  .setFluid(<liquid:creosote> * 1000)
  .addTool(<ore:gtceSaws>, 1)
  .addOutput(<cookingforblockheads:fruit_basket>)
  .create();


//Heating Unit
recipes.remove(<cookingforblockheads:heating_unit>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:foilWroughtIron>, <minecraft:comparator>, <ore:foilWroughtIron>],
    [<ore:plateWroughtIron>, <ore:batteryLv>, <ore:plateWroughtIron>]])
  .setFluid(<liquid:soldering_alloy> * 72)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<cookingforblockheads:heating_unit>)
.create();


//Ice Unit
recipes.remove(<cookingforblockheads:ice_unit>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustIce>, <ore:dustIce>, <ore:dustIce>],
    [<ore:plateWroughtIron>, <minecraft:comparator>, <ore:plateWroughtIron>]])
  .setFluid(<liquid:soldering_alloy> * 72)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<cookingforblockheads:ice_unit>)
.create();


//Preservation Chamber
recipes.remove(<cookingforblockheads:preservation_chamber>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateWroughtIron>, <minecraft:comparator>, <ore:plateWroughtIron>]])
  .setFluid(<liquid:soldering_alloy> * 72)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<cookingforblockheads:preservation_chamber>)
.create();
