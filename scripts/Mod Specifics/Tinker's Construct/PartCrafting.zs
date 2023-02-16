import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

print("---------------Tinkers Start------------------");

/////////////////////////
// Tinker's Gregstruct //
/////////////////////////

##### Tools that can still be casted ####

var ToolMaterialsThatCanBeCasted as IItemStack[string] = {
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

	//"conductive_iron" : <ore:ingotConductiveIron>.firstItem,		
	//"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,

};

var TinkerPartsThatCanBeCasted as IData[][IItemStack] = {
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
	<tconstruct:cross_guard> : [1, "tconstruct:cross_guard"]
};

for mat, ingot in ToolMaterialsThatCanBeCasted {
	for part, info in TinkerPartsThatCanBeCasted {
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(32)
			.buildAndRegister();
	}
}

#### General Tool Parts (LV) ######

var ToolMaterials as IItemStack[string] = {
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
	"emerald_plustic" : <minecraft:emerald>,
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
	"titanium" : <gregtech:meta_ingot:113>,
	"refined_obsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"osgloglas" : <ore:ingotOsgloglas>.firstItem,
	// "osmiridium" : <ore:ingotOsmiridium>.firstItem,

	"tar_slime": <fossil:tardrop>*4,
	"ancient_metal": <ore:ingotAncientMetal>.firstItem,

	"elementium": <ore:ingotElementium>.firstItem,
	"terrasteel": <ore:ingotTerrasteel>.firstItem,
	"manasteel": <ore:ingotManasteel>.firstItem,
	"livingwood": <botania:livingwood>,
	"livingrock": <botania:livingrock>,
	"dreamwood": <botania:dreamwood>,
	"mirion": <plustic:mirioningot>,

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

	"aquamarine": <ore:gemAquamarine>.firstItem,
	"starmetal": <ore:ingotAstralStarmetal>.firstItem,

	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"bound_metal": <ore:ingotBoundMetal>.firstItem,

	"draconium" : <ore:ingotDraconium>.firstItem,
	"wyvern_metal" : <ore:ingotWyvernMetal>.firstItem,
	"draconic_metal" : <ore:ingotDraconicMetal>.firstItem,
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem,

	"abyssalnite" : <ore:ingotAbyssalnite>.firstItem,
	"refined_coralium" : <ore:ingotLiquifiedCoralium>.firstItem,
	"dreadium" : <ore:ingotDreadium>.firstItem,

	//"energetic_alloy" : <ore:ingotEnergeticAlloy>.firstItem,
	//"vibrant_alloy" : <ore:ingotVibrantAlloy>.firstItem,
	//"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	//"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,			
	//"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	//"soularium" : <ore:ingotSoularium>.firstItem,
	//"end_steel" : <ore:ingotEndSteel>.firstItem,
	//"electrical_steel" : <ore:ingotElectricalSteel>.firstItem

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

var TinkerParts as IData[][IItemStack] = {
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
	<tconstruct:cross_guard> : [1, "tconstruct:cross_guard"]
};

for mat, ingot in ToolMaterials {
	for part, info in TinkerParts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(32)
			.buildAndRegister();
	}
}

##### Advanced Parts (MV) #####

