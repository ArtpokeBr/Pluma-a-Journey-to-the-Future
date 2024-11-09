import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.astralsorcery.LightTransmutation;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
import mods.thaumcraft.Crucible;
import mods.ic2.MetalFormer;
import mods.artisanworktables.builder.RecipeBuilder;

val denseMetallurgy as IData[][string] = {
	"Aluminium" : [ 2, [
		"Aluminium"
	]],
	"Ardite" : [ 2, [
		"Ardite"
	]],
	"Bauxite" : [ 8, [
		"Bauxite"
	]],
	"Coal" : [ 2, [ 
		"Coal",
		"Lignite"
	]],
	"Chromite" : [ 2, [ 
		"Chromite"
	]],
	"Cobalt" : [ 2, [ 
		"Cobalt",
		"Cobaltite",
	]],
	"Copper" : [ 2, [ 
		"Chalcopyrite",
		"Copper",
		"Malachite",
		"Tetrahedrite",
	]],
	"Gold" : [ 2, [ 
		"Gold"
	]],
	"Graphite" : [ 2, [ 
		"Graphite"
	]],
	"Ilmenite" : [ 6, [
		"Ilmenite"
	]],
	"Iridium" : [ 2, [
		"Iridium"
	]],
	"Iron" : [ 2, [
		"Iron",
		"BandedIron",
		"Magnetite",
		"BrownLimonite",
		"YellowLimonite",
		"Pyrite"
	]],
	"Lead" : [ 2, [ 
		"Lead"
	]],
	"Lepidolite" : [ 10, [
		"Lepidolite"
	]],
	"Magnesite" : [ 2, [ 
		"Magnesite"
	]],
	"Naquadah" : [ 2, [
		"Naquadah"
	]],
	"NaquadahEnriched" : [ 2, [
		"NaquadahEnriched"
	]],
	"Nickel" : [ 2, [
		"Nickel",
		"Garnierite",
		"Pentlandite"
	]],
	"Platinum": [ 2, [ 
		"Platinum"
	]],
	"Pyrolusite" : [ 6, [
		"Pyrolusite",
		"Manganese"
	]],
	"Redstone" : [ 6, [
		"Redstone"
	]],
	"Saltpeter" : [ 2, [
		"Saltpeter"
	]],
	"Silver" : [ 2, [
		"Silver"
	]],
	"Stibnite" : [ 6, [
		"Stibnite"
	]],
	"Tantalite" : [ 4, [
		"Tantalite"
	]],
	"Tin" : [ 2, [ 
		"Cassiterite",
		"Tin",
	]],
	"Titanium" : [ 2, []],
	"Tungstate" : [ 2, [ 
		"Tungstate",
		"Scheelite"
	]],
	"Uraninite" : [ 2, [ 
		"Uraninite"
	]],
	"Uranium235" : [ 2, [
	    "Uranium235"
    ]],
	"VanadiumMagnetite" : [ 2, [ 
		"VanadiumMagnetite"
	]],
	"Vinteum" : [ 2, [ 
		"Vinteum"
	]],
	
    "Almandine" : [ 2, [
        "Almandine"
    ]],
    "Amethyst" : [ 2, [
        "Amethyst"
    ]],
    "Apatite" : [ 4, [
        "Apatite"
    ]],
    "BlueTopaz" : [ 2, [
        "BlueTopaz"
    ]],
    "Diamond" : [ 2, [
        "Diamond"
    ]],
    "Emerald" : [ 2, [
        "Emerald"
    ]],
    "GarnetRed" : [ 2, [
        "GarnetRed"
    ]],
    "GarnetYellow" : [ 2, [
        "GarnetYellow"
    ]],
    "GreenSapphire" : [ 2, [
        "GreenSapphire"
    ]],
    "Grossular" : [ 2, [
        "Grossular"
    ]],
    "Lapis" : [ 12, [
        "Lapis"
    ]],
    "Lazurite" : [ 2, [
        "Lazurite"
    ]],
    "Malachite" : [ 2, [
        "Malachite"
    ]],
    "Monazite" : [ 8, [
        "Monazite"
    ]],
    "Olivine" : [ 2, [
        "Olivine"
    ]],
    "Opal" : [ 2, [
        "Opal"
    ]],
    "Pyrope" : [ 2, [
        "Pyrope"
    ]],
    "Quartzite" : [ 2, [
        "Quartzite"
    ]],
    "Realgar" : [ 2, [
        "Realgar"
    ]],
    "Ruby" : [ 2, [
        "Ruby"
    ]],
    "Sapphire" : [ 2, [
        "Sapphire"
    ]],
    "Sodalite" : [ 2, [
        "Sodalite"
    ]],
    "Spessartine" : [ 2, [
        "Spessartine"
    ]],
    "Topaz" : [ 2, [
        "Topaz"
    ]]
};

