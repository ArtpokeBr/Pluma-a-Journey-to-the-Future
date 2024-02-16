import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// This Script is to balance or try to balance most of the Foods, mainly by removing them from the Furnace for example.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Foods Script                                                                                                                     //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Removed Foods

var RemovedFoods as IItemStack[] = [
    ];
for i in RemovedFoods {
furnace.remove(i);
}

// OreDict Fixes

// Flour
<ore:foodFlour>.add(<gregtech:meta_dust:1615>);

// Conversion Fixes

#Juniper Berry
craft.reshapeless(<harvestcraft:juniperberryitem>, "C", {
    "C": <extratrees:food:47>,
});

craft.reshapeless(<extratrees:food:47>, "C", {
    "C": <harvestcraft:juniperberryitem>,
});

// --- Cooking Tools =================================================================

// --- Pot
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [
[<ore:gtceHardHammers>, <ore:plateIron>, <ore:gtceFiles>],
[<ore:ringIron>, <minecraft:bucket>, <ore:ringIron>],
[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);
// -
recipes.addShaped(<harvestcraft:potitem>, [
[<ore:gtceFiles>, <ore:plateIron>, <ore:gtceHardHammers>],
[<ore:ringIron>, <minecraft:bucket>, <ore:ringIron>],
[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);

// --- Skilet
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [
[<ore:stickWood>, <ore:stickIron>, <ore:gtceHardHammers>],
[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);
// -
recipes.addShaped(<harvestcraft:skilletitem>, [
[<ore:stickWood>, <ore:stickIron>, <ore:gtceFiles>],
[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:stickWood>, <ore:gtceHardHammers>, <ore:plateIron>]]);

// --- Saucepan
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [
[<ore:stickWood>, <ore:gtceFiles>, <ore:screwIron>],
[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:stickWood>, <ore:gtceHardHammers>, <ore:plateIron>]]);
// -
recipes.addShaped(<harvestcraft:saucepanitem>, [
[<ore:stickWood>, <ore:gtceHardHammers>, <ore:screwIron>],
[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);

// --- Mixing Bowl
recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped(<harvestcraft:mixingbowlitem>, [
[<ore:screwIron>, <ore:gtceHardHammers>, <ore:screwIron>],
[<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:screwIron>, <ore:gtceFiles>, <ore:screwIron>]]);
// -
recipes.addShaped(<harvestcraft:mixingbowlitem>, [
[<ore:screwIron>, <ore:gtceFiles>, <ore:screwIron>],
[<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>],
[<ore:screwIron>, <ore:gtceHardHammers>, <ore:screwIron>]]);

// --- Cutboard ---
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShapeless(<harvestcraft:cuttingboarditem>, [<ore:gtceKnife>]);

// --- Mortar ---
recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.addShaped(<harvestcraft:mortarandpestleitem>, [
[<ore:gtceHardHammers>, <ore:stickSteel>, <ore:gtceFiles>],
[<ore:stoneGraniteBlack>, <ore:stickSteel>, <ore:stoneGraniteBlack>],
[<ore:stoneGraniteBlack>, <ore:stoneGraniteBlack>, <ore:stoneGraniteBlack>]]);

// --- Bakeware ---
recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>, [
[<ore:plateSteel>, null, <ore:plateSteel>],
[<ore:plateSteel>, <ore:gtceHardHammers>, <ore:plateSteel>],
[<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]]);

// --- Juicer ---
recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped(<harvestcraft:juiceritem>, [
[<ore:plateSteel>, <ore:gtceHardHammers>, <ore:plateSteel>],
[<ore:plateSteel>, <gregtech:meta_tool_head_drill:324>, <ore:plateSteel>],
[<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]]);

// =========== Ground Meat and Stuff from the Grinder from HarvestCraft =========== //

//Black Pepper
extractor.recipeBuilder()
    .inputs([<ore:cropPeppercorn>])
    .outputs(<ore:foodBlackpepper>.firstItem*2)
    .duration(40)
    .EUt(4)
    .buildAndRegister();

//Cinnamon
extractor.recipeBuilder()
    .inputs([<ore:cropCinnamon>])
    .outputs(<ore:foodGroundcinnamon>.firstItem*2)
    .duration(40)
    .EUt(4)
    .buildAndRegister();

//Ground Nutmeg
extractor.recipeBuilder()
    .inputs([<ore:cropNutmeg>])
    .outputs(<ore:foodGroundnutmeg>.firstItem*2)
    .duration(40)
    .EUt(4)
    .buildAndRegister();

//Seaweed to Salt
extractor.recipeBuilder()
    .inputs([<ore:cropSeaweed>])
    .outputs(<ore:dustSalt>.firstItem*2)
    .duration(40)
    .EUt(4)
    .buildAndRegister();

// Ground Beef     
hammer.recipeBuilder()
    .inputs([<ore:listAllbeefraw>])
    .outputs(<ore:foodGroundbeef>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Chicken     
hammer.recipeBuilder()
    .inputs([<ore:listAllchickenraw>])
    .outputs(<ore:foodGroundchicken>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Duck     
hammer.recipeBuilder()
    .inputs([<ore:listAllduckraw>])
    .outputs(<ore:foodGroundduck>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Fish     
hammer.recipeBuilder()
    .inputs([<ore:listAllfishraw>])
    .outputs(<ore:foodGroundfish>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Mutton     
hammer.recipeBuilder()
    .inputs([<ore:listAllmuttonraw>])
    .outputs(<ore:foodGroundmutton>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Pork     
hammer.recipeBuilder()
    .inputs([<ore:listAllporkraw>])
    .outputs(<ore:foodGroundpork>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Rabbit     
hammer.recipeBuilder()
    .inputs([<ore:listAllrabbitraw>])
    .outputs(<ore:foodGroundrabbit>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Turkey     
hammer.recipeBuilder()
    .inputs([<ore:listAllturkeyraw>])
    .outputs(<ore:foodGroundturkey>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Ground Venison     
hammer.recipeBuilder()
    .inputs([<ore:listAllvenisonraw>])
    .outputs(<ore:foodGroundvenison>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister(); 


// =========== Harvest Craft Juices and other recipes of the Presser =========== //

val HCJuices as IItemStack[][IOreDictEntry] = {
	<ore:cropApple>   : [<harvestcraft:applejuiceitem>]
	, <ore:foodMelon>  : [<harvestcraft:melonjuiceitem>]	
	, <ore:cropCarrot>  : [<harvestcraft:carrotjuiceitem>]
	, <ore:cropStrawberry>  : [<harvestcraft:strawberryjuiceitem>]
    , <ore:cropGrape>  : [<harvestcraft:grapejuiceitem>]
    , <ore:cropBlueberry>  : [<harvestcraft:blueberryjuiceitem>]								
    , <ore:cropCherry>  : [<harvestcraft:cherryjuiceitem>]
    , <ore:cropPapaya>  : [<harvestcraft:papayajuiceitem>]
    , <ore:cropStarfruit>  : [<harvestcraft:starfruitjuiceitem>]
    , <ore:cropOrange>  : [<harvestcraft:orangejuiceitem>]
    , <ore:cropPeach>  : [<harvestcraft:peachjuiceitem>]
    , <ore:cropLime>  : [<harvestcraft:limejuiceitem>]
    , <ore:cropMango>  : [<harvestcraft:mangojuiceitem>]
    , <ore:cropPomegranate>  : [<harvestcraft:pomegranatejuiceitem>]
    , <ore:cropBlackberry>  : [<harvestcraft:blackberryjuiceitem>]
    , <ore:cropRaspberry>  : [<harvestcraft:raspberryjuiceitem>]
    , <ore:cropKiwi>  : [<harvestcraft:kiwijuiceitem>]
    , <ore:cropCranberry>  : [<harvestcraft:cranberryjuiceitem>]
    , <ore:cropCactusfruit>  : [<harvestcraft:cactusfruitjuiceitem>]
    , <ore:cropPlum>  : [<harvestcraft:plumjuiceitem>]
    , <ore:cropPear>  : [<harvestcraft:pearjuiceitem>]
    , <ore:cropApricot>  : [<harvestcraft:apricotjuiceitem>]
    , <ore:cropFig>  : [<harvestcraft:figjuiceitem>]
    , <ore:cropGrapefruit>  : [<harvestcraft:grapefruitjuiceitem>]
    , <ore:cropPersimmon>  : [<harvestcraft:persimmonjuiceitem>]
};

for oreDictEntry, itemStacks in HCJuices {
	val juiceOutput = itemStacks[0] as IItemStack;

    extractor.recipeBuilder()
    .inputs([oreDictEntry.firstItem])
    .outputs(juiceOutput)
    .duration(300)
    .EUt(2)
    .buildAndRegister();
}

var HCCookingOil as IItemStack[] = [
<harvestcraft:sunflowerseedsitem>,
<harvestcraft:cottonseeditem>,
<harvestcraft:mustardseeditem>,
<harvestcraft:oliveitem>,
<minecraft:pumpkin>,
<harvestcraft:tealeafitem>,
<harvestcraft:avocadoitem>,
<harvestcraft:walnutitem>
    ];
for i in HCCookingOil {
 extractor.recipeBuilder()
    .inputs([i])
    .outputs(<harvestcraft:oliveoilitem>)
    .duration(300)
    .EUt(2)
    .buildAndRegister();
} 

// Almond Making Milk
extractor.recipeBuilder()
    .inputs([<ore:cropAlmond>])
    .outputs(<harvestcraft:freshmilkitem>)
    .duration(60)
    .EUt(10)
    .buildAndRegister();

// Silk Tofu
compressor.recipeBuilder()
    .inputs([<ore:cropSoybean>])
    .outputs(<ore:foodSilkentofu>.firstItem)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

// Firm Tofu
compressor.recipeBuilder()
    .inputs([<ore:foodSilkentofu>])
    .outputs(<ore:foodFirmtofu>.firstItem)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

// Soy Milk
extractor.recipeBuilder()
    .inputs([<ore:cropSoybean>])
    .outputs(<ore:foodSoymilk>.firstItem)
    .duration(60)
    .EUt(10)
    .buildAndRegister();

// Bubbly Water
extractor.recipeBuilder()
    .inputs([<ore:listAllwater>])
    .outputs(<ore:foodBubblywater>.firstItem)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

// Sugar out of Beet
extractor.recipeBuilder()
    .inputs([<ore:cropBeet>])
    .outputs(<ore:dustSugar>.firstItem)
    .duration(90)
    .EUt(8)
    .buildAndRegister();

//Dominos Pizza from NuclearCraft
recipes.remove(<nuclearcraft:dominos>);
assembler.recipeBuilder()
    .inputs(
		<ore:foodBread>*8,
		<ore:listAllporkcooked>*2,
		<ore:listAllbeefcooked>*2,
		<ore:listAllchickencooked>*2,
		<ore:listAllmuttoncooked>*2,
		<ore:cropTomato>*2,
		<ore:foodCheese>*2,
		<ore:listAllmushroom>*2)
    .outputs(<nuclearcraft:dominos>*4)
	.duration(100).EUt(68)
.buildAndRegister();

//Obtaining more Mushrrooms with Mycelium
centrifuge.findRecipe(30, [<minecraft:mycelium>], [null]).remove();
centrifuge.recipeBuilder().inputs(<minecraft:mycelium>)
	.chancedOutput(<minecraft:brown_mushroom>, 2500, 900)
	.chancedOutput(<minecraft:red_mushroom>, 2500, 900)
	.chancedOutput(<quark:glowshroom>, 400, 700)
	.chancedOutput(<nuclearcraft:glowing_mushroom>, 400, 700)
	.chancedOutput(<harvestcraft:whitemushroomitem>, 400, 700)
	.chancedOutput(<randomthings:glowingmushroom>, 100, 400)
	.duration(650).EUt(30)
.buildAndRegister();

//Roasted Food Compat Recipes

val RoastedFoodsCompat as IItemStack[][IIngredient] = {
	<mysticalworld:cooked_carrot>   : [<pyrotech:carrot_roasted>]
	, <mysticalworld:cooked_beetroot>  : [<pyrotech:beetroot_roasted>]	
	, <fossil:cooked_egg>  : [<pyrotech:egg_roasted>]
    , <ore:foodMarshmellows>.firstItem  : [<pyrotech:marshmallow>]
};

for IIngredient, itemStacks in RoastedFoodsCompat {
	val roastedOutput = itemStacks[0] as IItemStack;

    # [A] from [B]
    craft.reshapeless(roastedOutput, "C", {
        "C": IIngredient, # B
    });
}

# [Lychee Tea] from [Fresh Water][+3]
recipes.remove(<harvestcraft:lycheeteaitem>);
craft.shapeless(<harvestcraft:lycheeteaitem>, "PlTA", {
  "P": <ore:toolPot>.reuse(),      # Pot
  "l": <harvestcraft:lycheeitem>,  # Lychee
  "T": <harvestcraft:tealeafitem>, # Tea Leaf
  "A": <ore:listAllwater>,         # Fresh Water
});

# [Schnitzel] from [Cooking Oil][+5]
recipes.remove(<harvestcraft:schnitzelitem>);
craft.shapeless(<harvestcraft:schnitzelitem>, "SNNFLOB", {
  "S": <ore:toolSkillet>.reuse(),                        # Skillet
  "N": <ore:listAllporkraw>,                    # Raw Porkchop
  "F": <ore:foodFlour>,                         # Flour
  "L": <ore:cropLemon>,                         # Lemon
  "O": <ore:foodOliveoil>,                      # Cooking Oil
  "B": <ore:foodBlackpepper>,                   # Black Pepper
});

# [Sauced Lamb Kebab] from [Garlic][+6]
recipes.remove(<harvestcraft:saucedlambkebabitem>);
craft.shapeless(<harvestcraft:saucedlambkebabitem>, "MLPAGsl", {
  "M": <ore:toolMixingbowl>.reuse(),                 # Mixing Bowl
  "L": <ore:foodLambkebab>,                  # Lamb Kebab
  "P": <ore:foodPlainyogurt>,                # Plain Yogurt
  "A": <ore:listAllheavycream> | <ore:foodSilkentofu>, # Silken Tofu
  "G": <ore:cropGarlic>,                     # Garlic
  "s": <harvestcraft:spiceleafitem>,         # Spice Leaf
  "l": <ore:cropLime>,                       # Lime
});

# [Cantonese Noodles] from [Corn][+8]
recipes.remove(<harvestcraft:cantonesenoodlesitem>);
craft.shapeless(<harvestcraft:cantonesenoodlesitem>, "SoNelCvAO", {
  "S": <ore:toolSkillet>.reuse(),                    # Skillet
  "o": <ore:foodNoodles>,                    # Noodles
  "N": <ore:listAllbeefraw>,                 # Raw Beef
  "e": <ore:egg> | <ore:listAllegg>,         # Egg
  "l": <ore:cropCorn>,                       # Corn
  "C": <minecraft:carrot>,                   # Carrot
  "v": <ore:cropCabbage>,                    # Cabbage
  "A": <minecraft:brown_mushroom>,           # Mushroom
  "O": <ore:foodOystersauce>,                # Oyster Sauce
});

# [Swedish Meatballs] from [Sweet and Sour Meatballs][+2]
recipes.remove(<harvestcraft:swedishmeatballsitem>);
craft.shapeless(<harvestcraft:swedishmeatballsitem>, "dYdYSYdYd", {
  "d": <ore:dyeBlue>,                   # Blue Dye
  "Y": <ore:dyeYellow>,                 # Chemical Yellow Dye
  "S": <ore:foodSweetandsourmeatballs>, # Sweet and Sour Meatballs
});

# [Bratwurst] from [Bread][+4]
recipes.remove(<harvestcraft:bratwurstitem>);
craft.shapeless(<harvestcraft:bratwurstitem>, "CoPAb", {
  "C": <ore:toolCuttingboard>.reuse(),                # Cutting Board
  "o": <ore:foodPorksausage>,                 # Pork Sausage
  "P": <ore:foodPickles>,                     # Pickles
  "A": <ore:cropOnion>,                       # Onion
  "b": <ore:bread> | <ore:foodBread>,         # Bread
});

# [Bean Stew] from [Stock][+3]
recipes.remove(<randomthings:beanstew>);
craft.shapeless(<randomthings:beanstew>, "PWBBS", {
  "P": <ore:toolPot>.reuse(),                        # Pot
  "W": <minecraft:wheat>,                    # Wheat
  "B": <ore:cropBean>,                       # Beans
  "S": <ore:foodStock>,                      # Stock
});

# [Pork Rinds] from [Flour][+4]
recipes.remove(<harvestcraft:porkrindsitem>);
craft.shapeless(<harvestcraft:porkrindsitem>, "P▲AFB", {
  "P": <ore:toolPot>.reuse(),                            # Pot
  "▲": <ore:dustSalt> | <ore:itemSalt> | <ore:foodSalt>, # Salt
  "A": <ore:foodOlivejuice>,                     # Olive Oil Bottle
  "F": <ore:foodFlour>,                          # Flour
  "B": <ore:foodBlackpepper>,                    # Black Pepper
});

# [Garlic Steak] from [Butter][+3]
recipes.remove(<harvestcraft:garlicsteakitem>);
craft.shapeless(<harvestcraft:garlicsteakitem>, "SNGB", {
  "S": <ore:toolSkillet>.reuse(),            # Skillet
  "N": <ore:listAllbeefraw>,                 # Raw Beef
  "G": <ore:cropGarlic> | <ore:listAllherb>, # Garlic
  "B": <ore:foodButter>,                     # Butter
});

# [Imitation Crab Sticks] from [Cooking Oil][+4]
recipes.removeByRecipeName("harvestcraft:imitationcrabsticksitem");
craft.shapeless(<harvestcraft:imitationcrabsticksitem>, "uCeFO", {
  "u": <ore:toolCuttingboard>.reuse(),           # Cutting Board
  "C": <ore:foodCrabcooked>,                     # Cooked Crab
  "e": <ore:egg> | <ore:listAllegg>,             # Egg
  "F": <ore:foodFlour>,                          # Flour
  "O": <ore:foodOliveoil>,                       # Cooking Oil
});

# [BBQ Jackfruit] from [Jackfruit][+2]
recipes.removeByRecipeName("harvestcraft:bbqjackfruititem");
craft.shapeless(<harvestcraft:bbqjackfruititem>, "SAB", {
  "S": <ore:toolSkillet>.reuse(),   # Skillet
  "A": <harvestcraft:jackfruititem>, # Jackfruit
  "B": <ore:foodBbqsauce>,  # BBQ Sauce
});
