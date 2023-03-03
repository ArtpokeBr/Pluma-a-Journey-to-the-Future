
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;

import mods.gregtech.material.Material;
import mods.gregtech.material.IMaterialPredicate;
//import mods.gregtech.recipe.IRecipeUtils;
//import mods.gregtech.recipe.helpers;
import mods.gregtech.recipe.Utils;

import mods.mekanism.chemical.injection as ChemicalInjection;
import mods.mekanism.purification as PurificationChamber;
import mods.mekanism.enrichment as EnrichmentChamber;
import mods.mekanism.compressor as ChemicalCompressor;

import mods.gregtech.recipe.RecipeMap;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SmeltingBonus;

val lightPlate = OrePrefix.getPrefix("lightPlate");
val heavyPlate = OrePrefix.getPrefix("heavyPlate");

val casing = OrePrefix.getPrefix("casing");

val orePurified = OrePrefix.getPrefix("orePurified");
val oreShard = OrePrefix.getPrefix("oreShard");
val oreCrystal = OrePrefix.getPrefix("oreCrystal");
val oreClump = OrePrefix.getPrefix("oreClump");
val oreCluster = OrePrefix.getPrefix("oreCluster");

val gem = OrePrefix.getPrefix("gem");
val dust = OrePrefix.getPrefix("dust");

// =================================

// Light Plates
lightPlate.generateRecipes(function(lightPlate as OrePrefix, material as Material) { 
// val Utils as IRecipeUtils = IRecipeUtils.Utils;

<recipemap:bender>.recipeBuilder()
        .inputs(Utils.ore("ingot", material)*3)
        .circuit(3)
        .outputs(Utils.item(lightPlate, material))
        .EUt(24)
        .duration(400)
.buildAndRegister();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [Utils.ore("ingot", material)],
    [Utils.ore("ingot", material)],
    [Utils.ore("ingot", material)]])
  .addTool(<ore:gtceHardHammers>, 2)
  .addOutput(Utils.item(lightPlate, material))
.create();

} as IOreRecipeHandler);


// Heavy Plates
heavyPlate.generateRecipes(function(heavyPlate as OrePrefix, material as Material) { 
// val Utils as IRecipeUtils = IRecipeUtils.Utils;

<recipemap:bender>.recipeBuilder()
        .inputs(Utils.item(lightPlate, material)*2)
        .circuit(3)
        .outputs(Utils.item(heavyPlate, material))
        .EUt(24)
        .duration(800)
.buildAndRegister();

} as IOreRecipeHandler);

// ORE PROCESSING RELATED ================================================================================================================


