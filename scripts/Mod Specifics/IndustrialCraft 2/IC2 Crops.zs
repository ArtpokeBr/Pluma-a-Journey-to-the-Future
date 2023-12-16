#modloaded ic2

import scripts.jei.mod.ic2.addCrop as addCrop;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

# --------------------------------------------------------------------------------------------
# CROPS JEI
# --------------------------------------------------------------------------------------------

#    Name           | Drops                                                          | Tier | Attributes                                  | "Special requirements"                                                                                                                            |
addCrop("weed"          , [<ic2:crop_res:5>]                                              , 0 , "Weed Bad"                                    , "§6Can only be harvested with §nWeeding Trowel§r§6; Takes over neighboring plants and spreads grass");
addCrop("beetroots"     , [<minecraft:beetroot>]                                          , 1 , "Red Food Beetroot"                           );
addCrop("pumpkin"       , [<minecraft:pumpkin>]                                           , 1 , "Orange Decoration Stem"                      );
addCrop("wheat"         , [<minecraft:wheat>]                                             , 1 , "Yellow Food Wheat"                           , "§6Light level of at least 9");
addCrop("blackthorn"    , [<minecraft:dye>]                                               , 2 , "Black Flower Rose"                           , "§6Light level of at least 12");
addCrop("brown_mushroom", [<minecraft:brown_mushroom>]                                    , 2 , "Brown Food Mushroom"                         , "§6Must be hydrated");
addCrop("carrots"       , [<minecraft:carrot>]                                            , 2 , "Orange Food Carrots"                         , "§6Light level of at least 9");
addCrop("cyazint"       , [<minecraft:dye:6>]                                             , 2 , "Blue Flower"                                 , "§6Light level of at least 12");
addCrop("dandelion"     , [<minecraft:dye:11>]                                            , 2 , "Yellow Flower"                               , "§6Light level of at least 12");
addCrop("flax"          , [<minecraft:string>]                                            , 2 , "Silk Vine Addictive"                         );
addCrop("melon"         , [<minecraft:melon>,<minecraft:melon_block>]                     , 2 , "Green Food Stem"                             );
addCrop("potato"        , [<minecraft:potato>,<minecraft:poisonous_potato>]               , 2 , "Yellow Food Potato"                          , "§6Light level of at least 9; Must be harvested early or it will drop §nPoisonous Potato");
addCrop("red_mushroom"  , [<minecraft:red_mushroom>]                                      , 2 , "Red Food Mushroom"                           , "§6Must be hydrated");
addCrop("reed"          , [<minecraft:reeds>]                                             , 2 , "Reed"                                        );
addCrop("rose"          , [<minecraft:dye:1>]                                             , 2 , "Red Flower Rose"                             , "§6Light level of at least 12");
addCrop("tulip"         , [<minecraft:dye:5>]                                             , 2 , "Purple Flower Tulip"                         , "§6Light level of at least 12");
addCrop("cocoa"         , [<minecraft:dye:3>]                                             , 3 , "Brown Food Stem"                             , "§6Nutrients of at least 3");
addCrop("venomilia"     , [<minecraft:dye:5>,<ic2:crop_res:3>]                            , 3 , "Purple Flower Tulip Poison"                  , "§6Light level of at least 12; Only drops §nGrin Powder§r§6 during second to last stage; at which point the plant is poisonous to touch unless sneaking");
addCrop("stickreed"     , [<minecraft:reeds>,<ic2:misc_resource:4>]                       , 4 , "Reed Resin"                                  , "§6Drops §nSticky Resin§r§6 only when mature");
addCrop("corpse_plant"  , [<minecraft:rotten_flesh>,<minecraft:dye:15>,<minecraft:bone>]  , 5 , "Toxic Undead Vine Edible Rotten"             );
addCrop("hops"          , [<ic2:crop_res:4>]                                              , 5 , "Green Ingredient Wheat"                      , "§6Light level of at least 9");
addCrop("nether_wart"   , [<minecraft:nether_wart>]                                       , 5 , "Red Nether Ingredient Soulsand"              , "§6Grows faster with §nSoul Sand§r§6 under it; Turns into §nTerra Wart§r§6 if there is Snow under it");
addCrop("terra_wart"    , [<ic2:terra_wart>]                                              , 5 , "Blue Aether Consumable Snow"                 , "§6Grows faster with §nSnow§r§6 under it; Turns into §nNether Wart§r§6 if there is §nSoul Sand§r§6 under it");
addCrop("aurelia"       , [<ic2:dust:20>]                                                 , 6 , "Gold Leaves Metal"                           , "§6Only matures if there is a §nGold Ore§r§6 or §nBlock of Gold§r§6 below it");
addCrop("blazereed"     , [<ic2:dust:16>, <minecraft:blaze_rod>, <minecraft:blaze_powder>], 6 , "Fire Blaze Reed Sulfur"                      );
addCrop("corium"        , [<minecraft:leather>]                                           , 6 , "Cow Silk Vine"                               );
addCrop("stagnium"      , [<ic2:dust:28>]                                                 , 6 , "Shiny Leaves Metal"                          , "§6Only matures if there is an §nTin Ore§r§6 or §nTin Block§r§6 below it");
addCrop("cyprium"       , [<ic2:dust:19>]                                                 , 6 , "Copper Leaves Metal"                         , "§6Only matures if there is an §nCopper Ore§r§6 or §nCopper Block§r§6 below it");
addCrop("eatingplant"   , [<minecraft:cactus>]                                            , 6 , "Bad Food"                                    , "§6Light level of at least 10; Only matures if §nLava§r§6 is below it; Will attack the player if not wearing metal armor and drop §nRotten Flesh");
addCrop("egg_plant"     , [<minecraft:egg>,<minecraft:chicken>,<minecraft:feather>]       , 6 , "Chicken Egg Edible Feather Flower Addictive" );
addCrop("ferru"         , [<ic2:dust:21>]                                                 , 6 , "Gray Leaves Metal"                           , "§6Only matures if there is an §nIron Ore§r§6 or §nBlock of Iron§r§6 below it");
addCrop("milk_wart"     , [<ic2:crop_res:6>]                                              , 6 , "Edible Milk Cow"                             );
addCrop("plumbiscus"    , [<ic2:dust:23>]                                                 , 6 , "Lead Leaves Metal"                           , "§6Only matures if there is an §nLead Ore§r§6 or §nLead Block§r§6 below it");
addCrop("redwheat"      , [<minecraft:redstone>,<minecraft:wheat>]                        , 6 , "Red Redstone Wheat"                          , "§6Light level between 5 and 10 inclusive; Drops §nRedstone§r§6 only when powered by redstone");
addCrop("shining"       , [<ic2:dust:26>]                                                 , 6 , "Silver Leaves Metal"                         , "§6Only matures if there is an §nSilver Block§r§6 or §nSilver Ore§r§6 below it");
addCrop("slime_plant"   , [<minecraft:slime_ball>]                                        , 6 , "Slime Bouncy Sticky Bush"                    );
addCrop("spidernip"     , [<minecraft:string>,<minecraft:web>,<minecraft:spider_eye>]     , 7 , "Silk Vine Addictive"                         );
addCrop("coffee"        , [<ic2:crop_res>]                                                , 7 , "Leaves Ingredient Beans"                     , "§6Light level of at least 9");
addCrop("creeper_weed"  , [<minecraft:gunpowder>]                                         , 7 , "Creeper Vine Explosive Fire Sulfur Saltpeter Coal" );
addCrop("meat_rose"     , [<minecraft:dye:9>,<minecraft:chicken>,<minecraft:beef>,<minecraft:porkchop>,<minecraft:fish>] , 7 , "Edible Flower Cow Fish Chicken Pig");
addCrop("tearstalks"    , [<minecraft:ghast_tear>]                                        , 8 , "Healing Nether Ingredient Reed Ghast"        );
addCrop("withereed"     , [<ic2:dust:2>,<minecraft:coal>]                                 , 8 , "Fire Undead Reed Coal Rotten Wither"         );
addCrop("oil_berries"   , [<ic2:crop_res:7>]                                              , 9 , "Fire Dark Reed Rotten Coal Oil"              );
addCrop("ender_blossom" , [<ic2:dust:31>,<minecraft:ender_pearl>,<minecraft:ender_eye>]   , 10, "Ender Flower Shiny"                          );
addCrop("bobs_yer_uncle_ranks_berries", [<ic2:crop_res:8>, <minecraft:emerald>]           , 11, "Shiny Vine Emerald Berylium Crystal"         );
addCrop("diareed"       , [<ic2:dust:36>,<minecraft:diamond>]                             , 12, "Fire Shiny Reed Coal Diamond Crystal"        );