var ToolMaterialsII as IItemStack[string] = {
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
	"emerald_plustic" : <minecraft:emerald>,
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
	"titanium" : <gregtech:meta_ingot:113>,
	"refined_obsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"osgloglas" : <ore:ingotOsgloglas>.firstItem,
	// "osmiridium" : <ore:ingotOsmiridium>.firstItem,

	"tar_slime": <fossil:tardrop>*4,
	"ancient_metal": <ore:ingotAncientMetal>.firstItem,

	"elementium": <ore:ingotElementium>.firstItem,
	"terrasteel": <ore:ingotTerrasteel>.firstItem,
	"manasteel": <ore:ingotManasteel>.firstItem,
	"livingwood": <botania:livingwood>,
	"livingrock": <botania:livingrock>,
	"dreamwood": <botania:dreamwood>,
	"mirion": <plustic:mirioningot>,

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

	"aquamarine": <ore:gemAquamarine>.firstItem,
	"starmetal": <ore:ingotAstralStarmetal>.firstItem,

	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"bound_metal": <ore:ingotBoundMetal>.firstItem,

	"draconium" : <ore:ingotDraconium>.firstItem,
	"wyvern_metal" : <ore:ingotWyvernMetal>.firstItem,
	"draconic_metal" : <ore:ingotDraconicMetal>.firstItem,
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem,

	"abyssalnite" : <ore:ingotAbyssalnite>.firstItem,
	"refined_coralium" : <ore:ingotLiquifiedCoralium>.firstItem,
	"dreadium" : <ore:ingotDreadium>.firstItem,

	//"energetic_alloy" : <ore:ingotEnergeticAlloy>.firstItem,
	//"vibrant_alloy" : <ore:ingotVibrantAlloy>.firstItem,
	//"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	//"conductive_iron" : <ore:ingotConductiveIron>.firstItem,
	//"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,			
	//"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	//"soularium" : <ore:ingotSoularium>.firstItem,
	//"end_steel" : <ore:ingotEndSteel>.firstItem,
	//"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,
	//"electrical_steel" : <ore:ingotElectricalSteel>.firstItem	

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

var TinkerPartsII as IData[][IItemStack] = {
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

for mat, ingot in ToolMaterialsII {
	for part, info in TinkerPartsII {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(128)
			.buildAndRegister();

	}
}

###### Conarm (MV) ######

var ConarmMaterials as IItemStack[string] = {
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
	"emerald_plustic" : <minecraft:emerald>,
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
	"titanium" : <gregtech:meta_ingot:113>,
	"refined_obsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"osgloglas" : <ore:ingotOsgloglas>.firstItem,
	// "osmiridium" : <ore:ingotOsmiridium>.firstItem,

	"tar_slime": <fossil:tardrop>*4,
	"ancient_metal": <ore:ingotAncientMetal>.firstItem,

	"elementium": <ore:ingotElementium>.firstItem,
	"terrasteel": <ore:ingotTerrasteel>.firstItem,
	"manasteel": <ore:ingotManasteel>.firstItem,
	"livingwood": <botania:livingwood>,
	"livingrock": <botania:livingrock>,
	"dreamwood": <botania:dreamwood>,
	"mirion": <plustic:mirioningot>,

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
	"enchanted_fabric": <thaumcraft:fabric>,

	"aquamarine": <ore:gemAquamarine>.firstItem,
	"starmetal": <ore:ingotAstralStarmetal>.firstItem,

	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"bound_metal": <ore:ingotBoundMetal>.firstItem,

	"draconium" : <ore:ingotDraconium>.firstItem,
	"wyvern_metal" : <ore:ingotWyvernMetal>.firstItem,
	"draconic_metal" : <ore:ingotDraconicMetal>.firstItem,
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem,

	"abyssalnite" : <ore:ingotAbyssalnite>.firstItem,
	"refined_coralium" : <ore:ingotLiquifiedCoralium>.firstItem,
	"dreadium" : <ore:ingotDreadium>.firstItem,

	//"energetic_alloy" : <ore:ingotEnergeticAlloy>.firstItem,
	//"vibrant_alloy" : <ore:ingotVibrantAlloy>.firstItem,
	//"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	//"conductive_iron" : <ore:ingotConductiveIron>.firstItem,
	//"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,			
	//"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	//"soularium" : <ore:ingotSoularium>.firstItem,
	//"end_steel" : <ore:ingotEndSteel>.firstItem,
	//"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,
	//"electrical_steel" : <ore:ingotElectricalSteel>.firstItem	

	"neutronium" : <ore:ingotNeutronium>.firstItem,
	"crystal_matrix" : <ore:ingotCrystalMatrix>.firstItem,
	"infinity_metal" : <ore:ingotInfinityMetal>.firstItem,

	"rubber" : <industrialforegoing:plastic>,
	"meat_metal" : <tconevo:edible:1>,
	"pink_slime" : <tconevo:material:1>,
	"pink_metal" : <industrialforegoing:pink_slime_ingot>,
	"essence_metal" : <tconevo:metal:15>,

	"advanced_alloy" : <ore:plateAdvancedAlloy>.firstItem,

	// "ma.soulium" : <ore:ingotSoulium>.firstItem,
	// "ma.prosperity" : <ore:ingotBaseEssence>.firstItem,
	// "ma.inferium" : <ore:ingotInferium>.firstItem,
	// "ma.prudentium" : <ore:ingotPrudentium>.firstItem,
	// "ma.intermedium" : <ore:ingotIntermedium>.firstItem,
	// "ma.superium" : <ore:ingotSuperium>.firstItem,
	// "ma.supremium" : <ore:ingotSupremium>.firstItem							
};

var ConarmParts as IData[][IItemStack] = {
	<conarm:polishing_kit> : [2, "conarm:polishing_kit"],
	<conarm:helmet_core> : [4, "conarm:helmet_core"],
	<conarm:chest_core> : [6 , "conarm:chest_core"],
	<conarm:leggings_core> : [5, "conarm:leggings_core"],
	<conarm:boots_core> : [4, "conarm:boots_core"],
	<conarm:armor_trim> : [1, "conarm:armor_trim"],
	<conarm:armor_plate> : [3, "conarm:armor_plate"]
};

for mat, ingot in ConarmMaterials {
	for part, info in ConarmParts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(32)
			.buildAndRegister();

	}
}

###### Arcane Focus Parts (HV) #####

var ArcaneFocusMaterials as IItemStack[string] = {
	"stone" : <minecraft:stone>,
	"silver" : <ore:ingotSilver>.firstItem,
	"black_quartz" : <ore:gemBlackQuartz>.firstItem,
	"fluix" : <ore:crystalFluix>.firstItem,
	"restonia_crystal" : <actuallyadditions:item_crystal>,
	"palis_crystal" : <actuallyadditions:item_crystal:1>,
	"diamantine_crystal" : <actuallyadditions:item_crystal:2>,
	"void_crystal" : <actuallyadditions:item_crystal:3>,
	"emeraldic_crystal" : <actuallyadditions:item_crystal:4>,	
	"enori_crystal" : <actuallyadditions:item_crystal:5>,
	"certus_quartz" : <ore:gemCertusQuartz>.firstItem,
	"apatite" : <ore:gemApatite>.firstItem,
	//"flux_crystal" : <ore:gemCrystalFlux>.firstItem,
	"platinum" : <ore:ingotPlatinum>.firstItem,
	"lumium" : <ore:ingotLumium>.firstItem,	
	"enderium" : <ore:ingotEnderium>.firstItem,
	"refined_glowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"mana_pearl": <ore:manaPearl>.firstItem,
	"dragonstone": <ore:elvenDragonstone>.firstItem,
	"vibrant_crystal": <ore:itemVibrantCrystal>.firstItem,
	"pulsating_crystal": <ore:itemPulsatingCrystal>.firstItem,
	"amber": <ore:gemAmber>.firstItem,
	"mana_diamond": <ore:manaDiamond>.firstItem,
	"ender_crystal": <ore:itemEnderCrystal>.firstItem,
	"weather_crystal": <ore:itemWeatherCrystal>.firstItem,
	"void_metal": <ore:ingotVoid>.firstItem,
	"aquamarine": <ore:gemAquamarine>.firstItem,
	"thaumium": <ore:ingotThaumium>.firstItem,
	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"quicksilver": <thaumcraft:quicksilver>,
	"wyvern_metal" : <ore:ingotWyvernMetal>.firstItem,
	"draconic_metal" : <ore:ingotDraconicMetal>.firstItem,			
	"chaotic_metal" : <ore:ingotChaoticMetal>.firstItem,

	"neutronium" : <ore:ingotNeutronium>.firstItem,
	"crystal_matrix" : <ore:ingotCrystalMatrix>.firstItem,
	"infinity_metal" : <ore:ingotInfinityMetal>.firstItem,

	"essence_metal" : <tconevo:metal:15>,							
};

var ArcaneFocusParts as IData[][IItemStack] = {
    <tconevo:part_arcane_focus> : [12, "tconevo:part_arcane_focus"]
};

for mat, ingot in ArcaneFocusMaterials {
	for part, info in ArcaneFocusParts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(512)
			.buildAndRegister();
	}
}

