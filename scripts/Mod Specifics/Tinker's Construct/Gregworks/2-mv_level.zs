import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

/////////////////////////
// Tinker's Gregstruct //
/////////////////////////

print("---------------MV Tinker's Gregworks Start------------------");

var mv_materials as IItemStack[string] = {
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
	"fluix" : <ore:crystalFluix>.firstItem,
	"restonia_crystal" : <actuallyadditions:item_crystal>,
	"palis_crystal" : <actuallyadditions:item_crystal:1>,
	"diamantine_crystal" : <actuallyadditions:item_crystal:2>,
	"void_crystal" : <actuallyadditions:item_crystal:3>,
	"emeraldic_crystal" : <actuallyadditions:item_crystal:4>,	
	"enori_crystal" : <actuallyadditions:item_crystal:5>,		
	"paper" : <minecraft:paper>,
    //"copper" : <ore:ingotCopper>.firstItem,
	"copper" : <gregtech:meta_ingot:25>,
	"knightslime" : <ore:ingotKnightslime>.firstItem,
	"invar" : <ore:ingotInvar>.firstItem,
	"obsidian" : <minecraft:obsidian>,
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
	"alumite" : <ore:ingotAlumite>.firstItem,
	"cobalt" : <ore:ingotCobalt>.firstItem,
	"manyullyn" : <ore:ingotManyullyn>.firstItem,
	"steel" : <ore:ingotSteel>.firstItem,
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
	//"fluxed_electrum" : <ore:ingotElectrumFlux>.firstItem,
	//"flux_crystal" : <ore:gemCrystalFlux>.firstItem,
	//"treatedwood" : <ore:plankTreatedWood>.firstItem,
	"tin" : <ore:ingotTin>.firstItem,
	"aluminium" : <ore:ingotAluminium>.firstItem,
	"enderium" : <ore:ingotEnderium>.firstItem,
	//"tiberium" : <ore:ingotTiberium>.firstItem,
	//"aurorium" : <ore:ingotAurorium>.firstItem,
	//"prometheum" : <ore:ingotAurorium>.firstItem,
	//"duranite" : <ore:ingotDuranite>.firstItem,
	//"valyrium" : <ore:ingotValyrium>.firstItem,
	//"vibranium" : <ore:ingotVibranium>.firstItem,
	//"terrax" : <ore:ingotTerrax>.firstItem,
	//"palladium" : <ore:ingotPalladium>.firstItem,
	//"uru" : <ore:ingotUru>.firstItem,
	//"eezo" : <ore:ingotEezo>.firstItem,
	//"basalt" : <ore:ingotBasalt>.firstItem,
	//"triberium" : <ore:ingotTriberium>.firstItem,
	//"fractum" : <ore:ingotFractum>.firstItem,
	//"violium" : <ore:ingotViolium>.firstItem,
	//"proxii" : <ore:ingotProxii>.firstItem,
	//"tritonite" : <ore:ingotTritonite>.firstItem,
	//"ignitz" : <ore:ingotIgnitz>.firstItem,
	//"imperomite" : <ore:ingotImperomite>.firstItem,
	//"solarium" : <ore:ingotSolarium>.firstItem,
	//"nihilite" : <ore:ingotNihilite>.firstItem,
	//"adamant" : <ore:ingotAdamant>.firstItem,
	//"dyonite" : <ore:ingotDyonite>.firstItem,
	//"nucleum" : <ore:ingotNucleum>.firstItem,
	//"lumix" : <ore:ingotLumix>.firstItem,
	//"seismum" : <ore:ingotSeismum>.firstItem,
	//"astrium" : <ore:ingotAstrium>.firstItem,
	//"niob" : <ore:ingotNiob>.firstItem,
	//"yrdeen" : <ore:ingotYrdeen>.firstItem,
	//"meteorite" : <ore:ingotMeteorite>.firstItem,
	//"obsidiorite" : <ore:ingotObsidiorite>.firstItem,
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
	"conductive_iron" : <ore:ingotConductiveIron>.firstItem,
	"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,			
	"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	"soularium" : <ore:ingotSoularium>.firstItem,
	"end_steel" : <ore:ingotEndSteel>.firstItem,
	"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,
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

var mv_parts as IData[][IItemStack] = {
	<tconstruct:tough_binding> : [3, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [3, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [8 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [8, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [8, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [8, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [8, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [8, "tconstruct:large_plate"],
    <plustic:pipe_piece> : [8, "plustic:pipe_piece"]
};

for mat, ingot in mv_materials {
	for part, info in mv_parts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300 * info[0])
				.EUt(128)
			.buildAndRegister();

	}
}

###### Arrow Shaft Parts (MV) #####

var arrow_shaft_materials as IItemStack[string] = {
	"bone" : <minecraft:bone>,	
	"blaze" : <minecraft:blaze_rod>,
	"reed" : <minecraft:reeds>,
	"ice" : <minecraft:packed_ice>,		
	"endrod" : <minecraft:end_rod>,
	"enderium" : <ore:ingotEnderium>.firstItem,	
	//"treatedwood" : <ore:plankTreatedWood>.firstItem,
	"tnt" : <minecraft:tnt>,
    "wood" : <ore:plankWood>.firstItem,
	"amber": <ore:gemAmber>.firstItem,
	"dreamwood": <ore:dreamwood>.firstItem,
	"livingwood": <ore:livingwood>.firstItem,
	"fusewood" : <natura:nether_planks:3>,
	"darkwood" : <natura:nether_planks:2>,
	"bloodwood" : <natura:nether_planks:1>,	
	"ghostwood" : <natura:nether_planks>,
	"polyethylene": <mekanism:polyethene:2>,	

	"steeleaf": <ore:ingotSteeleaf>.firstItem,
	"nagascale": <twilightforest:naga_scale>,
	"fierymetal": <ore:ingotFiery>.firstItem,																										
};

var arrow_shaft_part as IData[][IItemStack] = {
    <tconstruct:arrow_shaft> : [2, "tconstruct:arrow_shaft"]
};

for mat, ingot in arrow_shaft_materials {
	for part, info in arrow_shaft_part {
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300 * info[0])
				.EUt(128)
			.buildAndRegister();	
	}
}

print("---------------MV Tinker's Gregworks Finish-----------------");