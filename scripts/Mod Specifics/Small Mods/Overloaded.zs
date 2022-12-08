import crafttweaker.item.IItemStack;

var RemovingRecipes as IItemStack[] = [
<overloaded:infinite_capacitor>,
<overloaded:infinite_tank>,
<overloaded:infinite_barrel>
];
for i in RemovingRecipes {
recipes.remove(i);
}




// var allBlackQuartzOresListed = [<actuallyadditions:block_misc:3>] as IItemStack[];
// for i in 0 to 8 {
// 	allBlackQuartzOresListed += <undergroundbiomes:igneous_stone_actuallyadditions_block_misc_3>.withDamage(i);
// 	allBlackQuartzOresListed += <undergroundbiomes:metamorphic_stone_actuallyadditions_block_misc_3>.withDamage(i);
// 	allBlackQuartzOresListed += <undergroundbiomes:sedimentary_stone_actuallyadditions_block_misc_3>.withDamage(i);
// }

// for ore in allBlackQuartzOresListed {
// 	EUCrusher.add(<actuallyadditions:item_misc:5> * 2, ore);
// }


# For all of Them Exept the first one

val baseEUcost = 16;
val baseDuration = 120;

for i in 1 to 16 {

    #Cobblestone
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_cobblestone>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_cobblestone>.withDamage(i - 1) * 9,[<overloaded:compressed_cobblestone>.withDamage(i)]);

    #Dirt
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_dirt>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_dirt>.withDamage(i - 1) * 9,[<overloaded:compressed_dirt>.withDamage(i)]);

    #Sand
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_sand>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_sand>.withDamage(i - 1) * 9,[<overloaded:compressed_sand>.withDamage(i)]);

    #Gravel
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_gravel>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_gravel>.withDamage(i - 1) * 9,[<overloaded:compressed_gravel>.withDamage(i)]);

    #Netherrack
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_netherrack>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_netherrack>.withDamage(i - 1) * 9,[<overloaded:compressed_netherrack>.withDamage(i)]);

    #Stone
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_stone>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_stone>.withDamage(i - 1) * 9,[<overloaded:compressed_stone>.withDamage(i)]);

    #Obsidian
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_obsidian>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_obsidian>.withDamage(i - 1) * 9,[<overloaded:compressed_obsidian>.withDamage(i)]);

    #Basalt
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_basalt>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_basalt>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_basalt>.withDamage(i - 1) * 9,[<overloaded:compressed_basalt>.withDamage(i)]);

    #Clay
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_clay>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_clay>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_clay>.withDamage(i - 1) * 9,[<overloaded:compressed_clay>.withDamage(i)]);

    #Sandstone
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sandstone>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_sandstone>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_sandstone>.withDamage(i - 1) * 9,[<overloaded:compressed_sandstone>.withDamage(i)]);

    #End Stone
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_endstone>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_endstone>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_endstone>.withDamage(i - 1) * 9,[<overloaded:compressed_endstone>.withDamage(i)]);

}

//Adding Recipes for the First Ones

