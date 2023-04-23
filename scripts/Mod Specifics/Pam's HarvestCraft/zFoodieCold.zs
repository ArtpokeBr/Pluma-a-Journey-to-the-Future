# Original Script from Cosmic Chaos
# https://github.com/Cosmic-Chaos/Cosmic-Chaos/blob/main/scripts/food_cold.zs

#priority 5
// ^ Ensures this file is run before food.zs to avoid creating duplicate recipes for frozen foods

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeBuilder;
import mods.gregtech.recipe.InputIngredient;
import mods.forestry.Carpenter as Carpenter;

val vacuumFreezerTable as IIngredient[][IItemStack] = {
	<harvestcraft:strawberrysmoothieitem:0>*1: [<harvestcraft:strawberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:strawberrymilkshakeitem:0>*1: [<harvestcraft:strawberryitem:0>*1, <liquid:milk>*250],
	<harvestcraft:starfruitsmoothieitem:0>*1: [<harvestcraft:starfruititem:0>*1, <liquid:ice>*250],
	<harvestcraft:raspberrysmoothieitem:0>*1: [<harvestcraft:raspberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:pomegranatesmoothieitem:0>*1: [<harvestcraft:pomegranateitem:0>*1, <liquid:ice>*250],
	<harvestcraft:plumsmoothieitem:0>*1: [<harvestcraft:plumitem:0>*1, <liquid:ice>*250],
	<harvestcraft:persimmonsmoothieitem:0>*1: [<harvestcraft:persimmonitem:0>*1, <liquid:ice>*250],
	<harvestcraft:pearsmoothieitem:0>*1: [<harvestcraft:pearitem:0>*1, <liquid:ice>*250],
	<harvestcraft:peachsmoothieitem:0>*1: [<harvestcraft:peachitem:0>*1, <liquid:ice>*250],
	<harvestcraft:papayasmoothieitem:0>*1: [<harvestcraft:papayaitem:0>*1, <liquid:ice>*250],
	<harvestcraft:orangesmoothieitem:0>*1: [<harvestcraft:orangeitem:0>*1, <liquid:ice>*250],
	<harvestcraft:melonsmoothieitem:0>*1: [<minecraft:melon:0>*1, <liquid:ice>*250],
	<harvestcraft:mangosmoothieitem:0>*1: [<harvestcraft:mangoitem:0>*1, <liquid:ice>*250],
	<harvestcraft:limesmoothieitem:0>*1: [<harvestcraft:limeitem:0>*1, <liquid:ice>*250],
	<harvestcraft:lemonsmoothieitem:0>*1: [<harvestcraft:lemonitem:0>*1, <liquid:ice>*250],
	<harvestcraft:kiwismoothieitem:0>*1: [<harvestcraft:kiwiitem:0>*1, <liquid:ice>*250],
	<harvestcraft:icecreamitem:0>*1: [<harvestcraft:freshmilkitem:0>*1, <liquid:salt_water>*250],
	<harvestcraft:grapesmoothieitem:0>*1: [<harvestcraft:grapeitem:0>*1, <liquid:ice>*250],
	<harvestcraft:grapefruitsmoothieitem:0>*1: [<harvestcraft:grapefruititem:0>*1, <liquid:ice>*250],
	<harvestcraft:gooseberrysmoothieitem:0>*1: [<harvestcraft:gooseberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:figsmoothieitem:0>*1: [<harvestcraft:figitem:0>*1, <liquid:ice>*250],
	<harvestcraft:durianmilkshakeitem:0>*1: [<harvestcraft:durianitem:0>*1, <liquid:milk>*250],
	<harvestcraft:cranberrysmoothieitem:0>*1: [<harvestcraft:cranberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:coconutsmoothieitem:0>*1: [<harvestcraft:coconutitem:0>*1, <liquid:ice>*250],
	<harvestcraft:chocolatemilkshakeitem:0>*1: [<harvestcraft:cocoapowderitem:0>*1, <liquid:milk>*250],
	<harvestcraft:cherrysmoothieitem:0>*1: [<harvestcraft:cherryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:cherryslushieitem:0>*1: [<harvestcraft:cherryjuiceitem:0>*1, <liquid:ice>*250],
	<harvestcraft:blueberrysmoothieitem:0>*1: [<harvestcraft:blueberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:blackberrysmoothieitem:0>*1: [<harvestcraft:blackberryitem:0>*1, <liquid:ice>*250],
	<harvestcraft:bananasmoothieitem:0>*1: [<harvestcraft:bananaitem:0>*1, <liquid:ice>*250],
	<harvestcraft:bananamilkshakeitem:0>*1: [<harvestcraft:bananaitem:0>*1, <liquid:milk>*250],
	<harvestcraft:apricotsmoothieitem:0>*1: [<harvestcraft:apricotitem:0>*1, <liquid:ice>*250],
	<harvestcraft:applesmoothieitem:0>*1: [<minecraft:apple:0>*1, <liquid:ice>*250],
	<harvestcraft:slimegummiesitem:0>*1: [<harvestcraft:venisonrawitem:0>*1, <liquid:slime>*250],
} as IIngredient[][IItemStack];

for output, inputs in vacuumFreezerTable {
	recipes.remove(output);
	val fluidStack as ILiquidStack = inputs[1]; // Nefarious way of casting because crafttweaker is busted and doesn't let you cast to a subclass
	<recipemap:vacuum_freezer>.recipeBuilder().inputs(inputs[0] * 2).fluidInputs(fluidStack)
		.outputs(output)
		.duration(60).EUt(24).buildAndRegister();
	Carpenter.addRecipe(output, [[inputs[0], inputs[0], null], [null, null, null], [null, null, null]], 120, fluidStack);

}

