#modloaded mekanism

import mods.mekanism.purification as PurificationChamber;
import mods.mekanism.enrichment as EnrichmentChamber;
import mods.mekanism.chemical.injection as ChemicalInjectionChamber;
import mods.mekanism.compressor as OsmiumCompressor;
import mods.mekanism.separator as ElectrolyticSeparator;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.mekanism.chemical.oxidizer as Oxidizer;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Mekanism Removals and Mass Organization                                                                                          //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Steel out of Enriched Iron
ChemicalInjectionChamber.addRecipe(<mekanism:enrichediron>, <gas:hydrogenchloride>, <ore:dustSteel>.firstItem);

//Mekanism Stack Fixes
<mekanism:tierinstaller>.maxStackSize = 16;
<mekanism:tierinstaller:1>.maxStackSize = 16;
<mekanism:tierinstaller:2>.maxStackSize = 16;
<mekanism:tierinstaller:3>.maxStackSize = 16;

<mekanism:filterupgrade>.maxStackSize = 64;
<mekanism:energyupgrade>.maxStackSize = 64;
<mekanism:speedupgrade>.maxStackSize = 64;
<mekanism:gasupgrade>.maxStackSize = 64;
<mekanism:mufflingupgrade>.maxStackSize = 64;

//Meka Blocks (cause they must be made in a Compressor)

var BlockRecipesRemovals as IItemStack[] = [
<mekanism:basicblock:4>,
<mekanism:basicblock:2>,
<mekanism:basicblock>,
<mekanism:basicblock:1>,
<mekanism:basicblock:3>,
<mekanism:basicblock:5>,
<mekanism:basicblock:12>,
<mekanism:basicblock:13>,
<mekanism:saltblock>,
];
for item in BlockRecipesRemovals {
recipes.remove(item);
}

//Removing all Factory Recipes (in this way, only installers can be used)
var FactoryRemoval as IItemStack[] = [
<mekanism:machineblock:5>.withTag({recipeType: 1}),
<mekanism:machineblock:5>.withTag({recipeType: 3}),
//<mekanism:machineblock:5>.withTag({recipeType: 5}),
<mekanism:machineblock:5>.withTag({recipeType: 6}),
<mekanism:machineblock:5>.withTag({recipeType: 7}),
<mekanism:machineblock:6>.withTag({recipeType: 1}),
<mekanism:machineblock:6>.withTag({recipeType: 3}),
//<mekanism:machineblock:6>.withTag({recipeType: 5}),
<mekanism:machineblock:6>.withTag({recipeType: 6}),
<mekanism:machineblock:6>.withTag({recipeType: 7}),
<mekanism:machineblock:7>.withTag({recipeType: 1}),
<mekanism:machineblock:7>.withTag({recipeType: 6}),
//<mekanism:machineblock:7>.withTag({recipeType: 5}),
<mekanism:machineblock:7>.withTag({recipeType: 3}),
<mekanism:machineblock:7>.withTag({recipeType: 7})
];
for item in FactoryRemoval {
recipes.remove(item);
item.addTooltip(format.gold("Installers are used to get Factory versions."));
}

//Removing all Ore Processing Related Items
var OreProcessingRemoval as IItemStack[] = [
<mekanism:crystal:6>,
<mekanism:dirtydust:1>,
<mekanism:dirtydust>,
<mekanism:clump:6>,
<mekanism:clump:5>,
<mekanism:clump:4>,
<mekanism:clump:3>,
<mekanism:clump:2>,
<mekanism:clump:1>,
<mekanism:clump>,
<mekanism:shard:3>,
<mekanism:shard:2>,
<mekanism:shard:1>,
<mekanism:shard>,
<mekanism:dirtydust:6>,
<mekanism:dirtydust:5>,
<mekanism:dirtydust:4>,
<mekanism:dirtydust:3>,
<mekanism:dirtydust:2>,
<mekanism:crystal:5>,
<mekanism:crystal:4>,
<mekanism:crystal:3>,
<mekanism:crystal:2>,
<mekanism:crystal:1>,
<mekanism:crystal>,
<mekanism:shard:6>,
<mekanism:shard:5>,
<mekanism:shard:4>
];
for item in OreProcessingRemoval {
mods.jei.JEI.removeAndHide(item);
	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}
}


// var PurificationChamberClearing as IItemStack[] = [
// <mekanism:clump:6>,
// <mekanism:clump:5>,
// <mekanism:clump:4>,
// <mekanism:clump:3>,
// <mekanism:clump:2>,
// <mekanism:clump:1>,
// <mekanism:clump>,
// <minecraft:flint>
// ];
// for i in PurificationChamberClearing {
// PurificationChamber.removeRecipe(i);
// }

// Oxidizer Clearing and Fixing
Oxidizer.removeAllRecipes();

# Sulfur
Oxidizer.addRecipe(<ore:dustSulfur>.firstItem, <gas:sulfurdioxide>);
# Brine
Oxidizer.addRecipe(<ore:dustSalt>.firstItem, <gas:brine>);
# Lithium
Oxidizer.addRecipe(<ore:dustLithium>.firstItem, <gas:lithium>);


//Enrichment Chamber Organization

EnrichmentChamber.addRecipe(<ore:dustManasteel>, <contenttweaker:compressed_manasteel>);
EnrichmentChamber.addRecipe(<ore:dustStygian>, <contenttweaker:compressed_stygian>);
EnrichmentChamber.addRecipe(<evilcraft:garmonbozia>, <contenttweaker:compressed_garmonbozia>);
EnrichmentChamber.addRecipe(<ore:dustSentientMetal>, <contenttweaker:compressed_sentient>);
EnrichmentChamber.addRecipe(<ore:dustLiquifiedCoralium>, <contenttweaker:compressed_coralium>);

