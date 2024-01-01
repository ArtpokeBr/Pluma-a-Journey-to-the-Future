#modloaded conarm

import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import mods.chisel.Carving;

// ========================================================================================= //
###### Conarm Parts (MV) ######

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
	"osmiridium" : <ore:ingotOsmiridium>.firstItem,
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
	"enchanted_fabric": <thaumcraft:fabric>,

	"primal_metal": <ore:ingotPrimordial>.firstItem,
	"sentient_metal": <ore:ingotSentientMetal>.firstItem,
	"bound_metal": <ore:ingotBoundMetal>.firstItem,

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
			<recipemap:extruder>.recipeBuilder()
				.inputs(ingot * info[0])
				.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
				.outputs(part.withTag({Material: mat}))
				.duration(300 * info[0])
				.EUt(32)
			.buildAndRegister();

	}
}

// ========================================================================================= //

var castsAndCasters as IItemStack[IIngredient] = {
 <conarm:leggings_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}),
 <conarm:boots_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:boots_core"}),
 <conarm:chest_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:chest_core"}),
 <conarm:armor_plate>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}),
 <conarm:armor_trim>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}),
 <conarm:polishing_kit>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}),
 <conarm:helmet_core>.withTag({Material: "bronze"}) : <tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}),
};
for IItemStack, IIngredient in castsAndCasters {
        Casting.removeTableRecipe(IIngredient);
        Casting.addTableRecipe(IIngredient, IItemStack, <liquid:alubrass>, 144, true, 100);
        Casting.addTableRecipe(IIngredient, IItemStack, <liquid:brass>, 144, true, 100);
        // Casting.addTableRecipe(IIngredient, IItemStack, <liquid:gold>, 288, true, 200);
        mods.chisel.Carving.addVariation("tinkers_casts", IIngredient);
} 

// =========================================================================================== //

// Invisible Ink
recipes.remove(<conarm:invisible_ink>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:glass_bottle>)
	.fluidInputs(<liquid:dye_black>*288, <liquid:dye_white>*288, <liquid:air>*500)
	.circuit(4)
	.outputs(<conarm:invisible_ink>)
	.duration(300)
	.EUt(8)
.buildAndRegister();

//Resistance Modifier
recipes.remove(<conarm:resist_mat>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>],
    [<ore:lightPlateDarkSteel>, <ore:cast>, <ore:lightPlateDarkSteel>],
    [<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>]])
  .setFluid(<liquid:pyrotheum> * 750)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat>)
.create();

//Fire Resistence Modifier
recipes.remove(<conarm:resist_mat_fire>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>],
    [<ore:lightPlateEnergeticAlloy>, <ore:cast>, <ore:lightPlateEnergeticAlloy>],
    [<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>]])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_fire>)
.create();

//Projectile Protection Modifier
recipes.remove(<conarm:resist_mat_proj>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>],
    [<ore:lightPlateSilver>, <ore:cast>, <ore:lightPlateSilver>],
    [<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_proj>)
.create();

//Blast Protection Modifier
recipes.remove(<conarm:resist_mat_blast>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>],
    [<ore:lightPlateArdite>, <ore:cast>, <ore:lightPlateArdite>],
    [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]])
  .setFluid(<liquid:pyrotheum> * 750)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_blast>)
.create();

//Gauntlet Base
recipes.remove(<conarm:gauntlet_mat>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, <ore:lightPlateIron>],
    [<ore:plateIron>, <contenttweaker:industrial_leather>, <ore:plateIron>],
    [null, <ore:heavyPlateIron>, <ore:plateIron>]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:gtceHardHammers>, 15)
  .addOutput(<conarm:gauntlet_mat>)
  .create();

// Gauntlet Dexterity
recipes.remove(<conarm:gauntlet_mat_speed>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>],
    [<ore:blockRedstoneAlloy>, <conarm:gauntlet_mat>, <ore:blockRedstoneAlloy>],
    [<ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<conarm:gauntlet_mat_speed>)
.create();

// Gauntlet Power
recipes.remove(<conarm:gauntlet_mat_attack>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockStainlessSteel>, <ore:blockStainlessSteel>, <ore:blockStainlessSteel>],
    [<ore:blockStainlessSteel>, <conarm:gauntlet_mat>, <ore:blockStainlessSteel>],
    [<ore:blockStainlessSteel>, <ore:blockStainlessSteel>, <ore:blockStainlessSteel>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<conarm:gauntlet_mat_attack>)
.create();

// Gauntlet Far Reach
recipes.remove(<conarm:gauntlet_mat_reach>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<actuallyadditions:block_crystal:2>, <ore:blockEnderEye>, <actuallyadditions:block_crystal:2>],
    [<ore:blockEnderEye>, <conarm:gauntlet_mat>, <ore:blockEnderEye>],
    [<actuallyadditions:block_crystal:2>, <ore:blockEnderEye>, <actuallyadditions:block_crystal:2>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<conarm:gauntlet_mat_reach>)