###### Battery Cell Parts (HV) #####

var BatteryCellMaterials as IItemStack[string] = {
	"stone" : <minecraft:stone>,
	"manyullyn" : <ore:ingotManyullyn>.firstItem,
    //"copper" : <ore:ingotCopper>.firstItem,
	"copper" : <gregtech:meta_ingot:25>,
	"silver" : <ore:ingotSilver>.firstItem,
	"blaze" : <minecraft:blaze_rod>,
	"endrod" : <minecraft:end_rod>,
	"restonia_crystal" : <actuallyadditions:item_crystal>,
	"enori_crystal" : <actuallyadditions:item_crystal:5>,
	"fluix" : <ore:crystalFluix>.firstItem																												
};

var BatteryCellParts as IData[][IItemStack] = {
    <plustic:battery_cell> : [8, "plustic:battery_cell"]
};

for mat, ingot in BatteryCellMaterials {
	for part, info in BatteryCellParts {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(512)
			.buildAndRegister();	
	}
}

###### Arrow Shaft Parts (MV) #####

var ArrowShaftMaterials as IItemStack[string] = {
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

var ArrowShaftParts as IData[][IItemStack] = {
    <tconstruct:arrow_shaft> : [2, "tconstruct:arrow_shaft"]
};

for mat, ingot in ArrowShaftMaterials {
	for part, info in ArrowShaftParts {
			extruder.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300* info[0])
				.EUt(128)
			.buildAndRegister();	
	}
}