// Ores into dense ores or into clusters
for oreName, iData in denseMetallurgy {
    print("Processing ore: " + oreName);

    val maceratorMultiplier = iData[0].asInt();
    val sourceOreDicts = iData[1].asList();
    val metallurgyOre = oreDict["metallurgy" + oreName];
    val denseOre = oreDict["denseOre" + oreName];
    val shard = oreDict["shard" + oreName];
    val crystal = oreDict["crystal" + oreName];
    val clump = oreDict["clump" + oreName];
    val cluster = oreDict["cluster" + oreName];
    val crushed = oreDict["crushed" + oreName];

    // Set up a metallurgy oreDict, this syncs to ensure all stone variations have a common dictionary
	for sourceOre in sourceOreDicts {
	    print("Source ore: " + sourceOre);

        metallurgyOre.addAll(oreDict["ore" + sourceOre]);
        metallurgyOre.addAll(oreDict["oreNetherrack" + sourceOre]);
        metallurgyOre.addAll(oreDict["oreEndstone" + sourceOre]);
	}

    // Ore to Dense - Transmutation version (doesn't take oreDict)
    for ore in metallurgyOre.items {
        LightTransmutation.addTransmutation(ore, denseOre.firstItem, 300);
        print("Added Astral Transmutation for " + ore.displayName);
    }

    if !metallurgyOre.empty {
        // Ore to Dense - Chemical Bath version
        <recipemap:chemical_bath>.recipeBuilder()
            .inputs(metallurgyOre)
            .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 20])
            .outputs(denseOre.firstItem)
            .duration(60)
            .EUt(24)
            .buildAndRegister();

        print("Added Chemical Bath and Starlight transmutation recipes for " + oreName);
    }

    // Dense to Shards
	<recipemap:chemical_reactor>.recipeBuilder()
		.inputs(denseOre)
		.fluidInputs([<liquid:lifeessence> * 200, <liquid:liquid_mana> * 100])
		.outputs(shard.firstItem)
		.duration(280)
		.EUt(48)
		.buildAndRegister();

    // Shards to Crystals
    <recipemap:arc_furnace>.recipeBuilder()
        .inputs(shard)
        .fluidInputs([<liquid:pyrotheum> * 144])
        .outputs(crystal.firstItem)
        .fluidOutputs([<liquid:phosphoric_acid> * 15])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    print("Added Arc Furnace usage for " + oreName);

    // Crystals to Clumps
    <recipemap:autoclave>.recipeBuilder()
        .inputs(crystal)
        .fluidInputs(<liquid:uu_matter> * 10)
        .outputs(clump.firstItem)
        .duration(100)
        .EUt(480)
        .buildAndRegister();

    // Clumps to Clusters
    Crucible.registerRecipe(
        "crucible" + oreName,
        "BASEALCHEMY",
        cluster.firstItem * 32,
        clump.firstItem,
        [<aspect:desiderium> * 5,
        <aspect:potentia> * 5]
    );

    furnace.addRecipe(cluster.firstItem * 2, denseOre);
    furnace.addRecipe(cluster.firstItem * 4, shard);
    furnace.addRecipe(cluster.firstItem * 8, crystal);
    furnace.addRecipe(cluster.firstItem * 16, clump);

	<recipemap:macerator>.recipeBuilder()
		.inputs(cluster)
		.outputs(crushed.firstItem * maceratorMultiplier)
		.duration(200)
		.EUt(12)
		.buildAndRegister();

}


