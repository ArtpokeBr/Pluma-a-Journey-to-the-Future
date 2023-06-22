import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.tconstruct.Casting as Casting;
import mods.tconstruct.Melting as Melting;
import mods.nuclearcraft.Melter;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Extra Utilities 2 Script                                                                                                             //
//			         																													 	                                                                 //
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

# [Sound Muffler] from [Portable Sound Dampener][+2]
recipes.removeByRecipeName("extrautils2:sound_muffler");
craft.make(<extrautils2:soundmuffler>, ["pretty",
  "W C W",
  "C P C",
  "W C W"], {
  "W": <quark:quilted_wool>,                 # White Quilted Wool
  "C": <ore:cropCotton>,                     # Cotton
  "P": <randomthings:portablesounddampener>, # Portable Sound Dampener
});

# [Trash Can] from [Chest][+3]
recipes.removeByRecipeName("extrautils2:trash_can");
craft.make(<extrautils2:trashcan>, ["pretty",
  "□ * □",
  "░ c ░",
  "░ ░ ░"], {
  "□": <ore:plateSteel>,                        # Steel Plate
  "*": <ore:AAVoidCrystal> | <ore:crystalVoid>, # Void Crystal
  "░": <ore:cobblestone> | <ore:stoneCobble>,   # Cobblestone
  "c": <ore:chestWood>,           				# Chest
});

# [Trash Can (Fluid)] from [Fluid Tank (Configured)][+3]
recipes.removeByRecipeName("extrautils2:trash_can_fluid");
craft.make(<extrautils2:trashcanfluid>, ["pretty",
  "□ * □",
  "░ F ░",
  "░ ░ ░"], {
  "□": <ore:plateSteel>,                        # Steel Plate
  "*": <ore:AAVoidCrystal> | <ore:crystalVoid>, # Void Crystal
  "░": <ore:cobblestone> | <ore:stoneCobble>,   # Cobblestone
  "F": <enderio:block_tank>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 16000}}}), # Fluid Tank (Configured)
});

# [Trash Can (Energy)] from [Small Sodium Battery][+3]
recipes.removeByRecipeName("extrautils2:trash_can_energy");
craft.make(<extrautils2:trashcanenergy>, ["pretty",
  "□ * □",
  "░ L ░",
  "░ ░ ░"], {
  "□": <ore:plateSteel>,                        # Steel Plate
  "*": <ore:AAVoidCrystal> | <ore:crystalVoid>, # Void Crystal
  "░": <ore:cobblestone> | <ore:stoneCobble>,   # Cobblestone
  "L": <ore:batteryLv>,                         # Small Sodium Battery
});

# [Angel Block] from [Light Gold Plate][+2]
recipes.removeByRecipeName("extrautils2:angel_block");
craft.make(<extrautils2:angelblock>, ["pretty",
  "     ",
  "  □  ",
  "f O f"], {
  "□": <ore:lightPlateGold>,             # Light Gold Plate
  "f": <ore:feyFeather>, 				 # Mystic Feather
  "O": <ore:runedObsidian>,              # Runed Obsidian
});

# [Redstone Clock] from [Redstone][+1]
recipes.removeByRecipeName("extrautils2:redstone_clock");
craft.make(<extrautils2:redstoneclock>, ["pretty",
  "s ♥ s",
  "♥ P ♥",
  "s ♥ s"], {
  "s": <ore:stone>,                           # Stone
  "♥": <ore:dustRedstone>,                    # Redstone
  "P": <projectred-core:resource_item:12>,    # Pointer
});

# [Analog Crafter] from [Crafting Table][+2]
recipes.removeByRecipeName("extrautils2:crafter_analog");
craft.make(<extrautils2:analogcrafter>, ["pretty",
  "♥ # ♥",
  "# w #",
  "♥ # ♥"], {
  "♥": <ore:ingotRedstoneAlloy>,                  # Redstone Alloy Ingot
  "#": <ore:gearWood>,                            # Wood Gear
  "w": <ore:workbench> | <ore:craftingTableWood>, # Crafting Table
});