#Cobble
recipes.addShaped(<overloaded:compressed_cobblestone> * 1, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShapeless(<minecraft:cobblestone> * 9,[<overloaded:compressed_cobblestone>]);

#Dirt
recipes.addShaped(<overloaded:compressed_dirt> * 1, [[<ore:dirt>, <ore:dirt>, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>, <ore:dirt>, <ore:dirt>]]);
recipes.addShapeless(<minecraft:dirt> * 9,[<overloaded:compressed_dirt>]);

#Sand
recipes.addShaped(<overloaded:compressed_sand> * 1, [[<ore:sand>, <ore:sand>, <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>],[<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShapeless(<minecraft:sand> * 9,[<overloaded:compressed_sand>]);

#Gravel
recipes.addShaped(<overloaded:compressed_gravel> * 1, [[<ore:gravel>, <ore:gravel>, <ore:gravel>], [<ore:gravel>, <ore:gravel>, <ore:gravel>],[<ore:gravel>, <ore:gravel>, <ore:gravel>]]);
recipes.addShapeless(<minecraft:gravel> * 9,[<overloaded:compressed_gravel>]);

#Netherrack
recipes.addShaped(<overloaded:compressed_netherrack> * 1, [[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>], [<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]]);
recipes.addShapeless(<minecraft:netherrack> * 9,[<overloaded:compressed_netherrack>]);

#Stone
recipes.addShaped(<overloaded:compressed_stone> * 1, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>],[<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShapeless(<minecraft:stone> * 9,[<overloaded:compressed_stone>]);

#Obsidian
recipes.addShaped(<overloaded:compressed_obsidian> * 1, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);
recipes.addShapeless(<minecraft:obsidian> * 9,[<overloaded:compressed_obsidian>]);

#Basalt
recipes.addShaped(<overloaded:compressed_basalt> * 1, [[<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>], [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>],[<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>]]);
recipes.addShapeless(<chisel:basalt2:7> * 9,[<overloaded:compressed_basalt>]);

#Clay
recipes.addShaped(<overloaded:compressed_clay> * 1, [[<ore:blockClay>, <ore:blockClay>, <ore:blockClay>], [<ore:blockClay>, <ore:blockClay>, <ore:blockClay>],[<ore:blockClay>, <ore:blockClay>, <ore:blockClay>]]);
recipes.addShapeless(<minecraft:clay> * 9,[<overloaded:compressed_clay>]);

#Sandstone
recipes.addShaped(<overloaded:compressed_sandstone> * 1, [[<ore:sandstone>, <ore:sandstone>, <ore:sandstone>], [<ore:sandstone>, <ore:sandstone>, <ore:sandstone>],[<ore:sandstone>, <ore:sandstone>, <ore:sandstone>]]);
recipes.addShapeless(<minecraft:sandstone> * 9,[<overloaded:compressed_sandstone>]);

#Endstone
recipes.addShaped(<overloaded:compressed_endstone> * 1, [[<ore:endstone>, <ore:endstone>, <ore:endstone>], [<ore:endstone>, <ore:endstone>, <ore:endstone>],[<ore:endstone>, <ore:endstone>, <ore:endstone>]]);
recipes.addShapeless(<minecraft:end_stone> * 9,[<overloaded:compressed_endstone>]);

// Adding OreDicts and Recipes with them

# Compressed Cobblestone ==========================================================================

<ore:compressed1xCobblestone>.add(<overloaded:compressed_cobblestone>);
<ore:compressed2xCobblestone>.add(<overloaded:compressed_cobblestone:1>);
<ore:compressed3xCobblestone>.add(<overloaded:compressed_cobblestone:2>);
<ore:compressed4xCobblestone>.add(<overloaded:compressed_cobblestone:3>);
<ore:compressed5xCobblestone>.add(<overloaded:compressed_cobblestone:4>);
<ore:compressed6xCobblestone>.add(<overloaded:compressed_cobblestone:5>);
<ore:compressed7xCobblestone>.add(<overloaded:compressed_cobblestone:6>);
<ore:compressed8xCobblestone>.add(<overloaded:compressed_cobblestone:7>);
<ore:compressed9xCobblestone>.add(<overloaded:compressed_cobblestone:8>);
<ore:compressed10xCobblestone>.add(<overloaded:compressed_cobblestone:9>);
<ore:compressed11xCobblestone>.add(<overloaded:compressed_cobblestone:10>);
<ore:compressed12xCobblestone>.add(<overloaded:compressed_cobblestone:11>);
<ore:compressed13xCobblestone>.add(<overloaded:compressed_cobblestone:12>);
<ore:compressed14xCobblestone>.add(<overloaded:compressed_cobblestone:13>);
<ore:compressed15xCobblestone>.add(<overloaded:compressed_cobblestone:14>);
<ore:compressed16xCobblestone>.add(<overloaded:compressed_cobblestone:15>);

# Compressed Dirt ==========================================================================

<ore:compressed1xDirt>.add(<overloaded:compressed_dirt>);
<ore:compressed2xDirt>.add(<overloaded:compressed_dirt:1>);
<ore:compressed3xDirt>.add(<overloaded:compressed_dirt:2>);
<ore:compressed4xDirt>.add(<overloaded:compressed_dirt:3>);
<ore:compressed5xDirt>.add(<overloaded:compressed_dirt:4>);
<ore:compressed6xDirt>.add(<overloaded:compressed_dirt:5>);
<ore:compressed7xDirt>.add(<overloaded:compressed_dirt:6>);
<ore:compressed8xDirt>.add(<overloaded:compressed_dirt:7>);
<ore:compressed9xDirt>.add(<overloaded:compressed_dirt:8>);
<ore:compressed10xDirt>.add(<overloaded:compressed_dirt:9>);
<ore:compressed11xDirt>.add(<overloaded:compressed_dirt:10>);
<ore:compressed12xDirt>.add(<overloaded:compressed_dirt:11>);
<ore:compressed13xDirt>.add(<overloaded:compressed_dirt:12>);
<ore:compressed14xDirt>.add(<overloaded:compressed_dirt:13>);
<ore:compressed15xDirt>.add(<overloaded:compressed_dirt:14>);
<ore:compressed16xDirt>.add(<overloaded:compressed_dirt:15>);

# Compressed Sand ==========================================================================

<ore:compressed1xSand>.add(<overloaded:compressed_sand>);
<ore:compressed2xSand>.add(<overloaded:compressed_sand:1>);
<ore:compressed3xSand>.add(<overloaded:compressed_sand:2>);
<ore:compressed4xSand>.add(<overloaded:compressed_sand:3>);
<ore:compressed5xSand>.add(<overloaded:compressed_sand:4>);
<ore:compressed6xSand>.add(<overloaded:compressed_sand:5>);
<ore:compressed7xSand>.add(<overloaded:compressed_sand:6>);
<ore:compressed8xSand>.add(<overloaded:compressed_sand:7>);
<ore:compressed9xSand>.add(<overloaded:compressed_sand:8>);
<ore:compressed10xSand>.add(<overloaded:compressed_sand:9>);
<ore:compressed11xSand>.add(<overloaded:compressed_sand:10>);
<ore:compressed12xSand>.add(<overloaded:compressed_sand:11>);
<ore:compressed13xSand>.add(<overloaded:compressed_sand:12>);
<ore:compressed14xSand>.add(<overloaded:compressed_sand:13>);
<ore:compressed15xSand>.add(<overloaded:compressed_sand:14>);
<ore:compressed16xSand>.add(<overloaded:compressed_sand:15>);

# Compressed Gravel ==========================================================================

<ore:compressed1xGravel>.add(<overloaded:compressed_gravel>);
<ore:compressed2xGravel>.add(<overloaded:compressed_gravel:1>);
<ore:compressed3xGravel>.add(<overloaded:compressed_gravel:2>);
<ore:compressed4xGravel>.add(<overloaded:compressed_gravel:3>);
<ore:compressed5xGravel>.add(<overloaded:compressed_gravel:4>);
<ore:compressed6xGravel>.add(<overloaded:compressed_gravel:5>);
<ore:compressed7xGravel>.add(<overloaded:compressed_gravel:6>);
<ore:compressed8xGravel>.add(<overloaded:compressed_gravel:7>);
<ore:compressed9xGravel>.add(<overloaded:compressed_gravel:8>);
<ore:compressed10xGravel>.add(<overloaded:compressed_gravel:9>);
<ore:compressed11xGravel>.add(<overloaded:compressed_gravel:10>);
<ore:compressed12xGravel>.add(<overloaded:compressed_gravel:11>);
<ore:compressed13xGravel>.add(<overloaded:compressed_gravel:12>);
<ore:compressed14xGravel>.add(<overloaded:compressed_gravel:13>);
<ore:compressed15xGravel>.add(<overloaded:compressed_gravel:14>);
<ore:compressed16xGravel>.add(<overloaded:compressed_gravel:15>);

# Compressed Netherrack ==========================================================================

<ore:compressed1xNetherrack>.add(<overloaded:compressed_netherrack>);
<ore:compressed2xNetherrack>.add(<overloaded:compressed_netherrack:1>);
<ore:compressed3xNetherrack>.add(<overloaded:compressed_netherrack:2>);
<ore:compressed4xNetherrack>.add(<overloaded:compressed_netherrack:3>);
<ore:compressed5xNetherrack>.add(<overloaded:compressed_netherrack:4>);
<ore:compressed6xNetherrack>.add(<overloaded:compressed_netherrack:5>);
<ore:compressed7xNetherrack>.add(<overloaded:compressed_netherrack:6>);
<ore:compressed8xNetherrack>.add(<overloaded:compressed_netherrack:7>);
<ore:compressed9xNetherrack>.add(<overloaded:compressed_netherrack:8>);
<ore:compressed10xNetherrack>.add(<overloaded:compressed_netherrack:9>);
<ore:compressed11xNetherrack>.add(<overloaded:compressed_netherrack:10>);
<ore:compressed12xNetherrack>.add(<overloaded:compressed_netherrack:11>);
<ore:compressed13xNetherrack>.add(<overloaded:compressed_netherrack:12>);
<ore:compressed14xNetherrack>.add(<overloaded:compressed_netherrack:13>);
<ore:compressed15xNetherrack>.add(<overloaded:compressed_netherrack:14>);
<ore:compressed16xNetherrack>.add(<overloaded:compressed_netherrack:15>);

# Compressed Stone ==========================================================================

<ore:compressed1xStone>.add(<overloaded:compressed_stone>);
<ore:compressed2xStone>.add(<overloaded:compressed_stone:1>);
<ore:compressed3xStone>.add(<overloaded:compressed_stone:2>);
<ore:compressed4xStone>.add(<overloaded:compressed_stone:3>);
<ore:compressed5xStone>.add(<overloaded:compressed_stone:4>);
<ore:compressed6xStone>.add(<overloaded:compressed_stone:5>);
<ore:compressed7xStone>.add(<overloaded:compressed_stone:6>);
<ore:compressed8xStone>.add(<overloaded:compressed_stone:7>);
<ore:compressed9xStone>.add(<overloaded:compressed_stone:8>);
<ore:compressed10xStone>.add(<overloaded:compressed_stone:9>);
<ore:compressed11xStone>.add(<overloaded:compressed_stone:10>);
<ore:compressed12xStone>.add(<overloaded:compressed_stone:11>);
<ore:compressed13xStone>.add(<overloaded:compressed_stone:12>);
<ore:compressed14xStone>.add(<overloaded:compressed_stone:13>);
<ore:compressed15xStone>.add(<overloaded:compressed_stone:14>);
<ore:compressed16xStone>.add(<overloaded:compressed_stone:15>);

# Compressed Obsidian ==========================================================================

<ore:compressed1xObsidian>.add(<overloaded:compressed_obsidian>);
<ore:compressed2xObsidian>.add(<overloaded:compressed_obsidian:1>);
<ore:compressed3xObsidian>.add(<overloaded:compressed_obsidian:2>);
<ore:compressed4xObsidian>.add(<overloaded:compressed_obsidian:3>);
<ore:compressed5xObsidian>.add(<overloaded:compressed_obsidian:4>);
<ore:compressed6xObsidian>.add(<overloaded:compressed_obsidian:5>);
<ore:compressed7xObsidian>.add(<overloaded:compressed_obsidian:6>);
<ore:compressed8xObsidian>.add(<overloaded:compressed_obsidian:7>);
<ore:compressed9xObsidian>.add(<overloaded:compressed_obsidian:8>);
<ore:compressed10xObsidian>.add(<overloaded:compressed_obsidian:9>);
<ore:compressed11xObsidian>.add(<overloaded:compressed_obsidian:10>);
<ore:compressed12xObsidian>.add(<overloaded:compressed_obsidian:11>);
<ore:compressed13xObsidian>.add(<overloaded:compressed_obsidian:12>);
<ore:compressed14xObsidian>.add(<overloaded:compressed_obsidian:13>);
<ore:compressed15xObsidian>.add(<overloaded:compressed_obsidian:14>);
<ore:compressed16xObsidian>.add(<overloaded:compressed_obsidian:15>);

# Compressed Basalt ==========================================================================

<ore:compressed1xBasalt>.add(<overloaded:compressed_basalt>);
<ore:compressed2xBasalt>.add(<overloaded:compressed_basalt:1>);
<ore:compressed3xBasalt>.add(<overloaded:compressed_basalt:2>);
<ore:compressed4xBasalt>.add(<overloaded:compressed_basalt:3>);
<ore:compressed5xBasalt>.add(<overloaded:compressed_basalt:4>);
<ore:compressed6xBasalt>.add(<overloaded:compressed_basalt:5>);
<ore:compressed7xBasalt>.add(<overloaded:compressed_basalt:6>);
<ore:compressed8xBasalt>.add(<overloaded:compressed_basalt:7>);
<ore:compressed9xBasalt>.add(<overloaded:compressed_basalt:8>);
<ore:compressed10xBasalt>.add(<overloaded:compressed_basalt:9>);
<ore:compressed11xBasalt>.add(<overloaded:compressed_basalt:10>);
<ore:compressed12xBasalt>.add(<overloaded:compressed_basalt:11>);
<ore:compressed13xBasalt>.add(<overloaded:compressed_basalt:12>);
<ore:compressed14xBasalt>.add(<overloaded:compressed_basalt:13>);
<ore:compressed15xBasalt>.add(<overloaded:compressed_basalt:14>);
<ore:compressed16xBasalt>.add(<overloaded:compressed_basalt:15>);

# Compressed Clay ==========================================================================

<ore:compressed1xClay>.add(<overloaded:compressed_clay>);
<ore:compressed2xClay>.add(<overloaded:compressed_clay:1>);
<ore:compressed3xClay>.add(<overloaded:compressed_clay:2>);
<ore:compressed4xClay>.add(<overloaded:compressed_clay:3>);
<ore:compressed5xClay>.add(<overloaded:compressed_clay:4>);
<ore:compressed6xClay>.add(<overloaded:compressed_clay:5>);
<ore:compressed7xClay>.add(<overloaded:compressed_clay:6>);
<ore:compressed8xClay>.add(<overloaded:compressed_clay:7>);
<ore:compressed9xClay>.add(<overloaded:compressed_clay:8>);
<ore:compressed10xClay>.add(<overloaded:compressed_clay:9>);
<ore:compressed11xClay>.add(<overloaded:compressed_clay:10>);
<ore:compressed12xClay>.add(<overloaded:compressed_clay:11>);
<ore:compressed13xClay>.add(<overloaded:compressed_clay:12>);
<ore:compressed14xClay>.add(<overloaded:compressed_clay:13>);
<ore:compressed15xClay>.add(<overloaded:compressed_clay:14>);
<ore:compressed16xClay>.add(<overloaded:compressed_clay:15>);

# Compressed Sandstone ==========================================================================

<ore:compressed1xSandstone>.add(<overloaded:compressed_sandstone>);
<ore:compressed2xSandstone>.add(<overloaded:compressed_sandstone:1>);
<ore:compressed3xSandstone>.add(<overloaded:compressed_sandstone:2>);
<ore:compressed4xSandstone>.add(<overloaded:compressed_sandstone:3>);
<ore:compressed5xSandstone>.add(<overloaded:compressed_sandstone:4>);
<ore:compressed6xSandstone>.add(<overloaded:compressed_sandstone:5>);
<ore:compressed7xSandstone>.add(<overloaded:compressed_sandstone:6>);
<ore:compressed8xSandstone>.add(<overloaded:compressed_sandstone:7>);
<ore:compressed9xSandstone>.add(<overloaded:compressed_sandstone:8>);
<ore:compressed10xSandstone>.add(<overloaded:compressed_sandstone:9>);
<ore:compressed11xSandstone>.add(<overloaded:compressed_sandstone:10>);
<ore:compressed12xSandstone>.add(<overloaded:compressed_sandstone:11>);
<ore:compressed13xSandstone>.add(<overloaded:compressed_sandstone:12>);
<ore:compressed14xSandstone>.add(<overloaded:compressed_sandstone:13>);
<ore:compressed15xSandstone>.add(<overloaded:compressed_sandstone:14>);
<ore:compressed16xSandstone>.add(<overloaded:compressed_sandstone:15>);

# Compressed Endstone ==========================================================================

<ore:compressed1xEndstone>.add(<overloaded:compressed_endstone>);
<ore:compressed2xEndstone>.add(<overloaded:compressed_endstone:1>);
<ore:compressed3xEndstone>.add(<overloaded:compressed_endstone:2>);
<ore:compressed4xEndstone>.add(<overloaded:compressed_endstone:3>);
<ore:compressed5xEndstone>.add(<overloaded:compressed_endstone:4>);
<ore:compressed6xEndstone>.add(<overloaded:compressed_endstone:5>);
<ore:compressed7xEndstone>.add(<overloaded:compressed_endstone:6>);
<ore:compressed8xEndstone>.add(<overloaded:compressed_endstone:7>);
<ore:compressed9xEndstone>.add(<overloaded:compressed_endstone:8>);
<ore:compressed10xEndstone>.add(<overloaded:compressed_endstone:9>);
<ore:compressed11xEndstone>.add(<overloaded:compressed_endstone:10>);
<ore:compressed12xEndstone>.add(<overloaded:compressed_endstone:11>);
<ore:compressed13xEndstone>.add(<overloaded:compressed_endstone:12>);
<ore:compressed14xEndstone>.add(<overloaded:compressed_endstone:13>);
<ore:compressed15xEndstone>.add(<overloaded:compressed_endstone:14>);
<ore:compressed16xEndstone>.add(<overloaded:compressed_endstone:15>);