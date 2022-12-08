import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Extruder Cylinder Script                                                                                                //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var CylindersAndBalls as IItemStack[IIngredient] = {
    <ore:ingotElectricalSteel>.firstItem: <enderio:item_alloy_ball>,
    <ore:ingotEnergeticAlloy>.firstItem: <enderio:item_alloy_ball:1>,
    <ore:ingotVibrantAlloy>.firstItem: <enderio:item_alloy_ball:2>,
    <ore:ingotRedstoneAlloy>.firstItem: <enderio:item_alloy_ball:3>,
    <ore:ingotConductiveIron>.firstItem: <enderio:item_alloy_ball:4>,
    <ore:ingotPulsatingIron>.firstItem: <enderio:item_alloy_ball:5>,
    <ore:ingotDarkSteel>.firstItem: <enderio:item_alloy_ball:6>,
    <ore:ingotSoularium>.firstItem: <enderio:item_alloy_ball:7>,
    <ore:ingotEndSteel>.firstItem: <enderio:item_alloy_ball:8>,
    <ore:ingotConstructionAlloy>.firstItem: <enderio:item_alloy_ball:9>,
    <ore:ingotCrudeSteel>.firstItem: <enderio:item_alloy_endergy_ball>,
    <ore:ingotCrystallineAlloy>.firstItem: <enderio:item_alloy_endergy_ball:1>,
    <ore:ingotMelodicAlloy>.firstItem: <enderio:item_alloy_endergy_ball:2>,
    <ore:ingotStellarAlloy>.firstItem: <enderio:item_alloy_endergy_ball:3>,
    <ore:ingotCrystallinePinkSlime>.firstItem: <enderio:item_alloy_endergy_ball:4>,
    <ore:ingotEnergeticSilver>.firstItem: <enderio:item_alloy_endergy_ball:5>,
    <ore:ingotVividAlloy>.firstItem: <enderio:item_alloy_endergy_ball:6>,
    <ore:ingotLumium>.firstItem: <enderio:item_material:59>,
    <ore:ingotSignalum>.firstItem: <enderio:item_material:57>,
    <ore:ingotEnderium>.firstItem: <enderio:item_material:58>,

    <ore:ingotSilicon>.firstItem: <projectred-core:resource_item:301>

    };
for IItemStack, IIngredient in CylindersAndBalls {
        recipes.remove(IIngredient);

		alloy.recipeBuilder()
			.inputs(IItemStack * 1)
            .notConsumable(<gregtech:meta_item_1:17>)
			.outputs(IIngredient * 2)   
			.duration(80)
			.EUt(16)
		.buildAndRegister();     
}