var EnrichmentChamberClearing as IItemStack[] = [
<mekanism:dirtydust>,
<mekanism:dirtydust:1>,
<mekanism:dirtydust:2>,
<mekanism:dirtydust:3>,
<mekanism:dirtydust:4>,
<mekanism:dirtydust:5>,
<mekanism:dirtydust:6>,
<enderio:item_material:23>,
<natura:materials:4>,
<gregtech:ore_redstone_0>,
<gregtech:ore_diamond_0>,
<gregtech:ore_gold_0>,
<minecraft:obsidian>,
<gregtech:meta_dust:329>,
<railcraft:ore:4>,
<gregtech:ore_lapis_0>,
//<mekanism:otherdust>,
<mekanism:otherdust:3>,
<gregtech:ore_platinum_0>,
<gregtech:ore_nickel_0>,
<gregtech:ore_copper_0>,
<gregtech:ore_coal_0>,
<gregtech:meta_dust:271>,
<gregtech:meta_dust:266>,
<biomesoplenty:gem_ore:3>,
<biomesoplenty:gem_ore:2>,
<gregtech:meta_dust:311>,
<biomesoplenty:gem_ore:1>,
<biomesoplenty:gem_ore>,
<biomesoplenty:gem_ore:7>,
<minecraft:coal_ore>,
<biomesoplenty:gem_ore:6>,
<biomesoplenty:gem_ore:5>,
<gregtech:ore_tin_0>,
<biomesoplenty:gem_ore:4>,
<mekanism:saltblock>,
<gregtech:meta_dust:314>,
<mekanism:sawdust>,
<minecraft:lapis_ore>,
<gregtech:meta_dust:339>,
<forestry:resources:2>,
<forestry:resources:1>,
<forestry:resources>,
<gregtech:meta_dust:2007>,
<magneticraft:crafting>,
<gregtech:ore_iron_0>,
<minecraft:iron_ore>,
<gregtech:ore_amethyst_0>,
<gregtech:ore_ruby_0>,
<railcraft:ore:2>,
<railcraft:ore:3>,
<gregtech:ore_apatite_0>,
<actuallyadditions:item_dust:4>,
<actuallyadditions:item_dust:5>,
<minecraft:gold_ore>,
<actuallyadditions:item_dust:6>,
<actuallyadditions:item_dust:3>,
<gregtech:meta_dust:103>,
<enderio:item_material:33>,
<enderio:item_material:32>,
<mekanism:oreblock:2>,
<gregtech:ore_emerald_0>,
<mekanism:oreblock:1>,
<mekanism:oreblock>,
<magneticraft:ores:1>,
<magneticraft:ores>,
<minecraft:diamond_ore>,
<minecraft:redstone_ore>,
<gregtech:ore_lead_0>,
<gregtech:ore_silver_0>,
<minecraft:emerald_ore>,
<gregtech:meta_dust:385>,
<gregtech:ore_malachite_0>,
<gregtech:ore_sapphire_0>,
<gregtech:ore_topaz_0>,
<minecraft:quartz_ore>,
<gregtech:meta_dust:313>,
<minecraft:glowstone>,
<gregtech:meta_dust:1617>,
<minecraft:gravel>,
<minecraft:gunpowder>,
<minecraft:clay>,
<thaumcraft:ore_amber>,
<embers:ore_copper>,
<bloodmagic:component:21>,
<thermalfoundation:ore:4>,
<thermalfoundation:ore:5>,
<thermalfoundation:ore:6>,
<thermalfoundation:ore:7>,
<thermalfoundation:ore>,
<thermalfoundation:ore:1>,
<thermalfoundation:material:769>,
<thermalfoundation:material:772>,
<thermalfoundation:material:800>,
<gregtech:ore_amber_0>,
<thermalfoundation:ore:3>,
<thermalfoundation:ore:2>,
<thermalfoundation:ore:8>,
<thaumcraft:ore_quartz>,
<gregtech:meta_dust:32025>,
<appliedenergistics2:material:7>,
<appliedenergistics2:material>,
<thermalfoundation:material:771>,
<thermalfoundation:material:768>,
<embers:ore_silver>,
<embers:ore_quartz>,
<embers:ore_lead>,
<appliedenergistics2:crystal_seed:600>,
<appliedenergistics2:crystal_seed>,
<appliedenergistics2:crystal_seed:1200>
];
for i in EnrichmentChamberClearing {
EnrichmentChamber.removeRecipe(i);
}

var ChemicalInjectionChamberClearing as IItemStack[] = [
<mekanism:shard>,
<mekanism:shard:1>,
<mekanism:shard:2>,
<mekanism:shard:3>,
<mekanism:shard:4>,
<mekanism:shard:5>,
<mekanism:shard:6>,
<mekanism:otherdust:3>
];
for i in ChemicalInjectionChamberClearing {
ChemicalInjectionChamber.removeRecipe(i);
}

var OsmiumCompressorClearing as IItemStack[] = [
<mekanism:ingot>,
<mekanism:ingot:3>
];
for i in OsmiumCompressorClearing {
OsmiumCompressor.removeRecipe(i);
}

// var ElectrolyticSeparatorClearing as ILiquidStack[] = [
// <liquid:water>
// ];
// for fluid in ElectrolyticSeparatorClearing {
// ElectrolyticSeparator.removeRecipe(fluid);
// }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Mekanism Script                                                                                         			             //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Refined Obsidian
furnace.remove(<ore:ingotRefinedObsidian>.firstItem);

