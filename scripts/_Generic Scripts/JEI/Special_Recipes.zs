# Original Author: WaitingIdly
# Original Script: https://github.com/Divine-Journey-2/Divine-Journey-2/blob/main/overrides/scripts/ActivateBlockJEI.zs
# Adapted by: ArtpokeBr

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING Special_Recipes.zs");

val special_recipe = <assembly:special_recipes>;
special_recipe.addJEICatalyst(<evilcraft:exalted_crafter:1>.withTag({
    display:{
        Name: "§r§cSpecial Recipes"
    },
}));
special_recipe.setJEIItemSlot(0, 0, "item_input_1", SlotVisual.itemSlot());
special_recipe.setJEIItemSlot(1, 0, "item_input_2", SlotVisual.itemSlot());
special_recipe.setJEIItemSlot(2, 0, "item_input_3", SlotVisual.itemSlot());
special_recipe.setJEIItemSlot(3, 0, "item_input_4", SlotVisual.itemSlot());
special_recipe.setJEIItemSlot(4, 0, "item_input_5", SlotVisual.itemSlot());
special_recipe.setJEIItemSlot(5, 0, "item_input_6", SlotVisual.itemSlot());
special_recipe.setJEIDecoration(6, 0, "plus_sight", SlotVisual.arrowRight());
special_recipe.setJEIItemSlot(7, 0, "block_entity", SlotVisual.itemSlot());
special_recipe.setJEIDecoration(8, 0, "indicator_arrow", SlotVisual.arrowRight());
special_recipe.setJEIItemSlot(9, 0, "item_output", SlotVisual.itemSlot());


function addSpecialRecipe(item_input_1 as IIngredient, item_input_2 as IIngredient, item_input_3 as IIngredient, item_input_4 as IIngredient, item_input_5 as IIngredient, item_input_6 as IIngredient, blockEntity as IIngredient, output as IItemStack) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("item_output", output);
    });

    recipe.requireItem("block_entity", blockEntity);
    recipe.requireItem("item_input_1", item_input_1);
    recipe.requireItem("item_input_2", item_input_2);
    recipe.requireItem("item_input_3", item_input_3);
    recipe.requireItem("item_input_4", item_input_4);
    recipe.requireItem("item_input_5", item_input_5);
    recipe.requireItem("item_input_6", item_input_6);

    <assembly:special_recipes>.addJEIRecipe(recipe);
}

// Salis Mundus Recipe
val visCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}], display:{Name:"§r§dAny Vis Crystal"}});
addSpecialRecipe(visCrystal, visCrystal, visCrystal, <minecraft:redstone>, <minecraft:flint>, <minecraft:bowl>, <ore:craftingTableWood>, <thaumcraft:salis_mundus>);

print("ENDING Special_Recipes.zs");
