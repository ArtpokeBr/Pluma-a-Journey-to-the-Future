import mods.bloodmagic.AlchemyTable as AlchemyTable;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Food Related Recipes                                                                                                             //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// Bread Rework ////

recipes.remove(<minecraft:bread>);
furnace.remove(<minecraft:bread>);

AlchemyTable.removeRecipe([<minecraft:wheat>, <minecraft:sugar>]);

furnace.addRecipe(<minecraft:bread>, <pyrotech:material:52>);

//// == //// == ////

//// Cookie Rework ////

recipes.remove(<pyrotech:material:53>);
recipes.remove(<minecraft:cookie>);

recipes.addShapeless("CookieDough",<pyrotech:material:53>,[<ore:foodDough>, <ore:foodDough>, <ore:foodCocoapowder>]);

//// == //// == ////