mixer.recipeBuilder()
    .inputs(<ore:dustBlueAlloy>, <ore:dustSmallKyanite>, <ore:dustObsidian>)
	.fluidInputs(<liquid:distilled_water> * 150)
    .outputs(<ore:dustRefinedObsidian>.firstItem * 3)
    .duration(300)
    .EUt(90)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustRefinedObsidian>)
	.fluidInputs(<liquid:empoweredoil> * 250)
    .outputs(<ore:ingotRefinedObsidian>.firstItem)
    .property("temperature", 1600)
    .duration(600)
    .EUt(500)
.buildAndRegister();

//Refined Glowstone

compressor.recipeBuilder()
    .inputs(<ore:ingotRefinedGlowstone> * 9)
    .outputs(<ore:blockRefinedGlowstone>.firstItem)
    .duration(60)
    .EUt(8)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustGlowstone> * 4)
	.fluidInputs(<liquid:empoweredoil> * 250)
    .outputs(<ore:ingotRefinedGlowstone>.firstItem)
    .property("temperature", 1600)
    .duration(600)
    .EUt(500)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:glowstone>)
	.fluidInputs(<liquid:empoweredoil> * 250)
    .outputs(<ore:ingotRefinedGlowstone>.firstItem)
    .property("temperature", 1600)
    .duration(600)
    .EUt(500)
.buildAndRegister();

// Meka Alloys ======================

// //Basic
// chemreactor.recipeBuilder()
//     .inputs(<ore:plateDoubleVanadiumSteel>, <ore:foilRedAlloy>)
// 	.fluidInputs(<liquid:redstone> * 576)
//     .outputs(<mekanism:enrichedalloy>)
//     .duration(300)
//     .EUt(350)
// .buildAndRegister();

// //Reinforced
// chemreactor.recipeBuilder()
//     .inputs(<mekanism:enrichedalloy>, <ore:foilMenril>)
// 	.fluidInputs(<liquid:carbon_monoxide> * 1000)
//     .outputs(<mekanism:reinforcedalloy>)
//     .duration(300)
//     .EUt(450)
// .buildAndRegister();

// //Atomic
// chemreactor.recipeBuilder()
//     .inputs(<mekanism:reinforcedalloy>, <ore:foilTitanium>)
// 	.fluidInputs(<liquid:chorus> * 1000, <liquid:black_bronze> * 1000)
//     .outputs(<mekanism:atomicalloy>)
//     .duration(300)
//     .EUt(550)
// .buildAndRegister();

// Meka Circuits ======================

//Advanced
recipes.remove(<mekanism:controlcircuit:1>);
mods.actuallyadditions.Empowerer.addRecipe(<mekanism:controlcircuit:1>, <mekanism:controlcircuit>, <ore:itemEnrichedAlloy>, <ore:itemEnrichedAlloy>, <ore:itemEnrichedAlloy>, <ore:itemEnrichedAlloy>, 5000, 250, [0.5, 0.2, 0.2]);

//Elite
recipes.remove(<mekanism:controlcircuit:2>);
mods.actuallyadditions.Empowerer.addRecipe(<mekanism:controlcircuit:2>, <mekanism:controlcircuit:1>, <ore:alloyElite>, <ore:alloyElite>, <ore:alloyElite>,  <ore:alloyElite>, 5000, 250, [0.3, 0.3, 0.5]);

//Ultimate
recipes.remove(<mekanism:controlcircuit:3>);
mods.actuallyadditions.Empowerer.addRecipe(<mekanism:controlcircuit:3>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, 5000, 250, [0.2, 0.2, 0.5]);

// Meka Upgrades =======================

// Energy Upgrade
recipes.remove(<mekanism:energyupgrade>);
recipes.addShaped(<mekanism:energyupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <ore:ingotOsgloglas>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);

// Speed Upgrade
recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped(<mekanism:speedupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <ore:ingotMenril>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);

// Filter Upgrade
recipes.remove(<mekanism:filterupgrade>);
recipes.addShaped(<mekanism:filterupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <gregtech:meta_item_1:290>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);

// Sound Muffler Upgrade
recipes.remove(<mekanism:mufflingupgrade>);
recipes.addShaped(<mekanism:mufflingupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <extrautils2:soundmuffler>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);

// Gas Upgrade
recipes.remove(<mekanism:gasupgrade>);
recipes.addShaped(<mekanism:gasupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <ore:ingotStainlessSteel>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);

// Anchor Upgrade
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped(<mekanism:anchorupgrade> * 1, [[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>], [<ore:itemEnrichedAlloy>, <ore:gemEnderEye>, <ore:itemEnrichedAlloy>],[<ore:plateSteel>, <ore:blockGlassHardened>, <ore:plateSteel>]]);


// Meka Solidifying and converting ======================

//Brine
solidifier.recipeBuilder()
    .fluidInputs(<liquid:brine>*100)
	.notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<ore:dustSalt>.firstItem)
    .duration(200)
    .EUt(20)
.buildAndRegister();

//Lithium
solidifier.recipeBuilder()
    .fluidInputs(<liquid:liquidlithium>*100)
	.notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<ore:dustLithium>.firstItem)
    .duration(300)
    .EUt(30)
.buildAndRegister();

//Sodium
solidifier.recipeBuilder()
    .fluidInputs(<liquid:liquidsodium>*100)
	.notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<ore:dustSodium>.firstItem)
    .duration(250)
    .EUt(35)
.buildAndRegister();

