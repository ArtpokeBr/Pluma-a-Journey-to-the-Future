import mods.actuallyadditions.Empowerer as Empowerer;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Empowrer Recipes                                                                                                                 //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Restonia ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <ore:crystalRestonia>, <minecraft:red_mushroom_block>, <railcraft:brick_bloodstained:2>, <roots:infernal_bulb>, <gendustry:honey_drop:11>, 5000, 250, [0.5, 0.2, 0.2]);

//Palis ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <ore:crystalPalis>, <ore:foodBlueberrysmoothie>, <integrateddynamics:crystalized_menril_chunk>, <roots:dewgonia>, <gendustry:honey_drop:14>, 5000, 250, [0.2, 0.2, 0.5]);

//Diamantine ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <ore:crystalDiamantine>, <ore:foodEnergydrink>, <forestry:phosphor>, <roots:cloud_berry>,  <gendustry:honey_drop:22>, 5000, 250, [0.3, 0.3, 0.5]);

//Void ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <ore:crystalVoid>, <ore:foodBlackberrysmoothie>, <gendustry:honey_drop:10>, <roots:baffle_cap_mushroom>, <ore:plateRubber>, 5000, 250, [0.0, 0.0, 0.0]);


//Emeradic ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <ore:crystalEmeraldic>, <ore:foodLimesmoothie>, <actuallyadditions:item_solidified_experience>, <roots:spirit_herb>, <gendustry:honey_drop:20>, 5000, 250, [0.2, 0.5, 0.2]);


//Enori ===========================
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);


Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <ore:crystalEnori>, <ore:foodFirmtofu>, <ore:dustCalcium>, <roots:stalicripe>, <gendustry:honey_drop:25>, 5000, 250, [0.5, 0.5, 0.5]);

//Glod ===========================
Empowerer.addRecipe(<contenttweaker:empowered_glod_crystal>, <contenttweaker:glod_crystal>, <minecraft:double_plant>, <gendustry:honey_drop:21>, <roots:wildewheet>, <ore:foodCheese>, 5000, 250, [0.2, 0.5, 0.5]);

//Endor ===========================
Empowerer.addRecipe(<contenttweaker:empowered_endor_crystal>, <contenttweaker:endor_crystal>, <gendustry:honey_drop:16>, <roots:moonglow_leaf>, <ore:dustElectrotine>, <ore:slimeballBlue>, 5000, 250, [0.2, 0.5, 0.5]);

//Sun Crystal ===========================

#Empty
Empowerer.addRecipe(<extrautils2:suncrystal:250>, <ore:gemDiamond>, <ore:dustGlowstone>, <biomesoplenty:coral:3>, <nuclearcraft:glowing_mushroom>, <ore:dustGlowstone>, 5000, 250, [0.5, 0.5, 0.1]);

#Full
Empowerer.addRecipe(<extrautils2:suncrystal>, <ore:gemDiamond>, <extrabees:honey_comb:75>, <biomesoplenty:coral:3>, <nuclearcraft:glowing_mushroom>, <extrabees:honey_comb:75>, 5000, 250, [0.5, 0.5, 0.1]);


/*

//Redstone Reception Coil ===========================
recipes.remove(<thermalfoundation:material:513>);
Empowerer.addRecipe(<thermalfoundation:material:513>, <thermalfoundation:material:512>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, 8000, 200, [0.7, 0.5, 0.2]);

//Redstone Transmission Coil ===========================
recipes.remove(<thermalfoundation:material:514>);
Empowerer.addRecipe(<thermalfoundation:material:514>, <thermalfoundation:material:512>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, 8000, 200, [0.7, 0.5, 0.2]);

//Redstone Conductance Coil ===========================
recipes.remove(<thermalfoundation:material:515>);
Empowerer.addRecipe(<thermalfoundation:material:515>, <thermalfoundation:material:512>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, 8000, 200, [0.7, 0.5, 0.2]);

*/