.create();

// Frosty Soles
recipes.remove(<conarm:frosty_soles>); 
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:packed_ice>, null, <minecraft:packed_ice>],
    [<fossil:iced_stone>, null, <fossil:iced_stone>],
    [<ore:lilypad>, null, <ore:lilypad>]])
  .setFluid(<liquid:ice> * 1000)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:frosty_soles>)
.create();

//Traveller's Belt
recipes.remove(<conarm:travel_belt_base>); 
RecipeBuilder.get("basic")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<harvestcraft:hardenedleatheritem>, <ore:ringIron>, <harvestcraft:hardenedleatheritem>],
    [null, <pyrotech:material:43>, null]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_belt_base>)
.create();

//Traveller's Belt (Storage)
recipes.remove(<conarm:travel_belt>);
RecipeBuilder.get("basic")
  .setShapeless([<conarm:travel_belt_base>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <ore:screwSteel>])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<conarm:travel_belt>)
.create();

//Traveller's Belt (Alchemy)
recipes.remove(<conarm:travel_potion>); 
RecipeBuilder.get("basic")
  .setShapeless([<conarm:travel_belt_base>, <minecraft:brewing_stand>, <ore:screwSteel>, <ore:screwSteel>, <pyrotech:crate>])
  .addTool(<ore:gtceScrewdrivers>, 1)
  .addOutput(<conarm:travel_potion>)
.create();

//Traveller's Knapsack
recipes.remove(<conarm:travel_sack>); 
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:43>, <pyrotech:material:44>, <pyrotech:material:43>],
    [<pyrotech:material:42>, <minecraft:chest>, <pyrotech:material:42>],
    [<pyrotech:material:43>, <pyrotech:material:42>, <pyrotech:material:43>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_sack>)
.create();

//Traveller's Goggles
recipes.remove(<conarm:travel_goggles_base>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:42>, <pyrotech:material:44>, <pyrotech:material:42>],
    [<ore:craftingLensGlass>, <pyrotech:material:42>, <ore:craftingLensGlass>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_goggles_base>)
.create();

//Traveller's Goggles (Zoom)
recipes.remove(<conarm:travel_goggles>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:screwSteel>, null],
    [<mia:armored_glass>, <conarm:travel_goggles_base>, <mia:armored_glass>],
    [null, <ore:screwSteel>, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<conarm:travel_goggles>)
.create();

//Traveller's Goggles (Night Vision)
recipes.remove(<conarm:travel_night>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:golden_carrot>, null],
    [<ore:ingotAstralStarmetal>, <conarm:travel_goggles_base>, <ore:ingotAstralStarmetal>],
    [null, <minecraft:golden_carrot>, null]])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_night>)
.create();

//Traveller's Goggles (Soul Sight)
recipes.remove(<conarm:travel_soul>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <quark:soul_bead>, null],
    [<quark:soul_powder>, <conarm:travel_goggles_base>, <quark:soul_powder>],
    [null, <quark:soul_bead>, null]])
  .addTool(<ore:artisansAthame>, 10)
  .addOutput(<conarm:travel_soul>)
.create();

//Traveller's Cloak
recipes.remove(<conarm:travel_cloak>);
RecipeBuilder.get("basic")
  .setShaped([
    [<harvestcraft:hardenedleatheritem>, <quark:quilted_wool>, <harvestcraft:hardenedleatheritem>],
    [<pyrotech:material:42>, <quark:quilted_wool>, <pyrotech:material:42>],
    [<pyrotech:material:42>, null, <pyrotech:material:42>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_cloak>)
.create();

//Traveller's Cloack (Invisiblity)
recipes.remove(<conarm:travel_sneak>);
RecipeBuilder.get("mage")
  .setShapeless([<conarm:travel_cloak>, <ore:empoweredEndorCrystal>, <ore:eye>])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_sneak>)
.create();

//Traveller's Cloack (Slow Fall)
recipes.remove(<conarm:travel_slowfall>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:feyFeather>, <ore:blockSlimeCongealed>, <ore:feyFeather>],
    [<ore:feyFeather>, <conarm:travel_cloak>, <ore:feyFeather>],
    [<ore:feyFeather>, <contenttweaker:empowered_endor_crystal>, <ore:feyFeather>]])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_slowfall>)
.create();

# Armor Forge ==================
<conarm:armorforge>.addTooltip(format.white("Can Only be made with ") + format.green("Iron Blocks") + format.white("."));
recipes.remove(<conarm:armorforge>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <conarm:armorstation>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<conarm:armorforge>.withTag({textureBlock: {id: "tconevo:metal_block", Count: 1, Damage: 0 as short}}))
.create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <conarm:armorstation>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<conarm:armorforge>)
.create();