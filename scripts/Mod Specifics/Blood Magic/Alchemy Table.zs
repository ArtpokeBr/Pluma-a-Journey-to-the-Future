import mods.bloodmagic.AlchemyTable as AlchemyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//mods.bloodmagic.AlchemyTable.removeRecipe(IItemStack[] inputs);

//Removing Saltpeter Dust
AlchemyTable.removeRecipe([<bloodmagic:component:22>,<bloodmagic:component:22>,<ore:dustCoal>.firstItem]);

//Removing Sulfur Dust
AlchemyTable.removeRecipe([<minecraft:lava_bucket>]);

// No Cutting Fluid recipes

for oreDict in <ore:ore*> {
	for ore in oreDict.items {
        if (!isNull(ore)) {
        AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
	}
  }
}

//For some reason, tungsten ore is broken
AlchemyTable.removeRecipe([<magneticraft:ores:3>, <bloodmagic:cutting_fluid>]);

// No Grass crafting in the Alchemy Table
AlchemyTable.removeRecipe([<minecraft:dirt:*>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

