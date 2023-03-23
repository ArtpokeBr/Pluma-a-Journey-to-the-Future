import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// --- Track =======================================================
recipes.remove(<minecraft:rail>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail> * 2, <railcraft:railbed>, <ore:screwSteel> * 4])
    .circuit(32)
    .outputs(<minecraft:rail> * 8)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

// --- Detector Track =======================================================
recipes.remove(<minecraft:detector_rail>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail> * 2, <ore:screwSteel> * 4, <railcraft:detector:1>, <ore:gearRedAlloy>])
    .circuit(32)
    .outputs(<minecraft:detector_rail> * 2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

// --- Activator Track =======================================================
recipes.remove(<minecraft:activator_rail>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail> * 2, <ore:screwSteel> * 4, <ore:craftingRedstoneTorch>, <ore:gearRedAlloy>])
    .circuit(32)
    .outputs(<minecraft:activator_rail> * 2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();


// --- Booster Track  =======================================================
recipes.remove(<minecraft:golden_rail>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail:1> * 2, <ore:screwSteel> * 4, <ore:plateGold>, <ore:plateRedAlloy>])
    .circuit(32)
    .outputs(<minecraft:golden_rail> * 8)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

// --- Elevator Track  =======================================================
recipes.remove(<railcraft:track_elevator>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail:1> * 2, <ore:screwAluminium> * 4, <railcraft:rail> * 3])
    .circuit(32)
    .outputs(<railcraft:track_elevator> * 4)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

// --- Abandoned Track  =======================================================
recipes.remove(<railcraft:track_flex_abandoned>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail> * 2, <railcraft:tie>, <ore:screwSteel> * 4])
    .circuit(32)
    .outputs(<railcraft:track_flex_abandoned> * 16)
    .duration(120)
    .EUt(8)
    .buildAndRegister();

// --- HS Track  =======================================================
recipes.remove(<railcraft:track_flex_high_speed>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail:3> * 2, <railcraft:railbed:1>, <ore:screwAluminium> * 4, <ore:blockSugar> * 2])
    .circuit(32)
    .outputs(<railcraft:track_flex_high_speed> * 8)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

// --- Reinforced Track  =======================================================
recipes.remove(<railcraft:track_flex_reinforced>);

assembler.recipeBuilder()
    .inputs([<railcraft:rail:4> * 2, <railcraft:railbed:1>, <ore:screwSteel> * 4, <ore:plateObsidian> * 2])
    .circuit(32)
    .outputs(<railcraft:track_flex_reinforced> * 8)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

// --- Strap Iron Track  =======================================================
recipes.remove(<railcraft:track_flex_strap_iron>);
   
assembler.recipeBuilder()
    .inputs([<railcraft:rail:2> * 2, <railcraft:railbed>, <ore:boltIron> * 4, <ore:plateTreatedWood> * 2])
    .circuit(32)
    .outputs(<railcraft:track_flex_strap_iron> * 8)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

// // --- HS Electric Track  =======================================================
// recipes.remove(<railcraft:track_flex_hs_electric>);

// assembler.recipeBuilder()
//     .inputs([<railcraft:rail:3> * 3, <railcraft:railbed:1>, <ore:screwAluminium> * 4, <railcraft:rail:5> * 2])
//     .circuit(32)
//     .outputs(<railcraft:track_flex_hs_electric> * 8)
//     .duration(120)
//     .EUt(120)
//     .buildAndRegister();