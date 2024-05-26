import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.pressurizer as Pressurizer;

# Pressurizer Cleaning
val CleaningPressurizer = [
<nuclearcraft:gem:4>,
<nuclearcraft:gem:3>,
<nuclearcraft:gem:2>,
]
 as IIngredient [];

for i in CleaningPressurizer {
	Pressurizer.removeRecipeWithOutput(i);
}