//Chlorine
electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:liquidchlorine>*100)
	.circuit(16)
    .fluidOutputs(<liquid:chlorine>*100)
    .duration(120)
    .EUt(3000)
.buildAndRegister();

//Hydrogen
chemreactor.recipeBuilder()
	.fluidInputs([<liquid:hydrogen> * 1000])
	.fluidOutputs([<liquid:liquidhydrogen> * 1000])
	.circuit(5)
    .duration(100)
    .EUt(80)
.buildAndRegister();

//Oxygen
chemreactor.recipeBuilder()
	.fluidInputs([<liquid:oxygen> * 1000])
	.fluidOutputs([<liquid:liquidoxygen> * 1000])
	.circuit(5)
    .duration(100)
    .EUt(80)
.buildAndRegister();

//Chlorine
chemreactor.recipeBuilder()
	.fluidInputs([<liquid:chlorine> * 1000])
	.fluidOutputs([<liquid:liquidchlorine> * 1000])
	.circuit(5)
    .duration(100)
    .EUt(80)
.buildAndRegister();

//Sodium Dust to Liquid
extractor.recipeBuilder()
	.inputs(<ore:dustSodium>)
	.fluidOutputs([<liquid:liquidsodium> * 100])
    .duration(80)
    .EUt(12)
.buildAndRegister();

//Sulfuric Acid
chemreactor.recipeBuilder()
	.fluidInputs([<liquid:sulfuric_acid> * 1000])
	.fluidOutputs([<liquid:sulfuricacid> * 1000])
	.circuit(5)
    .duration(100)
    .EUt(80)
.buildAndRegister();

//Meka Electrolytic Separator Recipes -> Electrolyzer ===========================

//Brine
electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:brine>*8000)
	.circuit(16)
    .fluidOutputs(<liquid:chlorine>*500)
    .fluidOutputs(<liquid:liquidsodium>*400)
    .duration(1200)
    .EUt(60)
.buildAndRegister();

//Heavy Water
chemreactor.recipeBuilder()
	.fluidInputs([<liquid:deuterium> * 600, <liquid:oxygen>*300, <liquid:hydrogen>*100])
	.fluidOutputs([<liquid:heavywater> * 1000])
	.circuit(5)
    .duration(800)
    .EUt(30)
.buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:heavywater>*1000)
	.circuit(16)
    .fluidOutputs(<liquid:deuterium>*300)
    .fluidOutputs(<liquid:oxygen>*150, <liquid:hydrogen>*50)
    .duration(1200)
    .EUt(60)
.buildAndRegister();

// Meka Evaporation Tower ======================

// Thermal Evaporation Controller
recipes.remove(<mekanism:basicblock:14>);
recipes.addShaped(<mekanism:basicblock:14> * 1, [[<mekanism:controlcircuit:1>, <extrautils2:ingredients:2>, <mekanism:controlcircuit:1>], [<mekanism:basicblock2:0>, <enderio:item_material:53>, <mekanism:basicblock2:0>],[<mekanism:basicblock2:0>, <mekanism:basicblock2:0>, <mekanism:basicblock2:0>]]);

//Thermal Evaporation Block
recipes.remove(<mekanism:basicblock2>);
assembler.recipeBuilder()
    .inputs(<ore:frameGtAnnealedCopper>, <ore:plateBrass>*4)
    .outputs(<mekanism:basicblock2>*4)
    .circuit(8)
    .duration(180)
    .EUt(140)
.buildAndRegister();

//Thermal Evaporation Valve
recipes.remove(<mekanism:basicblock:15>);
assembler.recipeBuilder()
    .inputs(<mekanism:basicblock2>, <ore:pipeNormalFluidBronze>)
    .outputs(<mekanism:basicblock:15>)
    .duration(180)
    .EUt(150)
.buildAndRegister();

// Metallurgic Infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8> * 1, [[<ore:plateSteel>, <gregtech:meta_item_1:219>, <ore:plateSteel>], [<ore:lightPlateRedSteel>, <mekanism:basicblock:8>, <ore:lightPlateRedSteel>],[<ore:plateSteel>, <gregtech:meta_item_1:174>, <ore:plateSteel>]]);

// Steel Casing
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8> * 1, [[<ore:plateDoubleRedSteel>, <thermalfoundation:glass_alloy>, <ore:plateDoubleRedSteel>], [<thermalfoundation:glass_alloy>, <ore:gearOsgloglas>, <thermalfoundation:glass_alloy>],[<ore:plateDoubleRedSteel>, <thermalfoundation:glass_alloy>, <ore:plateDoubleRedSteel>]]);

// Enrichment Chamber
recipes.remove(<mekanism:machineblock:0>);
recipes.addShaped(<mekanism:machineblock:0> * 1, [[<ore:plateRedSteel>, <mekanism:controlcircuit:0>, <ore:plateRedSteel>], [<gregtech:meta_item_1:129>, <mekanism:basicblock:8>, <gregtech:meta_item_1:129>],[<ore:plateRedSteel>, <mekanism:controlcircuit:0>, <ore:plateRedSteel>]]);

// // Purification Chamber
// recipes.remove(<mekanism:machineblock:9>);
// recipes.addShaped(<mekanism:machineblock:9> * 1, [[<ore:itemEnrichedAlloy>, <mekanism:controlcircuit:1>, <ore:itemEnrichedAlloy>], [<gregtech:meta_item_1:129>, <mekanism:machineblock:0>, <gregtech:meta_item_1:129>],[<ore:itemEnrichedAlloy>, <mekanism:controlcircuit:1>, <ore:itemEnrichedAlloy>]]);