# -----------------------------------------

function implementCrop(fruit as IItemStack, liquid as ILiquidStack, extra as IItemStack, ExtraOutputChance as int, aspects as thaumcraft.aspect.CTAspectStack[]) as void {

    # Squeezing fruits
    extractor.recipeBuilder()
        .inputs(fruit)
        .chancedOutput(extra, ExtraOutputChance, 2500)
        .fluidOutputs(liquid)
        .duration(250)
        .EUt(36)
    .buildAndRegister();

    # Thaumcraft aspects
    fruit.setAspects(aspects);
}

implementCrop(<ic2:dust:20>, <liquid:gold>              * 288 , <ore:dustImpureGold>.firstItem       , 1500, [<aspect:metallum>*40, <aspect:desiderium>*50  ]); # Tiny Pile of Gold Dust
implementCrop(<ic2:dust:16>, <liquid:ic2pahoehoe_lava>  * 500 , <enderio:item_material:22>           , 2500, [<aspect:metallum>*40, <aspect:desiderium>*50  ]); # Sulfur Dust
implementCrop(<ic2:dust:28>, <liquid:tin>               * 288 , <ore:dustImpureTin>.firstItem        , 2000, [<aspect:metallum>*120                         ]); # Tiny Pile of Tin Dust
implementCrop(<ic2:dust:19>, <liquid:copper>            * 288 , <ore:dustImpureCopper>.firstItem     , 2000, [<aspect:metallum>*120                         ]); # Tiny Pile of Copper Dust
implementCrop(<ic2:dust:21>, <liquid:iron>              * 288 , <ore:dustImpureIron>.firstItem       , 2000, [<aspect:metallum>*40, <aspect:instrumentum>*95]); # Tiny Pile of Iron Dust
implementCrop(<ic2:dust:23>, <liquid:lead>              * 288 , <ore:dustImpureLead>.firstItem       , 2000, [<aspect:metallum>*40, <aspect:fabrico>*90     ]); # Tiny Pile of Lead Dust
implementCrop(<ic2:dust:26>, <liquid:silver>            * 288 , <ore:dustImpureSilver>.firstItem     , 2000, [<aspect:metallum>*40, <aspect:machina>*55     ]); # Tiny Pile of Silver Dust
implementCrop(<ic2:dust:2> , <liquid:petrotheum>        * 500 , <ore:dustImpureBlackQuartz>.firstItem, 2000, [<aspect:metallum>*40, <aspect:exanimis>*30    ]); # Coal Dust
implementCrop(<ic2:dust:31>, <liquid:stygian>           * 288 , <randomthings:ingredient:2>          , 500, [<aspect:metallum>*40, <aspect:praemunio>*60   ]); # Ender Pearl Dust
implementCrop(<ic2:dust:36>, <liquid:gelatin_mixture>   * 500 , <enderio:item_material:14>           , 500, [<aspect:metallum>*40, <aspect:spiritus>*50    ]); # Tiny Pile of Diamond Dust


