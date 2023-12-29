import mods.pyrotech.PitKiln as PitKiln;
import mods.pyrotech.StoneKiln as StoneKiln;
import mods.pyrotech.BrickKiln as BrickKiln;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;


PitKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
BrickKiln.removeAllRecipes();

PitKiln.addRecipe(
  "ClayBucket",                // unique recipe name
  <pyrotech:bucket_clay>,          // recipe output
  <pyrotech:bucket_clay_unfired>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "ClayShears",                // unique recipe name
  <pyrotech:clay_shears>,          // recipe output
  <pyrotech:unfired_clay_shears>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "Brick",                // unique recipe name
  <minecraft:brick>,          // recipe output
  <pyrotech:material:24>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "Terracotta",                // unique recipe name
  <minecraft:hardened_clay>,          // recipe output
  <minecraft:clay>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:material:6>, <pyrotech:material:7>, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "StoneSlab",                // unique recipe name
  <minecraft:stone_slab>,          // recipe output
  <minecraft:stone_slab:3>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock> * 3, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "StoneBlock",                // unique recipe name
  <minecraft:stone>,          // recipe output
  <minecraft:cobblestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "AndesiteBlock",                // unique recipe name
  <minecraft:stone:5>,          // recipe output
  <pyrotech:cobblestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:3> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "GraniteBlock",                // unique recipe name
  <minecraft:stone:1>,          // recipe output
  <pyrotech:cobblestone:2>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:1> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "DioriteBlock",                // unique recipe name
  <minecraft:stone:3>,          // recipe output
  <pyrotech:cobblestone:1>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:2> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "LimestoneBlock",                // unique recipe name
  <pyrotech:limestone>,          // recipe output
  <pyrotech:cobblestone:3>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:8> * 5, <ore:dustAsh>.firstItem],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedCokeClay",                // unique recipe name
  <gregtech:meta_item_1:353>,          // recipe output
  <gregtech:meta_item_1:350>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:5> * 5, <pyrotech:material:17> * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedQuicklime",                // unique recipe name
  <pyrotech:material:22>,          // recipe output
  <ore:dustLimestone>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<ore:dustAsh>.firstItem * 2, <pyrotech:rock:5> * 4],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedPorcelainBrick",                // unique recipe name
  <ceramics:unfired_clay:5>,          // recipe output
  <contenttweaker:unfiredporcelainbrick>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:material:17> * 4, <ore:dustSmallQuartzSand>.firstItem * 2, <ore:dustTinyBone>.firstItem * 2],
  true // true if the recipe should be inherited
);

PitKiln.addRecipe(
  "SmeltedGlassShards",                // unique recipe name
  <pyrotech:material:32> * 2,          // recipe output
  <ore:sand>,          // recipe input
  16000,          // recipe duration in ticks
  0.10,
  [<pyrotech:rock:5> * 4, <ore:dustAsh>.firstItem * 2],
  true // true if the recipe should be inherited
);

