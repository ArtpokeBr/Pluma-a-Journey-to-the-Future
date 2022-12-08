import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ceramics Script                                                                                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Porcelain Clay
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_quartz");
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_bone_meal");

recipes.addShapeless("PorcelainRecipe",<ceramics:unfired_clay:4>*2,[<pyrotech:material:8>, <ore:dustBone>, <ore:dustQuartzSand>]);

mixer.recipeBuilder()
    .inputs(<pyrotech:material:8>, <ore:dustBone>, <ore:dustQuartzSand>)
    .outputs(<ceramics:unfired_clay:4>*4)
    .duration(160)
    .EUt(40)
    .buildAndRegister();

// Unfired Porcelain Brick
recipes.remove(<contenttweaker:unfiredporcelainbrick>);
recipes.addShaped(<contenttweaker:unfiredporcelainbrick> * 8, [[<ore:clayPorcelain>, <ore:clayPorcelain>, <ore:clayPorcelain>], [<ore:clayPorcelain>, <gregtech:meta_item_1:348>, <ore:clayPorcelain>],[<ore:clayPorcelain>, <ore:clayPorcelain>, <ore:clayPorcelain>]]);

// Porcelain Brick
furnace.remove(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>);

furnace.addRecipe(<ceramics:unfired_clay:5>, <contenttweaker:unfiredporcelainbrick>, 1.0);
   