# [Redstone Lantern] from [Redstone Lamp][+2]
recipes.removeByRecipeName("extrautils2:lantern");
craft.make(<extrautils2:redstonelantern>, ["pretty",
  "P ■ P",
  "■ ♥ ■",
  "P ■ P"], {
  "P": <extrautils2:decorativesolid:2>,        # Polished Stone
  "■": <extrautils2:decorativeglass:5>, 	   # Redstone Glass
  "♥": <minecraft:redstone_lamp>,              # Redstone Lamp
});

# [Ender Porcupine] from [Ender Chassis][+2]
recipes.removeByRecipeName("extrautils2:porcupine");
craft.make(<extrautils2:interactionproxy>, ["pretty",
  "B e B",
  "e E e",
  "B e B"], {
  "B": <ore:boltBismuthBronze>,          # Bismuth Bronze Bolt
  "e": <ore:gemEnderPearl>, 			 # Ender Pearl
  "E": <actuallyadditions:block_misc:8>, # Ender Chassis
});

# [Player Chest] from [Player Probe][+3]
recipes.removeByRecipeName("extrautils2:player_chest");
craft.make(<extrautils2:playerchest>, ["pretty",
  "S Q S",
  "Q P Q",
  "S ♥ S"], {
  "S": <extrautils2:decorativesolid:3>,       # Stoneburnt
  "Q": <extrautils2:decorativesolid:7>,       # Quartzburnt
  "P": <actuallyadditions:item_player_probe>, # Player Probe
  "♥": <ore:gemRedstone>,                     # Resonating Redstone Crystal
});

# [Chunk Loading Ward] from [Chunkloader Upgrade][+2]
recipes.removeByRecipeName("extrautils2:chunk_loader");
craft.make(<extrautils2:chunkloader>, ["pretty",
  "╱ e ╱",
  "╱ : ╱",
  "  ╱  "], {
  "╱": <ore:itemNutritiousStick>,   # Nutritious Stick
  "e": <ore:eyeofredstone>,         # Eye of Redstone
  ":": <ore:oc:chunkloaderUpgrade>, # Chunkloader Upgrade
});

# [Glass Cutter] from [Nutritious Stick][+5]
recipes.removeByRecipeName("extrautils2:glass_cutter");
craft.make(<extrautils2:glasscutter>, ["pretty",
  "  o □",
  "S ╱ □",
  "I S T"], {
  "o": <ore:gtceScrewdrivers>, 					 # Screwdriver
  "□": <ore:lightPlateIron>,                     # Light Iron Plate
  "S": <ore:screwSteel>,                         # Steel Screw
  "╱": <ore:itemNutritiousStick>,                # Nutritious Stick
  "I": <ore:ringIron>,                           # Iron Ring
  "T": <ore:gtceFiles>, 						 # File
});

//Golden Lasso
recipes.remove(<extrautils2:goldenlasso>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:empoweredGlodCrystal>, <natura:materials:7>, <ore:empoweredGlodCrystal>],
    [<natura:materials:7>, null, <natura:materials:7>],
    [<ore:empoweredGlodCrystal>, <natura:materials:7>, <ore:empoweredGlodCrystal>]])
  .setFluid(<liquid:xpjuice> * 1000)
  .addTool(<ore:artisansGrimoire>, 25)
  .addOutput(<extrautils2:goldenlasso>)
.create();

//Cursed Lasso
recipes.remove(<extrautils2:goldenlasso:1>);
RecipeBuilder.get("mage")
  .setShapeless([<extrautils2:goldenlasso>, <ore:dropofevil>, <darkutils:material>])
  .setFluid(<liquid:xpjuice> * 250)
  .addTool(<ore:artisansGrimoire>, 25)
  .addOutput(<extrautils2:goldenlasso:1>)
.create();