// Chemical Injection Chamber
recipes.remove(<mekanism:machineblock2:3>);
recipes.addShaped(<mekanism:machineblock2:3> * 1, [[<ore:alloyElite>, <mekanism:controlcircuit:2>, <ore:alloyElite>], [<gregtech:meta_item_1:159>, <mekanism:machineblock:0>, <gregtech:meta_item_1:144>],[<ore:alloyElite>, <mekanism:controlcircuit:2>, <ore:alloyElite>]]);

// Dynamic Tank
recipes.remove(<mekanism:basicblock:9>);
recipes.addShaped(<mekanism:basicblock:9> * 4, [[null, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, <ore:ringRedSteel>, <ore:plateDarkSteel>],[null, <ore:plateDarkSteel>, null]]);

// Structural Glass
recipes.remove(<mekanism:basicblock:10>);
chemical_bath.recipeBuilder()
    .inputs(<mia:armored_glass>)
    .fluidInputs(<liquid:dark_steel>*576)
    .outputs(<mekanism:basicblock:10>*4)
    .duration(180)
    .EUt(200)
.buildAndRegister();

//Dynamic Valve
recipes.remove(<mekanism:basicblock:11>);
assembler.recipeBuilder()
    .inputs(<mekanism:basicblock:9>, <gregtech:meta_item_1:144>)
    .outputs(<mekanism:basicblock:11>)
    .duration(200)
    .EUt(220)
.buildAndRegister();


// Mekanism Gas Tanks =====================================================

// Basic Gas Tank
recipes.remove(<mekanism:gastank>.withTag({tier: 0}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}) * 1, [[<ore:plateSteel>, <ore:plateGreenSapphire>, <ore:plateSteel>], [<ore:lightPlateStainlessSteel>, <ore:gearRedSteel>, <ore:lightPlateStainlessSteel>],[<ore:plateSteel>, <ore:lightPlateStainlessSteel>, <ore:plateSteel>]]);

// Advanced Gas Tank
recipes.remove(<mekanism:gastank>.withTag({tier: 1}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 1}) * 1, [[<ore:itemEnrichedAlloy>, <ore:plateElectricalSteel>, <ore:itemEnrichedAlloy>], [<ore:plateElectricalSteel>, <mekanism:gastank>.withTag({tier: 0}), <ore:plateElectricalSteel>],[<ore:itemEnrichedAlloy>, <ore:plateElectricalSteel>, <ore:itemEnrichedAlloy>]]);

// Elite Gas Tank
recipes.remove(<mekanism:gastank>.withTag({tier: 2}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 2}) * 1, [[<ore:alloyElite>, <ore:plateEnergeticSilver>, <ore:alloyElite>], [<ore:plateEnergeticSilver>, <mekanism:gastank>.withTag({tier: 1}), <ore:plateEnergeticSilver>],[<ore:alloyElite>, <ore:plateEnergeticSilver>, <ore:alloyElite>]]);

// Ultimate Gas Tank
recipes.remove(<mekanism:gastank>.withTag({tier: 3}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 3}) * 1, [[<ore:alloyUltimate>, <ore:plateMelodicAlloy>, <ore:alloyUltimate>], [<ore:plateMelodicAlloy>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateMelodicAlloy>],[<ore:alloyUltimate>, <ore:plateMelodicAlloy>, <ore:alloyUltimate>]]);

// Mekanism Fluid Tanks =====================================================

// Basic Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 0}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 0}) * 1, [[<ore:plateCobaltBrass>, <ore:lightPlateSteel>, <ore:plateCobaltBrass>], [<ore:lightPlateSteel>, <ore:strengthenedGlass>, <ore:lightPlateSteel>],[<ore:plateCobaltBrass>, <ore:lightPlateSteel>, <ore:plateCobaltBrass>]]);

// Advanced Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 1}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 1}) * 1, [[<ore:itemEnrichedAlloy>, <ore:plateElectricalSteel>, <ore:itemEnrichedAlloy>], [<ore:plateElectricalSteel>, <mekanism:machineblock2:11>.withTag({tier: 0}), <ore:plateElectricalSteel>],[<ore:itemEnrichedAlloy>, <ore:plateElectricalSteel>, <ore:itemEnrichedAlloy>]]);

// Elite Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 2}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 2}) * 1, [[<ore:alloyElite>, <ore:plateEnergeticSilver>, <ore:alloyElite>], [<ore:plateEnergeticSilver>, <mekanism:machineblock2:11>.withTag({tier: 1}), <ore:plateEnergeticSilver>],[<ore:alloyElite>, <ore:plateEnergeticSilver>, <ore:alloyElite>]]);

// Ultimate Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 3}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 3}) * 1, [[<ore:alloyUltimate>, <ore:plateMelodicAlloy>, <ore:alloyUltimate>], [<ore:plateMelodicAlloy>, <mekanism:machineblock2:11>.withTag({tier: 2}), <ore:plateMelodicAlloy>],[<ore:alloyUltimate>, <ore:plateMelodicAlloy>, <ore:alloyUltimate>]]);

// Mekanism Bins =====================================================

// Basic Bin
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 0}));
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 0}) * 1, [[<ore:compressed1xCobblestone>, <mekanism:controlcircuit>, <ore:compressed1xCobblestone>], [<ore:lightPlateSteel>, <ore:chestWood>, <ore:lightPlateSteel>],[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Advanced Bin
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 1}));
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 1}) * 1, [[<ore:compressed2xCobblestone>, <mekanism:controlcircuit:1>, <ore:compressed2xCobblestone>], [<ore:plateElectricalSteel>, <mekanism:basicblock:6>.withTag({tier: 0}), <ore:plateElectricalSteel>],[<ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>]]);

