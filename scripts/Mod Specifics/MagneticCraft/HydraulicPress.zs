/*

#modloaded magneticraft

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			MagneticCraft Hydraulic Press                                                                                                    //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

### Removing Hydraulic Press Recipes ###

var RemovingFromThePressing0 as IItemStack[] = [
<minecraft:stone>,
<minecraft:stonebrick:1>,
<minecraft:end_bricks>,
<minecraft:red_sandstone:2>,
<minecraft:prismarine:1>,
<minecraft:ice>,
//<thermalfoundation:material:166>,
//<thermalfoundation:material:167>,
//<thermalfoundation:material:164>,
//<thermalfoundation:material:165>,
//<thermalfoundation:material:161>,
//<thermalfoundation:material:162>,
//<thermalfoundation:material:134>,
//<thermalfoundation:material:135>,
];
for i in RemovingFromThePressing0 {
mods.magneticraft.HydraulicPress.removeRecipe(i, 0);
}

var RemovingFromThePressing1 as IItemStack[] = [
<magneticraft:ingots:5>,
<magneticraft:ingots:6>,
<magneticraft:ingots:2>,
<magneticraft:ingots:3>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>
];
for i in RemovingFromThePressing1 {
mods.magneticraft.HydraulicPress.removeRecipe(i, 1);
}

var RemovingFromThePressing2 as IItemStack[] = [
<magneticraft:ingots:5>,
<magneticraft:ingots:6>,
<magneticraft:ingots:2>,
<magneticraft:ingots:3>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>    
];
for i in RemovingFromThePressing2 {
mods.magneticraft.HydraulicPress.removeRecipe(i, 2);
}

// Reading Corrected Recipes ==================================================================================================


//Light Plates

mods.magneticraft.HydraulicPress.addRecipe(<ore:plateIron>.firstItem * 2, <magneticraft:light_plates>, 80, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:plateGold>.firstItem * 2, <magneticraft:light_plates:1>, 80, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:plateCopper>.firstItem * 2, <magneticraft:light_plates:2>, 80, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:plateLead>.firstItem * 2, <magneticraft:light_plates:3>, 80, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:plateTungsten>.firstItem * 2, <magneticraft:light_plates:5>, 80, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:plateSteel>.firstItem * 2, <magneticraft:light_plates:6>, 80, 1, true);	

//Heavy Plates
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateIron>.firstItem * 2, <magneticraft:heavy_plates>, 80, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateGold>.firstItem * 2, <magneticraft:heavy_plates:1>, 80, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateCopper>.firstItem * 2, <magneticraft:heavy_plates:2>, 80, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateLead>.firstItem * 2, <magneticraft:heavy_plates:3>, 80, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateTungsten>.firstItem * 2, <magneticraft:heavy_plates:5>, 80, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<ore:lightPlateSteel>.firstItem * 2, <magneticraft:heavy_plates:6>, 80, 2, true);

*/