//Ores into Purified Ores [Purified Ores]
orePurified.generateRecipes(function(orePurified as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

	//ChemicalInjection.addRecipe(Utils.item("ore", material), <gas:sulfuricacid>, Utils.item(orePurified, material));

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("ore", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreEndstone", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreMarble", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreRedSand", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreBasalt", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreDiorite", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreSand", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreAndesite", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreNetherrack", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreGranite", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreRedgranite", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    <recipemap:chemical_bath>.recipeBuilder()
        .inputs(Utils.item("oreBlackgranite", material))
        .fluidInputs(<liquid:dwarven_solution>*500)
        .outputs(Utils.item(orePurified, material))
    	.duration(125)
    	.EUt(120)
    .buildAndRegister();

    EnrichmentChamber.addRecipe(Utils.item(orePurified, material), Utils.item(oreCluster, material)*2);

} as IOreRecipeHandler);


//Purified Ores into Shards [Shards]
oreShard.generateRecipes(function(oreShard as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

	ChemicalInjection.addRecipe(Utils.item(orePurified, material), <gas:sulfuricacid>, Utils.item(oreShard, material));
	
    EnrichmentChamber.addRecipe(Utils.item(oreShard, material), Utils.item(oreCluster, material)*4);

} as IOreRecipeHandler);


//Shards into Clumps [Clumps] [Crystals]
oreClump.generateRecipes(function(oreClump as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

    //PurificationChamber.addRecipe(Utils.item(oreShard, material), <gas:oxygen>, Utils.item(oreClump, material));
    <recipemap:chemical_reactor>.recipeBuilder()
        .inputs(Utils.item(oreShard, material))
        .fluidInputs(<liquid:liquid_mana>*200, <liquid:astralsorcery.liquidstarlight>*200)
        .outputs(Utils.item(oreClump, material))
    	.duration(250)
    	.EUt(2024)
    .buildAndRegister();


    //Clumps into Crystals

    //ChemicalCompressor.addRecipe(Utils.item(oreClump, material), <gas:fusionfuel>, Utils.item(oreCrystal, material));
    <recipemap:chemical_reactor>.recipeBuilder()
        .inputs(Utils.item(oreClump, material))
        .fluidInputs(<liquid:purifying_fluid>*200, <liquid:lifeessence>*200)
        .outputs(Utils.item(oreCrystal, material))
    	.duration(500)
    	.EUt(8100)
    .buildAndRegister();


    //Both into Clusters
    EnrichmentChamber.addRecipe(Utils.item(oreClump, material), Utils.item(oreCluster, material)*8);
    EnrichmentChamber.addRecipe(Utils.item(oreCrystal, material), Utils.item(oreCluster, material)*16);

} as IOreRecipeHandler);



// Clusters into Crushed Ores [Clusters]
oreCluster.generateRecipes(function(oreCluster as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

    <recipemap:macerator>.recipeBuilder()
    	.inputs(Utils.item(oreCluster, material))
    	.outputs(Utils.item("crushed", material)*2)
    	.duration(200)
    	.EUt(12)
    .buildAndRegister();

} as IOreRecipeHandler);

//Crytals produce more Clusters [Clusters]
oreCluster.generateRecipes(function(oreCluster as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

    mods.thaumcraft.Crucible.registerRecipe("crucible_ore_cluster" ~ material.name, "METALPURIFICATION", Utils.item(oreCluster, material)*32, Utils.item(oreCrystal, material), [<aspect:desiderium> * 10, <aspect:ordo> * 10, <aspect:priscus> * 10]);

} as IOreRecipeHandler);

// Casing
casing.generateRecipes(function(casing as OrePrefix, material as Material) { 
// val Utils as IRecipeUtils = IRecipeUtils.Utils;

<recipemap:alloy_smelter>.recipeBuilder()
        .inputs(Utils.ore("ingot", material)*2)
        .notConsumable(<contenttweaker:casing_mold>)
        .outputs(Utils.item(casing, material)*3)
        .EUt(15)
        .duration(128)
.buildAndRegister();

<recipemap:cutter>.recipeBuilder()
        .inputs(Utils.ore("plate", material))
        .outputs(Utils.item(casing, material)*2)
        .EUt(16)
        .duration(150)
.buildAndRegister();

<recipemap:extruder>.recipeBuilder()
        .inputs(Utils.ore("ingot", material))
        .notConsumable(<contenttweaker:casing_shape>)
        .outputs(Utils.item(casing, material)*2)
        .EUt(45)
        .duration(75)
.buildAndRegister();

} as IOreRecipeHandler);

// Gems being made in the "good way"

gem.generateRecipes(function(gem as OrePrefix, material as Material) { 
    // val Utils as IRecipeUtils = IRecipeUtils.Utils;

    furnace.remove(Utils.item(gem, material));

	<recipemap:autoclave>.recipeBuilder()
    	.inputs(Utils.item("dust", material))
    	.fluidInputs(<liquid:water> * 200)
    	.chancedOutput(Utils.item(gem, material), 7000, 2700)
    	.duration(2000)
    	.EUt(24)
    	.buildAndRegister();

	<recipemap:autoclave>.recipeBuilder()
    	.inputs(Utils.item("dust", material))
    	.fluidInputs(<liquid:distilled_water> * 200)
    	.chancedOutput(Utils.item(gem, material), 9000, 3000)
    	.duration(1000)
    	.EUt(24)
    	.buildAndRegister();

	<recipemap:autoclave>.recipeBuilder()
    	.inputs(Utils.item("dust", material))
    	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    	.outputs(Utils.item(gem, material))
    	.duration(100)
    	.EUt(24)
    .buildAndRegister();

} as IOreRecipeHandler);