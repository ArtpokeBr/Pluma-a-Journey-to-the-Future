import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.roots.Mortar;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Foods Script                                                                                                                     //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Pressed Wax
recipes.removeByRecipeName("harvestcraft:beeswaxitem_x8_cropcandle");
recipes.removeByRecipeName("harvestcraft:beeswaxitem_cropcandle");

# [Pressed Wax]*2 from [GT Hammer][+1]
craft.reshapeless(<harvestcraft:beeswaxitem> * 2, "TBBBBJ", {
  "T": <ore:gtceHardHammers>, # GT Hammer
  "B": <ore:itemBeeswax>, # Beeswax
  "J": <ore:toolPot>, #Cooking Pot
});

# [Pressed Wax] from [GT Hammer][+1]
craft.reshapeless(<harvestcraft:beeswaxitem>, "TCCCCK", {
  "T": <ore:gtceHardHammers>, # GT Hammer
  "C": <ore:cropCandleberry>, # Candleberry
  "K": <ore:toolPot>, #Cooking Pot
});

compressor.recipeBuilder()
    .inputs([<ore:itemBeeswax> * 4])
    .outputs(<ore:materialPressedwax>.firstItem * 2)
    .duration(120)
    .EUt(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<ore:cropCandleberry> * 4])
    .outputs(<ore:materialPressedwax>.firstItem)
    .duration(120)
    .EUt(20)
    .buildAndRegister();

// Hardened Leather
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShapeless("HardenedHarvestCraftLeather",<harvestcraft:hardenedleatheritem>,[<pyrotech:material:38>, <ore:materialPressedwax>]);

# [Water Trap] from [Stone Tank][+3]
recipes.removeByRecipeName("mia:harvestcraft/watertrap");
recipes.removeByRecipeName("harvestcraft:watertrap");
craft.make(<harvestcraft:watertrap>, ["pretty",
  "# / #",
  "t S t",
  "# t #"], {
  "#": <ore:stickWood>,                     # Stick
  "/": <minecraft:fishing_rod>.anyDamage(), # Fishing Rod
  "t": <ore:twine>,                         # Twine
  "S": <pyrotech:stone_tank>,               # Stone Tank
});

# [Ground Trap] from [Crate][+3]
recipes.removeByRecipeName("harvestcraft:groundtrap");
recipes.removeByRecipeName("mia:harvestcraft/groundtrap");
craft.make(<harvestcraft:groundtrap>, ["pretty",
  "# ≢ #",
  "t C t",
  "# t #"], {
  "#": <ore:stickWood>,    # Stick
  "≢": <ore:trapdoorWood>, # Wooden Trapdoor
  "t": <ore:twine>,        # Twine
  "C": <pyrotech:crate>,   # Crate
});

# [Fruit Bait] from [All Fruits][+3]
recipes.removeByRecipeName("harvestcraft:fruitbaititem_x4");
craft.shapeless(<harvestcraft:fruitbaititem>*4, "ttotAT", {
  "t": <ore:twine>, # Twine
  "o": <ore:gtceMortars>, # Mortar
  "A": <ore:listAllfruit>, # All Fruits
  "T": <ore:gtceKnife>, # Knife
});

# [Grain Bait] from [All Grains][+3]
recipes.removeByRecipeName("harvestcraft:grainbaititem_x4");
craft.shapeless(<harvestcraft:grainbaititem>*4, "ttotAT", {
  "t": <ore:twine>,                         # Twine
  "o": <ore:gtceMortars>, # Mortar
  "A": <ore:listAllgrain>, # All Grains
  "T": <ore:gtceKnife>, # Knife
});

# [Veggie Bait] from [All Veggies][+3]
recipes.removeByRecipeName("harvestcraft:veggiebaititem_x4");
craft.shapeless(<harvestcraft:veggiebaititem>*4, "ttotAT", {
  "t": <ore:twine>,                              # Twine
  "o": <ore:gtceMortars>, # Mortar
  "A": <ore:listAllveggie>, # All Veggies
  "T": <ore:gtceKnife>, # Knife
});

# [Fish Trap Bait] from [All Fish][+3]
recipes.removeByRecipeName("harvestcraft:fishtrapbaititem_x4");
craft.shapeless(<harvestcraft:fishtrapbaititem>*4, "ttotAT", {
  "t": <ore:twine>, # Twine
  "o": <ore:gtceMortars>, # Mortar
  "A": <ore:listAllfishraw> | <ore:listAllfishfresh>, # All Fish
  "T": <ore:gtceKnife>, # Knife
});




