#priority 999
// preprocessor directive to load this file first so others have access to the definitions

/**
 * Global definitions for commonly referenced values.
 * This avoids any inconsistencies that may arise from different definitions in different files.
 */

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

global alloy            as RecipeMap = RecipeMap.getByName("alloy_smelter");
global assembler        as RecipeMap = RecipeMap.getByName("assembler");
global autoclave        as RecipeMap = RecipeMap.getByName("autoclave");
global arc_furnace		as RecipeMap = RecipeMap.getByName("arc_furnace");
global blast_furnace    as RecipeMap = RecipeMap.getByName("electric_blast_furnace");
global brewer           as RecipeMap = RecipeMap.getByName("brewer");
global canner           as RecipeMap = RecipeMap.getByName("canner");
global centrifuge       as RecipeMap = RecipeMap.getByName("centrifuge");
global chemical_bath    as RecipeMap = RecipeMap.getByName("chemical_bath");
global chemreactor      as RecipeMap = RecipeMap.getByName("chemical_reactor");
global chemical_reactor      as RecipeMap = RecipeMap.getByName("chemical_reactor");
global compressor       as RecipeMap = RecipeMap.getByName("compressor");
global distillery       as RecipeMap = RecipeMap.getByName("distillery");
global electrolyzer     as RecipeMap = RecipeMap.getByName("electrolyzer");
global engraver         as RecipeMap = RecipeMap.getByName("laser_engraver");
global extractor        as RecipeMap = RecipeMap.getByName("extractor");
global extruder         as RecipeMap = RecipeMap.getByName("extruder");
global fermenter        as RecipeMap = RecipeMap.getByName("fermenter");
global forming          as RecipeMap = RecipeMap.getByName("forming_press");
global freezer          as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global fusion_reactor   as RecipeMap = RecipeMap.getByName("fusion_reactor");
global hammer           as RecipeMap = RecipeMap.getByName("forge_hammer");
global implosion        as RecipeMap = RecipeMap.getByName("implosion_compressor");
global lathe            as RecipeMap = RecipeMap.getByName("lathe");
global macerator        as RecipeMap = RecipeMap.getByName("macerator");
global mixer            as RecipeMap = RecipeMap.getByName("mixer");
global pyro             as RecipeMap = RecipeMap.getByName("pyro");
global pbf				as RecipeMap = RecipeMap.getByName("primitive_blast_furnace");
global reactor          as RecipeMap = RecipeMap.getByName("chemical_reactor");
global saw              as RecipeMap = RecipeMap.getByName("cutter");
global sifter           as RecipeMap = RecipeMap.getByName("sifter");
global solidifier       as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global thermal_centrifuge      as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
global tower            as RecipeMap = RecipeMap.getByName("distillation_tower");
global wiremill         as RecipeMap = RecipeMap.getByName("wiremill");
global bender      		as RecipeMap = RecipeMap.getByName("bender");
global circuit_assembler as RecipeMap = RecipeMap.getByName("circuit_assembler");
global gas_collector as RecipeMap = RecipeMap.getByName("gas_collector");
global polarizer as RecipeMap = RecipeMap.getByName("polarizer");

global large_chemical_reactor as RecipeMap = RecipeMap.getByName("large_chemical_reactor");

//global combustion_generator as RecipeMap = RecipeMap.getByName("COMBUSTION_GENERATOR_FUELS"); 
global gas_turbine as RecipeMap = RecipeMap.getByName("gas_turbine");
global steam_turbine as RecipeMap = RecipeMap.getByName("steam_turbine");
global plasma_generator as RecipeMap = RecipeMap.getByName("plasma_generator");

global rocket_fuel as RecipeMap = RecipeMap.getByName("rocket_fuel");
global naquadah_reactor as RecipeMap = RecipeMap.getByName("naquadah_reactor");

//Create Universal GTCE Oredict for tools that can be used to reference by oredict and encapsulates all tools.
//Works for any material tool, any damage tool, electric or non-electric

//GTCE Tools
<ore:gtceWrenches>.addItems([
	<gregtech:wrench>.withEmptyTag(), 
	<gregtech:wrench_lv>.withEmptyTag(), 
	<gregtech:wrench_hv>.withEmptyTag(), 
	<gregtech:wrench_iv>.withEmptyTag()]);

<ore:gtceScrewdrivers>.addItems([
	<gregtech:screwdriver>.withEmptyTag(), 
	<gregtech:screwdriver_lv>.withEmptyTag()]);

<ore:gtceHardHammers>.addItems([
	<gregtech:hammer>.withEmptyTag()]);

<ore:gtceSoftHammers>.addItems([
	<gregtech:mallet>.withEmptyTag()]);

<ore:gtceSaws>.addItems([
	<gregtech:saw>.withEmptyTag(),
	<gregtech:chainsaw_lv>.withEmptyTag(), 
	<gregtech:buzzsaw>.withEmptyTag()]);

<ore:gtceFiles>.addItems([
	<gregtech:file>.withEmptyTag()]);

<ore:gtceMortars>.addItems([
	<gregtech:mortar>.withEmptyTag()]);

<ore:gtceWireCutters>.addItems([
	<gregtech:wire_cutter>.withEmptyTag()]);

<ore:gtceKnife>.addItems([
	<gregtech:knife>.withEmptyTag(),
	<gregtech:butchery_knife>.withEmptyTag()]);

<ore:gtceCrowbar>.addItems([
	<gregtech:crowbar>.withEmptyTag()]);