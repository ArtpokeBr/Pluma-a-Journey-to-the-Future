import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

/////////////////////////
// Tinker's Gregstruct //
/////////////////////////

print("---------------HV Tinker's Gregworks Start------------------");

var laser_medium_materials as IItemStack[string] = {
	"prismarine" : <ore:gemPrismarine>.firstItem,
	"blaze" : <ore:stickBlaze>.firstItem,
	"endrod" : <minecraft:end_rod>,
	"palis_crystal" : <actuallyadditions:item_crystal:1>,
	"diamantine_crystal" : <actuallyadditions:item_crystal:2>,
	"emeraldic_crystal" : <actuallyadditions:item_crystal:4>,
	"certus_quartz" : <ore:gemCertusQuartz>.firstItem,
	"fluix" : <ore:crystalFluix>.firstItem,
	"refined_obsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"infinity_metal" : <ore:ingotInfinityMetal>.firstItem,
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem
																										
};

var laser_medium_part as IData[][IItemStack] = {
    <plustic:laser_medium> : [16, "plustic:laser_medium"]
};

for mat, ingot in laser_medium_materials {
	for part, info in laser_medium_part {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			<recipemap:laser_engraver>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(500 * info[0])
				.EUt(512)
			.buildAndRegister();	
	}
}

var battery_cell_materials as IItemStack[string] = {
	"stone" : <minecraft:stone>,
	"manyullyn" : <ore:ingotManyullyn>.firstItem,
    "copper" : <ore:ingotCopper>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"blaze" : <minecraft:blaze_rod>,
	"endrod" : <minecraft:end_rod>,
	"restonia_crystal" : <actuallyadditions:item_crystal>,
	"enori_crystal" : <actuallyadditions:item_crystal:5>,
	"fluix" : <ore:crystalFluix>.firstItem																												
};

var battery_cell_part as IData[][IItemStack] = {
    <plustic:battery_cell> : [8, "plustic:battery_cell"]
};

for mat, ingot in battery_cell_materials {
	for part, info in battery_cell_part {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(500 * info[0])
				.EUt(512)
			.buildAndRegister();	
	}
}

print("---------------HV Tinker's Gregworks Finish-----------------");