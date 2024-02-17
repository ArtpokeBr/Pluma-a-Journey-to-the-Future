import mods.tconstruct.Casting as Casting;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.chisel.Carving;

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Casting Script                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//Tcomplement Schorched
Casting.removeTableRecipe(<tcomplement:materials:1>, <liquid:stone>);
Casting.removeBasinRecipe(<tcomplement:scorched_block:1>, <liquid:stone> * 72);
Casting.removeBasinRecipe(<tcomplement:scorched_block>, <liquid:stone> * 72);
Casting.removeBasinRecipe(<tcomplement:scorched_slab2:2>, <liquid:stone> * 36);
Casting.removeBasinRecipe(<tcomplement:scorched_block:10>, <liquid:stone> * 72);


// Seared Plate
Casting.addTableRecipe(<contenttweaker:searedplate>, <tconstruct:cast_custom:3>, <liquid:stone>, 144, false, 80);

extruder.recipeBuilder()
    .inputs([<ore:ingotBrickSeared> * 2])
    .notConsumable(<gregtech:meta_item_1:31>)
    .outputs(<contenttweaker:searedplate>)
    .duration(40)
    .EUt(48)
.buildAndRegister();

//Clay Plate removal
Casting.removeTableRecipe(<ceramics:unfired_clay:9>);

Casting.removeTableRecipe(<minecraft:emerald>);
Casting.removeBasinRecipe(<minecraft:emerald_block>);

Casting.removeTableRecipe(<minecraft:coal>);
Casting.removeBasinRecipe(<minecraft:coal_block>);

Casting.removeTableRecipe(<minecraft:diamond>);
Casting.removeBasinRecipe(<minecraft:diamond_block>);