//Chicken Ring
recipes.remove(<extrautils2:chickenring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:feyFeather>, <ore:plateIron>, <ore:feyFeather>],
    [<ore:plateIron>, <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:chicken"}, No_Place: 1 as byte}), <ore:plateIron>],
    [<ore:gemRedstone>, <ore:plateIron>, <ore:gemRedstone>]])
  .addTool(<artisanworktables:artisans_grimoire_iron>, 20)
  .addOutput(<extrautils2:chickenring>)
.create();

//Chicken Ring
recipes.remove(<extrautils2:chickenring:1>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:dye>, <ore:plateDiamond>, <minecraft:dye>],
    [<mysticalworld:epic_squid>, <extrautils2:chickenring>, <mysticalworld:epic_squid>],
    [<minecraft:dye>, <ore:plateDiamond>, <minecraft:dye>]])
  .setFluid(<liquid:water> * 8000)
  .addTool(<artisanworktables:artisans_grimoire_iron>, 20)
  .addOutput(<extrautils2:chickenring:1>)
.create();

//Sun Crystal ===============================================================
recipes.removeByRecipeName("extrautils2:sun_crystal");

//(Normal Recipe can be found in Empowerer.zs and also the ExtendedCrafting.zs)

chemical_bath.recipeBuilder()
  .inputs(<extrautils2:suncrystal:250>)
  .fluidInputs(<liquid:liquid_sunshine>*1000)
  .outputs(<extrautils2:suncrystal>)
  .duration(80)
  .EUt(48)
.buildAndRegister();

<extrautils2:suncrystal:*>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<extrautils2:suncrystal:*>.addShiftTooltip(format.green("Drop it on the Ground") + format.white(" to ") + format.yellow("Recharge it with the Power of the Sun."));
<extrautils2:suncrystal:*>.addShiftTooltip(format.white("Can also be made in ") + format.gold("A Chemical Bath") + format.white(" with ") + format.yellow("1 Bucket of Liquid Sunshine"));
<extrautils2:suncrystal:*>.addShiftTooltip(format.red("(but it must be completely damaged!)"));

# Ferrous Juniper Integration =========================================================================================
furnace.remove(<*>, <extrautils2:ironwood_planks>);
furnace.remove(<*>, <extrautils2:ironwood_planks:1>);

Casting.addTableRecipe(<extrautils2:ironwood_sapling>, <ore:treeSapling>, <liquid:iron>, 576, true);

# Unburnt =====
//extractor.recipeBuilder().inputs(<extrautils2:ironwood_log:0>).fluidOutputs(<liquid:iron> *  16).duration(80).EUt(16).buildAndRegister();
Melting.addRecipe(<liquid:iron> * 16, <extrautils2:ironwood_log:0>);
mods.nuclearcraft.Melter.addRecipe(<extrautils2:ironwood_log:0>, <liquid:iron> * 16);

//extractor.recipeBuilder().inputs(<extrautils2:ironwood_planks:0>).fluidOutputs(<liquid:iron> *  8).duration(80).EUt(16).buildAndRegister();
Melting.addRecipe(<liquid:iron> * 8, <extrautils2:ironwood_planks:0>);
mods.nuclearcraft.Melter.addRecipe(<extrautils2:ironwood_planks:0>, <liquid:iron> * 8);

# Burnt =====
//extractor.recipeBuilder().inputs(<extrautils2:ironwood_log:1>).fluidOutputs(<liquid:iron> * 144).duration(80).EUt(16).buildAndRegister();
Melting.addRecipe(<liquid:iron> * 144, <extrautils2:ironwood_log:1>);
mods.nuclearcraft.Melter.addRecipe(<extrautils2:ironwood_log:1>, <liquid:iron> * 144);

//extractor.recipeBuilder().inputs(<extrautils2:ironwood_planks:1>).fluidOutputs(<liquid:iron> *  80).duration(80).EUt(16).buildAndRegister();
Melting.addRecipe(<liquid:iron> * 80, <extrautils2:ironwood_planks:1>);
mods.nuclearcraft.Melter.addRecipe(<extrautils2:ironwood_planks:1>, <liquid:iron> * 80);

