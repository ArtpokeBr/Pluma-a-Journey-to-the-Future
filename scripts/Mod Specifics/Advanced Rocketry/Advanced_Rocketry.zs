import mods.jei.JEI as JEI;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.recipestages.Recipes;
import mods.advancedrocketry.ArcFurnace as ArcFurnace;

//Restricting Advanced Rocketry (currenltly in DEV)
mods.recipestages.Recipes.setRecipeStageByMod("advancedrocketrylock", "advancedrocketry");
mods.recipestages.Recipes.setRecipeStageByMod("advancedrocketrylock", "libvulpes");

// Plate Presser Hiding
JEI.removeAndHide(<advancedrocketry:platepress>);

//Hiding Bipropellant Related Content (Allows Oxygen and Hydrogen as Fuel)
JEI.removeAndHide(<advancedrocketry:bipropellantrocketmotor>);
JEI.removeAndHide(<advancedrocketry:advbipropellantrocketmotor>);
JEI.removeAndHide(<advancedrocketry:bipropellantfueltank>);

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
    .inputs([<tconstruct:materials:15>, <ore:foilAluminium> * 4, <pyrotech:material:26> * 4, <contenttweaker:refinedcloth>])
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

// Arc Furnace Fixes ///////////////////////////////////////////////////////////////////////////////////////////////////////
ArcFurnace.clear();

#Titanium ingot
ArcFurnace.addRecipe(<ore:ingotTitanium>.firstItem*1, 800/*ticks*/, 8000/*rf/t*/, <ore:dustConcentratedTitanium>.firstItem);

#Titanium Aluminide
ArcFurnace.addRecipe(<ore:ingotTitaniumAluminide>.firstItem*3, 800/*ticks*/, 8000/*rf/t*/, <ore:ingotTitanium>.firstItem*3, <ore:ingotAluminium>.firstItem*7);

#Titanium Iridium Alloy
ArcFurnace.addRecipe(<ore:ingotTitaniumIridium>.firstItem*2, 800/*ticks*/, 16000/*rf/t*/, <ore:ingotTitanium>.firstItem*1, <ore:ingotIridium>.firstItem*1);

# Structure Tower
recipes.remove(<advancedrocketry:structuretower>);
chemical_bath.recipeBuilder()
    .inputs(<ore:frameGtStainlessSteel>)
    .fluidInputs(<liquid:vanadium_steel> * 288)
    .outputs(<advancedrocketry:structuretower>)
    .duration(100)
    .EUt(130)
.buildAndRegister();

# Launch Pad
recipes.remove(<advancedrocketry:launchpad>);
mixer.recipeBuilder()
    .inputs(<advancedrocketry:concrete>)
    .fluidInputs(<liquid:dye_yellow> * 144, <liquid:dye_black> * 144)
    .outputs(<advancedrocketry:launchpad>)
    .duration(80)
    .EUt(75)
.buildAndRegister();

# [Space Suit Helmet] from [Fortified Glass Pane][+3]
recipes.remove(<advancedrocketry:spacehelmet>);
craft.make(<advancedrocketry:spacehelmet>.withTag({}), ["pretty",
  "□ ╱ □",
  "╱ F ╱",
  "T T T"], {
  "□": <ore:plateAdvancedAlloy>,                   # Advanced Alloy Plate
  "╱": <ore:stickAdvancedAlloy>,                   # Advanced Alloy Rod
  "F": <thaumicaugmentation:fortified_glass_pane>, # Fortified Glass Pane
  "T": <contenttweaker:thermalcloth>,              # Thermal Cloth
});

# [Space Suit Chest-Piece] from [Scuba Tank][+3]
recipes.remove(<advancedrocketry:spacechestplate>);
craft.make(<advancedrocketry:spacechestplate>.withTag({}), ["pretty",
  "T ╱ T",
  "T S T",
  "T □ T"], {
  "T": <contenttweaker:thermalcloth>, # Thermal Cloth
  "╱": <ore:stickAdvancedAlloy>,      # Advanced Alloy Rod
  "S": <mekanism:scubatank>,          # Scuba Tank
  "□": <ore:plateAdvancedAlloy>,      # Advanced Alloy Plate
});

# [Space Suit Leggings] from [Advanced Alloy Rod][+1]
recipes.remove(<advancedrocketry:spaceleggings>);
craft.make(<advancedrocketry:spaceleggings>.withTag({}), ["pretty",
  "T ╱ T",
  "T   T",
  "T   T"], {
  "T": <contenttweaker:thermalcloth>, # Thermal Cloth
  "╱": <ore:stickAdvancedAlloy>,      # Advanced Alloy Rod
});

# [Space Suit Boots] from [Advanced Alloy Rod][+2]
recipes.remove(<advancedrocketry:spaceboots>);
craft.make(<advancedrocketry:spaceboots>.withTag({}), ["pretty",
  "     ",
  "T ╱ T",
  "□   □"], {
  "T": <contenttweaker:thermalcloth>, # Thermal Cloth
  "╱": <ore:stickAdvancedAlloy>,      # Advanced Alloy Rod
  "□": <ore:plateAdvancedAlloy>,      # Advanced Alloy Plate
});

# Refined Cloth
forming.recipeBuilder()
    .inputs(<thaumcraft:fabric>, <ore:clothManaweave>, <projectred-core:resource_item:420>)
    .outputs(<contenttweaker:refinedcloth>*3)
    .duration(80)
    .EUt(80)
.buildAndRegister();

forming.recipeBuilder()
    .inputs(<thaumcraft:fabric>, <ore:clothManaweave>, <projectred-core:resource_item:420>, <forestry:bee_combs:3>)
    .outputs(<contenttweaker:refinedcloth>*6)
    .duration(100)
    .EUt(120)
.buildAndRegister();