# -----------------------------------------
# Other new recipes for crop res

<ic2:crop_res:5>.setAspects(<aspect:herba>*20); # Weed
<ic2:crop_res:4>.setAspects(<aspect:herba>*40, <aspect:victus>*30); # Hops
<ic2:terra_wart>.setAspects(<aspect:gelum>*35); # Terra Wart
<ic2:crop_res:6>.setAspects(<aspect:aqua>*20,<aspect:alkimia>*40); # Milk Wart
<ic2:crop_res>  .setAspects(<aspect:cognitio>*60); # Coffee Beans
<ic2:crop_res:7>.setAspects(<aspect:motus>*100); # Oil Berry
<ic2:crop_res:8>.setAspects(<aspect:visum>*20); # Bobs-Yer-Uncle-Ranks Berry
<ic2:crop_res:1>.setAspects(<aspect:cognitio>*50); # Coffee Powder

# [Biogas Bucket] from [Hops]
extractor.recipeBuilder()
    .inputs(<ic2:crop_res:4>)
    .chancedOutput(<ore:itemBiomass>.firstItem, 1000, 500)
    .fluidOutputs(<fluid:ic2biogas> * 400)
    .duration(250)
    .EUt(36)
.buildAndRegister();

# [Gelid Cryotheum Bucket] from [Terra Wart]
extractor.recipeBuilder()
    .inputs(<ic2:terra_wart>)
    .chancedOutput(<ore:dustIce>.firstItem, 1000, 500)
    .fluidOutputs(<fluid:cryotheum> * 400)
    .duration(250)
    .EUt(64)
.buildAndRegister();

# [Oil Bucket] from [Oil Berry]
extractor.recipeBuilder()
    .inputs(<ic2:crop_res:7>)
    .chancedOutput(<thermalfoundation:material:833>, 1000, 500)
    .fluidOutputs(<fluid:oil> * 500)
    .duration(250)
    .EUt(64)
.buildAndRegister();

# [Molten Mirion Bucket] from [Bobs-Yer-Uncle-Ranks Berry]
extractor.recipeBuilder()
    .inputs(<ic2:crop_res:8>)
    .chancedOutput(<ore:dustImpureEmerald>.firstItem, 1500, 2500)
    .fluidOutputs(<fluid:mirion> * 144)
    .duration(250)
    .EUt(64)
.buildAndRegister();

# [Milk] from [Milk Wart]
extractor.recipeBuilder()
    .inputs(<ic2:crop_res:6>)
    .chancedOutput(<ore:dustMilk>.firstItem, 1000, 500)
    .fluidOutputs(<liquid:milk>*500)
    .duration(250)
    .EUt(36)
.buildAndRegister();