// Elite Bin
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 2}));
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 2}) * 1, [[<ore:compressed2xCobblestone>, <mekanism:controlcircuit:2>, <ore:compressed2xCobblestone>], [<ore:plateEnergeticSilver>, <mekanism:basicblock:6>.withTag({tier: 1}), <ore:plateEnergeticSilver>],[<ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>]]);

// Ultimate Bin
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 3}));
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 3}) * 1, [[<ore:compressed2xCobblestone>, <mekanism:controlcircuit:3>, <ore:compressed2xCobblestone>], [<ore:plateMelodicAlloy>, <mekanism:basicblock:6>.withTag({tier: 2}), <ore:plateMelodicAlloy>],[<ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed2xCobblestone>]]);

// Cardboard Box
recipes.remove(<mekanism:cardboardbox>);
recipes.addShaped(<mekanism:cardboardbox> * 2, [[<thermalfoundation:material:801>, <thermalfoundation:material:801>, <thermalfoundation:material:801>], [<thermalfoundation:material:801>, <enderutilities:dolly>, <thermalfoundation:material:801>],[<thermalfoundation:material:801>, <thermalfoundation:material:801>, <thermalfoundation:material:801>]]);

// Energy Tablet
recipes.remove(<mekanism:energytablet>);
recipes.addShaped(<mekanism:energytablet> * 1, [[<ore:dustRedstone>, <ore:plateRoseGold>, <ore:dustRedstone>], [<ore:itemEnrichedAlloy>, <ore:plateOsgloglas>, <ore:itemEnrichedAlloy>],[<ore:dustRedstone>, <ore:plateRoseGold>, <ore:dustRedstone>]]);

// Atomic Disassembler
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped(<mekanism:atomicdisassembler> * 1, [[<ore:heavyPlateGlitchInfused>, <bloodmagic:bound_pickaxe>, <ore:heavyPlateGlitchInfused>], [<ore:heavyPlateGlitchInfused>, <ore:alloyUltimate>, <ore:heavyPlateGlitchInfused>],[null, <ore:stickLongRefinedObsidian>, null]]);

// Teleportation Core
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore> * 1, [[<ore:plateManaQuartz>, <ore:alloyUltimate>, <ore:plateManaQuartz>], [<contenttweaker:condensed_vis_crystal_fluctus>, <contenttweaker:integrated_botanical_processor>, <contenttweaker:condensed_vis_crystal_fluctus>],[<ore:plateManaQuartz>, <ore:alloyUltimate>, <ore:plateManaQuartz>]]);

// Configurator
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator> * 1, [[null, <mekanism:energytablet>, null], [<ore:alloyAdvanced>, <gregtech:wrench>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1024, ToolSpeed: 11.0 as float, AttackDamage: 6.0 as float, Durability: 0, Material: "stainless_steel", HarvestLevel: 3, AttackSpeed: -2.8 as float}}).noReturn(), <ore:alloyAdvanced>],[null, <ore:stickLapis>, null]]);

// Gas Mask
recipes.remove(<mekanism:gasmask>);
recipes.addShaped(<mekanism:gasmask> * 1, [[null, <ore:plateDoubleRoseGold>, null], [<ore:blockGlass>, <mekanism:controlcircuit:0>, <ore:blockGlass>],[<ore:plateRoseGold>, null, <ore:plateRoseGold>]]);

