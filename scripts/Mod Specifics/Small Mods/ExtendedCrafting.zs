import mods.extendedcrafting.CombinationCrafting as CombinationCrafting;

## Components =================================

// Basic Component
recipes.remove(<extendedcrafting:material:14>);
recipes.addShaped(<extendedcrafting:material:14> * 1, [[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null], [<ore:ingotZinc>, <ore:ingotZinc>, null],[null, null, null]]);

// Advanced Component
recipes.remove(<extendedcrafting:material:15>);
recipes.addShaped(<extendedcrafting:material:15> * 1, [[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null], [<ore:ingotRoseGold>, <ore:ingotRoseGold>, null],[null, null, null]]);

// Elite Component
recipes.remove(<extendedcrafting:material:16>);
recipes.addShaped(<extendedcrafting:material:16> * 1, [[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null], [<ore:ingotIridium>, <ore:ingotIridium>, null],[null, null, null]]);

// Ultimate Component
recipes.remove(<extendedcrafting:material:17>);
recipes.addShaped(<extendedcrafting:material:17> * 1, [[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null], [<ore:ingotEnrichedNaquadahTriniumEuropiumDuranide>, <ore:ingotEnrichedNaquadahTriniumEuropiumDuranide>, null],[null, null, null]]);

## Tables ===================================

// Basic Crafting Table
recipes.remove(<extendedcrafting:table_basic>);
recipes.addShaped(<extendedcrafting:table_basic> * 1, [[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>], [<ore:workbench>, <ore:blockZinc>, <ore:workbench>],[<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]]);

// Advanced Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped(<extendedcrafting:table_advanced> * 1, [[<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>], [<extendedcrafting:table_basic>, <ore:blockRoseGold>, <extendedcrafting:table_basic>],[<extendedcrafting:material:15>, <extendedcrafting:material:2>, <extendedcrafting:material:15>]]);

// Elite Crafting Table
recipes.remove(<extendedcrafting:table_elite>);
recipes.addShaped(<extendedcrafting:table_elite> * 1, [[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>], [<extendedcrafting:table_advanced>, <ore:blockIridium>, <extendedcrafting:table_advanced>],[<extendedcrafting:material:16>, <extendedcrafting:material:2>, <extendedcrafting:material:16>]]);

// Ultimate Crafting Table
recipes.remove(<extendedcrafting:table_ultimate>);

// ==============================

//Black Iron Fixes
recipes.removeByRecipeName("extendedcrafting:black_iron_ingot");

// # Ingot                                       Now can be found in the Metallurgic Infuser Script.
// alloy.recipeBuilder()
//     .inputs(<ore:dustTungsten>, <ore:ingotMelodicAlloy>)
//     .outputs(<ore:ingotBlackIron>.firstItem*2)
//     .duration(300)
//     .EUt(512)
// .buildAndRegister();

# Block
recipes.remove(<ore:blockBlackIron>.firstItem);
compressor.recipeBuilder()
    .inputs(<ore:ingotBlackIron>*9)
    .outputs(<ore:blockBlackIron>.firstItem)
    .duration(300)
    .EUt(2)
.buildAndRegister();

# Plate
recipes.remove(<extendedcrafting:material:2>);

<extendedcrafting:material:2>.displayName = "Black Iron Plate";

bender.recipeBuilder()
    .inputs(<ore:ingotBlackIron>)
    .circuit(0)
    .outputs(<extendedcrafting:material:2>)
    .duration(140)
    .EUt(24)
.buildAndRegister();

alloy.recipeBuilder()
    .inputs(<ore:ingotBlackIron> * 2)
    .notConsumable(<gregtech:meta_item_1:12>) 
    .outputs(<extendedcrafting:material:2>)
    .duration(800)
    .EUt(32)
.buildAndRegister();

extruder.recipeBuilder()
    .inputs(<ore:ingotBlackIron> * 1)
    .notConsumable(<gregtech:meta_item_1:31>)
    .outputs(<extendedcrafting:material:2>)
    .duration(80)
    .EUt(60)
.buildAndRegister();

# Stick
recipes.remove(<extendedcrafting:material:3>);

lathe.recipeBuilder()
    .inputs(<ore:ingotBlackIron>)
    .outputs(<extendedcrafting:material:3>*2)
    .duration(212)
    .EUt(32)
