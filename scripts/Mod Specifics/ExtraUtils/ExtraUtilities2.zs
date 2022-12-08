import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Extra Utilities 2 Script                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Materials ================================================================================================ //

//Polished Stone
recipes.remove(<extrautils2:decorativesolid:2>);
autoclave.recipeBuilder()
    	.inputs(<ore:stoneBricks>)
    	.fluidInputs(<liquid:distilled_water> * 250)
    	.outputs(<extrautils2:decorativesolid:2>)
    	.duration(175)
    	.EUt(30)
.buildAndRegister();

//Eye of Redstone
recipes.remove(<extrautils2:ingredients:2>);
autoclave.recipeBuilder()
    	.inputs(<ore:gemEnderEye>)
    	.fluidInputs(<liquid:redstone> * 250)
    	.outputs(<extrautils2:ingredients:2>)
    	.duration(197)
    	.EUt(220)
.buildAndRegister();

// Machine Block
recipes.remove(<extrautils2:machine:0>);
recipes.addShaped(<extrautils2:machine:0> * 2, [[<ore:lightPlateVanadiumSteel>, <ore:plateSteel>, <ore:lightPlateVanadiumSteel>], [<ore:plateSteel>, <ore:gearRedSteel>, <ore:plateSteel>],[<ore:lightPlateVanadiumSteel>, <ore:plateSteel>, <ore:lightPlateVanadiumSteel>]]);

// Drop of Evil
<extrautils2:ingredients:10>.addTooltip(format.darkRed("Can also be Crafted"));
recipes.remove(<extrautils2:ingredients:10>);
recipes.addShaped(<extrautils2:ingredients:10> * 1, [[<quark:black_ash>, <contenttweaker:hellishflesh>, <quark:black_ash>], [<contenttweaker:hellishflesh>, <minecraft:skull:1>, <contenttweaker:hellishflesh>],[<quark:black_ash>, <contenttweaker:hellishflesh>, <quark:black_ash>]]);

// Enchanted Metal
blast_furnace.recipeBuilder()
    .inputs(<ore:dustLapis>*2, <ore:dustGold>)
    .fluidInputs([<liquid:xpjuice> * 1000])
    .outputs(<ore:ingotEnchantedMetal>.firstItem)
    .property("temperature", 2100)
    .duration(220)
    .EUt(130)
.buildAndRegister();

// blast_furnace.recipeBuilder()
//     .inputs(<ore:dustLapis>*18, <ore:dustGold>*9)
//     .fluidInputs([<liquid:xpjuice> * 9000])
//     .outputs(<ore:blockEnchantedMetal>.firstItem)
//     .property("temperature", 2100)
//     .duration(880)
//     .EUt(130)
// .buildAndRegister();


// Evil Infused Iron
blast_furnace.recipeBuilder()
    .inputs(<ore:dustSmallNetherStar>*2, <ore:dustWroughtIron>)
    .fluidInputs([<liquid:liquid_nightmares> * 4000])
    .outputs(<ore:ingotEvilMetal>.firstItem)
    .property("temperature", 2200)
    .duration(220)
    .EUt(130)
.buildAndRegister();

// blast_furnace.recipeBuilder()
//     .inputs(<ore:dustSmallNetherStar>*18, <ore:dustWroughtIron>*9)
//     .fluidInputs([<liquid:liquid_nightmares> * 36000])
//     .outputs(<ore:blockEvilMetal>.firstItem)
//     .property("temperature", 2200)
//     .duration(880)
//     .EUt(130)
// .buildAndRegister();


// Enchanted Apple ---
recipes.remove(<extrautils2:magicapple>);

chemreactor.recipeBuilder()
	.inputs(<ore:dustLapis>*1, <minecraft:apple>*4)
	.fluidInputs([<liquid:xpjuice> * 500])
	.outputs(<extrautils2:magicapple>*4)
    .duration(80)
    .EUt(64)
.buildAndRegister();


// Magical wood
recipes.remove(<extrautils2:decorativesolidwood:1>);

