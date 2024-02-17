import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

/////////////////////////
// Tinker's Gregstruct //
/////////////////////////

print("---------------Primitive Tinker's Gregworks Start------------------");

var primitive_materials as IItemStack[string] = {
	//"lead" : <ore:ingotLead>.firstItem,
	"lead" : <gregtech:meta_ingot:55>,
	"iron" : <minecraft:iron_ingot>,
	"pigiron" : <ore:ingotPigiron>.firstItem,
	"electrum" : <ore:ingotElectrum>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"bronze" : <ore:ingotBronze>.firstItem,
	"invar" : <ore:ingotInvar>.firstItem,
	//"nickel" : <ore:ingotNickel>.firstItem,
	"nickel" : <gregtech:meta_ingot:69>,		
    //"copper" : <ore:ingotCopper>.firstItem,
	"copper" : <gregtech:meta_ingot:25>,
	"invar" : <ore:ingotInvar>.firstItem,
	"obsidian" : <minecraft:obsidian>,
	"alumite" : <ore:ingotAlumite>.firstItem,
	"tin" : <ore:ingotTin>.firstItem,

	"conductive_iron" : <ore:ingotConductiveIron>.firstItem,		
	"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,

};

var primitive_parts as IData[][IItemStack] = {
	<tconstruct:tool_rod> : [1, "tconstruct:tool_rod"],
	<tconstruct:pick_head> : [2, "tconstruct:pick_head"],
	<tconstruct:shovel_head> : [2, "tconstruct:shovel_head"],
	<tconstruct:axe_head> : [2, "tconstruct:axe_head"],
	<tconstruct:sword_blade> : [2, "tconstruct:sword_blade"],
	<tconstruct:kama_head> : [2, "tconstruct:kama_head"],
	<tconstruct:wide_guard> : [1 , "tconstruct:wide_guard"],
	<tconstruct:hand_guard> : [1, "tconstruct:hand_guard"],
	<tconstruct:binding> : [1, "tconstruct:binding"],
	<tconstruct:pan_head> : [3, "tconstruct:pan_head"],
	<tconstruct:sign_head> : [3, "tconstruct:sign_head"],
	<tconstruct:sharpening_kit> : [2, "tconstruct:sharpening_kit"],
	<tconstruct:bow_limb> : [3, "tconstruct:bow_limb"],
	<tconstruct:arrow_head> : [2, "tconstruct:arrow_head"],
    <tconstruct:knife_blade> : [1, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [1, "tconstruct:cross_guard"],
	<tcomplement:sledge_head> : [3, "tcomplement:sledge_head"]
};

for mat, ingot in primitive_materials {
	for part, info in primitive_parts {
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300 * info[0])
				.EUt(32)
			.buildAndRegister();
	}
}

print("---------------Primitive Tinker's Gregworks Finish-----------------");