import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import mods.tconstruct.Casting as Casting;

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
    //<tconevo:part_arcane_focus>.withTag({Material: "silver"}): <tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}),
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
    <plustic:pipe_piece>.withTag({Material: "steel"}) : <tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}),
    <plustic:battery_cell>.withTag({Material: "silver"}) : <tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}),
    <tcomplement:sledge_head>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "tcomplement:sledge_head"})

    };
for IItemStack, IIngredient in castsAndCasters {
    Casting.removeTableRecipe(IIngredient);
    Casting.addTableRecipe(IIngredient, IItemStack, <liquid:alubrass>, 144, true, 100);
    Casting.addTableRecipe(IIngredient, IItemStack, <liquid:brass>, 144, true, 100);
    // Casting.addTableRecipe(IIngredient, IItemStack, <liquid:gold>, 288, true, 200);
    mods.chisel.Carving.addVariation("tinkers_casts", IIngredient);
}

<tconstruct:cast>.addTooltip(format.white("Incompatible with the ") + format.green("IChisel") + format.white("."));

// Blank Cast specifically
Casting.removeTableRecipe(<tconstruct:cast>);
Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:alubrass>, 144, false, 100);
Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:brass>, 144, false, 100);
// Casting.addTableRecipe(<tconstruct:cast>, null, <liquid:gold>, 288, false, 200);
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>);

//Gear Cast Removal
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);

//Gem Cast Removal
Casting.removeTableRecipe(<tconstruct:cast_custom:2>);

//Arrow Shaft Specifically
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:arrow_shaft>.withTag({Material: "fierymetal"}));

//Fletching Specifically
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "tconstruct:fletching"}));

//Arcane Focus Specifically
mods.jei.JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}));
<ore:cast>.remove(<tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}));

//Laser Gun Specifically
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}));
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "plustic:laser_medium"}));
mods.chisel.Carving.addVariation("tinkers_casts", <tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}));