import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.manufactory as Manufactory;

# Manufactory Cleaning
val CleaningManufactory = [
<ore:dustClay>*2,
<ore:crystalCertusQuartz>*2,
<ore:dustQuartz>,
<ore:ingotSilicon>,
<ore:itemSilicon>
]
 as IIngredient [];

for i in CleaningManufactory {
	Manufactory.removeRecipeWithOutput(i);
}
# Alternate Silicon Types ===========================================

//All Silicons except for the GT One are now considered Silicon Balls.

<projectred-core:resource_item:301>.displayName = "Large Silicon Ball";
<nuclearcraft:gem:6>.displayName = "Silicon Ball";
<enderio:item_material:5>.displayName = "Small Silicon Ball";

# Large Silicon Ball
alloy.recipeBuilder()
	.inputs(<ore:ingotSilicon> * 2)
    .notConsumable(<gregtech:meta_item_1:17>)
	.outputs(<projectred-core:resource_item:301>)   
	.duration(80)
	.EUt(16)
.buildAndRegister();

alloy.recipeBuilder()
	.inputs(<ore:dustSilicon> * 2)
    .notConsumable(<gregtech:meta_item_1:17>)
	.outputs(<projectred-core:resource_item:301>)   
	.duration(80)
	.EUt(16)
.buildAndRegister();

# Normal Silicon Ball
Manufactory.addRecipe(<ore:ingotSilicon>, <nuclearcraft:gem:6>);
Manufactory.addRecipe(<ore:blockClay>, <nuclearcraft:gem:6>*2);

# Small Silicon Ball (Not Obtainable since it would break balance currently)
//Manufactory.addRecipe(<ore:ingotSilicon>, <enderio:item_material:5>*4);
