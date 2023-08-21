#modloaded magneticraft

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			MagneticCraft Crushing Table                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Recipe for the Crushing Table Itself
recipes.remove(<magneticraft:crushing_table:0>);
recipes.addShaped(<magneticraft:crushing_table:0> * 1, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [<ore:plankWood>, <ore:compressed1xCobblestone>, <ore:plankWood>],[<ore:ingotBronze>, <forestry:wood_pile:0>, <ore:ingotBronze>]]);

### Removing Crushing Table Recipes ###

var RemovingFromTheCrushing as IItemStack[] = [
<minecraft:skull:4>,
<minecraft:skull>,
<minecraft:skull:2>,
<minecraft:iron_ore>,
<minecraft:gold_ore>,
<forestry:resources:1>,
<tconstruct:ore>,
<forestry:resources:2>,
<magneticraft:ores:4>,
<chisel:limestone:2>,
<magneticraft:burnt_limestone>,
<minecraft:blaze_rod>,
<minecraft:bone>,
<chisel:stonebrick2:6>,
<chisel:stonebrick1:8>,
<chisel:prismarine2:1>,
<minecraft:end_bricks>,
<minecraft:iron_block>,
<minecraft:gold_block>,
<magneticraft:storage_blocks>,
<magneticraft:storage_blocks:1>,
<magneticraft:storage_blocks:3>,
<magneticraft:ingots:6>,
<gregtech:ore_lead_0>,
<gregtech:ore_aluminium_0>,
<gregtech:ore_galena_0>,
<gregtech:ore_nickel_0>,
<gregtech:ore_silver_0>,
<thermalfoundation:ore:8>,
<mekanism:oreblock>,
];
for i in RemovingFromTheCrushing {
mods.magneticraft.CrushingTable.removeRecipe(i);
}


### Adding Hammers ### ======================================================================================================================
mods.magneticraft.CrushingTable.removeHammer(<magneticraft:stone_hammer>);
mods.magneticraft.CrushingTable.removeHammer(<magneticraft:iron_hammer>);
mods.magneticraft.CrushingTable.removeHammer(<magneticraft:steel_hammer>);

mods.magneticraft.CrushingTable.addHammer(<gregtech:hammer>.withEmptyTag(), 3, 8, 2);

### Adding Plate Recipes ###

val crushingPlates as IItemStack[][IOreDictEntry] = {
	<ore:ingotIron>   : [<gregtech:meta_plate:51>]
	, <ore:ingotBronze>  : [<gregtech:meta_plate:260>]	
	, <ore:ingotCopper>  : [<gregtech:meta_plate:25>]
	, <ore:ingotTin>  : [<gregtech:meta_plate:112>]
	, <ore:ingotGold>  : [<gregtech:meta_plate:41>]
	, <ore:ingotLead>  : [<gregtech:meta_plate:55>]
	, <ore:ingotNickel>  : [<gregtech:meta_plate:69>]
	, <ore:ingotSilver>  : [<gregtech:meta_plate:100>]
	, <ore:ingotZinc>  : [<gregtech:meta_plate:122>]
	, <ore:ingotBrass>  : [<gregtech:meta_plate:259>]	
	, <ore:ingotInvar>  : [<gregtech:meta_plate:287>]
	, <ore:ingotWroughtIron>  : [<gregtech:meta_plate:335>]
	, <ore:ingotPotin>  : [<gregtech:meta_plate:2037>]
	, <ore:ingotRedAlloy>  : [<gregtech:meta_plate:2517>]
	, <ore:ingotSteel>  : [<gregtech:meta_plate:324>]
};

for oreDictEntry, itemStacks in crushingPlates {
	val regularPlate = itemStacks[0] as IItemStack;

    mods.magneticraft.CrushingTable.addRecipe(oreDictEntry.firstItem, regularPlate);
}

/* 								LIGHT PLATES HAVE BEEN ADDED WITH DEVTECH
val compressingLightPlates as IItemStack[][IOreDictEntry] = {
	<ore:plateIron> : [<magneticraft:light_plates>]
	, <ore:plateGold> : [<magneticraft:light_plates:1>]
	, <ore:plateCopper> : [<magneticraft:light_plates:2>]
	, <ore:plateLead> : [<magneticraft:light_plates:3>]
	, <ore:plateTungsten> : [<magneticraft:light_plates:5>]
	, <ore:plateSteel> : [<magneticraft:light_plates:6>]									
};

for oreDictEntry, itemStacks in compressingLightPlates {
	val regularLightPlate = itemStacks[0] as IItemStack;

	compressor.recipeBuilder()
		.inputs(oreDictEntry.firstItem * 2)
		.outputs(regularLightPlate)   
		.duration(120)
		.EUt(12)
	.buildAndRegister();
}
*/
