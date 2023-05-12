#Ported with Permission from the GTCEU Community Pack.

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

global large_phytogenic_insolator as RecipeMap = FactoryRecipeMap.start("large_phytogenic_insolator")
        .minInputs(2)
        .maxInputs(3)
        .minOutputs(1)
        .maxOutputs(4)
        .maxFluidInputs(2)
        .maxFluidOutputs(0)
        .build();

val id = 32003;
val loc = "large_phytogenic_insolator";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCCCC", " CGC ", " CGC ", " CGC ", " CGC ", "CCCCC")
            .aisle("CCCCC", "CDDDC", "C###C", "C###C", "C###C", "CGGGC")
            .aisle("CCCCC", "GDWDG", "G###G", "G#N#G", "G###G", "CGLGC")
            .aisle("CCCCC", "CDDDC", "C###C", "C###C", "C###C", "CGGGC")
            .aisle("CCCCC", " CSC ", " CGC ", " CGC ", " CGC ", "CCCCC")
            .where("S", controller.self())
            .where("G", CTPredicate.states(<metastate:mekanism:basicblock:10>))
            .where("D", CTPredicate.states(<metastate:botania:altgrass:2>))
            .where("C", CTPredicate.states(<metastate:gcym:large_multiblock_casing:6>).setMinGlobalLimited(42) | controller.autoAbilities())
            .where("N", CTPredicate.states(<metastate:botania:pylon:1>))
            .where("L", CTPredicate.states(<blockstate:gregtech:lime_lamp>))
            .where("W", CTPredicate.liquids(<liquid:water>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(large_phytogenic_insolator)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:6>)
    .buildAndRegister();

recipes.addShaped("large_phytogenic_insolator_controller", <metaitem:multiblocktweaker:large_phytogenic_insolator>, [
    [<actuallyadditions:block_greenhouse_glass>, <randomthings:naturecore>, <actuallyadditions:block_greenhouse_glass>],
    [<ore:circuitEv>, <thermalexpansion:machine:4>, <ore:circuitEv>],
    [<ore:lightPlateWatertightSteel>, <ore:heavyPlateWatertightSteel>, <ore:lightPlateWatertightSteel>]
]);

// Large Phytogenic Insolator Trees

var saplings = [
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>
] as IItemStack[];

var logs = [
    <minecraft:log> * 64,
    <minecraft:log:1> * 64,
    <minecraft:log:2> * 64,
    <minecraft:log:3> * 64,
    <minecraft:log2> * 64,
    <minecraft:log2:1> * 64
] as IItemStack[];

for i, sapling in saplings {
    large_phytogenic_insolator.recipeBuilder()
        .circuit(1)
        .notConsumable(sapling)
        .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputs(logs[i])
        .outputs(sapling.withAmount(6))
        .duration(1200)
        .EUt(600)
        .buildAndRegister();

    large_phytogenic_insolator.recipeBuilder()
        .circuit(2)
        .notConsumable(sapling)
        .inputs(<thermalfoundation:fertilizer:2> * 4)
        .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputs(logs[i])
        .outputs(logs[i])
        .outputs(logs[i])
        .outputs(sapling.withAmount(12))
        .duration(900)
        .EUt(3048)
        .buildAndRegister();
}

// Large Phytogenic Insolator Rubber

large_phytogenic_insolator.recipeBuilder()
    .circuit(1)
    .notConsumable(<gregtech:rubber_sapling>)
    .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
    .outputs(<gregtech:rubber_log> * 16)
    .outputs(<gregtech:rubber_sapling> * 3)
    .outputs(<metaitem:rubber_drop> * 4)
    .duration(1200)
    .EUt(600)
    .buildAndRegister();

large_phytogenic_insolator.recipeBuilder()
    .circuit(2)
    .notConsumable(<gregtech:rubber_sapling>)
    .inputs(<thermalfoundation:fertilizer:2> * 4)
    .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
    .outputs(<gregtech:rubber_log> * 64)
    .outputs(<gregtech:rubber_sapling> * 6)
    .outputs(<metaitem:rubber_drop> * 16)
    .duration(900)
    .EUt(3048)
    .buildAndRegister();

// Large Phytogenic Insolator Plants

var seeds = [
    <minecraft:pumpkin_seeds>,
    <minecraft:beetroot_seeds>,
    <minecraft:wheat_seeds>,
    <minecraft:melon_seeds>,
    <minecraft:carrot>,
    <minecraft:potato>,
    <minecraft:reeds>,
    <minecraft:cactus>,
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>,
    <minecraft:nether_wart>,
    <harvestcraft:blackberryseeditem>,
    <harvestcraft:blueberryseeditem>,
    <harvestcraft:candleberryseeditem>,
    <harvestcraft:raspberryseeditem>,
    <harvestcraft:strawberryseeditem>,
    <harvestcraft:cactusfruitseeditem>,
    <harvestcraft:asparagusseeditem>,
    <harvestcraft:barleyseeditem>,
    <harvestcraft:oatsseeditem>,
    <harvestcraft:ryeseeditem>,
    <harvestcraft:cornseeditem>,
    <harvestcraft:bambooshootseeditem>,
    <harvestcraft:cantaloupeseeditem>,
    <harvestcraft:cucumberseeditem>,
    <harvestcraft:wintersquashseeditem>,
    <harvestcraft:whitemushroomseeditem>,
    <harvestcraft:spinachseeditem>,
    <harvestcraft:cabbageseeditem>,
    <harvestcraft:brusselsproutseeditem>,
    <harvestcraft:artichokeseeditem>,
    <harvestcraft:scallionseeditem>,
    <harvestcraft:lettuceseeditem>,
    <harvestcraft:leekseeditem>,
    <harvestcraft:cauliflowerseeditem>,
    <harvestcraft:broccoliseeditem>,
    <harvestcraft:mustardseeditem>,
    <harvestcraft:coffeeseeditem>,
    <harvestcraft:teaseeditem>,
    <harvestcraft:spiceleafseeditem>,
    <harvestcraft:gingerseeditem>,
    <harvestcraft:garlicseeditem>,
    <harvestcraft:celeryseeditem>,
    <harvestcraft:rhubarbseeditem>,
    <harvestcraft:zucchiniseeditem>,
    <harvestcraft:beetseeditem>,
    <harvestcraft:onionseeditem>,
    <harvestcraft:parsnipseeditem>,
    <harvestcraft:peanutseeditem>,
    <harvestcraft:radishseeditem>,
    <harvestcraft:rutabagaseeditem>,
    <harvestcraft:sweetpotatoseeditem>,
    <harvestcraft:turnipseeditem>,
    <harvestcraft:greengrapeseeditem>,
    <harvestcraft:huckleberryseeditem>,
    <harvestcraft:jicamaseeditem>,
    <harvestcraft:juteseeditem>,
    <harvestcraft:kenafseeditem>,
    <harvestcraft:kohlrabiseeditem>,
    <harvestcraft:lentilseeditem>,
    <harvestcraft:milletseeditem>,
    <harvestcraft:mulberryseeditem>,
    <harvestcraft:beanseeditem>,
    <harvestcraft:soybeanseeditem>,
    <harvestcraft:bellpepperseeditem>,
    <harvestcraft:chilipepperseeditem>,
    <harvestcraft:eggplantseeditem>,
    <harvestcraft:okraseeditem>,
    <harvestcraft:peasseeditem>,
    <harvestcraft:tomatoseeditem>,
    <harvestcraft:cottonseeditem>,
    <harvestcraft:pineappleseeditem>,
    <harvestcraft:grapeseeditem>,
    <harvestcraft:kiwiseeditem>,
    <harvestcraft:cranberryseeditem>,
    <harvestcraft:riceseeditem>,
    <harvestcraft:seaweedseeditem>,
    <harvestcraft:curryleafseeditem>,
    <harvestcraft:sesameseedsseeditem>,
    <harvestcraft:waterchestnutseeditem>,
    <harvestcraft:gigapickleseeditem>,
    <harvestcraft:kaleseeditem>,
    <harvestcraft:agaveseeditem>,
    <harvestcraft:amaranthseeditem>,
    <harvestcraft:arrowrootseeditem>,
    <harvestcraft:cassavaseeditem>,
    <harvestcraft:chickpeaseeditem>,
    <harvestcraft:elderberryseeditem>,
    <harvestcraft:flaxseeditem>,
    <harvestcraft:quinoaseeditem>,
    <harvestcraft:sisalseeditem>,
    <harvestcraft:taroseeditem>,
    <harvestcraft:tomatilloseeditem>,
    <harvestcraft:juniperberryseeditem>,

    <harvestcraft:date_sapling>,
    <harvestcraft:papaya_sapling>,
    <harvestcraft:cherry_sapling>,
    <harvestcraft:fig_sapling>,
    <harvestcraft:soursop_sapling>,
    <harvestcraft:dragonfruit_sapling>,
    <harvestcraft:rambutan_sapling>,
    <harvestcraft:jackfruit_sapling>,
    <harvestcraft:passionfruit_sapling>,
    <harvestcraft:orange_sapling>,
    <harvestcraft:apricot_sapling>,
    <harvestcraft:mango_sapling>,
    <harvestcraft:coconut_sapling>,
    <harvestcraft:pawpaw_sapling>,
    <harvestcraft:chestnut_sapling>,
    <harvestcraft:peach_sapling>,
    <harvestcraft:gooseberry_sapling>,
    <harvestcraft:almond_sapling>,
    <harvestcraft:peppercorn_sapling>,
    <harvestcraft:lime_sapling>,
    <harvestcraft:hazelnut_sapling>,
    <harvestcraft:pistachio_sapling>,
    <harvestcraft:pecan_sapling>,
    <harvestcraft:avocado_sapling>,
    <harvestcraft:plum_sapling>,
    <harvestcraft:banana_sapling>,
    <harvestcraft:starfruit_sapling>,
    <harvestcraft:vanillabean_sapling>,
    <harvestcraft:cashew_sapling>,
    <harvestcraft:pomegranate_sapling>,
    <harvestcraft:grapefruit_sapling>,
    <harvestcraft:spiderweb_sapling>,
    <harvestcraft:olive_sapling>,
    <harvestcraft:pear_sapling>,
    <harvestcraft:lemon_sapling>,
    <harvestcraft:apple_sapling>,
    <harvestcraft:walnut_sapling>,
    <harvestcraft:lychee_sapling>,
    <harvestcraft:persimmon_sapling>,
    <harvestcraft:guava_sapling>,
    <harvestcraft:breadfruit_sapling>,
    <harvestcraft:nutmeg_sapling>,
    <harvestcraft:durian_sapling>,
    <harvestcraft:tamarind_sapling>,
    <harvestcraft:cinnamon_sapling>,
    <harvestcraft:paperbark_sapling>,
    <harvestcraft:maple_sapling>
] as IItemStack[];

var plants = [
    <minecraft:pumpkin> * 6,
    <minecraft:beetroot> * 16,
    <minecraft:wheat> * 16,
    <minecraft:melon_block> * 6,
    <minecraft:carrot> * 12,
    <minecraft:potato> * 12,
    <minecraft:reeds> * 12,
    <minecraft:cactus> * 12,
    <minecraft:brown_mushroom> * 12,
    <minecraft:red_mushroom> * 12,
    <minecraft:nether_wart> * 12,
    <harvestcraft:blackberryitem> * 12,
    <harvestcraft:blueberryitem> * 12,
    <harvestcraft:candleberryitem> * 12,
    <harvestcraft:raspberryitem> * 12,
    <harvestcraft:strawberryitem> * 12,
    <harvestcraft:cactusfruititem> * 12,
    <harvestcraft:asparagusitem> * 12,
    <harvestcraft:barleyitem> * 12,
    <harvestcraft:oatsitem> * 12,
    <harvestcraft:ryeitem> * 12,
    <harvestcraft:cornitem> * 12,
    <harvestcraft:bambooshootitem> * 12,
    <harvestcraft:cantaloupeitem> * 12,
    <harvestcraft:cucumberitem> * 12,
    <harvestcraft:wintersquashitem> * 12,
    <harvestcraft:whitemushroomitem> * 12,
    <harvestcraft:spinachitem> * 12,
    <harvestcraft:cabbageitem> * 12,
    <harvestcraft:brusselsproutitem> * 12,
    <harvestcraft:artichokeitem> * 12,
    <harvestcraft:scallionitem> * 12,
    <harvestcraft:lettuceitem> * 12,
    <harvestcraft:leekitem> * 12,
    <harvestcraft:caulifloweritem> * 12,
    <harvestcraft:broccoliitem> * 12,
    <harvestcraft:mustarditem> * 12,
    <harvestcraft:coffeeitem> * 12,
    <harvestcraft:teaitem> * 12,
    <harvestcraft:spiceleafitem> * 12,
    <harvestcraft:gingeritem> * 12,
    <harvestcraft:garlicitem> * 12,
    <harvestcraft:celeryitem> * 12,
    <harvestcraft:rhubarbitem> * 12,
    <harvestcraft:zucchiniitem> * 12,
    <harvestcraft:beetitem> * 12,
    <harvestcraft:onionitem> * 12,
    <harvestcraft:parsnipitem> * 12,
    <harvestcraft:peanutitem> * 12,
    <harvestcraft:radishitem> * 12,
    <harvestcraft:rutabagaitem> * 12,
    <harvestcraft:sweetpotatoitem> * 12,
    <harvestcraft:turnipitem> * 12,
    <harvestcraft:greengrapeitem> * 12,
    <harvestcraft:huckleberryitem> * 12,
    <harvestcraft:jicamaitem> * 12,
    <harvestcraft:juteitem> * 12,
    <harvestcraft:kenafitem> * 12,
    <harvestcraft:kohlrabiitem> * 12,
    <harvestcraft:lentilitem> * 12,
    <harvestcraft:milletitem> * 12,
    <harvestcraft:mulberryitem> * 12,
    <harvestcraft:beanitem> * 12,
    <harvestcraft:soybeanitem> * 12,
    <harvestcraft:bellpepperitem> * 12,
    <harvestcraft:chilipepperitem> * 12,
    <harvestcraft:eggplantitem> * 12,
    <harvestcraft:okraitem> * 12,
    <harvestcraft:peasitem> * 12,
    <harvestcraft:tomatoitem> * 12,
    <harvestcraft:cottonitem> * 12,
    <harvestcraft:pineappleitem> * 12,
    <harvestcraft:grapeitem> * 12,
    <harvestcraft:kiwiitem> * 12,
    <harvestcraft:cranberryitem> * 12,
    <harvestcraft:riceitem> * 12,
    <harvestcraft:seaweeditem> * 12,
    <harvestcraft:curryleafitem> * 12,
    <harvestcraft:sesameseedsitem> * 12,
    <harvestcraft:waterchestnutitem> * 12,
    <harvestcraft:gigapickleitem> * 12,
    <harvestcraft:kaleitem> * 12,
    <harvestcraft:agaveitem> * 12,
    <harvestcraft:amaranthitem> * 12,
    <harvestcraft:arrowrootitem> * 12,
    <harvestcraft:cassavaitem> * 12,
    <harvestcraft:chickpeaitem> * 12,
    <harvestcraft:elderberryitem> * 12,
    <harvestcraft:flaxitem> * 12,
    <harvestcraft:quinoaitem> * 12,
    <harvestcraft:sisalitem> * 12,
    <harvestcraft:taroitem> * 12,
    <harvestcraft:tomatilloitem> * 12,
    <harvestcraft:juniperberryitem> * 12,

    <harvestcraft:dateitem> * 12,
    <harvestcraft:papayaitem> * 12,
    <harvestcraft:cherryitem> * 12,
    <harvestcraft:figitem> * 12,
    <harvestcraft:soursopitem> * 12,
    <harvestcraft:dragonfruititem> * 12,
    <harvestcraft:rambutanitem> * 12,
    <harvestcraft:jackfruititem> * 12,
    <harvestcraft:passionfruititem> * 12,
    <harvestcraft:orangeitem> * 12,
    <harvestcraft:apricotitem> * 12,
    <harvestcraft:mangoitem> * 12,
    <harvestcraft:coconutitem> * 12,
    <harvestcraft:pawpawitem> * 12,
    <harvestcraft:chestnutitem> * 12,
    <harvestcraft:peachitem> * 12,
    <harvestcraft:gooseberryitem> * 12,
    <harvestcraft:almonditem> * 12,
    <harvestcraft:peppercornitem> * 12,
    <harvestcraft:limeitem> * 12,
    <harvestcraft:hazelnutitem> * 12,
    <harvestcraft:pistachioitem> * 12,
    <harvestcraft:pecanitem> * 12,
    <harvestcraft:avocadoitem> * 12,
    <harvestcraft:plumitem> * 12,
    <harvestcraft:bananaitem> * 12,
    <harvestcraft:starfruititem> * 12,
    <harvestcraft:vanillabeanitem> * 12,
    <harvestcraft:cashewitem> * 12,
    <harvestcraft:pomegranateitem> * 12,
    <harvestcraft:grapefruititem> * 12,
    <minecraft:string> * 6,
    <harvestcraft:oliveitem> * 12,
    <harvestcraft:pearitem> * 12,
    <harvestcraft:lemonitem> * 12,
    <minecraft:apple> * 12,
    <harvestcraft:walnutitem> * 12,
    <harvestcraft:lycheeitem> * 12,
    <harvestcraft:persimmonitem> * 12,
    <harvestcraft:guavaitem> * 12,
    <harvestcraft:breadfruititem> * 12,
    <harvestcraft:nutmegitem> * 12,
    <harvestcraft:durianitem> * 12,
    <harvestcraft:tamarinditem> * 12,
    <harvestcraft:cinnamonitem> * 12,
    <minecraft:paper> * 6,
    <harvestcraft:maplesyrupitem> * 3
] as IItemStack[];

for i, seed in seeds {
    large_phytogenic_insolator.recipeBuilder()
        .circuit(1)
        .notConsumable(seed)
        .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputs(plants[i])
        .duration(1200)
        .EUt(600)
        .buildAndRegister();

    large_phytogenic_insolator.recipeBuilder()
        .circuit(2)
        .notConsumable(seed)
        .inputs(<thermalfoundation:fertilizer:2> * 4)
        .fluidInputs([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputs(plants[i].withAmount(plants[i].amount * 4))
        .duration(900)
        .EUt(3048)
        .buildAndRegister();
}