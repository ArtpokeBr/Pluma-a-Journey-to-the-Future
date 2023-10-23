import mods.pyrotech.Campfire as Campfire;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Campfire Fixes
val CampfireFixes as IItemStack[][IIngredient] = {
	<pyrotech:marshmallow>   : [<pyrotech:marshmallow_roasted>]
};

for IIngredient, IItemStack in CampfireFixes {
    val itemStacks = IItemStack[0] as IItemStack;

    //Campfire.addRecipe("roasted_" ~ itemStacks.name ~ "_recipe", itemStacks/*recipe output*/, IIngredient/*recipe input*/);
    furnace.addRecipe(itemStacks, IIngredient);

}

