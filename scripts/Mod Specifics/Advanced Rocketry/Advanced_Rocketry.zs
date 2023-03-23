import mods.jei.JEI as JEI;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.recipestages.Recipes;
import mods.advancedrocketry.ArcFurnace as ArcFurnace;

//Restricting Advanced Rocketry (currenltly in DEV)
mods.recipestages.Recipes.setRecipeStageByMod("advancedrocketrylock", "advancedrocketry");


// Plate Presser Hiding
JEI.removeAndHide(<advancedrocketry:platepress>);

//Lathe Recipe Fixes
mods.advancedrocketry.Lathe.clear();

//Fixing the Planks
recipes.remove(<advancedrocketry:planks>);

######## Cleaning ID Chips ########

recipes.addShapeless("CleaningUpSatteliteID", <advancedrocketry:satelliteidchip>, [<advancedrocketry:satelliteidchip>.withEmptyTag()]);
recipes.addShapeless("CleaningUpPlanetID", <advancedrocketry:planetidchip>, [<advancedrocketry:planetidchip>.withEmptyTag()]);
recipes.addShapeless("CleaningUpAsteroidID", <advancedrocketry:asteroidchip>, [<advancedrocketry:asteroidchip>.withEmptyTag()]);
recipes.addShapeless("CleaningUpElevatorID", <advancedrocketry:elevatorchip>, [<advancedrocketry:elevatorchip>.withEmptyTag()]);
recipes.addShapeless("CleaningUpSpaceStationID", <advancedrocketry:spacestationchip>, [<advancedrocketry:spacestationchip>.withEmptyTag()]);

###################################### Renaming Stuff ##############################################

<advancedrocketry:blocklens>.displayName = "Advanced Lens";

<advancedrocketry:itemcircuitplate:1>.displayName= "Advanced Silicon Wafer";

<advancedrocketry:solarpanel>.displayName= "Structural Solar Panel";

<libvulpes:productgem>.displayName= "Dilithium Compound";

<advancedrocketry:concrete>.displayName= "Armed Concrete";

###################################### Tooltips ##############################################

var jetpack = <advancedrocketry:jetpack>;

	jetpack.addTooltip(format.red(format.bold("Attention: ")) + format.white("This Item need to be applied the your Space Chestplate"));
    jetpack.addTooltip(format.white(format.bold("Press Shift for more Information")));
    jetpack.addShiftTooltip(format.white("This Jetpack Consumes Hydrogen and have a Specific Keybind to Switch Modes. (Shift + Keybind)"));
    jetpack.addShiftTooltip(format.green(format.bold("Normal Mode: ")) + format.white("Accelerates the player upward when the jump key is held"));
    jetpack.addShiftTooltip(format.green(format.bold("Hover Mode: ")) + format.white("Allows the player to fly in a method similar to creative mode flight, however a Hover Upgrade must be installed in the helmet"));

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Advanced Rocketry Recipes                                                                                                        //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// //Thermite
// recipes.remove(<advancedrocketry:thermite>);
// mixer.recipeBuilder()
//     .inputs(<ore:dustUraniumOxide>)
//     .inputs(<ore:dustAluminium>)
//     .inputs(<ore:dustIronMagnetic>)
//     .outputs(<ore:dustThermite>.firstItem * 3)
//     .duration(200)
//     .EUt(8)
//     .buildAndRegister();

// Armed Concrete
recipes.remove(<advancedrocketry:concrete>);
mixer.recipeBuilder()
    .inputs(<ore:stickLongSteel>)
    .fluidInputs([<liquid:concrete> * 1296])
    .outputs(<advancedrocketry:concrete>)
    .duration(400)
    .EUt(128)
    .buildAndRegister();

//Thermal Cloth
assembler.recipeBuilder()
    .inputs([<tconstruct:materials:15> * 8, <ore:foilAluminium> * 8, <pyrotech:material:26> * 8])
    .outputs(<contenttweaker:thermalcloth>)
    .duration(160)
    .EUt(120)
    .buildAndRegister();

//Heavy Duty Alloy
assembler.recipeBuilder()
    .inputs([<ore:plateAluminium> * 2, <ore:plateBronze> * 2, <ore:plateSteel> * 2])
    .fluidInputs([<liquid:stainless_steel> * 72]) 
    .circuit(32)
    .outputs(<contenttweaker:heavydutyalloy>)
    .duration(250)
    .EUt(500)
    .buildAndRegister();

//Heavy Duty Alloy Tier II
assembler.recipeBuilder()
    .inputs([<ore:plateTungsten> * 2, <ore:plateMithril> * 2, <ore:plateStainlessSteel> * 2])
    .fluidInputs([<liquid:titanium> * 72]) 
    .circuit(32)
    .outputs(<contenttweaker:heavydutyalloy2>)
    .duration(300)
    .EUt(500)
    .buildAndRegister();

//Heavy Duty Plate
implosion.recipeBuilder()
    .inputs([<contenttweaker:heavydutyalloy>])
    .property("explosives", 16)
    .outputs(<contenttweaker:heavyduty>)
    .duration(40)
    .EUt(500)
    .buildAndRegister();

//Heavy Duty Plate Tier II
implosion.recipeBuilder()
    .inputs([<contenttweaker:heavydutyalloy2>])
    .property("explosives", 32)
    .outputs(<contenttweaker:heavyduty2>)
    .duration(60)
    .EUt(1000)
    .buildAndRegister();

// Artisan's ///////////////////////////////////////////////////////////////////////////////////////////////////////

//Unprepared Space Helmet
RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>]])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<contenttweaker:unpreparedspacehelmet>)
  .create();

//Unprepared Space Chestplate
RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<contenttweaker:unpreparedspacechestplate>)
  .create();

//Unprepared Space Leggings
RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>]])
  .addTool(<ore:artisansNeedle>, 8)
  .addOutput(<contenttweaker:unpreparedspaceleggins>)
  .create();

//Unprepared Space Boots
RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>],
    [<contenttweaker:refinedcloth>, null, <contenttweaker:refinedcloth>]])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<contenttweaker:unpreparedspaceboots>)
  .create();

// Arc Furnace Fixes ///////////////////////////////////////////////////////////////////////////////////////////////////////
ArcFurnace.clear();

#Titanium ingot
ArcFurnace.addRecipe(<ore:ingotTitanium>.firstItem*1, 800/*ticks*/, 8000/*rf/t*/, <ore:dustConcentratedTitanium>.firstItem);

#Titanium Aluminide
ArcFurnace.addRecipe(<ore:ingotTitaniumAluminide>.firstItem*3, 800/*ticks*/, 8000/*rf/t*/, <ore:ingotTitanium>.firstItem*3, <ore:ingotAluminium>.firstItem*7);

#Titanium Iridium Alloy
ArcFurnace.addRecipe(<ore:ingotTitaniumIridium>.firstItem*2, 800/*ticks*/, 16000/*rf/t*/, <ore:ingotTitanium>.firstItem*1, <ore:ingotIridium>.firstItem*1);
