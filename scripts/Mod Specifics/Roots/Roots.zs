import mods.tcomplement.highoven.HighOven as HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tconstruct.Casting as Casting;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Roots Script                                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Pyre
recipes.remove(<roots:pyre>);
assembler.recipeBuilder()
    .inputs(<contenttweaker:heart_of_the_woods>, <roots:terra_moss>, <mysticalworld:charred_log> * 4, <ore:obsidian>*2, <contenttweaker:fiery_baykoks_essence>)
    .fluidInputs(<liquid:ghastlycerin> * 1400)
    .outputs(<roots:pyre>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

//Runic Dust in the Macerator
macerator.recipeBuilder()
    .inputs(<ore:runestone>)
    .outputs(<roots:runic_dust> * 4)
    .duration(200)
    .EUt(32)
.buildAndRegister();

//Runic Steel Recipe =============================================================================================

// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);
var Runic_Steel = HighOven.newMixRecipe(<liquid:runic_steel> * 144, <liquid:iron> * 144, 6000);
Runic_Steel.addOxidizer(<roots:runic_dust>, 100);
Runic_Steel.addReducer(<ore:dustCoke>, 75);
Runic_Steel.addPurifier(<ore:wildroot>, 50);
Runic_Steel.register();

<ore:ingotRunicSteel>.firstItem.addTooltip(format.white("Can also be made inside a ") + format.lightPurple("High Oven") + format.white("."));

Casting.addTableRecipe(<ore:ingotRunicSteel>.firstItem, <tconstruct:cast_custom>, <liquid:runic_steel>, 144, false, 100);
Casting.addBasinRecipe(<ore:blockRunicSteel>.firstItem, null, <liquid:runic_steel>, 1296, false, 900);

// blast_furnace.recipeBuilder()
//     .inputs(<ore:ingotSteel>, <ore:wildroot>, <roots:runic_dust>)
//     .outputs(<ore:ingotRunicSteel>.firstItem * 2)
//     .property("temperature", 2500)
//     .duration(600)
//     .EUt(500)
// .buildAndRegister();

//Terrastone Recipe =============================================================================================

// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);
var terrastone = HighOven.newMixRecipe(<liquid:terrastone> * 144, <liquid:bronze> * 144, 2700);
terrastone.addOxidizer(<roots:terra_moss>, 100);
terrastone.addReducer(<ore:dustBrass>, 25);
terrastone.addPurifier(<ore:wildroot>, 50);
terrastone.register();

<ore:ingotTerrastone>.firstItem.addTooltip(format.white("Can also be made inside a ") + format.lightPurple("High Oven") + format.white("."));

Casting.addTableRecipe(<ore:ingotTerrastone>.firstItem, <tconstruct:cast_custom>, <liquid:terrastone>, 144, false, 100);
Casting.addBasinRecipe(<ore:blockTerrastone>.firstItem, null, <liquid:terrastone>, 1296, false, 900);

// blast_furnace.recipeBuilder()
//     .inputs(<ore:ingotBrass>, <ore:wildroot>, <roots:terra_moss>)
//     .outputs(<ore:ingotTerrastone>.firstItem * 2)
//     .property("temperature", 2500)
//     .duration(600)
//     .EUt(500)
// .buildAndRegister();

// Knifes ============================================================================================================

// Amethyst Knife -> Manyullyn Knife
<mysticalworld:amethyst_knife>.displayName="Manyullyn Knife";

recipes.remove(<mysticalworld:amethyst_knife>);
recipes.addShaped(<mysticalworld:amethyst_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "manyullyn"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "manyullyn"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<mysticalworld:amethyst_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "manyullyn"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "manyullyn"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Copper Knife
recipes.remove(<mysticalworld:copper_knife>);
recipes.addShaped(<mysticalworld:copper_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "copper"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "copper"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<mysticalworld:copper_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "copper"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "copper"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Silver Knife
recipes.remove(<mysticalworld:silver_knife>);
recipes.addShaped(<mysticalworld:silver_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "silver"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "silver"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<mysticalworld:silver_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "silver"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "silver"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Wood Knife
recipes.remove(<roots:wood_knife>);
recipes.addShaped(<roots:wood_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "wood"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "wood"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<roots:wood_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "wood"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "wood"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Stone Knife
recipes.remove(<roots:stone_knife>);
recipes.addShaped(<roots:stone_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "stone"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "stone"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<roots:stone_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "stone"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "stone"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Iron Knife
recipes.remove(<roots:iron_knife>);
recipes.addShaped(<roots:iron_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "iron"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "iron"}), <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<roots:iron_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "iron"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "iron"}), <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Diamond Knife
recipes.remove(<roots:diamond_knife>);
recipes.addShaped(<roots:diamond_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <ore:plateDiamond>], [<roots:wildroot>, <ore:plateDiamond>, <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<roots:diamond_knife> * 1, [[null, null, <ore:plateDiamond>], [<roots:wildroot>, <ore:plateDiamond>, <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Gold Knife
recipes.remove(<roots:gold_knife>);
recipes.addShaped(<roots:gold_knife>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 1 as short, id: 34}], RepairCost: 1}) * 1, [[null, null, <ore:plateGold>], [<roots:wildroot>, <ore:plateGold>, <natura:materials:7>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);
recipes.addShaped(<roots:gold_knife> * 1, [[null, null, <ore:plateGold>], [<roots:wildroot>, <ore:plateGold>, <pyrotech:material:26>],[<ore:stickTreatedWood>.firstItem, <ore:materialPressedwax>, null]]);

// Staff
recipes.remove(<roots:staff:0>);
recipes.addShaped(<roots:staff:0> * 1, [[null, <ore:logWood>, <ore:rootsBarkWildwood>], [null, <ore:stickTreatedWood>, <ore:logWood>],[<ore:stickTreatedWood>, null, null]]);