mods.tconstruct.Casting.removeTableRecipe(<tconstruct:arrow_shaft>.withTag({Material: "fierymetal"}));

/*

##### Fletchings #####

//Feather
RecipeBuilder.get("tailor")
  .setShaped([
    [null, null, <ore:feather>],
    [null, <ore:feather>, null],
    [<ore:feather>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:fletching>.withTag({Material: "feather"}))
  .create();

//Leaf
RecipeBuilder.get("tailor")
  .setShaped([
    [null, null, <minecraft:leaves>],
    [null, <minecraft:leaves>, null],
    [<minecraft:leaves>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:fletching>.withTag({Material: "leaf"}))
  .create();

//Slimeleaf
RecipeBuilder.get("tailor")
  .setShaped([
    [null, null, <tconstruct:slime_leaves>],
    [null, <tconstruct:slime_leaves>, null],
    [<tconstruct:slime_leaves>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:fletching>.withTag({Material: "slimeleaf_blue"}))
  .create();

//Slimeleaf Orange
RecipeBuilder.get("tailor")
  .setShaped([
    [null, null, <tconstruct:slime_leaves:2>],
    [null, <tconstruct:slime_leaves:2>, null],
    [<tconstruct:slime_leaves:2>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:fletching>.withTag({Material: "slimeleaf_orange"}))
  .create();

//Slimeleaf Purple
RecipeBuilder.get("tailor")
  .setShaped([
    [null, null, <tconstruct:slime_leaves:1>],
    [null, <tconstruct:slime_leaves:1>, null],
    [<tconstruct:slime_leaves:1>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:fletching>.withTag({Material: "slimeleaf_purple"}))
  .create();

##### Bowstrings #####

//String
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <ore:twine>, <ore:twine>],
    [<ore:twine>, <ore:twine>, null],
    [<ore:twine>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:bow_string>.withTag({Material: "string"}))
  .create();

//Industrial Hemp
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <ore:fiberHemp>, <ore:fiberHemp>],
    [<ore:fiberHemp>, <ore:fiberHemp>, null],
    [<ore:fiberHemp>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:bow_string>.withTag({Material: "hemp"}))
  .create();

//Vine
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <minecraft:vine>, <minecraft:vine>],
    [<minecraft:vine>, <minecraft:vine>, null],
    [<minecraft:vine>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:bow_string>.withTag({Material: "vine"}))
  .create();

//Slimevine Blue
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <tconstruct:slime_vine_blue>, <tconstruct:slime_vine_blue>],
    [<tconstruct:slime_vine_blue>, <tconstruct:slime_vine_blue>, null],
    [<tconstruct:slime_vine_blue>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:bow_string>.withTag({Material: "slimevine_blue"}))
  .create();

//Slimevine Purple
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <tconstruct:slime_vine_purple>, <tconstruct:slime_vine_purple>],
    [<tconstruct:slime_vine_purple>, <tconstruct:slime_vine_purple>, null],
    [<tconstruct:slime_vine_purple>, null, null]])
  .addTool(<ore:artisansShears>, 5)
  .addOutput(<tconstruct:bow_string>.withTag({Material: "slimevine_purple"}))
  .create();

*/

