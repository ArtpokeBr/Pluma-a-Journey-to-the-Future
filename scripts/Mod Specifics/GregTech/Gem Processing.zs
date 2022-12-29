import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
//import mods.thaumcraft.Crucible;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.bloodmagic.AlchemyArray as AlchemyArray;

    // Certus Quartz * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustCertusQuartz>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustCertusQuartz>], [<liquid:water> * 250]).remove();
    // Cinnabar * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustCinnabar>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustCinnabar>], [<liquid:water> * 250]).remove();
    // Lazurite * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustLazurite>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustLazurite>], [<liquid:water> * 250]).remove();
    // Sodalite * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustSodalite>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustSodalite>], [<liquid:water> * 250]).remove();
    // Nether Quartz * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustNetherQuartz>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustNetherQuartz>], [<liquid:water> * 250]).remove();
    // Quartzite * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustQuartzite>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustQuartzite>], [<liquid:water> * 250]).remove();
    // Lapis Lazuli * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustLapis>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustLapis>], [<liquid:water> * 250]).remove();
    // Apatite * 1
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustApatite>], [<liquid:distilled_water> * 50]).remove();
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustApatite>], [<liquid:water> * 250]).remove();
    // Monazite * 1 
    <recipemap:autoclave>.findRecipe(24, [<metaitem:dustMonazite>], [<liquid:water> * 250]).remove();
	<recipemap:autoclave>.findRecipe(24, [<metaitem:dustMonazite>], [<liquid:distilled_water> * 50]).remove();

// Vanilla Gems in the Alchemy Array

var VanillaGems as IOreDictEntry[IOreDictEntry] = {
	<ore:oreDiamond> : <ore:gemDiamond>,
	<ore:oreEmerald> : <ore:gemEmerald>,
	<ore:oreLapis> : <ore:gemLapis>,
	<ore:oreCoal> : <ore:gemCoal>,
	<ore:oreNetherQuartz> : <ore:gemNetherQuartz>
};

for ore, gem in VanillaGems {

	hammer.recipeBuilder()
    	.inputs(ore.firstItem)
    	.chancedOutput(gem.firstItem*2, 5000, 150)
    	.duration(2000)
    	.EUt(4)
    .buildAndRegister();
}



# Old Script

// // Gems ==================================================================

// var autoclaveMapExisting as IOreDictEntry[IOreDictEntry] = {
// 	<ore:dustCertusQuartz> : <ore:gemCertusQuartz>,
// 	<ore:dustQuartzite> : <ore:gemQuartzite>,
// 	<ore:dustCinnabar> : <ore:gemCinnabar>,
// 	<ore:dustSodalite> : <ore:gemSodalite>,
// 	<ore:dustNetherQuartz> : <ore:gemNetherQuartz>,
// 	<ore:dustLapis> : <ore:gemLapis>,
// 	<ore:dustApatite> : <ore:gemApatite>
// };

// for dust, gem in autoclaveMapExisting {
//     furnace.remove(gem.firstItem);
// }

// var autoclaveMapNew as IOreDictEntry[IOreDictEntry] = {
// 	<ore:dustBlackQuartz> : <ore:gemBlackQuartz>,
// 	<ore:dustMonazite> : <ore:gemMonazite>,
// 	<ore:dustDiamond> : <ore:gemDiamond>,
// 	<ore:dustGreenSapphire> : <ore:gemGreenSapphire>,
// 	<ore:dustRutile> : <ore:gemRutile>,
// 	<ore:dustRuby> : <ore:gemRuby>,
// 	<ore:dustSapphire> : <ore:gemSapphire>,
// 	<ore:dustOlivine> : <ore:gemOlivine>,
// 	<ore:dustOpal> : <ore:gemOpal>,
// 	<ore:dustEmerald> : <ore:gemEmerald>,
// 	<ore:dustEnderPearl> : <ore:gemEnderPearl>,
// 	<ore:dustTopaz> : <ore:gemTopaz>,
// 	//<ore:dustJasper> : <ore:gemJasper>,
// 	<ore:dustGarnetRed> : <ore:gemGarnetRed>,
// 	<ore:dustAquamarine> : <ore:gemAquamarine>,
// 	<ore:dustFluix>: <ore:crystalFluix>,
// 	<ore:dustLapis>: <ore:gemLapis>,

// };

// for dust, gem in autoclaveMapNew {
//     furnace.remove(gem.firstItem);

// 	autoclave.recipeBuilder()
//     	.inputs(dust)
//     	.fluidInputs(<liquid:water> * 200)
//     	.chancedOutput(gem.firstItem, 7000, 2700)
//     	.duration(2000)
//     	.EUt(24)
//     	.buildAndRegister();

// 	autoclave.recipeBuilder()
//     	.inputs(dust)
//     	.fluidInputs(<liquid:distilled_water> * 200)
//     	.chancedOutput(gem.firstItem, 9000, 3000)
//     	.duration(1000)
//     	.EUt(24)
//     	.buildAndRegister();

// 	autoclave.recipeBuilder()
//     	.inputs(dust)
//     	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
//     	.outputs(gem.firstItem)
//     	.duration(100)
//     	.EUt(24)
//     .buildAndRegister();
// }

// ==========================================================
