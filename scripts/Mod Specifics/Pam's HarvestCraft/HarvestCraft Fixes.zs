import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Foods Script                                                                                                                     //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Pressed Wax
recipes.removeByRecipeName("harvestcraft:beeswaxitem_x8_cropcandle");
recipes.removeByRecipeName("harvestcraft:beeswaxitem_cropcandle");

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