.buildAndRegister();

//Ender Ingot
// recipes.removeByRecipeName("extendedcrafting:ender_ingot");          Can now be found in the Metallurgic Infuser Script.
// alloy.recipeBuilder()
//     .inputs(<ore:ingotBlackIron>, <enderutilities:enderpart>)
//     .outputs(<extendedcrafting:material:36>*2)
//     .duration(300)
//     .EUt(550)
// .buildAndRegister();


// =================================================================================================== //

//Luminessence Fixes
recipes.removeByRecipeName("extendedcrafting:luminessence");
mixer.recipeBuilder()
    .inputs(<evilcraft:garmonbozia>, <astralsorcery:itemusabledust>, <enderio:block_holier_fog>*2)
    .outputs(<extendedcrafting:material:7>*4)
    .duration(300)
    .EUt(450)
.buildAndRegister();

# Block
recipes.remove(<ore:blockLuminessence>.firstItem);
compressor.recipeBuilder()
    .inputs(<extendedcrafting:material:7>*9)
    .outputs(<ore:blockLuminessence>.firstItem)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Crystalltine Fixes

# Block
recipes.remove(<ore:blockCrystaltine>.firstItem);
compressor.recipeBuilder()
    .inputs(<ore:ingotCrystaltine>*9)
    .outputs(<ore:blockCrystaltine>.firstItem)
    .duration(300)
    .EUt(20)
.buildAndRegister();

//Ultimate Ingot Fixes

# Block
recipes.remove(<ore:blockUltimate>.firstItem);
compressor.recipeBuilder()
    .inputs(<ore:ingotUltimate>*9)
    .outputs(<ore:blockUltimate>.firstItem)
    .duration(300)
    .EUt(200)
.buildAndRegister();

//Ender Fixes

# Block
recipes.remove(<extendedcrafting:storage:5>);
compressor.recipeBuilder()
    .inputs(<extendedcrafting:material:36>*9)
    .outputs(<extendedcrafting:storage:5>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Ender Star Fixes

# Block
recipes.remove(<extendedcrafting:storage:6>);
compressor.recipeBuilder()
    .inputs(<extendedcrafting:material:40>*9)
    .outputs(<extendedcrafting:storage:6>)
    .duration(300)
    .EUt(20)
.buildAndRegister();

//Enhanced Ender Fixes

# Block
recipes.remove(<extendedcrafting:storage:7>);
compressor.recipeBuilder()
    .inputs(<extendedcrafting:material:48>*9)
    .outputs(<extendedcrafting:storage:7>)
    .duration(300)
    .EUt(20)
.buildAndRegister();

//Black Iron Chassis
<extendedcrafting:frame>.displayName = "Black Iron Chassis";

recipes.remove(<extendedcrafting:frame>);
assembler.recipeBuilder()
    .inputs(<ore:itemEnhancedMachineChassi>, <extendedcrafting:material:2>*6)
    .fluidInputs(<liquid:hsla_steel> * 288)
    .circuit(8)
    .outputs(<extendedcrafting:frame>)
    .duration(300)
    .EUt(550)
.buildAndRegister();

// Pedestal
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal> * 1, [[null, <ore:ingotBlackIron>, null], [null, <ore:ingotBlackIron>, null],[<ore:ingotBlackIron>, <extendedcrafting:material:2>, <ore:ingotBlackIron>]]);

// Crafting Core
recipes.remove(<extendedcrafting:crafting_core>);
recipes.addShaped(<extendedcrafting:crafting_core> * 1, [[<ore:ingotBlackIron>, <ore:gearSentientMetal>, <ore:ingotBlackIron>], [<ore:plateSentientMetal>, <extendedcrafting:frame>, <ore:plateSentientMetal>],[<ore:ingotBlackIron>, <extendedcrafting:material:2>, <ore:ingotBlackIron>]]);

// Recipes for the Crafting Core from Actually Additions /////////////////////////////////////////////////////////////////////////////////////

//Restonia ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 80000, <actuallyadditions:item_crystal>, [<minecraft:red_mushroom_block>, <railcraft:brick_bloodstained:2>, <roots:infernal_bulb>, <gendustry:honey_drop:11>]);

