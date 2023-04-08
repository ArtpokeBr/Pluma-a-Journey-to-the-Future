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

    #Tainted Soil
    compressor.recipeBuilder()
    .inputs(<overloaded:compressed_tainted_soil>.withDamage(i - 1)*9)
    .outputs(<overloaded:compressed_tainted_soil>.withDamage(i))
    .duration(baseDuration * i).EUt(baseEUcost * i).buildAndRegister();

    recipes.addShapeless(<overloaded:compressed_tainted_soil>.withDamage(i - 1) * 9,[<overloaded:compressed_tainted_soil>.withDamage(i)]);

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

#Tainted Soil
recipes.addShaped(<overloaded:compressed_tainted_soil> * 1, [[<natura:nether_tainted_soil>, <natura:nether_tainted_soil>, <natura:nether_tainted_soil>], [<natura:nether_tainted_soil>, <natura:nether_tainted_soil>, <natura:nether_tainted_soil>],[<natura:nether_tainted_soil>, <natura:nether_tainted_soil>, <natura:nether_tainted_soil>]]);
recipes.addShapeless(<natura:nether_tainted_soil> * 9,[<overloaded:compressed_tainted_soil>]);