chemreactor.recipeBuilder()
	.inputs(<ore:dustLapis>, <ore:bookshelf>)
	.fluidInputs([<liquid:xpjuice> * 500])
	.outputs(<extrautils2:decorativesolidwood:1>)
    .duration(120)
    .EUt(200)
.buildAndRegister();

// rainbow stone
recipes.addShaped(<extrautils2:decorativesolid:8>*2, [
	[<ore:dyePurple>, <ore:dyeCyan>, <ore:dyeLightGray>],
	[<ore:dyePink>, <extrautils2:decorativesolid:3>, <ore:dyeLime>],
	[<ore:dyeLightBlue>, <ore:dyeMagenta>, <ore:dyeOrange>]]);

//========================================================================================================== //


//Spikes ================================================================================================ //

// Wooden Spikes
recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_wood> * 4, [[null, <minecraft:wooden_sword>, null], [<minecraft:wooden_sword>, <ore:plateTreatedWood>, <minecraft:wooden_sword>],[<ore:plateTreatedWood>, <ore:frameGtTreatedWood>, <ore:plateTreatedWood>]]);

// Stone Spikes
recipes.remove(<extrautils2:spike_stone>);
recipes.addShaped(<extrautils2:spike_stone> * 4, [[null, <minecraft:stone_sword>, null], [<minecraft:stone_sword>, <pyrotech:material:16>, <minecraft:stone_sword>],[<pyrotech:material:16>, <ore:compressed2xCobblestone>, <pyrotech:material:16>]]);

// Iron Spikes
recipes.remove(<extrautils2:spike_iron>);
recipes.addShaped(<extrautils2:spike_iron> * 4, [[null, <minecraft:iron_sword>, null], [<minecraft:iron_sword>, <ore:plateIron>, <minecraft:iron_sword>],[<ore:plateIron>, <ore:blockIron>, <ore:plateIron>]]);

// Golden Spikes
recipes.remove(<extrautils2:spike_gold>);
recipes.addShaped(<extrautils2:spike_gold> * 4, [[null, <minecraft:golden_sword>, null], [<minecraft:golden_sword>, <ore:plateGold>, <minecraft:golden_sword>],[<ore:plateGold>, <ore:blockGold>, <ore:plateGold>]]);

// Diamond Spikes
recipes.remove(<extrautils2:spike_diamond>);
recipes.addShaped(<extrautils2:spike_diamond> * 4, [[null, <minecraft:diamond_sword>, null], [<minecraft:diamond_sword>, <ore:plateDiamond>, <minecraft:diamond_sword>],[<ore:plateDiamond>, <ore:blockDiamond>, <ore:plateDiamond>]]);



//========================================================================================================= //


//Upgrades ================================================================================================ //

//Speed Upgrade
recipes.remove(<extrautils2:ingredients:6>);
recipes.addShapeless("XU2SpeedUpgrade",<extrautils2:ingredients:6>,[<ore:xuUpgradeBlank>, <forestry:thermionic_tubes:4>, <ore:plateRedstone>]);

//Stack Upgrade
recipes.remove(<extrautils2:ingredients:7>);
recipes.addShapeless("XU2StackUpgrade",<extrautils2:ingredients:7>,[<ore:xuUpgradeBlank>, <forestry:thermionic_tubes:5>, <ore:plateGold>]);

//Mining Upgrade
recipes.remove(<extrautils2:ingredients:8>);
recipes.addShapeless("XU2MiningUpgrade",<extrautils2:ingredients:8>,[<ore:xuUpgradeBlank>, <forestry:thermionic_tubes:4>, <tconstruct:pick_head>.withTag({Material: "electrum"})]);


//========================================================================================================= //


//Machines ================================================================================================ //

// Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator> * 1, [[<ore:lightPlateRedAlloy>, <ore:plateBlackQuartz>, <ore:lightPlateRedAlloy>], [<ore:plateRedSteel>, <ore:gemRedstone>, <ore:plateRedSteel>],[<ore:plateRedSteel>, <ore:plateRedSteel>, <ore:plateRedSteel>]]);