//Palis ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 80000, <actuallyadditions:item_crystal:1>, [<ore:foodBlueberrysmoothie>.firstItem, <integrateddynamics:crystalized_menril_chunk>, <roots:dewgonia>, <gendustry:honey_drop:14>]);

//Diamantine ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 80000, <actuallyadditions:item_crystal:2>, [<ore:foodEnergydrink>.firstItem, <forestry:phosphor>, <roots:cloud_berry>,  <gendustry:honey_drop:22>]);

//Void ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 80000, <actuallyadditions:item_crystal:3>, [<ore:foodBlackberrysmoothie>.firstItem, <gendustry:honey_drop:10>, <roots:baffle_cap_mushroom>, <ore:plateRubber>.firstItem]);

//Emeradic ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 80000, <actuallyadditions:item_crystal:4>, [<ore:foodLimesmoothie>.firstItem, <actuallyadditions:item_solidified_experience>, <roots:spirit_herb>, <gendustry:honey_drop:20>]);

//Enori ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 80000, <actuallyadditions:item_crystal:5>, [<ore:foodFirmtofu>.firstItem, <ore:dustCalcium>.firstItem, <roots:stalicripe>, <gendustry:honey_drop:25>]);

//Glod ===========================
CombinationCrafting.addRecipe(<contenttweaker:empowered_glod_crystal>, 80000, <contenttweaker:glod_crystal>, [<minecraft:double_plant>, <gendustry:honey_drop:21>, <roots:wildewheet>, <ore:foodCheese>.firstItem]);

//Endor ===========================
CombinationCrafting.addRecipe(<contenttweaker:empowered_endor_crystal>, 80000, <contenttweaker:endor_crystal>, [<gendustry:honey_drop:16>, <roots:moonglow_leaf>, <ore:dustElectrotine>.firstItem, <ore:cropJuniperberry>.firstItem]);

// ==== //

//Advanced ===========================
CombinationCrafting.addRecipe(<mekanism:controlcircuit:1>, 100000, <mekanism:controlcircuit>, [<ore:itemEnrichedAlloy>.firstItem, <ore:itemEnrichedAlloy>.firstItem, <ore:itemEnrichedAlloy>.firstItem, <ore:itemEnrichedAlloy>.firstItem]);

//Elite ===========================
CombinationCrafting.addRecipe(<mekanism:controlcircuit:2>, 100000, <mekanism:controlcircuit:1>, [<ore:alloyElite>.firstItem, <ore:alloyElite>.firstItem, <ore:alloyElite>.firstItem,  <ore:alloyElite>.firstItem]);

//Ultimate ===========================
CombinationCrafting.addRecipe(<mekanism:controlcircuit:3>, 100000, <mekanism:controlcircuit:2>, [<mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>]);

// ==== //

//Empowered Canola Seed ===========================
CombinationCrafting.addRecipe(<actuallyadditions:item_misc:24>, 50000, <actuallyadditions:item_misc:23>, [<actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>]);

//Sun Crystal ===========================

#Empty
CombinationCrafting.addRecipe(<extrautils2:suncrystal:250>, 50000, <ore:gemDiamond>.firstItem, [<ore:dustGlowstone>, <biomesoplenty:coral:3>, <nuclearcraft:glowing_mushroom>, <ore:dustGlowstone>]);

#Full
CombinationCrafting.addRecipe(<extrautils2:suncrystal>, 50000, <ore:gemDiamond>.firstItem, [<extrabees:honey_comb:75>, <biomesoplenty:coral:3>, <nuclearcraft:glowing_mushroom>, <extrabees:honey_comb:75>]);


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# [Handheld Crafting Table] from [Saw][+4]
recipes.remove(<extendedcrafting:handheld_table>);
craft.make(<extendedcrafting:handheld_table>, ["pretty",
  "  o w",
  "T # S",
  "# S  "], {
  "o": <ore:gtceSaws>,                            # Saw
  "w": <ore:craftingTableWood>,                   # Crafting Table
  "T": <ore:gtceScrewdrivers>,                    # Screwdriver
  "#": <ore:stickTreatedWood>,                    # Treated Wood Stick
  "S": <ore:screwSteel>,                          # Steel Screw
});