var SmeltableOres as IItemStack[IIngredient] = {
  <ore:oreIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:orePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreRedSandIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandPyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedSandGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreSandIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandPyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreSandGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreGraniteIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGranitePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreGraniteGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreDioriteIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioritePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreDioriteGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreAndesiteIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesitePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreAndesiteGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreBlackgraniteIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgranitePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBlackgraniteGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreRedgraniteIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgranitePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreRedgraniteGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreMarbleIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarblePyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreMarbleGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreBasaltIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltBandedIron>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltBasalticMineralSand>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltMagnetite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltPyrite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltBrownLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltYellowLimonite>.firstItem : <ore:ingotIron>.firstItem,
  <ore:oreBasaltGraniticMineralSand>.firstItem : <ore:ingotIron>.firstItem,

  <ore:oreCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  # ===== #

  <ore:oreRedSandCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedSandChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedSandBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedSandTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedSandChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedSandMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreSandCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreSandChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreSandBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreSandTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreSandChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreSandMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreGraniteCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreGraniteChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreGraniteBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreGraniteTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreGraniteChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreGraniteMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreDioriteCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreDioriteChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreDioriteBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreDioriteTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreDioriteChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreDioriteMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreAndesiteCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreAndesiteChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreAndesiteBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreAndesiteTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreAndesiteChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreAndesiteMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreBlackgraniteCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBlackgraniteChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBlackgraniteBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBlackgraniteTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBlackgraniteChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBlackgraniteMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreRedgraniteCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedgraniteChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedgraniteBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedgraniteTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedgraniteChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreRedgraniteMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreMarbleCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMarbleChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMarbleBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMarbleTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMarbleChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreMarbleMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  <ore:oreBasaltCopper>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBasaltChalcopyrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBasaltBornite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBasaltTetrahedrite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBasaltChalcocite>.firstItem : <ore:ingotCopper>.firstItem,
  <ore:oreBasaltMalachite>.firstItem : <ore:ingotCopper>.firstItem,

  # ===== #

  <ore:oreTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreRedSandTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreRedSandCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreRedSandCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreSandTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreSandCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreSandCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreGraniteTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreGraniteCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreGraniteCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreDioriteTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreDioriteCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreDioriteCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreAndesiteTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreAndesiteCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreAndesiteCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreBlackgraniteTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreBlackgraniteCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreBlackgraniteCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreRedgraniteTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreRedgraniteCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreRedgraniteCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreMarbleTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreMarbleCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreMarbleCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  <ore:oreBasaltTin>.firstItem : <ore:ingotTin>.firstItem,
  <ore:oreBasaltCassiterite>.firstItem : <ore:ingotTin>.firstItem*2,
  <ore:oreBasaltCassiteriteSand>.firstItem : <ore:ingotTin>.firstItem*2,

  # ===== #

  <ore:orePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreRedSandPreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreSandPreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreGranitePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreDioritePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreAndesitePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreBlackgranitePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreRedgranitePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreMarblePreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,
  <ore:oreBasaltPreciousMetal>.firstItem : <ore:ingotPreciousMetal>.firstItem,

  # ===== #

  <ore:oreRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreRedSandRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreSandRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreGraniteRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreDioriteRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreAndesiteRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreBlackgraniteRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreRedgraniteRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreMarbleRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,
  <ore:oreBasaltRedstone>.firstItem : <ore:dustRedstone>.firstItem*5,

  # ===== #

  <ore:oreCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreRedSandCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreSandCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreGraniteCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreDioriteCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreAndesiteCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreBlackgraniteCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreRedgraniteCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreMarbleCoal>.firstItem : <ore:gemCoal>.firstItem*2,
  <ore:oreBasaltCoal>.firstItem : <ore:gemCoal>.firstItem*2,

  # ===== #

  <ore:oreGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreRedSandGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreSandGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreGraniteGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreDioriteGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreAndesiteGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreBlackgraniteGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreRedgraniteGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreMarbleGypsum>.firstItem : <ore:dustGypsum>.firstItem,
  <ore:oreBasaltGypsum>.firstItem : <ore:dustGypsum>.firstItem,

  # ===== #

  <ore:oreCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreRedSandCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreSandCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreGraniteCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreDioriteCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreAndesiteCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreBlackgraniteCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreRedgraniteCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreMarbleCalcite>.firstItem : <ore:dustCalcite>.firstItem,
  <ore:oreBasaltCalcite>.firstItem : <ore:dustCalcite>.firstItem,

};

for ore, ingot in SmeltableOres {
    StoneKiln.addRecipe(
      "KilnOreSmelting" ~ craft.uniqueRecipeName(ingot),    // unique recipe name
      ingot,                                                // recipe output
      ore,                                                  // recipe input
      1600,                                                // recipe duration in ticks
      0.06,
      [<ore:dustAsh>.firstItem * 2, <pyrotech:rock> * 4],
      true // true if the recipe should be inherited
    );
  }

StoneKiln.addRecipe(
  "KilnDustIronSmelting", 
  <ore:ingotIron>.firstItem,
  <ore:dustIron>.firstItem,
  1600,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "KilnDustCopperSmelting", 
  <ore:ingotCopper>.firstItem,
  <ore:dustCopper>.firstItem,
  1600,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "KilnDustTinSmelting", 
  <ore:ingotTin>.firstItem,
  <ore:dustTin>.firstItem,
  1600,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "KilnDustBronzeSmelting", 
  <ore:ingotBronze>.firstItem,
  <ore:dustBronze>.firstItem,
  1600,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "KilnDustPreciousMetalSmelting", 
  <ore:ingotPreciousMetal>.firstItem,
  <ore:dustPreciousMetal>.firstItem,
  1600,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "KilnGoldNuggetFromPrecious", 
  <ore:nuggetGold>.firstItem,
  <ore:ingotPreciousMetal>.firstItem,
  800,
  0.06,
  [<ore:dustAsh>.firstItem * 2],
  true
);

StoneKiln.addRecipe(
  "CeramicsFaucetSmelt", 
  <ceramics:faucet>,
  <ceramics:unfired_clay:6>,
  1000,
  0.05,
  [<pyrotech:material:17> * 2, <ore:dustSmallQuartzSand>.firstItem * 1, <ore:dustTinyBone>.firstItem * 1],
  true
);

StoneKiln.addRecipe(
  "CeramicsChannelSmelt", 
  <ceramics:channel>,
  <ceramics:unfired_clay:7>,
  1000,
  0.05,
  [<pyrotech:material:17> * 2, <ore:dustSmallQuartzSand>.firstItem * 1, <ore:dustTinyBone>.firstItem * 1],
  true
);

StoneKiln.addRecipe(
  "CeramicsPorcelainSmelt", 
  <ceramics:porcelain>,
  <ceramics:clay_soft>,
  1000,
  0.05,
  [<pyrotech:material:17> * 2, <ore:dustSmallQuartzSand>.firstItem * 1, <ore:dustTinyBone>.firstItem * 1],
  true
);

StoneKiln.addRecipe(
  "KilnRefractoryIngoSmelting", 
  <pyrotech:material:5>,
  <pyrotech:material:9>,
  1600,
  0.06,
  [<ore:dustSlakedComposite>.firstItem * 1],
  true
);