// Scuba Tank
recipes.remove(<mekanism:scubatank>);
recipes.addShaped(<mekanism:scubatank> * 1, [[<ore:ringRoseGold>, <mekanism:controlcircuit:0>, <ore:ringRoseGold>], [<ore:alloyAdvanced>, <mekanism:gastank:0>, <ore:alloyAdvanced>],[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

// Free Runners
recipes.remove(<mekanism:freerunners>);
recipes.addShaped(<mekanism:freerunners> * 1, [[<mekanism:controlcircuit:0>, null, <mekanism:controlcircuit:0>], [<ore:alloyAdvanced>, <ore:plateDenseRedSteel>, <ore:alloyAdvanced>],[<mekanism:energytablet>, null, <mekanism:energytablet>]]);

// Walkie-Talkie
recipes.remove(<mekanism:walkietalkie>);
recipes.addShaped(<mekanism:walkietalkie> * 1, [[null, null, <ore:boltStainlessSteel>], [<ore:plateSteel>, <mekanism:controlcircuit:0>, <ore:plateSteel>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Configuration Card
recipes.remove(<mekanism:configurationcard>);
recipes.addShaped(<mekanism:configurationcard> * 1, [[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>], [<mekanism:polyethene:2>, <mekanism:controlcircuit:0>, <mekanism:polyethene:2>],[<mekanism:polyethene:2>, <ore:boltRedAlloy>, <ore:boltGold>]]);

//HDPE Pellet
chemical_reactor.recipeBuilder()
    .inputs(<mekanism:substrate>*4)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 13}))
    .fluidInputs(<liquid:plastic>*576)
    .outputs(<mekanism:polyethene>*4)
    .duration(180)
    .EUt(140)
.buildAndRegister();

// Crafting Formula
recipes.remove(<mekanism:craftingformula>);
recipes.addShaped(<mekanism:craftingformula> * 1, [[<ore:boltPulsatingIron>, <ore:boltPulsatingIron>, <ore:boltPulsatingIron>], [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]]);

// Flamethrower
recipes.remove(<mekanism:flamethrower>);
recipes.addShaped(<mekanism:flamethrower> * 1, [[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>], [<ore:plateStainlessSteel>, <mekanism:gastank:0>, <minecraft:flint_and_steel>],[<ore:springEnergeticAlloy>, <mekanism:controlcircuit:1>, <ore:gearEnergeticAlloy>]]);

//Gauge Dropper and Pipette Convertion
recipes.remove(<mekanism:gaugedropper>);
recipes.addShapeless("GDtoPP",<forestry:pipette>,[<mekanism:gaugedropper>]);
recipes.addShapeless("PPtoGD",<mekanism:gaugedropper>,[<forestry:pipette>]);

// Basic Tier Installer
recipes.remove(<mekanism:tierinstaller:0>);
recipes.addShaped(<mekanism:tierinstaller:0> * 1, [[<ore:nuggetRedstoneAlloy>, <mekanism:controlcircuit:0>, <ore:nuggetRedstoneAlloy>], [<mekanism:polyethene:2>, <ore:gearRedSteel>, <mekanism:polyethene:2>],[<ore:nuggetRedstoneAlloy>, <mekanism:controlcircuit:0>, <ore:nuggetRedstoneAlloy>]]);

// Advanced Tier Installer
recipes.remove(<mekanism:tierinstaller:1>);
recipes.addShaped(<mekanism:tierinstaller:1> * 1, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>], [<mekanism:polyethene:2>, <mekanism:tierinstaller:0>, <mekanism:polyethene:2>],[<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>]]);

// Elite Tier Installer
recipes.remove(<mekanism:tierinstaller:2>);
recipes.addShaped(<mekanism:tierinstaller:2> * 1, [[<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>], [<mekanism:polyethene:2>, <mekanism:tierinstaller:1>, <mekanism:polyethene:2>],[<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>]]);

// Ultimate Tier Installer
recipes.remove(<mekanism:tierinstaller:3>);
recipes.addShaped(<mekanism:tierinstaller:3> * 1, [[<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>], [<mekanism:polyethene:2>, <mekanism:tierinstaller:1>, <mekanism:polyethene:2>],[<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>]]);
<mekanism:tierinstaller:3>.addTooltip(format.lightPurple("Can only be installed in Tanks, Bins and Cubes."));

// Meka Induction Multiblock ======================

//Induction Casing
recipes.remove(<mekanism:basicblock2:1>);
assembler.recipeBuilder()
    .inputs(<ore:frameGtVanadiumSteel>, <ore:plateStainlessSteel>*4)
    .outputs(<mekanism:basicblock2:1>*4)
    .circuit(8)
    .duration(280)
    .EUt(200)
.buildAndRegister();

//Induction Port
recipes.remove(<mekanism:basicblock2:2>);
assembler.recipeBuilder()
    .inputs(<mekanism:basicblock2:1>, <ore:batteryHv>*2)
    .outputs(<mekanism:basicblock2:2>)
    .duration(280)
    .EUt(200)
.buildAndRegister();

// Superheating Element
recipes.remove(<mekanism:basicblock2:5>);
recipes.addShaped(<mekanism:basicblock2:5> * 1, [[<ore:plateDawnstone>, <railcraft:firestone_refined>, <ore:plateDawnstone>], [<railcraft:firestone_refined>, <mekanism:basicblock:8>, <railcraft:firestone_refined>],[<ore:plateDawnstone>, <railcraft:firestone_refined>, <ore:plateDawnstone>]]);

// Gas Compressor
recipes.remove(<mekanism:machineblock:1>);
recipes.addShaped(<mekanism:machineblock:1> * 1, [[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:1>, <ore:lightPlateRedSteel>], [<gregtech:meta_item_1:174>, <mekanism:basicblock:8>, <gregtech:meta_item_1:174>],[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:1>, <ore:lightPlateRedSteel>]]);

// Digital Miner
recipes.remove(<mekanism:machineblock:4>);
recipes.addShaped(<mekanism:machineblock:4> * 1, [[<mekanism:atomicalloy>, <ore:circuitIv>, <mekanism:atomicalloy>], [<abyssalcraft:ethaxiumpickaxe>, <bloodmagic:sigil_fast_miner>, <abyssalcraft:ethaxiumpickaxe>],[<mekanism:teleportationcore>, <mekanism:basicblock:8>, <mekanism:teleportationcore>]]);

// Teleporter Frame
recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped(<mekanism:basicblock:7> * 9, [[<ore:heavyPlateRefinedObsidian>, <ore:plateEnderium>, <ore:heavyPlateRefinedObsidian>], [<ore:plateEnderium>, <mekanism:teleportationcore>, <ore:plateEnderium>],[<ore:heavyPlateRefinedObsidian>, <ore:plateEnderium>, <ore:heavyPlateRefinedObsidian>]]);

// Teleporter
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped(<mekanism:machineblock:11> * 1, [[<mekanism:controlcircuit:3>, <deepmoblearning:pristine_matter_enderman>, <mekanism:controlcircuit:3>], [<deepmoblearning:pristine_matter_enderman>, <mekanism:teleportationcore>, <deepmoblearning:pristine_matter_enderman>],[<mekanism:controlcircuit:3>, <deepmoblearning:pristine_matter_enderman>, <mekanism:controlcircuit:3>]]);

// Electric Pump
recipes.remove(<mekanism:machineblock:12>);
recipes.addShaped(<mekanism:machineblock:12> * 1, [[null, <ore:batteryMv>, null], [<gregtech:meta_item_1:143>, <ore:circuitMv>, <gregtech:meta_item_1:143>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Chargepad
recipes.remove(<mekanism:machineblock:14>);
recipes.addShaped(<mekanism:machineblock:14> * 1, [[null, null, null], [<minecraft:stone_pressure_plate>, <minecraft:stone_pressure_plate>, <minecraft:stone_pressure_plate>],[<ore:lightPlateSteel>, <mekanism:energytablet>, <ore:lightPlateSteel>]]);

// Security Desk
recipes.remove(<mekanism:basicblock2:9>);
recipes.addShaped(<mekanism:basicblock2:9> * 1, [[<ore:lightPlateSteel>, <mia:armored_glass>, <ore:lightPlateSteel>], [<mekanism:controlcircuit:2>, <mekanism:basicblock:8>, <mekanism:controlcircuit:2>],[<ore:lightPlateSteel>, <ore:circuitMv>, <ore:lightPlateSteel>]]);

// Rotary Condensentrator
recipes.remove(<mekanism:machineblock2:0>);
recipes.addShaped(<mekanism:machineblock2:0> * 1, [[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>], [<gregtech:meta_item_1:249>, <mekanism:basicblock:8>, <gregtech:meta_item_1:144>],[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>]]);

// Chemical Oxidizer
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1> * 1, [[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>], [<gregtech:machine:1627>, <mekanism:basicblock:9>, <gregtech:meta_item_1:249>],[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>]]);

// Chemical Infuser
recipes.remove(<mekanism:machineblock2:2>);
recipes.addShaped(<mekanism:machineblock2:2> * 1, [[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>], [<mekanism:gastank>.withTag({tier: 1}), <mekanism:basicblock:9>, <mekanism:gastank>.withTag({tier: 1})],[<ore:lightPlateRedSteel>, <mekanism:controlcircuit:0>, <ore:lightPlateRedSteel>]]);

// Quantum Entangloporter
recipes.remove(<mekanism:machineblock3:0>);
recipes.addShaped(<mekanism:machineblock3:0> * 1, [[<ore:lightPlateEnderium>, <mekanism:controlcircuit:3>, <ore:lightPlateEnderium>], [<opencomputers:material:9>, <mekanism:teleportationcore>, <opencomputers:material:9>],[<ore:lightPlateEnderium>, <mekanism:controlcircuit:3>, <ore:lightPlateEnderium>]]);

// Fluidic Plenisher
recipes.remove(<mekanism:machineblock2:12>);
recipes.addShaped(<mekanism:machineblock2:12> * 1, [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], [<mekanism:controlcircuit:0>, <mekanism:machineblock:12>, <mekanism:controlcircuit:0>],[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

// Laser
recipes.remove(<mekanism:machineblock2:13>);
recipes.addShaped(<mekanism:machineblock2:13> * 1, [[<mekanism:reinforcedalloy>, <mekanism:energytablet>, null], [<mekanism:reinforcedalloy>, <mekanism:basicblock:8>, <gregtech:meta_item_1:221>],[<mekanism:reinforcedalloy>, <mekanism:energytablet>, null]]);

// Laser Amplifier
recipes.remove(<mekanism:machineblock2:14>);
recipes.addShaped(<mekanism:machineblock2:14> * 4, [[<ore:plateTungstenSteel>, <ore:lightPlateTungstenSteel>, <ore:plateTungstenSteel>], [<gregtech:meta_item_1:236>, <mekanism:energycube:0>, <gregtech:meta_item_1:221>],[<ore:plateTungstenSteel>, <ore:lightPlateTungstenSteel>, <ore:plateTungstenSteel>]]);

// Solar Neutron Activator
recipes.remove(<mekanism:machineblock3:1>);
recipes.addShaped(<mekanism:machineblock3:1> * 1, [[<mekanism:reinforcedalloy>, <opencomputers:upgrade:22>, <mekanism:reinforcedalloy>], [<mekanism:controlcircuit:2>, <mekanism:basicblock:8>, <mekanism:controlcircuit:2>],[<ore:lightPlateRedSteel>, <ore:lightPlateRedSteel>, <ore:lightPlateRedSteel>]]);

// Resistive Heater
recipes.remove(<mekanism:machineblock3:4>);
recipes.addShaped(<mekanism:machineblock3:4> * 1, [[<ore:lightPlateRedSteel>, <ore:plateVanadiumSteel>, <ore:lightPlateRedSteel>], [<embers:superheater>, <mekanism:basicblock2:5>, <embers:superheater>],[<ore:lightPlateRedSteel>, <mekanism:energytablet>, <ore:lightPlateRedSteel>]]);

// Pipes ==========================================================================================

// Basic Pressurized Tube
recipes.remove(<mekanism:transmitter:2>);
recipes.addShapedMirrored(<mekanism:transmitter:2> * 8, [[null, null, null], [<ore:lightPlateSteel>, <ore:fusedQuartz>, <ore:lightPlateSteel>],[null, null, null]]);

// Basic Thermodynamic Conductor
recipes.remove(<mekanism:transmitter:6>);
recipes.addShapedMirrored(<mekanism:transmitter:6> * 8, [[null, null, null], [<ore:lightPlateSteel>, <ore:springDawnstone>, <ore:lightPlateSteel>],[null, null, null]]);

// Obsidian TNT
recipes.remove(<mekanism:obsidiantnt>);
chemical_reactor.recipeBuilder()
    .inputs(<metaitem:gelled_toluene> * 4, <ore:dustObsidian>*6)
    .fluidInputs(<liquid:sulfuric_acid> * 250)
    .outputs(<mekanism:obsidiantnt>)
    .duration(200)
    .EUt(24)
.buildAndRegister();


