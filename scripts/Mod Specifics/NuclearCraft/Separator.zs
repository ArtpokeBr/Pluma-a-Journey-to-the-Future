import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Separator as Separator;

# Separator Cleaning ==============================================================

#Fixing Incorrect Uranium Recipes (Currently they are outputing ingots instead of isotopes)
Separator.removeRecipeWithOutput(<ore:ingotUranium238>*9, <ore:ingotUranium235>);

Separator.removeRecipeWithOutput(<ore:ingotUranium235>, <ore:dustZirconium>);
Separator.removeRecipeWithOutput(<ore:ingotUranium235>, <ore:dustGraphite>);

Separator.removeRecipeWithOutput(<ore:ingotUranium238>, <ore:dustZirconium>);
Separator.removeRecipeWithOutput(<ore:ingotUranium238>, <ore:dustGraphite>);


#Fixing Incorrect Plutonium Recipes (Currently they are outputing ingots instead of isotopes)

Separator.removeRecipeWithOutput(<ore:ingotPlutonium239>, <ore:dustZirconium>);
Separator.removeRecipeWithOutput(<ore:ingotPlutonium239>, <ore:dustGraphite>);

Separator.removeRecipeWithOutput(<ore:ingotPlutonium241>, <ore:dustZirconium>);
Separator.removeRecipeWithOutput(<ore:ingotPlutonium241>, <ore:dustGraphite>);

// ==

# Uranium
Separator.addRecipe(<nuclearcraft:uranium:9>, <ore:dustUranium235>, <ore:dustZirconium>);
Separator.addRecipe(<nuclearcraft:uranium:6>, <ore:dustUranium235>, <ore:dustGraphite>);

Separator.addRecipe(<nuclearcraft:uranium:14>, <ore:dustUranium238>, <ore:dustZirconium>);
Separator.addRecipe(<nuclearcraft:uranium:11>, <ore:dustUranium238>, <ore:dustGraphite>);

# Plutonium
Separator.addRecipe(<nuclearcraft:plutonium:9>, <ore:dustPlutonium239>, <ore:dustZirconium>);
Separator.addRecipe(<nuclearcraft:plutonium:6>, <ore:dustPlutonium239>, <ore:dustGraphite>);

Separator.addRecipe(<nuclearcraft:plutonium:14>, <ore:dustPlutonium241>, <ore:dustZirconium>);
Separator.addRecipe(<nuclearcraft:plutonium:11>, <ore:dustPlutonium241>, <ore:dustGraphite>);

// ================================================================================