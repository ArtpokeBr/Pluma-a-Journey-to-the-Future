import crafttweaker.item.WeightedItemStack;
#modloaded biomesoplenty

# Celestial Crystal Integration =====================================

//Renaming All BOP Celestial Crystal to Stygian Crystal
<biomesoplenty:crystal>.displayName = "Stygian Crystal Block";
<biomesoplenty:crystal_shard>.displayName = "Stygian Crystal Shard";


//Making Dusts
macerator.recipeBuilder()
    .inputs(<biomesoplenty:crystal_shard>)
    .outputs(<ore:dustSmallStygian>.firstItem)
    .duration(100)
    .EUt(20)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<biomesoplenty:crystal>)
    .outputs(<ore:dustStygian>.firstItem)
    .duration(100)
    .EUt(20)
.buildAndRegister();

//Autoclaving Shards

autoclave.recipeBuilder()
    .inputs(<ore:dustSmallStygian>)
    .fluidInputs(<liquid:water> * 200)
    .chancedOutput(<biomesoplenty:crystal_shard>, 7000, 2700)
    .duration(2000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustSmallStygian>)
    .fluidInputs(<liquid:distilled_water> * 200)
    .chancedOutput(<biomesoplenty:crystal_shard>, 9000, 3000)
    .duration(1000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustSmallStygian>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    .outputs(<biomesoplenty:crystal_shard>)
    .duration(100)
    .EUt(24)
.buildAndRegister();

//Autoclaving Crystals

autoclave.recipeBuilder()
    .inputs(<ore:dustStygian>)
    .fluidInputs(<liquid:water> * 200)
    .chancedOutput(<biomesoplenty:crystal>, 7000, 2700)
    .duration(2000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustStygian>)
    .fluidInputs(<liquid:distilled_water> * 200)
    .chancedOutput(<biomesoplenty:crystal>, 9000, 3000)
    .duration(1000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustStygian>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    .outputs(<biomesoplenty:crystal>)
    .duration(100)
    .EUt(24)
.buildAndRegister();

//Compressing Shards into Crystal
recipes.remove(<biomesoplenty:crystal>);
compressor.recipeBuilder()
    .inputs(<biomesoplenty:crystal_shard>*4)
    .outputs(<biomesoplenty:crystal>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Blood Integration
extractor.recipeBuilder()
    .inputs(<thaumcraft:flesh_block>)
    .fluidOutputs(<liquid:blood>*360)
    .duration(80)
    .EUt(40)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:materialFlesh>)
    .fluidOutputs(<liquid:blood>*40)
    .duration(60)
    .EUt(36)
.buildAndRegister();


// Flesh Block
chemreactor.recipeBuilder()
    .inputs(<thaumcraft:flesh_block>, <ore:dustSalt>)
    .fluidInputs(<liquid:blood>*1000)
    .outputs(<biomesoplenty:flesh>)
    .duration(250)
    .EUt(12)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<thaumcraft:flesh_block>, <ore:dustSalt>)
    .fluidInputs(<liquid:evilcraftblood>*1000)
    .outputs(<biomesoplenty:flesh>)
    .duration(250)
    .EUt(12)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<thaumcraft:flesh_block>, <ore:dustSalt>)
    .fluidInputs(<liquid:lifeessence>*1000)
    .outputs(<biomesoplenty:flesh>)
    .duration(250)
    .EUt(12)
.buildAndRegister();

//Block of Flesh Compressing
recipes.remove(<biomesoplenty:flesh>);

compressor.recipeBuilder()
    .inputs(<biomesoplenty:fleshchunk>*4)
    .outputs(<biomesoplenty:flesh>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<biomesoplenty:flesh>)
    .outputs(<biomesoplenty:fleshchunk>*4)
    .duration(100)
    .EUt(8)
.buildAndRegister();

# "Meat" [from E2EE, thanks krutoy!]
	var rawMeat = [
		(<harvestcraft:turkeyrawitem>) % 5,
		(<minecraft:mutton> % 10),
		(<minecraft:rabbit> % 5),
		(<minecraft:chicken> % 10),
		(<minecraft:porkchop> % 10),
		(<minecraft:beef> % 10),
		<harvestcraft:venisonrawitem> % 5,
		<harvestcraft:duckrawitem> % 5
	] as WeightedItemStack[];
	mods.forestry.Centrifuge.addRecipe(rawMeat, <biomesoplenty:flesh>, 100);
	mods.thermalexpansion.Centrifuge.addRecipe([rawMeat[0], rawMeat[1], rawMeat[2], rawMeat[3]
		] as WeightedItemStack[],<biomesoplenty:flesh>, null, 2000);