// // Enchanter
// recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}));
// recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}) * 1, [[null, <ore:bookEnchanted>, null], [<ore:gemExquisiteDiamond>, <extrautils2:machine:0>, <ore:gemExquisiteDiamond>],[<ore:lightPlateRefinedObsidian>, <ore:lightPlateRefinedObsidian>, <ore:lightPlateRefinedObsidian>]]);


//========================================================================================================= //

// // ============ Currently Disabling The Rainbow Generator and its related Generators ============ //

var RainbownGeneratorRemovals as IItemStack[] = [
<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
<extrautils2:rainbowgenerator:1>,
<extrautils2:rainbowgenerator:2>,
<extrautils2:rainbowgenerator>
        ];
for item in RainbownGeneratorRemovals {
mods.jei.JEI.removeAndHide(item);
}

// ===============================================================================================================


// GP Generators =================================================================================================

// Manual Mill
recipes.remove(<extrautils2:passivegenerator:7>);
recipes.addShaped(<extrautils2:passivegenerator:7> * 1, [[null, null, null], [<ore:plateRedSteel>, <ore:gearRedstone>, <ore:plateRedSteel>],[<extrautils2:decorativesolid:2>, <ore:gemRedstone>, <extrautils2:decorativesolid:2>]]);

// Wind Mill
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.addShaped(<extrautils2:passivegenerator:4> * 1, [[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>], [<ore:gearRedstone>, <ore:rotorRedSteel>, <ore:gemRedstone>],[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]]);

// Fire Mill
recipes.remove(<extrautils2:passivegenerator:5>);
recipes.addShaped(<extrautils2:passivegenerator:5> * 1, [[<extrautils2:decorativesolid:3>, <ore:gemRedstone>, <extrautils2:decorativesolid:3>], [<extrautils2:decorativesolid:3>, <ore:rotorRedSteel>, <extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>, <ore:gearRedstone>, <extrautils2:decorativesolid:3>]]);

// Lava Mill
recipes.remove(<extrautils2:passivegenerator:2>);
recipes.addShaped(<extrautils2:passivegenerator:2> * 1, [[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>], [<extrautils2:decorativesolid:3>, <ore:gemRedstone>, <extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>, <ore:heavyPlateRedSteel>, <extrautils2:decorativesolid:3>]]);

// Water Mill
recipes.remove(<extrautils2:passivegenerator:3>);
recipes.addShaped(<extrautils2:passivegenerator:3> * 1, [[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>], [<ore:rotorRedSteel>, <ore:gemRedstone>, <ore:rotorRedSteel>],[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]]);

// Solar Panel
recipes.remove(<extrautils2:passivegenerator:0>);
recipes.addShaped(<extrautils2:passivegenerator:0> * 3, [[null, null, null], [<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>],[<extrautils2:decorativesolid:3>, <ore:gemRedstone>, <extrautils2:decorativesolid:3>]]);

// Lunar Panel
recipes.remove(<extrautils2:passivegenerator:1>);
recipes.addShapeless(<extrautils2:passivegenerator:1>, [<extrautils2:passivegenerator:0>, <ore:dustLunar>]); 

// Dragon Egg Mill
recipes.remove(<extrautils2:passivegenerator:8>);
recipes.addShaped(<extrautils2:passivegenerator:8> * 1, [[<extrautils2:decorativesolid:3>, <appliedenergistics2:material:9>, <extrautils2:decorativesolid:3>], [<ore:plateNetherStar>, <ore:frameGtTitanium>, <ore:plateNetherStar>],[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:2>, <extrautils2:decorativesolid:3>]]);

// ============ GP Generators Tooltips ============ //

