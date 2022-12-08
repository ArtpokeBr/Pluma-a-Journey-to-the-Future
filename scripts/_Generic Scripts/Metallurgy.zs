import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
//import mods.thaumcraft.Crucible;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


// Gems ==================================================================

var autoclaveMapExisting as IOreDictEntry[IOreDictEntry] = {
	<ore:dustCertusQuartz> : <ore:gemCertusQuartz>,
	<ore:dustQuartzite> : <ore:gemQuartzite>,
	<ore:dustCinnabar> : <ore:gemCinnabar>,
	<ore:dustSodalite> : <ore:gemSodalite>,
	<ore:dustNetherQuartz> : <ore:gemNetherQuartz>,
	<ore:dustLapis> : <ore:gemLapis>,
	<ore:dustApatite> : <ore:gemApatite>
};

for dust, gem in autoclaveMapExisting {
    furnace.remove(gem.firstItem);
}

var autoclaveMapNew as IOreDictEntry[IOreDictEntry] = {
	<ore:dustBlackQuartz> : <ore:gemBlackQuartz>,
	<ore:dustMonazite> : <ore:gemMonazite>,
	<ore:dustDiamond> : <ore:gemDiamond>,
	<ore:dustGreenSapphire> : <ore:gemGreenSapphire>,
	<ore:dustRutile> : <ore:gemRutile>,
	<ore:dustRuby> : <ore:gemRuby>,
	<ore:dustSapphire> : <ore:gemSapphire>,
	<ore:dustOlivine> : <ore:gemOlivine>,
	<ore:dustOpal> : <ore:gemOpal>,
	<ore:dustEmerald> : <ore:gemEmerald>,
	<ore:dustEnderPearl> : <ore:gemEnderPearl>,
	<ore:dustTopaz> : <ore:gemTopaz>,
	//<ore:dustJasper> : <ore:gemJasper>,
	<ore:dustGarnetRed> : <ore:gemGarnetRed>,
	<ore:dustAquamarine> : <ore:gemAquamarine>,
	<ore:dustFluix>: <ore:crystalFluix>

};

for dust, gem in autoclaveMapNew {
    furnace.remove(gem.firstItem);

	autoclave.recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:water> * 200)
    	.chancedOutput(gem.firstItem, 7000, 2700)
    	.duration(2000)
    	.EUt(24)
    	.buildAndRegister();

	autoclave.recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:distilled_water> * 200)
    	.chancedOutput(gem.firstItem, 9000, 3000)
    	.duration(1000)
    	.EUt(24)
    	.buildAndRegister();

	autoclave.recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    	.outputs(gem.firstItem)
    	.duration(100)
    	.EUt(24)
    .buildAndRegister();
}

// ==========================================================
