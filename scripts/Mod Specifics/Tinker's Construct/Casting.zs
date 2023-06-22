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

// Reworking Casts

var castsAndCasters as IItemStack[IIngredient] = {
    <tconstruct:pan_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}),
    <tconstruct:knife_blade>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}),
    <tconstruct:shovel_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}),
    <tconstruct:bow_limb>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"}),
    <tconstruct:shard>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),
    <tconstruct:bow_string>.withTag({Material: "string"}): <tconstruct:cast>.withTag({PartType: "tconstruct:bow_string"}),
    <tconstruct:kama_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"}),
    <tconstruct:excavator_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}),
    <tconstruct:scythe_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}),
    <tconstruct:binding>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:binding"}),
    <tconevo:part_arcane_focus>.withTag({Material: "silver"}): <tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}),
    <tconstruct:axe_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}),
    <tconstruct:tool_rod>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}),
    <tconstruct:large_sword_blade>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
    <tconstruct:broad_axe_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
    <tconstruct:tough_tool_rod>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
    <tconstruct:large_plate>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}),
    <tconstruct:sword_blade>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}),
    <tconstruct:arrow_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"}),
    <tconstruct:cross_guard>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}),
    <tconstruct:sharpening_kit>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
    <tconstruct:hand_guard>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}),
    <tconstruct:wide_guard>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}),
    <tconstruct:sign_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}),
    <tconstruct:pick_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}),
    <tconstruct:tough_binding>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}),
    <tconstruct:hammer_head>.withTag({Material: "bronze"}): <tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}),
    <gregtech:meta_ingot:260>: <tconstruct:cast_custom>, //Bronze Ingot
    <gregtech:meta_nugget:260>: <tconstruct:cast_custom:1>, //Bronze Nugget
    //<minecraft:emerald>: <tconstruct:cast_custom:2>,
    <gregtech:meta_plate:260>: <tconstruct:cast_custom:3>, //Bronze Plate
    <conarm:leggings_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}),
    <conarm:boots_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:boots_core"}),
    <conarm:chest_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:chest_core"}),
    <conarm:armor_plate>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}),
    <conarm:armor_trim>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}),
    <conarm:helmet_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}),
    //<plustic:pipe_piece>.withTag({Material: "steel"}) : <tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}),
    //<plustic:battery_cell>.withTag({Material: "silver"}) : <tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}),
    <conarm:polishing_kit>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}),

    <tcomplement:sledge_head>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "tcomplement:sledge_head"})

    };
for IItemStack, IIngredient in castsAndCasters {
        Casting.removeTableRecipe(IIngredient);
        Casting.addTableRecipe(IIngredient, IItemStack, <liquid:alubrass>, 144, true, 100);
        Casting.addTableRecipe(IIngredient, IItemStack, <liquid:brass>, 144, true, 100);
        // Casting.addTableRecipe(IIngredient, IItemStack, <liquid:gold>, 288, true, 200);
        mods.chisel.Carving.addVariation("tinkers_casts", IIngredient);
}

// Blank Cast specifically
Casting.removeTableRecipe(<tconstruct:cast>);
Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:alubrass>, 144, false, 100);
Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:brass>, 144, false, 100);
// Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:gold>, 288, false, 200);
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>);

//Clay Plate removal
Casting.removeTableRecipe(<ceramics:unfired_clay:9>);

//Gear Cast Removal
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);

//Gem Cast Removal
Casting.removeTableRecipe(<tconstruct:cast_custom:2>);

Casting.removeTableRecipe(<minecraft:emerald>);
Casting.removeBasinRecipe(<minecraft:emerald_block>);

Casting.removeTableRecipe(<minecraft:coal>);
Casting.removeBasinRecipe(<minecraft:coal_block>);

Casting.removeTableRecipe(<minecraft:diamond>);
Casting.removeBasinRecipe(<minecraft:diamond_block>);

//Arrow Shaft Specifically
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}));

//Fletching Specifically
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "tconstruct:fletching"}));
Casting.removeTableRecipe(<tconstruct:cast>.withTag({PartType: "tconstruct:fletching"}), <liquid:titanium>);