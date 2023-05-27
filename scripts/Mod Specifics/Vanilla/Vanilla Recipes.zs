import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Vanilla Script                                                                                                                   //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Unwanted Vanilla Recipes.
recipes.removeByRecipeName("pyrotech:item_frame");

recipes.removeByRecipeName("gregtech:bow");

recipes.removeByRecipeName("pyrotech:arrow");

recipes.removeByRecipeName("gregtech:boat");
recipes.removeByRecipeName("gregtech:spruce_boat");
recipes.removeByRecipeName("gregtech:birch_boat");
recipes.removeByRecipeName("gregtech:jungle_boat");
recipes.removeByRecipeName("gregtech:acacia_boat");
recipes.removeByRecipeName("gregtech:dark_oak_boat");
recipes.removeByRecipeName("traverse:fir_boat");

recipes.removeByRecipeName("harvestcraft:minecraft_leather_helmet");
recipes.removeByRecipeName("harvestcraft:leather_helmet");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_chestplate");
recipes.removeByRecipeName("harvestcraft:leather_chestplate");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_leggings");
recipes.removeByRecipeName("harvestcraft:leather_leggings");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_boots");
recipes.removeByRecipeName("harvestcraft:leather_boots");
recipes.removeByRecipeName("minecraft:leather_helmet");
recipes.removeByRecipeName("minecraft:leather_chestplate");
recipes.removeByRecipeName("minecraft:leather_leggings");
recipes.removeByRecipeName("minecraft:leather_boots");

recipes.removeByRecipeName("pyrotech:book");

recipes.removeByRecipeName("gregtech:iron_horse_armor");
recipes.removeByRecipeName("gregtech:golden_horse_armor");
recipes.removeByRecipeName("gregtech:diamond_horse_armor");

recipes.removeByRecipeName("gregtech:lead");
recipes.removeByRecipeName("thermalfoundation:lead");
recipes.removeByRecipeName("thermalfoundation:lead_1");
recipes.removeByRecipeName("mysticalworld:lead");

recipes.removeByRecipeName("pyrotech:saddle");

recipes.removeByRecipeName("natura:common/daylight_sensor");

recipes.removeByRecipeName("bhc:god_apple");
recipes.removeByRecipeName("cyclicmagic:item.applegod_1");

// Booster Track * 12
<recipemap:assembler>.findRecipe(30, [<metaitem:stickGold> * 12, <minecraft:stick:0>, <minecraft:redstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Detector Track * 12
<recipemap:assembler>.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0>, <minecraft:redstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 5})], null).remove();
// Track * 32
<recipemap:assembler>.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Activator Track * 12
<recipemap:assembler>.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0> * 2, <minecraft:redstone_torch:0>, <metaitem:circuit.integrated>.withTag({Configuration: 5})], null).remove();


// Crafting Table ===========================================
recipes.remove(<minecraft:crafting_table>);
assembler.findRecipe(6, [<ore:logWood>.firstItem,<minecraft:flint>], null).remove();

recipes.addShaped(<minecraft:crafting_table> * 1, [[<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>], [<ore:plankTreatedWood>, <ore:gemFlint>, <ore:plankTreatedWood>],[<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>]]);

assembler.recipeBuilder()
    .inputs(<ore:logWood>*4,<ore:plankTreatedWood>*4, <ore:gemFlint>)
    .outputs(<minecraft:crafting_table>)
    .circuit(8)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

// Furnace ==================================================
recipes.remove(<minecraft:furnace>);
assembler.findRecipe(7, [<ore:stoneCobble>.firstItem*8,<minecraft:flint>,<metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

recipes.addShaped(<minecraft:furnace> * 1, [[<contenttweaker:searedplate>, <ore:compressed1xCobblestone>, <contenttweaker:searedplate>], [<ore:compressed1xCobblestone>, <ore:blockFlint>, <ore:compressed1xCobblestone>],[<contenttweaker:searedplate>, <ore:compressed1xCobblestone>, <contenttweaker:searedplate>]]);

assembler.recipeBuilder()
    .inputs(<ore:compressed1xCobblestone>*4,<contenttweaker:searedplate>*4, <ore:gemFlint>)
    .outputs(<minecraft:furnace>)
    .circuit(8)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

// Chest ==================================================
recipes.remove(<minecraft:chest>);
assembler.findRecipe(4, [<ore:plankWood>.firstItem*8,<metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankTreatedWood>, <ore:plankWood>], [<ore:plankTreatedWood>, <ore:ringIron>, <ore:plankTreatedWood>],[<ore:plankWood>, <ore:plankTreatedWood>, <ore:plankWood>]]);

assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*8, <ore:ringIron>)
    .outputs(<minecraft:chest>)
    .circuit(8)
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

# [Fishing Rod] from [Twine][+1]
craft.remake(<minecraft:fishing_rod>, ["pretty",
  "    #",
  "  # t",
  "#   t"], {
  "#": <ore:stickWood>, # Stick
  "t": <ore:twine>,     # Twine
});

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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Fishing Rods                                                                                                                     //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# [Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("crafttweaker:[fishing rod] from [string][+1]");
craft.make(<minecraft:fishing_rod>, ["pretty",
  "    #",
  "r # s",
  "# I s"], {
  "#": <ore:stickWood>,                             # Stick
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Copper Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_copper");
craft.make(<thermalfoundation:tool.fishing_rod_copper>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickCopper>,                           # Copper Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Tin Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_tin");
craft.make(<thermalfoundation:tool.fishing_rod_tin>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickTin>,                              # Tin Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Silver Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_silver");
craft.make(<thermalfoundation:tool.fishing_rod_silver>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickSilver>,                           # Silver Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Lead Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_lead");
craft.make(<thermalfoundation:tool.fishing_rod_lead>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickLead>,                             # Lead Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Nickel Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_nickel");
craft.make(<thermalfoundation:tool.fishing_rod_nickel>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickNickel>,                           # Nickel Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Platinum Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_platinum");
craft.make(<thermalfoundation:tool.fishing_rod_platinum>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickPlatinum>,                         # Platinum Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Steel Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_steel");
craft.make(<thermalfoundation:tool.fishing_rod_steel>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickSteel>,                            # Steel Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Electrum Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_electrum");
craft.make(<thermalfoundation:tool.fishing_rod_electrum>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickElectrum>,                         # Electrum Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Invar Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_invar");
craft.make(<thermalfoundation:tool.fishing_rod_invar>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickInvar>,                            # Invar Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Bronze Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_bronze");
craft.make(<thermalfoundation:tool.fishing_rod_bronze>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickBronze>,                           # Bronze Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Iron Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_iron");
craft.make(<thermalfoundation:tool.fishing_rod_iron>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickIron>,                             # Iron Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

# [Diamond Fishing Rod] from [Iron Ring][+3]
recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_diamond");
craft.make(<thermalfoundation:tool.fishing_rod_diamond>, ["pretty",
  "    ╱",
  "r ╱ s",
  "╱ I s"], {
  "╱": <ore:stickDiamond>,                          # Diamond Rod
  "r": <ore:ringIron>,                              # Iron Ring
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "I": <ore:screwIron>,                             # Iron Screw
});

// Removing Carpet Recipes by Hand (As it can also be done in a Cutting Saw)
for i in 0 to 16 {
  recipes.remove(<minecraft:carpet>.withDamage(i));
  recipes.addShapeless(<minecraft:carpet>.withDamage(i) * 3,[<ore:gtceKnife>, <minecraft:wool>.withDamage(i), <minecraft:wool>.withDamage(i)]);
}
