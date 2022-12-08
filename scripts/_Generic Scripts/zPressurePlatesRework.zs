import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Pressure Plates Rework                                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var PressurePlatesTierI as IItemStack[IIngredient] = {
    <roots:wildwood_slab>: <roots:wildwood_pressure_plate>,
    <twilightforest:twilight_oak_slab>: <twilightforest:twilight_oak_plate>,
    <twilightforest:canopy_slab>: <twilightforest:canopy_plate>,
    <twilightforest:mangrove_slab>: <twilightforest:mangrove_plate>,
    <twilightforest:dark_slab>: <twilightforest:dark_plate>,
    <twilightforest:time_slab>: <twilightforest:time_plate>,
    <twilightforest:trans_slab>: <twilightforest:trans_plate>,
    <twilightforest:mine_slab>: <twilightforest:mine_plate>,
    <twilightforest:sort_slab>: <twilightforest:sort_plate>,
    <twilightforest:mangrove_slab>: <twilightforest:mangrove_plate>,
    <twilightforest:mangrove_slab>: <twilightforest:mangrove_plate>,
    <twilightforest:mangrove_slab>: <twilightforest:mangrove_plate>,
    };
for IItemStack, IIngredient in PressurePlatesTierI {
        recipes.remove(IIngredient);

        recipes.addShaped(IIngredient * 2, [[<ore:screwWood>, <ore:gtceHardHammers>, <ore:screwWood>], [IItemStack, <ore:springIron>, IItemStack],[<ore:screwWood>, <ore:gtceScrewdrivers>, <ore:screwWood>]]);

		assembler.recipeBuilder()
			.inputs(IItemStack * 2, <ore:springIron>)
            .fluidInputs(<liquid:iron> * 64)
			.outputs(IIngredient * 2)   
			.duration(100)
			.EUt(7)
		.buildAndRegister();
     
}

var PressurePlatesTierII as IItemStack[IIngredient] = {
    <abyssalcraft:darkstoneslab1>: <abyssalcraft:dspplate>,
    <abyssalcraft:dltslab1>: <abyssalcraft:dltpplate>,
    <mysticalworld:mud_block_slab>: <mysticalworld:mud_block_pressure_plate>,
    <mysticalworld:mud_brick_slab>: <mysticalworld:mud_brick_pressure_plate>,
    <mysticalworld:pearl_slab>: <mysticalworld:pearl_pressure_plate>,
    <abyssalcraft:stone:1>: <abyssalcraft:abypplate>,
    <abyssalcraft:stone:4>: <abyssalcraft:cstonepplate>
    };
for IItemStack, IIngredient in PressurePlatesTierII {
        recipes.remove(IIngredient);

        recipes.addShaped(IIngredient * 2, [[<ore:screwIron>, <ore:gtceHardHammers>, <ore:screwIron>], [IItemStack, <ore:springIron>, IItemStack],[<ore:screwIron>, <ore:gtceScrewdrivers>, <ore:screwIron>]]);

		assembler.recipeBuilder()
			.inputs(IItemStack * 2, <ore:springIron>)
            .fluidInputs(<liquid:iron> * 64)
			.outputs(IIngredient * 2)   
			.duration(100)
			.EUt(7)
		.buildAndRegister();
     
}

var PressurePlatesTierIII as IItemStack[IIngredient] = {
    <ore:ingotSoularium>.firstItem: <enderio:block_painted_pressure_plate:10>,
    <ore:ingotDarkSteel>.firstItem: <enderio:block_painted_pressure_plate:8>,
    <minecraft:obsidian>: <quark:obsidian_pressure_plate>,
    <roots:runestone_slab>: <roots:runestone_pressure_plate>,
    <roots:runestone_brick_slab>: <roots:runestone_brick_pressure_plate>,
    <roots:runestone_brick_alt_slab>: <roots:runestone_brick_alt_pressure_plate>,
    <roots:runed_obsidian_slab>: <roots:runed_obsidian_pressure_plate>,
    <roots:runed_obsidian_brick_slab>: <roots:runed_obsidian_brick_pressure_plate>,
    <roots:runed_obsidian_brick_alt_slab>: <roots:runed_obsidian_brick_alt_pressure_plate>,
    };
for IItemStack, IIngredient in PressurePlatesTierIII {
        recipes.remove(IIngredient);

        recipes.addShaped(IIngredient * 2, [[<ore:screwSteel>, <ore:gtceHardHammers>, <ore:screwSteel>], [IItemStack, <ore:springSteel>, IItemStack],[<ore:screwSteel>, <ore:gtceScrewdrivers>, <ore:screwSteel>]]);

		assembler.recipeBuilder()
			.inputs(IItemStack * 2, <ore:springSteel>)
            .fluidInputs(<liquid:steel> * 64)
			.outputs(IIngredient * 2)   
			.duration(100)
			.EUt(7)
		.buildAndRegister();
     
}