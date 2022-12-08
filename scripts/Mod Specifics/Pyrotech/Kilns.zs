import mods.pyrotech.PitKiln as PitKiln;
import mods.pyrotech.StoneKiln as StoneKiln;
import mods.pyrotech.BrickKiln as BrickKiln;

PitKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
BrickKiln.removeAllRecipes();

PitKiln.addRecipe(
  "ClayBucket",                // unique recipe name
  <pyrotech:bucket_clay>,          // recipe output
  <pyrotech:bucket_clay_unfired>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "ClayShears",                // unique recipe name
  <pyrotech:clay_shears>,          // recipe output
  <pyrotech:unfired_clay_shears>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "Brick",                // unique recipe name
  <minecraft:brick>,          // recipe output
  <pyrotech:material:24>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "Terracotta",                // unique recipe name
  <minecraft:hardened_clay>,          // recipe output
  <minecraft:clay>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "StoneSlab",                // unique recipe name
  <minecraft:stone_slab>,          // recipe output
  <minecraft:stone_slab:3>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock> * 3, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "StoneBlock",                // unique recipe name
  <minecraft:stone>,          // recipe output
  <minecraft:cobblestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "AndesiteBlock",                // unique recipe name
  <minecraft:stone:5>,          // recipe output
  <pyrotech:cobblestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:3> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "GraniteBlock",                // unique recipe name
  <minecraft:stone:1>,          // recipe output
  <pyrotech:cobblestone:2>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:1> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "DioriteBlock",                // unique recipe name
  <minecraft:stone:3>,          // recipe output
  <pyrotech:cobblestone:1>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:2> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "LimestoneBlock",                // unique recipe name
  <pyrotech:limestone>,          // recipe output
  <pyrotech:cobblestone:3>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:8> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedCokeClay",                // unique recipe name
  <gregtech:meta_item_1:353>,          // recipe output
  <gregtech:meta_item_1:350>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:5> * 5, <pyrotech:material:17> * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedQuicklime",                // unique recipe name
  <pyrotech:material:22>,          // recipe output
  <ore:dustLimestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<ore:dustAsh>.firstItem * 2, <pyrotech:rock:5> * 4],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedPorcelainBrick",                // unique recipe name
  <ceramics:unfired_clay:5>,          // recipe output
  <contenttweaker:unfiredporcelainbrick>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:material:17> * 4, <ore:dustSmallQuartzSand>.firstItem * 2, <ore:dustTinyBone>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedGlassShards",                // unique recipe name
  <pyrotech:material:32> * 2,          // recipe output
  <ore:sand>,          // recipe input
  16000,          // recipe duration in ticks
  0.33,
  [<pyrotech:rock:5> * 4, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);