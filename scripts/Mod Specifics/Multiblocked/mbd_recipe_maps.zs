#loader multiblocked

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

// https://github.com/CleanroomMC/Multiblocked/wiki/CraftTweaker-RecipeBuilder

//Bio Fabricator Recipes ==========================================================================
var bio_fabricator = <mbd:recipe_map:bio_fabricator>;

//Sheep	
bio_fabricator.start()
    .inputItems(<fossil:sheep_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
			 <minecraft:wool> * 4,
            <ore:lard>.firstItem * 2,
	        <pyrotech:hide_sheep_sheared>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Pig	
bio_fabricator.start()
    .inputItems(<fossil:pig_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:porkchop> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:hide_pig>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Cow
bio_fabricator.start()
    .inputItems(<fossil:cow_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:beef> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:pelt_cow>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Horse
bio_fabricator.start()
    .inputItems(<fossil:horse_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Donkey
bio_fabricator.start()
    .inputItems(<fossil:donkey_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Chicken
bio_fabricator.start()
    .inputItems(<fossil:chicken_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:chicken>,
	         <minecraft:feather> * 2,
             <minecraft:egg>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Parrot
bio_fabricator.start()
    .inputItems(<fossil:parrot_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:chicken>,
	         <minecraft:feather> * 4)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Polar Bear
bio_fabricator.start()
    .inputItems(<fossil:polarbear_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:fish> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 3,
             <pyrotech:pelt_polar_bear>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Rabbit
bio_fabricator.start()
    .inputItems(<fossil:rabbit_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:rabbit> * 1,
	         <minecraft:rabbit_foot> * 1,
            <minecraft:bone> * 1,
             <minecraft:rabbit_hide>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Llama
bio_fabricator.start()
    .inputItems(<fossil:llama_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
             <ore:lard>.firstItem * 2,
             <pyrotech:hide_llama>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Nautilus
bio_fabricator.start()
    .inputItems(<fossil:nautilus_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<fossil:shell>*2,
	         <fossil:bio_goo>*2)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Fossil Ore Processing Plant Recipes ==========================================================================
var fossil_ore_processing_plant = <mbd:recipe_map:fossil_ore_processing_plant>;

//Main Recipe
fossil_ore_processing_plant.start()
    .duration(300)
    .inputItems(<ore:oreBasaltFossil>)
    .inputFluids(<liquid:distilled_water>*1000)
    .outputItems(<ore:dustFossil>.firstItem*4)
	.outputItems(0.75, <fossil:biofossil>)
	.outputItems(0.75, <fossil:plant_fossil>)
	.outputItems(0.50, <fossil:skull_block>)
	.outputItems(0.30, <fossil:relic_scrap>)
    .outputItems(0.20, <fossil:scarab_gem>)
    .perTick(true)
    .inputEU(120)
.buildAndRegister();

//Large Phytogenic Insolator Recipes ==========================================================================
var large_phytogenic_insolator = <mbd:recipe_map:large_phytogenic_insolator>;

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
    large_phytogenic_insolator.start()
        .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 1}))
        .inputItems(0.0,sapling)
        .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputItems(logs[i])
        .outputItems(sapling.withAmount(6))
        .duration(1200)
        .perTick(true)
        .inputEU(600)
        .buildAndRegister();

    large_phytogenic_insolator.start()
        .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 2}))
        .inputItems(0.0,sapling)
        .inputItems(<thermalfoundation:fertilizer:2> * 4)
        .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputItems(logs[i])
        .outputItems(logs[i])
        .outputItems(logs[i])
        .outputItems(sapling.withAmount(1))
        .duration(900)
        .perTick(true)
        .inputEU(3048)
        .buildAndRegister();
}

// Large Phytogenic Insolator Rubber

large_phytogenic_insolator.start()
    .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .inputItems(0.0,<ic2:sapling>)
    .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
    .outputItems(<ic2:rubber_wood> * 16)
    .outputItems(<ic2:sapling> * 3)
    .outputItems(<ic2:misc_resource:4> * 4)
    .duration(1200)
    .perTick(true)
    .inputEU(600)
    .buildAndRegister();

large_phytogenic_insolator.start()
    .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 2}))
    .inputItems(0.0,<ic2:sapling>)
    .inputItems(<thermalfoundation:fertilizer:2> * 4)
    .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
    .outputItems(<ic2:rubber_wood> * 64)
    .outputItems(<ic2:sapling> * 6)
    .outputItems(<ic2:misc_resource:4> * 16)
    .duration(900)
    .perTick(true)
    .inputEU(3048)
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
    large_phytogenic_insolator.start()
        .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 1}))
        .inputItems(0.0,seed)
        .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputItems(plants[i])
        .duration(1200)
        .perTick(true)
        .inputEU(600)
        .buildAndRegister();

    large_phytogenic_insolator.start()
        .inputItems(0.0, <gregtech:meta_item_1:461>.withTag({Configuration: 2}))
        .inputItems(0.0,seed)
        .inputItems(<thermalfoundation:fertilizer:2> * 4)
        .inputFluids([<liquid:water> * 1000, <liquid:glowstone> * 576])
        .outputItems(plants[i].withAmount(plants[i].amount * 4))
        .duration(900)
        .perTick(true)
        .inputEU(3048)
        .buildAndRegister();
}