//Casing Recipes
var casingMaterials as IItemStack[IIngredient] = {
	<ore:plateIron>: <contenttweaker:iron_casing>,
	<ore:plateBronze>: <contenttweaker:bronze_casing>,
	<ore:plateTin>: <contenttweaker:tin_casing>,
	<ore:plateCopper>: <contenttweaker:copper_casing>,
	<ore:plateSteel>: <contenttweaker:steel_casing>,
	<ore:plateLead>: <contenttweaker:lead_casing>,
	<ore:plateSteelMagnetic>: <contenttweaker:steel_magnetic_casing>,
	<ore:plateAluminium>: <contenttweaker:aluminium_casing>,
	<ore:plateStainlessSteel>: <contenttweaker:stainless_steel_casing>,
	<ore:plateTitanium>: <contenttweaker:titanium_casing>,
	<ore:plateTungstenSteel>: <contenttweaker:tungsten_steel_casing>,
	<ore:plateBrass>: <contenttweaker:brass_casing>
};

for plate, casing in casingMaterials {
	<recipemap:alloy_smelter>.recipeBuilder()
		.inputs(plate*2)
		.notConsumable(<contenttweaker:casing_mold>)
		.outputs(casing*3)
		.EUt(15)
		.duration(128)
	.buildAndRegister();

	MetalFormer.addRollingRecipe(casing*6, plate*4);

	<recipemap:cutter>.recipeBuilder()
			.inputs(plate)
			.outputs(casing*2)
			.EUt(16)
			.duration(150)
	.buildAndRegister();

	<recipemap:extruder>.recipeBuilder()
		.inputs(plate)
		.notConsumable(<contenttweaker:casing_shape>)
		.outputs(casing*2)
		.EUt(45)
		.duration(75)
	.buildAndRegister();
}


var plate_materials  as string[] = [
    "Aluminium",
    "Ardite",
    "Cobalt",
    "Copper",
    "Gold",
    "Iridium",
    "Iron",
    "Lead",
    "Naquadah",
    "NaquadahEnriched",
    "Nickel",
    "Platinum",
    "Silver",
    "Titanium",
    "Tin",
    "Uranium235",
    "Vinteum",
    "Amethyst",
    "Apatite",
    "BlueTopaz",
    "Diamond",
    "Emerald",
    "GreenSapphire",
    "GarnetRed",
    "GarnetYellow",
    "Lapis",
    "Olivine",
    "Opal",
    "Quartzite",
    "Ruby",
    "Sapphire",
    "Topaz",
    "Electrum",
    "Cupronickel",
    "Uranium",
    "BlueAlloy",
    "VibrantAlloy",
    "ConstructionAlloy",
	"MagnesiumDiboride",
	"Ferroboron",
	"Chrome",
	"Tough",
	"Steel",
	"Tungsten",
	"RedSteel"
];

for oreName in plate_materials {

	val plate = oreDict["plate" + oreName];
	val lightPlate = oreDict["lightPlate" + oreName];
	val heavyPlate = oreDict["heavyPlate" + oreName];

	// Light Plates
	<recipemap:bender>.recipeBuilder()
			.inputs(plate*3)
			.circuit(3)
			.outputs(lightPlate.firstItem)
			.EUt(24)
			.duration(400)
	.buildAndRegister();

	RecipeBuilder.get("blacksmith")
	.setShaped([
		[plate],
		[plate],
		[plate]])
	.addTool(<ore:gtceHardHammers>, 2)
	.addOutput(lightPlate.firstItem)
	.create();

	// Heavy Plates
	<recipemap:bender>.recipeBuilder()
			.inputs(lightPlate*2)
			.circuit(3)
			.outputs(heavyPlate.firstItem)
			.EUt(24)
			.duration(800)
	.buildAndRegister();
}