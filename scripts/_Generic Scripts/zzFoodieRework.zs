import mods.bloodmagic.AlchemyTable as AlchemyTable;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Food Related Recipes                                                                                                             //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// Bread and Baguette Rework ////

recipes.remove(<minecraft:bread>);
furnace.remove(<minecraft:bread>);

AlchemyTable.removeRecipe([<minecraft:wheat>, <minecraft:sugar>]);

furnace.addRecipe(<minecraft:bread>, <pyrotech:material:52>);

# [Bread Dough]*3 from [Dough]
recipes.removeByRecipeName("pyrotech:bread_dough");
craft.shapeless(<pyrotech:material:52> * 3, "DDD", {
  "D": <ore:foodDough>, # Dough
});

# [Rice Dough] from [Salt][+3]
recipes.removeByRecipeName("actuallyadditions:recipes221");
craft.shapeless(<actuallyadditions:item_misc:9>, "MARS", {
  "M": <ore:toolMixingbowl>,            # Mixing Bowl
  "A": <ore:listAllwater>,              # Fresh Water
  "R": <ore:cropRice>,                  # Rice
  "S": <ore:itemSalt> | <ore:foodSalt> | <ore:dustSalt>, # Salt
});

# [Baguette Dough]*2 from [Mixing Bowl][+3]
<actuallyadditions:item_misc:4>.displayName = "Baguette Dough";
recipes.removeByRecipeName("actuallyadditions:recipes220");
craft.shapeless(<actuallyadditions:item_misc:4> * 2, "MAA▲▲▲SS", {
  "M": <ore:toolMixingbowl>,              # Mixing Bowl
  "A": <ore:listAllwater>,                # Fresh Water
  "▲": <ore:foodFlour>,                   # Flour
  "S": <ore:itemSalt> | <ore:foodSalt> | <ore:dustSalt>,   # Salt
});

//// == //// == ////

//// Cookie Rework ////

recipes.remove(<pyrotech:material:53>);
recipes.remove(<minecraft:cookie>);

recipes.addShapeless("CookieDough",<pyrotech:material:53>,[<ore:foodDough>, <ore:foodDough>, <ore:foodCocoapowder>]);

//// == //// == ////

//// Fresh Water Fix ////
recipes.removeByRecipeName("harvestcraft:freshwateritem_listallwater");
//// == //// == ////