//Solar Generator
<extrautils2:passivegenerator>.addTooltip(format.gold("This Generator has a 1.5 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Lunar Generator
<extrautils2:passivegenerator:1>.addTooltip(format.gold("This Generator has a 1.5 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Lava Generator
<extrautils2:passivegenerator:2>.addTooltip(format.gold("This Generator has a 2.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Water Generator
<extrautils2:passivegenerator:3>.addTooltip(format.gold("This Generator has a 0.5 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Wind Generator
<extrautils2:passivegenerator:4>.addTooltip(format.gold("This Generator has a 2.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Fire Generator
<extrautils2:passivegenerator:5>.addTooltip(format.gold("This Generator has a 2.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Creative Generator
<extrautils2:passivegenerator:6>.addTooltip(format.gold("This Generator has a 1000.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Manual Generator
<extrautils2:passivegenerator:7>.addTooltip(format.gold("This Generator has a 1.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

//Dragon Egg Generator
<extrautils2:passivegenerator:8>.addTooltip(format.gold("This Generator has a 20.0 GP Efficiency") + format.white(" and ") + format.green("There's no Efficiency Loss."));

// Wireless RF Battery
recipes.remove(<extrautils2:powerbattery>);
recipes.addShaped(<extrautils2:powerbattery> * 1, [[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>], [<ore:heavyPlateRedSteel>, <ore:batteryLv>, <ore:heavyPlateRedSteel>],[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]]);

// Wireless RF Transmitter
recipes.remove(<extrautils2:powertransmitter>);
recipes.addShaped(<extrautils2:powertransmitter> * 4, [[<ore:boltRedSteel>, <extrautils2:decorativesolid:3>, <ore:boltRedSteel>], [<extrautils2:decorativesolid:3>, <extrautils2:ingredients:0>, <extrautils2:decorativesolid:3>],[<ore:boltRedSteel>, <extrautils2:decorativesolid:3>, <ore:boltRedSteel>]]);

// Mechanical Crafter
recipes.remove(<extrautils2:crafter>);
recipes.addShaped(<extrautils2:crafter> * 1, [[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<ore:craftingTableWood>, <extrautils2:machine:0>, <ore:craftingTableWood>],[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Scanner
recipes.remove(<extrautils2:scanner>);
recipes.addShaped(<extrautils2:scanner> * 1, [[<ore:plateStone>, <extrautils2:ingredients:0>, <ore:plateStone>], [<ore:plateIron>, <extrautils2:machine:0>, <ore:plateIron>],[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Mechanical Miner
recipes.remove(<extrautils2:miner>);
recipes.addShaped(<extrautils2:miner> * 1, [[<actuallyadditions:item_misc:7>, <minecraft:iron_pickaxe>, <actuallyadditions:item_misc:7>], [<ore:ingotRedstoneAlloy>, <extrautils2:machine:0>, <ore:ingotRedstoneAlloy>],[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Mechanical User
recipes.remove(<extrautils2:user>);
recipes.addShaped(<extrautils2:user> * 1, [[<actuallyadditions:item_misc:8>, <ore:oc:cpu2>, <actuallyadditions:item_misc:8>], [<ore:ingotRedstoneAlloy>, <extrautils2:machine:0>, <ore:ingotRedstoneAlloy>],[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Stone Drum
recipes.remove(<extrautils2:drum:0>);
recipes.addShaped(<extrautils2:drum:0> * 1, [[<ore:compressed1xCobblestone>, <ore:plateStone>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <gregtech:machine:1610>, <ore:compressed1xCobblestone>],[<ore:compressed1xCobblestone>, <ore:plateStone>, <ore:compressed1xCobblestone>]]);

// Iron Drum
recipes.remove(<extrautils2:drum:1>);
recipes.addShaped(<extrautils2:drum:1> * 1, [[<ore:plateIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:plateIron>], [<ore:plateIron>, <extrautils2:drum:0>, <ore:plateIron>],[<ore:plateIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:plateIron>]]);

// Reinforced Large Drum
recipes.remove(<extrautils2:drum:2>);
recipes.addShaped(<extrautils2:drum:2> * 1, [[<ore:plateVanadiumSteel>, <minecraft:light_weighted_pressure_plate>, <ore:plateVanadiumSteel>], [<ore:plateDiamond>, <extrautils2:drum:1>, <ore:plateDiamond>],[<ore:plateVanadiumSteel>, <minecraft:light_weighted_pressure_plate>, <ore:plateVanadiumSteel>]]);

// Demonically Gargantuan Drum
recipes.remove(<extrautils2:drum:3>);
recipes.addShaped(<extrautils2:drum:3> * 1, [[<ore:plateDemonic>, <extrautils2:klein:0>, <ore:plateDemonic>], [<ore:plateDemonic>, <extrautils2:drum:2>, <ore:plateDemonic>],[<ore:plateDemonic>, <extrautils2:klein:0>, <ore:plateDemonic>]]);

// Klein Bottle
recipes.remove(<extrautils2:klein:0>);
recipes.addShaped(<extrautils2:klein:0> * 1, [[null, <ore:dustSentientMetal>, null], [<ore:dustAstralStarmetal>, <ore:bEnderAirBottle>, <ore:dustAstralStarmetal>],[null, <ore:dustSentientMetal>, null]]);

// Kikoku
recipes.remove(<extrautils2:lawsword>);
recipes.addShaped(<extrautils2:lawsword> * 1, [[null, <extrautils2:opinium:8>, null], [null, <extrautils2:opinium:8>, null],[null, <ore:stickLongNeutronium>, null]]);

// Compound Bow
recipes.remove(<extrautils2:compoundbow>);
recipes.addShaped(<extrautils2:compoundbow> * 1, [[null, <extrautils2:opinium:8>, <randomthings:ingredient:12>], [<ore:lightPlateNeutronium>, null, <randomthings:ingredient:12>],[null, <extrautils2:opinium:8>, <randomthings:ingredient:12>]]);

// Dark Glass
recipes.remove(<extrautils2:decorativeglass:3>);

chemreactor.recipeBuilder()
	.inputs(<extrautils2:decorativeglass>*2, <ore:dyeBlack>)
	.fluidInputs([<liquid:glass> * 144])
	.outputs(<extrautils2:decorativeglass:3>*3)
    .duration(350)
    .EUt(32)
.buildAndRegister();

// Glowing Glass
recipes.remove(<extrautils2:decorativeglass:4>);

chemreactor.recipeBuilder()
	.inputs(<extrautils2:decorativeglass>*2, <ore:dustGlowstone>)
	.fluidInputs([<liquid:glass> * 144])
	.outputs(<extrautils2:decorativeglass:4>*3)
    .duration(350)
    .EUt(32)
.buildAndRegister();

# Angel Rings
function addExtraUtilsAngelRingRecipe(dam as int, input_item as IIngredient) {
	recipes.removeShaped(<extrautils2:angelring>.withDamage(dam));
	recipes.removeShapeless(<extrautils2:angelring>.withDamage(dam), [<*>,<*>,<*>]);
	mods.astralsorcery.Altar.addConstellationAltarRecipe("pluma:shaped/internal/altar/angelring" + dam, <extrautils2:angelring>.withDamage(dam), 2500, 100,
	[<astralsorcery:itemcraftingcomponent:4>,<contenttweaker:white_magic_dust>,<astralsorcery:itemcraftingcomponent:4>,
	<contenttweaker:white_magic_dust>,<extrautils2:chickenring:1>,<contenttweaker:white_magic_dust>,
	<astralsorcery:itemcraftingcomponent:4>,<botania:flighttiara:*>,<astralsorcery:itemcraftingcomponent:4>,
	input_item,input_item,input_item,input_item,
	<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>,<contenttweaker:condensed_vis_crystal_caeles>]);
	recipes.addShapeless(<extrautils2:angelring>.withDamage(dam), [<extrautils2:angelring:*>,input_item,input_item,input_item,input_item]);
}

addExtraUtilsAngelRingRecipe(0,<gregtech:transparent_casing:2>);
addExtraUtilsAngelRingRecipe(1,<minecraft:feather>);
addExtraUtilsAngelRingRecipe(2,<contenttweaker:star_leather>);
addExtraUtilsAngelRingRecipe(3,<bloodmagic:item_demon_crystal:3>);
addExtraUtilsAngelRingRecipe(4,<bloodmagic:item_demon_crystal:2>);
addExtraUtilsAngelRingRecipe(5,<contenttweaker:corruptedstarmetal>);

for i in 0 to 6 {
	<ore:angelring>.add(<extrautils2:angelring>.withDamage(i));
}