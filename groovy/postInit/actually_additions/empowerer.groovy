// Empowerer Recipes ==========================================================

//Restonia ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalRestonia'))
    .output(item('actuallyadditions:item_crystal_empowered'))
    .input(item('minecraft:red_mushroom_block'), item('railcraft:bloodstained:2'), item('roots:infernal_bulb'), item('gendustry:honey_drop:11'))
    .energy(5000)
    .time(250)
    .color(0.5, 0.2, 0.2)
    .register()

//Palis ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered:1'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered:1'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalPalis'))
    .output(item('actuallyadditions:item_crystal_empowered:1'))
    .input(ore('foodBlueberrysmoothie'), item('integrateddynamics:crystalized_menril_chunk'), item('roots:dewgonia'), item('gendustry:honey_drop:14'))
    .energy(5000)
    .time(250)
    .color(0.2, 0.2, 0.5)
    .register()

//Diamantine ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered:2'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered:2'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalDiamantine'))
    .output(item('actuallyadditions:item_crystal_empowered:2'))
    .input(ore('foodEnergydrink'), item('forestry:phosphor'), item('roots:cloud_berry'), item('gendustry:honey_drop:22'))
    .energy(5000)
    .time(250)
    .color(0.3, 0.3, 0.5)
    .register()

//Void ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered:3'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered:3'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalVoid'))
    .output(item('actuallyadditions:item_crystal_empowered:3'))
    .input(ore('foodBlackberrysmoothie'), item('gendustry:honey_drop:10'), item('roots:baffle_cap_mushroom'), ore('plateRubber'))
    .energy(5000)
    .time(250)
    .color(0.0, 0.0, 0.0)
    .register()

//Emeradic ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered:4'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered:4'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalEmeraldic'))
    .output(item('actuallyadditions:item_crystal_empowered:4'))
    .input(ore('foodLimesmoothie'), item('actuallyadditions:item_solidified_experience'), item('roots:spirit_herb'), item('gendustry:honey_drop:20'))
    .energy(5000)
    .time(250)
    .color(0.2, 0.5, 0.2)
    .register()

//Enori ===========================
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:item_crystal_empowered:5'))
mods.actuallyadditions.empowerer.removeByOutput(item('actuallyadditions:block_crystal_empowered:5'))

mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('crystalEnori'))
    .output(item('actuallyadditions:item_crystal_empowered:5'))
    .input(ore('foodFirmtofu'), ore('dustCalcium'), item('roots:stalicripe'), item('gendustry:honey_drop:25'))
    .energy(5000)
    .time(250)
    .color(0.5, 0.5, 0.5)
    .register()

//Glod ===========================
mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(item('contenttweaker:glod_crystal'))
    .output(item('contenttweaker:empowered_glod_crystal'))
    .input(item('minecraft:double_plant'), item('gendustry:honey_drop:21'), item('roots:wildewheet'), ore('foodCheese'))
    .energy(5000)
    .time(250)
    .color(0.2, 0.5, 0.5)
    .register()

//Endor ===========================
mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(item('contenttweaker:endor_crystal'))
    .output(item('contenttweaker:empowered_endor_crystal'))
    .input(item('gendustry:honey_drop:16'), item('roots:moonglow_leaf'), ore('dustElectrotine'), ore('slimeballBlue'))
    .energy(5000)
    .time(250)
    .color(0.2, 0.5, 0.5)
    .register()

//Sun Crystal ===========================

//Empty
mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('gemDiamond'))
    .output(item('extrautils2:suncrystal:250'))
    .input(ore('dustGlowstone'), item('biomesoplenty:coral:3'), item('nuclearcraft:glowing_mushroom'), ore('dustGlowstone'))
    .energy(5000)
    .time(250)
    .color(0.5, 0.5, 0.1)
    .register()

//Full
mods.actuallyadditions.empowerer.recipeBuilder()
    .mainInput(ore('gemDiamond'))
    .output(item('extrautils2:suncrystal'))
    .input(item('extrabees:honey_comb:75'), item('biomesoplenty:coral:3'), item('nuclearcraft:glowing_mushroom'), item('extrabees:honey_comb:75'))
    .energy(5000)
    .time(250)
    .color(0.5, 0.5, 0.1)
    .register()


// Parked / never enabled in the original ZenScript source - kept for reference only, not migrated.
//
// //Redstone Reception Coil ===========================
// recipes.remove(<thermalfoundation:material:513>);
// Empowerer.addRecipe(<thermalfoundation:material:513>, <thermalfoundation:material:512>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, 8000, 200, [0.7, 0.5, 0.2]);
//
// //Redstone Transmission Coil ===========================
// recipes.remove(<thermalfoundation:material:514>);
// Empowerer.addRecipe(<thermalfoundation:material:514>, <thermalfoundation:material:512>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, 8000, 200, [0.7, 0.5, 0.2]);
//
// //Redstone Conductance Coil ===========================
// recipes.remove(<thermalfoundation:material:515>);
// Empowerer.addRecipe(<thermalfoundation:material:515>, <thermalfoundation:material:512>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, 8000, 200, [0.7, 0.5, 0.2]);
