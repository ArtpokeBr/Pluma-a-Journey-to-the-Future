import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

var HotIngotsThatCanBeCooledWithCryotheum as IItemStack[IIngredient] = {
    <ore:ingotHotBlackBronze>.firstItem: <ore:ingotBlackBronze>.firstItem,
    <ore:ingotHotKanthal>.firstItem: <ore:ingotKanthal>.firstItem,
    <ore:ingotHotModularium>.firstItem: <ore:ingotModularium>.firstItem
    };
for IItemStack, IIngredient in HotIngotsThatCanBeCooledWithCryotheum {

        chemical_bath.recipeBuilder()
			.inputs(IItemStack)
            .fluidInputs(<liquid:cryotheum> * 500)
			.outputs(IIngredient)   
			.duration(120)
			.EUt(40)
		.buildAndRegister();

        chemical_bath.recipeBuilder()
			.inputs(IItemStack)
            .fluidInputs(<liquid:ic2coolant> * 500)
			.outputs(IIngredient)
            .fluidOutputs(<liquid:ic2hot_coolant>*500)
			.duration(120)
			.EUt(40)
		.buildAndRegister(); 
}