import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Vanilla Script                                                                                                                   //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Crafting Table ===========================================
recipes.remove(<minecraft:crafting_table>);
assembler.findRecipe(6, [<ore:logWood>.firstItem,<minecraft:flint>], null).remove();

recipes.addShaped(<minecraft:crafting_table> * 1, [[<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>], [<ore:plankTreatedWood>, <ore:gemFlint>, <ore:plankTreatedWood>],[<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>]]);

assembler.recipeBuilder()
    .inputs(<ore:logWood>*4,<ore:plankTreatedWood>*4, <ore:gemFlint>)
    .outputs(<minecraft:crafting_table> * 2)
    .property("circuit", 8)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

// Furnace ==================================================
recipes.remove(<minecraft:furnace>);
assembler.findRecipe(7, [<ore:stoneCobble>.firstItem*8,<minecraft:flint>,<metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

recipes.addShaped(<minecraft:furnace> * 1, [[<contenttweaker:searedplate>, <ore:compressed1xCobblestone>, <contenttweaker:searedplate>], [<ore:compressed1xCobblestone>, <ore:blockFlint>, <ore:compressed1xCobblestone>],[<contenttweaker:searedplate>, <ore:compressed1xCobblestone>, <contenttweaker:searedplate>]]);

assembler.recipeBuilder()
    .inputs(<ore:compressed1xCobblestone>*4,<contenttweaker:searedplate>*4, <ore:gemFlint>)
    .outputs(<minecraft:furnace> * 2)
    .property("circuit", 8)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

// Chest ==================================================
recipes.remove(<minecraft:chest>);
assembler.findRecipe(4, [<ore:plankWood>.firstItem*8,<metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankTreatedWood>, <ore:plankWood>], [<ore:plankTreatedWood>, <ore:ringIron>, <ore:plankTreatedWood>],[<ore:plankWood>, <ore:plankTreatedWood>, <ore:plankWood>]]);

assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*8, <ore:ringIron>)
    .outputs(<minecraft:chest> * 2)
    .property("circuit", 8)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

// Ender Eye =================================================
<recipemap:chemical_bath>.findRecipe(480, [<minecraft:ender_pearl:0>], [<liquid:blaze> * 144]).remove();

large_chemical_reactor.recipeBuilder()
    .inputs(<ore:gemEnderPearl>, <ore:dustVinteum>, <twilightforest:fiery_tears>)
    .fluidInputs(<liquid:blaze>*144)
    .outputs(<ore:gemEnderEye>.firstItem*2)
    .duration(65)
    .EUt(480)
.buildAndRegister();

// Compass =================================================
recipes.remove(<minecraft:compass>);
recipes.addShaped(<minecraft:compass> * 1, [[null, <ore:plateIron>, null], [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>],[null, <ore:plateIron>, null]]);

// Clock =================================================
recipes.remove(<minecraft:clock>);
recipes.addShaped(<minecraft:clock> * 1, [[null, <ore:plateGold>, null], [<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>],[null, <ore:plateGold>, null]]);


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Charcoal Rework Script                                                                                                           //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Charcoal from the Furnace
furnace.remove(<minecraft:coal:1>);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Glass Rework Script                                                                                                              //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Glass from the Furnace
furnace.remove(<minecraft:glass>, <biomesoplenty:white_sand>);

// Fixing Glass Pane Compatibility
recipes.removeByRecipeName("gregtech:glass_pane");
saw.findRecipe(7, [<minecraft:glass> * 3], [<liquid:lubricant>]).remove();
saw.findRecipe(7, [<minecraft:glass> * 3], [<liquid:distilled_water> * 3]).remove();
saw.findRecipe(7, [<minecraft:glass> * 3], [<liquid:water> * 4]).remove();

recipes.addShapeless("gregtech_glass_pane",<minecraft:glass_pane> * 2,[<ore:gtceSaws>, <ore:blockGlassColorless>]);

saw.recipeBuilder()
    .inputs(<ore:blockGlassColorless>*3)
    .outputs(<minecraft:glass_pane> * 8)
    .duration(45)
    .EUt(7)
    .buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Polished Stones Rework Script                                                                                                    //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Removing their Furnace Recipe

furnace.remove(<minecraft:stone:2>, <railcraft:brick_granite:5>);
furnace.remove(<minecraft:stone:4>, <railcraft:brick_diorite:5>);
furnace.remove(<minecraft:stone:6>, <railcraft:brick_andesite:5>);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Beds Rework Script                                                                                                               //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

recipes.removeByRecipeName("minecraft:white_bed");
recipes.removeByRecipeName("minecraft:orange_bed");
recipes.removeByRecipeName("minecraft:magenta_bed");
recipes.removeByRecipeName("minecraft:light_blue_bed");
recipes.removeByRecipeName("minecraft:yellow_bed");
recipes.removeByRecipeName("minecraft:lime_bed");
recipes.removeByRecipeName("minecraft:pink_bed");
recipes.removeByRecipeName("minecraft:gray_bed");
recipes.removeByRecipeName("minecraft:light_gray_bed");
recipes.removeByRecipeName("minecraft:cyan_bed");
recipes.removeByRecipeName("minecraft:purple_bed");
recipes.removeByRecipeName("minecraft:blue_bed");
recipes.removeByRecipeName("minecraft:brown_bed");
recipes.removeByRecipeName("minecraft:green_bed");
recipes.removeByRecipeName("minecraft:red_bed");
recipes.removeByRecipeName("minecraft:black_bed");

// White Bed
recipes.addShaped(<minecraft:bed:0> * 1, [[null, null, null], [<ore:hideBuffalo>, <ore:hideBuffalo>, <ore:woolWhite>],[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Random Tweaks                                                                                                                    //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Unwanted Daylight sensor recipe
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_daylight_detector");

// Unwanted Comparator recipe
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_comparator");

// Unwanted Minecart Recipes
recipes.removeByRecipeName("railcraft:cart_bronze");
recipes.removeByRecipeName("railcraft:cart_steel");

// Unwanted Book Recipes 
recipes.removeByRecipeName("mysticalworld:book");
recipes.removeByRecipeName("tconstruct:tools/book");

// Enchantment Table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table> * 1, [[<ore:plateDiamond>, <minecraft:carpet:14>, <ore:plateDiamond>], [<ore:plateRunicSteel>, <ore:bookshelf>, <ore:plateRunicSteel>],[<ore:plateDiamond>, <ore:plateDoubleRunicSteel>, <ore:plateDiamond>]]);

// Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand> * 1, [[<ore:ringRunicSteel>, <ore:rodBlaze>, <ore:ringRunicSteel>], [<ore:stickAluminium>, <ore:rodBlaze>, <ore:stickAluminium>],[<ore:screwAluminium>, <minecraft:cauldron>, <ore:screwAluminium>]]);

// Block of Paper (actually from MIA)
recipes.remove(<mia:packed_paper>);
compressor.recipeBuilder()
    .inputs(<ore:paper> * 9)
    .outputs(<mia:packed_paper>)
    .duration(200)
    .EUt(2)
.buildAndRegister();