##### Laser Mediums (HV) #####

//Prismarine Laser
engraver.recipeBuilder()
    .inputs(<ore:gemPrismarine> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "prismarine"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Blazerod Laser
engraver.recipeBuilder()
    .inputs(<ore:stickBlaze> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "blaze"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//End Rod Laser
engraver.recipeBuilder()
    .inputs(<minecraft:end_rod> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "endrod"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Palis Laser
engraver.recipeBuilder()
    .inputs(<actuallyadditions:item_crystal:1> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "palis_crystal"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Diamantine Laser
engraver.recipeBuilder()
    .inputs(<actuallyadditions:item_crystal:2> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "diamantine_crystal"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Emeradic Laser
engraver.recipeBuilder()
    .inputs(<actuallyadditions:item_crystal:4> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "emeraldic_crystal"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Certus Laser
engraver.recipeBuilder()
    .inputs(<ore:gemCertusQuartz> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "certus_quartz"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Fluix Laser
engraver.recipeBuilder()
    .inputs(<ore:crystalFluix> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "fluix"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Refined Obsidian Laser
mods.tconstruct.Casting.removeTableRecipe(<plustic:laser_medium>.withTag({Material: "refined_obsidian"}));
engraver.recipeBuilder()
    .inputs(<ore:ingotRefinedObsidian> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "refined_obsidian"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Refined Glowstone Laser
mods.tconstruct.Casting.removeTableRecipe(<plustic:laser_medium>.withTag({Material: "refined_glowstone"}));
engraver.recipeBuilder()
    .inputs(<ore:ingotRefinedGlowstone> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "refined_glowstone"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Infinity Laser
mods.tconstruct.Casting.removeTableRecipe(<plustic:laser_medium>.withTag({Material: "infinity_metal"}));
engraver.recipeBuilder()
    .inputs(<ore:ingotInfinityMetal> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "infinity_metal"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();

//Chaotic Laser
mods.tconstruct.Casting.removeTableRecipe(<plustic:laser_medium>.withTag({Material: "chaotic_metal"}));
engraver.recipeBuilder()
    .inputs(<ore:ingotChaoticMetal> * 16)
    .notConsumable(<ore:craftingLensMagenta>)
    .outputs(<plustic:laser_medium>.withTag({Material: "chaotic_metal"}))
    .duration(560)
    .EUt(60)
.buildAndRegister();