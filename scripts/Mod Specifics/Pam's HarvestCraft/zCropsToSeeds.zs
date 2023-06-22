import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

# Remember that it must be in the correct order of the array, or incorrect recipes may be generated.

var CropsToSeeds as IItemStack[IIngredient] = {
    <minecraft:wheat>: <minecraft:wheat_seeds>,
    <randomthings:ingredient:10>: <randomthings:lotusseeds>,
    <natura:materials>: <natura:overworld_seeds>,
    <natura:materials:3>: <natura:overworld_seeds:1>

    };
for IItemStack, IIngredient in CropsToSeeds {
        # [Seeds] from [Crop]
        craft.shapeless(IIngredient, "W", {
        "W": IItemStack,
        });
}


