import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

/////////////////////////
// Tinker's Gregstruct //
/////////////////////////

print("---------------LV Tinker's Gregworks Start------------------");

var lv_materials as IItemStack[string] = {
	"fluix" : <ore:crystalFluix>.firstItem,
	"restonia_crystal" : <actuallyadditions:item_crystal>,
	"palis_crystal" : <actuallyadditions:item_crystal:1>,
	"diamantine_crystal" : <actuallyadditions:item_crystal:2>,
	"void_crystal" : <actuallyadditions:item_crystal:3>,
	"emeraldic_crystal" : <actuallyadditions:item_crystal:4>,	
	"enori_crystal" : <actuallyadditions:item_crystal:5>,		
	"paper" : <minecraft:paper>,
	"knightslime" : <ore:ingotKnightslime>.firstItem,
    "wood" : <ore:plankWood>.firstItem,
	"flint" : <minecraft:flint>,
	"firewood" : <tconstruct:firewood:1>,
	"prismarine" : <minecraft:prismarine_shard>,
	"black_quartz" : <ore:gemBlackQuartz>.firstItem,
	"cactus" : <minecraft:cactus>,
	"bone" : <minecraft:bone>,
	"slime" : <ore:slimecrystalGreen>.firstItem,
	"endstone" : <minecraft:end_stone>,
	"netherrack" : <minecraft:netherrack>,
	"certus_quartz" : <ore:gemCertusQuartz>.firstItem,
	"stone" : <minecraft:stone>,
	"sponge" : <minecraft:sponge>,
	"blueslime" : <ore:slimecrystalBlue>.firstItem,
	"magmaslime" : <tconstruct:materials:11>,
    "signalum" : <ore:ingotSignalum>.firstItem,
	"platinum" : <ore:ingotPlatinum>.firstItem,
	"cobalt" : <ore:ingotCobalt>.firstItem,
	"manyullyn" : <ore:ingotManyullyn>.firstItem,
	"lumium" : <ore:ingotLumium>.firstItem,
	"ardite" : <ore:ingotArdite>.firstItem,
    "iridium" : <ore:ingotIridium>.firstItem,
	"constantan" : <ore:ingotConstantan>.firstItem,

	"boron" : <ore:ingotBoron>.firstItem,
	"tough" : <ore:ingotTough>.firstItem,
	"hard_carbon" : <ore:ingotHardCarbon>.firstItem,
	"boron_nitride" : <ore:gemBoronNitride>.firstItem,
	"thorium" : <ore:ingotThorium>.firstItem,
	"uranium" : <ore:ingotUranium>.firstItem,
	"magnesium" : <ore:ingotMagnesium>.firstItem,
	"chocolate" : <ore:ingotChocolate>.firstItem,

	"sky_stone" : <appliedenergistics2:sky_stone_block>,
	"fluix_steel" : <threng:material>,
	"apatite" : <ore:gemApatite>.firstItem,
	"osmium" : <gregtech:meta_ingot:75>,
	//""fluxed_electrum" : <ore:ingotElectrumFlux>.firstItem,
	//""flux_crystal" : <ore:gemCrystalFlux>.firstItem,
	//""treatedwood" : <ore:plankTreatedWood>.firstItem,
	"aluminium" : <ore:ingotAluminium>.firstItem,
	"enderium" : <ore:ingotEnderium>.firstItem,
	//""tiberium" : <ore:ingotTiberium>.firstItem,
	//""aurorium" : <ore:ingotAurorium>.firstItem,
	//""prometheum" : <ore:ingotAurorium>.firstItem,
	//""duranite" : <ore:ingotDuranite>.firstItem,
	//""valyrium" : <ore:ingotValyrium>.firstItem,
	//""vibranium" : <ore:ingotVibranium>.firstItem,
	//""terrax" : <ore:ingotTerrax>.firstItem,
	//""palladium" : <ore:ingotPalladium>.firstItem,
	//""uru" : <ore:ingotUru>.firstItem,
	//""eezo" : <ore:ingotEezo>.firstItem,
	//""basalt" : <ore:ingotBasalt>.firstItem,
	//""triberium" : <ore:ingotTriberium>.firstItem,
	//""fractum" : <ore:ingotFractum>.firstItem,
	//""violium" : <ore:ingotViolium>.firstItem,
	//""proxii" : <ore:ingotProxii>.firstItem,
	//""tritonite" : <ore:ingotTritonite>.firstItem,
	//""ignitz" : <ore:ingotIgnitz>.firstItem,
	//""imperomite" : <ore:ingotImperomite>.firstItem,
	//""solarium" : <ore:ingotSolarium>.firstItem,
	//""nihilite" : <ore:ingotNihilite>.firstItem,
	//""adamant" : <ore:ingotAdamant>.firstItem,
	//""dyonite" : <ore:ingotDyonite>.firstItem,
	//""nucleum" : <ore:ingotNucleum>.firstItem,
	//""lumix" : <ore:ingotLumix>.firstItem,
	//""seismum" : <ore:ingotSeismum>.firstItem,
	//""astrium" : <ore:ingotAstrium>.firstItem,
	//""niob" : <ore:ingotNiob>.firstItem,
	//""yrdeen" : <ore:ingotYrdeen>.firstItem,
	//""meteorite" : <ore:ingotMeteorite>.firstItem,
	//""obsidiorite" : <ore:ingotObsidiorite>.firstItem,
	"steel" : <ore:ingotSteel>.firstItem,
	"fusewood" : <natura:nether_planks:3>,
	"darkwood" : <natura:nether_planks:2>,
	"bloodwood" : <natura:nether_planks:1>,	
	"ghostwood" : <natura:nether_planks>,
	"refined_obsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"osgloglas" : <ore:ingotOsgloglas>.firstItem,
	"carbon_fiber" : <gregtech:meta_item_1:501>,

	"tar_slime": <fossil:tardrop>*4,
	"ancient_metal": <ore:ingotAncientMetal>.firstItem,

	"elementium": <ore:ingotElementium>.firstItem,
	"terrasteel": <ore:ingotTerrasteel>.firstItem,
	"manasteel": <ore:ingotManasteel>.firstItem,
	"livingwood": <botania:livingwood>,
	"livingrock": <botania:livingrock>,
	"dreamwood": <botania:dreamwood>,
	"mirion": <ore:ingotMirion>.firstItem,

	"xu_magical_wood": <extrautils2:decorativesolidwood:1>,
	"xu_demonic_metal": <extrautils2:ingredients:11>,
	"xu_enchanted_metal": <extrautils2:ingredients:12>,
	"xu_evil_metal": <extrautils2:ingredients:17>,

	"polyethylene": <mekanism:polyethene:2>,

	"fierymetal": <ore:ingotFiery>.firstItem,
	"knightmetal": <ore:ingotKnightmetal>.firstItem,
	"steeleaf": <ore:ingotSteeleaf>.firstItem,
	"nagascale": <twilightforest:naga_scale>,

	"thaumium": <ore:ingotThaumium>.firstItem,
	"void_metal": <ore:ingotVoid>.firstItem,

	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"bound_metal": <ore:ingotBoundMetal>.firstItem,
	"energetic_metal": <ore:ingotEnergium>.firstItem,
	"universal_metal": <ore:ingotUUMatter>.firstItem,

	"draconium" : <ore:ingotDraconium>.firstItem,
	"wyvern_metal" : <ore:ingotWyvernMetal>.firstItem,
	"draconic_metal" : <ore:ingotDraconicMetal>.firstItem,
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem,

	// "abyssalnite" : <ore:ingotAbyssalnite>.firstItem,
	// "refined_coralium" : <ore:ingotLiquifiedCoralium>.firstItem,
	// "dreadium" : <ore:ingotDreadium>.firstItem,

	"energetic_alloy" : <ore:ingotEnergeticAlloy>.firstItem,
	"vibrant_alloy" : <ore:ingotVibrantAlloy>.firstItem,
	"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,			
	"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	"soularium" : <ore:ingotSoularium>.firstItem,
	"end_steel" : <ore:ingotEndSteel>.firstItem,
	"electrical_steel" : <ore:ingotElectricalSteel>.firstItem,

	"neutronium" : <ore:ingotNeutronium>.firstItem,
	"crystal_matrix" : <ore:ingotCrystalMatrix>.firstItem,
	"infinity_metal" : <ore:ingotInfinityMetal>.firstItem,

	"rubber" : <industrialforegoing:plastic>,
	"meat_metal" : <tconevo:edible:1>,
	"pink_slime" : <tconevo:material:1>,
	"pink_metal" : <industrialforegoing:pink_slime_ingot>,
	"essence_metal" : <tconevo:metal:15>,	

	"advanced_alloy" : <ore:plateAdvancedAlloy>.firstItem

	// "ma.soulium" : <ore:ingotSoulium>.firstItem,
	// "ma.prosperity" : <ore:ingotBaseEssence>.firstItem,
	// "ma.inferium" : <ore:ingotInferium>.firstItem,
	// "ma.prudentium" : <ore:ingotPrudentium>.firstItem,
	// "ma.intermedium" : <ore:ingotIntermedium>.firstItem,
	// "ma.superium" : <ore:ingotSuperium>.firstItem,
	// "ma.supremium" : <ore:ingotSupremium>.firstItem

};

var lv_parts as IData[][IItemStack] = {
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

for mat, ingot in lv_materials {
	for part, info in lv_parts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300 * info[0])
				.EUt(32)
			.buildAndRegister();
	}
}

print("---------------LV Tinker's Gregworks Finish-----------------");