import mods.artisanworktables.builder.RecipeBuilder;

//Crop Sticks
recipes.remove(<agricraft:crop_sticks>);
recipes.addShapeless(<agricraft:crop_sticks>*4, [<ore:itemNutritiousStick>, <ore:itemNutritiousStick>, <ore:itemNutritiousStick>, <ore:itemNutritiousStick>]);

//Magnifying Glass
recipes.remove(<agricraft:magnifying_glass>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:lensGlass>],
    [<ore:stickTreatedWood>, null]])
  .addTool(<ore:artisansGemCutter>, 10)
  .addOutput(<agricraft:magnifying_glass>)
.create();

//Wood Rake (Currently Disabled)
mods.jei.JEI.removeAndHide(<agricraft:rake>);

//Iron Rake
recipes.remove(<agricraft:rake:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:boltIron>, <ore:boltIron>, <ore:boltIron>],
    [<ore:foilWroughtIron>, <ore:stickTreatedWood>, <ore:foilWroughtIron>],
    [null, <ore:stickTreatedWood>, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<agricraft:rake:1>)
.create();

//Gardening Trowel
recipes.remove(<agricraft:trowel>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:screwIron>, <ore:stickTreatedWood>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:screwIron>]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<agricraft:trowel>)
.create();

// Computer Controlled Seed Analyzer
recipes.remove(<agricraft:peripheral>);
recipes.addShaped(<agricraft:peripheral> * 1, [[<ore:lightPlateSteel>, <mia:armored_glass>, <ore:lightPlateSteel>], [<ore:lightPlateSteel>, <agricraft:seed_analyzer>, <ore:lightPlateSteel>],[<ore:lightPlateSteel>, <opencomputers:case1:0>, <ore:lightPlateSteel>]]);

//Clipper
recipes.remove(<agricraft:clipper>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:plateVanadiumSteel>, <ore:screwVanadiumSteel>],
    [<ore:stickRedSteel>, <enderio:item_dark_steel_shears>, <ore:plateVanadiumSteel>],
    [null, <ore:stickRedSteel>, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<agricraft:clipper>)
.create();

<agricraft:agri_seed>.addTooltip(format.white("Can only be planted in a ") + format.green("Crop Stick") + format.white("."));
