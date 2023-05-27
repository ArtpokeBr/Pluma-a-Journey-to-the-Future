import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thermalexpansion.Infuser as EnergeticInfuser;

// Sky Stone Chiseling

var Skystone as IItemStack[] = [
<appliedenergistics2:smooth_sky_stone_block>,
<appliedenergistics2:sky_stone_brick>,
<appliedenergistics2:sky_stone_small_brick>
];
for i in Skystone {
recipes.remove(i);
mods.chisel.Carving.addVariation("skystone", i);
}

//Charged Quartz Tweaks
EnergeticInfuser.removeRecipe(<appliedenergistics2:material>);
<appliedenergistics2:material:1>.addTooltip(format.white("Can also be ") + format.yellow("Charged") + format.white(" with a ") + format.darkAqua("AE2 Charger") + format.white("."));

# [Charger] from [Small Energetic Alloy Spring][+4]
recipes.removeByRecipeName("appliedenergistics2:network/blocks/crystal_processing_charger");
craft.make(<appliedenergistics2:charger>, ["pretty",
  "□ ◊ □",
  "п E  ",
  "□ D □"], {
  "□": <ore:plateEnergeticSilver>,      # Energetic Silver Plate
  "◊": <contenttweaker:soot_covered_redstone>, # Soot Covered Redstone
  "п": <ore:plateStainlessSteel>,       # Stainless Steel Plate
  "E": <ore:springSmallEnergeticAlloy>, # Small Energetic Alloy Spring
  "D": <ore:plateDoubleStainlessSteel>, # Double Stainless Steel Plate
});

craft.make(<appliedenergistics2:charger>, ["pretty",
  "□ Ϟ □",
  "п E  ",
  "□ D □"], {
  "□": <ore:plateEnergeticSilver>,      # Energetic Silver Plate
  "Ϟ": <extrabees:honey_drop>,          # Energy Drop
  "п": <ore:plateStainlessSteel>,       # Stainless Steel Plate
  "E": <ore:springSmallEnergeticAlloy>, # Small Energetic Alloy Spring
  "D": <ore:plateDoubleStainlessSteel>, # Double Stainless Steel Plate
});

//AE2 Fluix Tweaks

mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <ore:dustBlackQuartz>, <ore:dustRedstone>)
    .fluidInputs(<liquid:distilled_water>*1000)
    .outputs(<ore:dustFluix>.firstItem * 3)
    .duration(80)
    .EUt(500)
.buildAndRegister();

mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <ore:dustNetherQuartz>, <ore:dustRedstone>)
    .fluidInputs(<liquid:distilled_water>*1000)
    .outputs(<ore:dustFluix>.firstItem * 2)
    .duration(80)
    .EUt(500)
.buildAndRegister();

mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <ore:dustQuartzite>, <ore:dustRedstone>)
    .fluidInputs(<liquid:distilled_water>*1000)
    .outputs(<ore:dustFluix>.firstItem)
    .duration(80)
    .EUt(500)
.buildAndRegister();

<recipemap:autoclave>.recipeBuilder()
    .inputs(<ore:dustFluix>)
    .fluidInputs(<liquid:nacre> * 250)
    .outputs(<ore:crystalFluix>.firstItem)
    .duration(100)
    .EUt(48)
.buildAndRegister();

// AE2 Crystal Seeds to Pure Crystal's ==================================================

<appliedenergistics2:crystal_seed>.addTooltip(format.red(format.bold("Attention: ")) + format.white("Can grow inside of a conditioned environment or by using ") + format.blue("A Pool of Water") + format.white("."));
<appliedenergistics2:crystal_seed:600>.addTooltip(format.red(format.bold("Attention: ")) + format.white("Can grow inside of a conditioned environment or by using ") + format.blue("A Pool of Water") + format.white("."));
<appliedenergistics2:crystal_seed:1200>.addTooltip(format.red(format.bold("Attention: ")) + format.white("Can grow inside of a conditioned environment or by using ") + format.blue("A Pool of Water") + format.white("."));

# Certuz
recipes.remove(<appliedenergistics2:crystal_seed>);
mixer.recipeBuilder()
    .inputs(<ore:dustCertusQuartz>, <ore:dustQuartzSand>*2, <ore:dustSiliconDioxide>)
    .outputs(<appliedenergistics2:crystal_seed> * 4)
    .duration(120)
    .EUt(500)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>)
    .fluidInputs(<liquid:purifying_fluid>*250, <liquid:water>*1000)
    .property("cleanroom", "cleanroom")
    .circuit(13)
    .outputs(<appliedenergistics2:material:10>)
    .chancedOutput(<appliedenergistics2:crystal_seed>, 500, 200)
    .duration(120)
    .EUt(500)
.buildAndRegister();

# Nether
recipes.remove(<appliedenergistics2:crystal_seed:600>);
mixer.recipeBuilder()
    .inputs(<ore:dustNetherQuartz>, <ore:dustQuartzSand>*2, <ore:dustSiliconDioxide>)
    .outputs(<appliedenergistics2:crystal_seed:600> * 4)
    .duration(120)
    .EUt(500)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>)
    .fluidInputs(<liquid:purifying_fluid>*250, <liquid:water>*1000)
    .property("cleanroom", "cleanroom")
    .circuit(13)
    .outputs(<appliedenergistics2:material:11>)
    .chancedOutput(<appliedenergistics2:crystal_seed:600>, 500, 200)
    .duration(120)
    .EUt(500)
.buildAndRegister();

# Fluix
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
mixer.recipeBuilder()
    .inputs(<ore:dustFluix>, <ore:dustQuartzSand>*2, <ore:dustSiliconDioxide>)
    .outputs(<appliedenergistics2:crystal_seed:1200> * 4)
    .duration(120)
    .EUt(500)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>)
    .fluidInputs(<liquid:purifying_fluid>*250, <liquid:water>*1000)
    .property("cleanroom", "cleanroom")
    .circuit(13)
    .outputs(<appliedenergistics2:material:12>)
    .chancedOutput(<appliedenergistics2:crystal_seed:1200>, 500, 200)
    .duration(120)
    .EUt(500)
.buildAndRegister();

// Pure Crystal Block Fixes ==========================================================

# Certus
<appliedenergistics2:quartz_block>.displayName = "Pure Certus Quartz Block";
<appliedenergistics2:quartz_pillar>.displayName = "Pure Certus Quartz Pillar";
<appliedenergistics2:chiseled_quartz_block>.displayName = "Chiseled Pure Certus Quartz Block";

var PureCertus as IItemStack[] = [
<appliedenergistics2:quartz_block>,
<appliedenergistics2:quartz_pillar>,
<appliedenergistics2:chiseled_quartz_block>
];
for i in PureCertus {
recipes.remove(i);
mods.chisel.Carving.addVariation("pure_certus", i);
}

compressor.recipeBuilder()
    .inputs(<ore:crystalPureCertusQuartz> * 9)
    .outputs(<appliedenergistics2:quartz_block>)
    .duration(250)
    .EUt(2)
.buildAndRegister();

recipes.addShapeless("Pure_Certus_Uncompress",<ore:crystalPureCertusQuartz>.firstItem*9,[<appliedenergistics2:quartz_block>]);

# Fluix
<appliedenergistics2:fluix_block>.displayName = "Pure Fluix Crystal Block";
recipes.remove(<appliedenergistics2:fluix_block>);

compressor.recipeBuilder()
    .inputs(<ore:crystalPureFluix> * 9)
    .outputs(<appliedenergistics2:fluix_block>)
    .duration(250)
    .EUt(2)
.buildAndRegister();

recipes.addShapeless("Pure_Fluix_Uncompress",<ore:crystalPureFluix>.firstItem*9,[<appliedenergistics2:fluix_block>]);

// ========================================================================= //

// ========================================================================= //

###### AE2 Fluids ######

// ME Fluid Discretizer
recipes.remove(<ae2fc:fluid_discretizer>);
recipes.addShaped(<ae2fc:fluid_discretizer> * 1, [[<ore:lightPlateStainlessSteel>, <contenttweaker:operation_processor>, <ore:lightPlateStainlessSteel>], [<appliedenergistics2:part:221>, <appliedenergistics2:condenser>, <appliedenergistics2:part:220>],[<ore:lightPlateStainlessSteel>, <contenttweaker:operation_processor>, <ore:lightPlateStainlessSteel>]]);

// Fluid Pattern Encoder
recipes.remove(<ae2fc:fluid_pattern_encoder>);
recipes.addShaped(<ae2fc:fluid_pattern_encoder> * 1, [[<ore:plateLapis>, <contenttweaker:operation_processor>, <ore:plateLapis>], [<ore:plateStainlessSteel>, <avaritia:compressed_crafting_table>, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

// ME Fluid Packet Decoder
recipes.remove(<ae2fc:fluid_packet_decoder>);
recipes.addShaped(<ae2fc:fluid_packet_decoder> * 1, [[<ore:plateStainlessSteel>, <minecraft:hopper>, <ore:plateStainlessSteel>], [<appliedenergistics2:part:16>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:part:16>],[<ore:plateStainlessSteel>, <contenttweaker:operation_processor>, <ore:plateStainlessSteel>]]);

// Ingredient Buffer
recipes.remove(<ae2fc:ingredient_buffer>);
recipes.addShaped(<ae2fc:ingredient_buffer> * 1, [[<ore:plateStainlessSteel>, <appliedenergistics2:material:35>, <ore:plateStainlessSteel>], [<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>],[<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>]]);

// Large Ingredient Buffer
recipes.remove(<ae2fc:large_ingredient_buffer>);
recipes.addShaped(<ae2fc:large_ingredient_buffer> * 1, [[<ae2fc:ingredient_buffer>, <appliedenergistics2:quartz_vibrant_glass>, <ae2fc:ingredient_buffer>], [<appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:operation_processor>, <appliedenergistics2:quartz_vibrant_glass>],[<ae2fc:ingredient_buffer>, <appliedenergistics2:quartz_vibrant_glass>, <ae2fc:ingredient_buffer>]]);

// Precision Burette
recipes.remove(<ae2fc:burette>);
recipes.addShaped(<ae2fc:burette> * 1, [[<ore:plateStainlessSteel>, <minecraft:hopper>, <ore:plateStainlessSteel>], [<appliedenergistics2:quartz_vibrant_glass>, <forestry:pipette>, <appliedenergistics2:quartz_vibrant_glass>],[<ore:plateStainlessSteel>, <contenttweaker:operation_processor>, <ore:plateStainlessSteel>]]);

// ME Fluid Level Maintainer
recipes.remove(<ae2fc:fluid_level_maintainer>);
recipes.addShaped(<ae2fc:fluid_level_maintainer> * 1, [[<ore:plateMithril>, <appliedenergistics2:part:281>, <ore:plateMithril>], [<contenttweaker:operation_processor>, <appliedenergistics2:crafting_monitor>, <contenttweaker:operation_processor>],[<ore:plateMithril>, <forestry:thermionic_tubes:11>, <ore:plateMithril>]]);

// ME Extended Processing Fluid Pattern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_ex_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal> * 1, [[<contenttweaker:operation_processor>, null, <contenttweaker:operation_processor>], [<ae2fc:part_fluid_pattern_terminal>, <appliedenergistics2:part:16>, <ae2fc:part_fluid_pattern_terminal>],[<contenttweaker:operation_processor>, null, <contenttweaker:operation_processor>]]);

# 1k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:54>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_1k>.withTag({}), [<aeadditions:storage.casing:1>,<appliedenergistics2:material:54>]);

# 4k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:55>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_4k>.withTag({}), [<aeadditions:storage.casing:1>,<appliedenergistics2:material:55>]);

# 16k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:56>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_16k>.withTag({}), [<aeadditions:storage.casing:1>,<appliedenergistics2:material:56>]);

# 64k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:57>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_64k>.withTag({}), [<aeadditions:storage.casing:1>,<appliedenergistics2:material:57>]);

# ME Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);
recipes.addShapedMirrored(<appliedenergistics2:part:221>, [[<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>],[<appliedenergistics2:part:261>,<mekanism:atomicalloy>,<appliedenergistics2:part:241>]]);

# ME Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
recipes.addShaped(<appliedenergistics2:part:241>, [[<appliedenergistics2:material:44>,<contenttweaker:operation_processor>,<appliedenergistics2:material:44>],[<ore:lightPlateStainlessSteel>,<minecraft:sticky_piston>,<ore:lightPlateStainlessSteel>]]);

# ME Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
recipes.addShaped(<appliedenergistics2:part:261>, [[<appliedenergistics2:material:43>,<contenttweaker:operation_processor>,<appliedenergistics2:material:43>],[<ore:lightPlateStainlessSteel>,<minecraft:piston>,<ore:lightPlateStainlessSteel>]]);

# ME Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>, [[null,<contenttweaker:operation_processor>,null],[<appliedenergistics2:material:22>,<appliedenergistics2:part:380>,<appliedenergistics2:material:22>],[null,<contenttweaker:operation_processor>,null]]);
recipes.addShaped(<appliedenergistics2:part:520>, [[null,<appliedenergistics2:material:22>,null],[<contenttweaker:operation_processor>,<appliedenergistics2:part:380>,<contenttweaker:operation_processor>],[null,<appliedenergistics2:material:22>,null]]);

// -===========================================- //

# Quartz Glass --> Dense Quartz Glass
<appliedenergistics2:quartz_glass>.displayName = "Dense Quartz Glass";
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy.recipeBuilder()
    .inputs(<ore:dustCertusQuartz>*2, <randomthings:quartzglass>)
    .outputs(<appliedenergistics2:quartz_glass>)
    .duration(100)
    .EUt(500)
.buildAndRegister();

# Vibrant Quartz Glass --> Vibrant Dense Quartz Glass
<appliedenergistics2:quartz_vibrant_glass>.displayName = "Vibrant Dense Quartz Glass";
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>)
    .fluidInputs(<liquid:vibrant_alloy>*288)
    .outputs(<appliedenergistics2:quartz_vibrant_glass>)
    .duration(300)
    .EUt(350)
.buildAndRegister();

// Sky Stone Chest
recipes.remove(<appliedenergistics2:sky_stone_chest>);
recipes.addShaped(<appliedenergistics2:sky_stone_chest>, [[<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>],[<appliedenergistics2:sky_stone_block>,<minecraft:iron_nugget>,<appliedenergistics2:sky_stone_block>],[<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>]]);

// Sky Stone Block Chest
recipes.remove(<appliedenergistics2:smooth_sky_stone_chest>);
recipes.addShaped(<appliedenergistics2:smooth_sky_stone_chest>, [[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:smooth_sky_stone_block>,<minecraft:iron_nugget>,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>]]);

// Meteorite Compass
recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass>, [[null,<ore:plateStainlessSteel>,null],[<ore:plateStainlessSteel>,<ore:crystalPureCertusQuartz>,<ore:plateStainlessSteel>],[null,<ore:plateStainlessSteel>,null]]);
// <appliedenergistics2:sky_compass>.addTooltip(format.white(format.bold("Meteorites don't generate.")));

// Inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber> * 1, [[<ore:lightPlateSteel>, <ore:craftingPiston>, <ore:lightPlateSteel>], [<ore:gearSmallFluix>, null, <ore:lightPlateSteel>],[<ore:lightPlateSteel>, <ore:craftingPiston>, <ore:lightPlateSteel>]]);

# Wireless Access Point
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [[<ore:plateHslaSteel>,<appliedenergistics2:material:41>,<ore:plateHslaSteel>],[<ore:plateHslaSteel>,<contenttweaker:clearance_processor>,<ore:plateHslaSteel>],[null,<gregtech:machine_casing:4>,null]]);

# Tiny TNT
recipes.remove(<appliedenergistics2:tiny_tnt>);
recipes.addShapeless(<appliedenergistics2:tiny_tnt> * 4, [<minecraft:tnt>]);
recipes.addShaped(<minecraft:tnt>, [[<appliedenergistics2:tiny_tnt>,<appliedenergistics2:tiny_tnt>],[<appliedenergistics2:tiny_tnt>,<appliedenergistics2:tiny_tnt>]]);

# ME Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:plateEnergeticAlloy>,<appliedenergistics2:chest>,<ore:plateEnergeticAlloy>],[<ore:lightPlateHslaSteel>,<appliedenergistics2:material:37>,<ore:lightPlateHslaSteel>],[<ore:lightPlateHslaSteel>,<contenttweaker:clearance_processor>,<ore:lightPlateHslaSteel>]]);

# ME Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShapedMirrored(<appliedenergistics2:quantum_ring>, [[<ore:plateTungstenSteel>,<gregtech:meta_item_1:281>/*Quantum Eye*/,<ore:plateTungstenSteel>],[<threng:material:14>,<ore:plateTungstenSteel>,<appliedenergistics2:part:76>],[<ore:plateTungstenSteel>,<gregtech:meta_item_1:281>/*Quantum Eye*/,<ore:plateTungstenSteel>]]);

# ME Quantum Link Chamber
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [[<ore:foilTungstenSteel>,<gregtech:meta_item_1:281>/*Quantum Eye*/,<ore:foilTungstenSteel>],[<gregtech:meta_item_1:281>/*Quantum Eye*/,<appliedenergistics2:quartz_vibrant_glass>,<gregtech:meta_item_1:281>/*Quantum Eye*/],[<ore:foilTungstenSteel>,<gregtech:meta_item_1:281>/*Quantum Eye*/,<ore:foilTungstenSteel>]]);

# Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [[<appliedenergistics2:quartz_glass>,<threng:material:6>,<appliedenergistics2:quartz_glass>],[<threng:material:6>,<appliedenergistics2:material:9>,<threng:material:6>],[<appliedenergistics2:quartz_glass>,<threng:material:6>,<appliedenergistics2:quartz_glass>]]);

// Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port> * 1, [[<ore:lightPlateHslaSteel>, <threng:material:6>, <ore:lightPlateHslaSteel>], [<appliedenergistics2:part:16>, <appliedenergistics2:io_port>, <appliedenergistics2:part:16>],[<ore:lightPlateHslaSteel>, <threng:material:6>, <ore:lightPlateHslaSteel>]]);

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:material:24>,<appliedenergistics2:smooth_sky_stone_block>],[<ore:oc:circuitChip3>,<ore:crystalPureCertusQuartz>,<ore:oc:circuitChip3>],[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:material:24>,<appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:smooth_sky_stone_block>,<ore:oc:circuitChip3>,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:24>,<ore:crystalPureCertusQuartz>,<appliedenergistics2:material:24>],[<appliedenergistics2:smooth_sky_stone_block>,<ore:oc:circuitChip3>,<appliedenergistics2:smooth_sky_stone_block>]]);

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive> * 1, [[<ore:plateStainlessSteel>, <appliedenergistics2:material:24>, <ore:plateStainlessSteel>], [<opencomputers:component:10>, <opencomputers:diskdrive:0>, <opencomputers:component:10>],[<ore:plateStainlessSteel>, <appliedenergistics2:material:24>, <ore:plateStainlessSteel>]]);


# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:380>,<appliedenergistics2:quartz_glass>],[<ore:crystalFluix>,<appliedenergistics2:material:24>,<ore:crystalFluix>],[<ore:lightPlateStainlessSteel>,<gregtech:machine:1627>,<ore:lightPlateStainlessSteel>]]);

# ME Interface
recipes.removeShaped(<appliedenergistics2:interface>);
recipes.addShapedMirrored(<appliedenergistics2:interface>, [[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>],[<appliedenergistics2:material:44>,<gregtech:machine_casing:4>,<appliedenergistics2:material:43>],[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>]]);

# ME Fluid Interface
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [[<ore:plateMithril>,<contenttweaker:methodology_processor>,<ore:plateMithril>],[<appliedenergistics2:material:44>,<gregtech:machine_casing:4>,<appliedenergistics2:material:43>],[<ore:plateMithril>,<contenttweaker:methodology_processor>,<ore:plateMithril>]]);

# Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[<ore:heavyPlateMenril>,<appliedenergistics2:material:23>,<ore:heavyPlateMenril>],[<ore:lightPlateStainlessSteel>,<appliedenergistics2:energy_cell>,<ore:lightPlateStainlessSteel>],[<ore:lightPlateStainlessSteel>,<appliedenergistics2:part:16>,<ore:lightPlateStainlessSteel>]]);

# ME IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],[<appliedenergistics2:part:16>,<appliedenergistics2:material:22>,<appliedenergistics2:part:16>],[<appliedenergistics2:drive>,<ore:lightPlateStainlessSteel>,<appliedenergistics2:drive>]]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [[<ore:plateHslaSteel>,<appliedenergistics2:fluix_block>,<ore:plateHslaSteel>],[<appliedenergistics2:fluix_block>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:fluix_block>],[<ore:plateHslaSteel>,<appliedenergistics2:fluix_block>,<ore:plateHslaSteel>]]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<ore:plateStainlessSteel>,<appliedenergistics2:part:16>,<ore:plateStainlessSteel>],[<appliedenergistics2:part:16>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:part:16>],[<ore:plateStainlessSteel>,<appliedenergistics2:part:16>,<ore:plateStainlessSteel>]]);

# Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>.withTag({}), [[<ore:plateStainlessSteel>,<ore:plateFluix>,<ore:plateStainlessSteel>],[<ore:plateFluix>,<ore:heavyPlateBatteryAlloy>,<ore:plateFluix>],[<ore:plateStainlessSteel>,<ore:plateFluix>,<ore:plateStainlessSteel>]]);

# Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>],[<appliedenergistics2:part:16>,<ore:alloyUltimate>,<appliedenergistics2:part:16>],[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>]]);

# Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
recipes.addShaped(<appliedenergistics2:crafting_accelerator>, [[<ore:plateCrystallinePinkSlime>,<appliedenergistics2:material:24>,<ore:plateCrystallinePinkSlime>],[<appliedenergistics2:material:24>,<appliedenergistics2:crafting_unit>.noReturn(),<appliedenergistics2:material:24>],[<ore:plateCrystallinePinkSlime>,<appliedenergistics2:material:24>,<ore:plateCrystallinePinkSlime>]]);

# 1k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_1k>, [[<ore:plateHslaSteel>,<ore:ingotEnergeticAlloy>,<ore:plateHslaSteel>],[<ore:ingotEnergeticAlloy>,<appliedenergistics2:crafting_unit>.noReturn(),<ore:ingotEnergeticAlloy>],[<ore:plateHslaSteel>,<appliedenergistics2:material:35>,<ore:plateHslaSteel>]]);

# 4k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_4k>, [[<ore:plateHslaSteel>,<ore:glodCrystal>,<ore:plateHslaSteel>],[<ore:glodCrystal>,<appliedenergistics2:crafting_storage_1k>.noReturn(),<ore:glodCrystal>],[<ore:plateHslaSteel>,<appliedenergistics2:material:36>,<ore:plateHslaSteel>]]);

# 16k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_16k>, [[<ore:plateHslaSteel>,<ore:ingotOsgloglas>,<ore:plateHslaSteel>],[<ore:ingotOsgloglas>,<appliedenergistics2:crafting_storage_4k>.noReturn(),<ore:ingotOsgloglas>],[<ore:plateHslaSteel>,<appliedenergistics2:material:37>,<ore:plateHslaSteel>]]);

# 64k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_64k>, [[<ore:plateHslaSteel>,<ore:ingotVividAlloy>,<ore:plateHslaSteel>],[<ore:ingotVividAlloy>,<appliedenergistics2:crafting_storage_16k>.noReturn(),<ore:ingotVividAlloy>],[<ore:plateHslaSteel>,<appliedenergistics2:material:38>,<ore:plateHslaSteel>]]);

# Molecular Assembler
recipes.removeShaped(<appliedenergistics2:molecular_assembler>);
recipes.addShapedMirrored(<appliedenergistics2:molecular_assembler>, [[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>],[<appliedenergistics2:material:44>,<extrautils2:crafter>,<appliedenergistics2:material:43>],[<ore:plateHslaSteel>,<contenttweaker:methodology_processor>,<ore:plateHslaSteel>]]);

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:fluix_block>],
    [<ore:screwStainlessSteel>, <tconstruct:tough_tool_rod>.withTag({Material: "certus_quartz"}), <railcraft:firestone_raw>],
    [<tconstruct:tough_tool_rod>.withTag({Material: "certus_quartz"}), <ore:screwStainlessSteel>, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<appliedenergistics2:entropy_manipulator>)
.create();

# Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:energy_cell>, null],
    [<ore:stickStainlessSteel>, null, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<appliedenergistics2:matter_cannon>)
.create();

# Color Applicator
recipes.remove(<appliedenergistics2:color_applicator>);
RecipeBuilder.get("basic")
  .setShaped([
    [<appliedenergistics2:material:43>, <ore:plateFluix>, <ore:screwStainlessSteel>],
    [<ore:plateFluix>, <appliedenergistics2:material:36>, <harvestcraft:hardenedleatheritem>],
    [null, <ore:screwStainlessSteel>, <appliedenergistics2:energy_cell>]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<appliedenergistics2:color_applicator>)
.create();

# Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShapedMirrored(<appliedenergistics2:biometric_card>.withTag({}), [[<appliedenergistics2:material:24>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>],[<appliedenergistics2:material:22>,<ore:itemCompressedCarbon>,<appliedenergistics2:material:22>]]);

# Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShapedMirrored(<appliedenergistics2:memory_card>.withTag({}), [[<appliedenergistics2:material:23>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>],[<appliedenergistics2:material:22>,<ore:itemCompressedCarbon>,<appliedenergistics2:material:22>]]);

# Network Tool
recipes.remove(<appliedenergistics2:network_tool>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:itemQuartzWrench>, <ore:stickStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:stickStainlessSteel>, <ore:chestWood>, <ore:foilStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:foilStainlessSteel>, <appliedenergistics2:part:380>]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<appliedenergistics2:network_tool>)
.create();

# View Cell
recipes.removeShaped(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<ore:crystalPureCertusQuartz>,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# 1k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:35>,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# 4k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:36>,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# 16k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:37>,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# 64k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:38>,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# 2k Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:itemClayedGlowstone>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:itemClayedGlowstone>,<appliedenergistics2:material:32>,<ore:itemClayedGlowstone>],[<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>]]);

# 16k Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:itemClayedGlowstone>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:itemClayedGlowstone>,<appliedenergistics2:material:33>,<ore:itemClayedGlowstone>],[<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>]]);

# 128k Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:itemClayedGlowstone>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:itemClayedGlowstone>,<appliedenergistics2:material:34>,<ore:itemClayedGlowstone>],[<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>]]);

# Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShapedMirrored(<appliedenergistics2:material:25>, [[<ore:ingotBlackBronze>,<ore:plateStainlessSteel>,null],[<ore:itemEnrichedAlloy>,<appliedenergistics2:material:23>,<ore:plateStainlessSteel>],[<ore:ingotBlackBronze>,<ore:plateStainlessSteel>,null]]);

# Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShapedMirrored(<appliedenergistics2:material:26>, [[<ore:ingotRedstoneAlloy>,<ore:plateStainlessSteel>,null],[<ore:ingotRedstoneAlloy>,<appliedenergistics2:material:25>,<ore:plateStainlessSteel>],[<ore:ingotRedstoneAlloy>,<ore:plateStainlessSteel>,null]]);

# Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShapedMirrored(<appliedenergistics2:material:27>, [[<ore:crystalPureCertusQuartz>,<ore:plateStainlessSteel>,null],[<ore:chestWood>,<appliedenergistics2:material:25>,<ore:plateStainlessSteel>],[<ore:crystalPureCertusQuartz>,<ore:plateStainlessSteel>,null]]);

# Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShapedMirrored(<appliedenergistics2:material:28>, [[<ore:ingotBlackBronze>,<ore:plateStainlessSteel>,null],[<ore:alloyElite>,<appliedenergistics2:material:25>,<ore:plateStainlessSteel>],[<ore:ingotBlackBronze>,<ore:plateStainlessSteel>,null]]);

# Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShapedMirrored(<appliedenergistics2:material:29>, [[<ore:blockWool>,<ore:plateStainlessSteel>,null],[<ore:blockWool>,<appliedenergistics2:material:28>,<ore:plateStainlessSteel>],[<ore:blockWool>,<ore:plateStainlessSteel>,null]]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShapedMirrored(<appliedenergistics2:material:30>, [[<gregtech:meta_item_1:491>/*Energium Dust*/,<ore:plateStainlessSteel>,null],[<ore:ingotVividAlloy>,<appliedenergistics2:material:28>,<ore:plateStainlessSteel>],[<gregtech:meta_item_1:491>/*Energium Dust*/,<ore:plateStainlessSteel>,null]]);

# Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShapedMirrored(<appliedenergistics2:material:31>, [[<ore:crystalPureCertusQuartz>,<ore:plateStainlessSteel>,null],[<projectred-core:resource_item:11>,<appliedenergistics2:material:28>,<ore:plateStainlessSteel>],[<ore:crystalPureCertusQuartz>,<ore:plateStainlessSteel>,null]]);

# 2^3 Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped(<appliedenergistics2:material:32>, [[<ore:ingotFluixSteel>,<appliedenergistics2:material:9>,<ore:ingotFluixSteel>],[<appliedenergistics2:material:9>,<threng:material:14>,<appliedenergistics2:material:9>],[<ore:ingotFluixSteel>,<appliedenergistics2:material:9>,<ore:ingotFluixSteel>]]);

# 16^3 Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [[<ore:ingotFluixSteel>,<appliedenergistics2:material:32>,<ore:ingotFluixSteel>],[<appliedenergistics2:material:32>,<threng:material:14>,<appliedenergistics2:material:32>],[<ore:ingotFluixSteel>,<appliedenergistics2:material:32>,<ore:ingotFluixSteel>]]);

# 128^3 Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [[<ore:ingotFluixSteel>,<appliedenergistics2:material:33>,<ore:ingotFluixSteel>],[<appliedenergistics2:material:33>,<threng:material:14>,<appliedenergistics2:material:33>],[<ore:ingotFluixSteel>,<appliedenergistics2:material:33>,<ore:ingotFluixSteel>]]);

# 1k ME Storage Component
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [[<ore:ingotRedSteel>,<ore:crystalPureCertusQuartz>,<ore:ingotRedSteel>],[<ore:crystalPureCertusQuartz>,<appliedenergistics2:material:22>,<ore:crystalPureCertusQuartz>],[<ore:ingotRedSteel>,<ore:crystalPureCertusQuartz>,<ore:ingotRedSteel>]]);

# 4k ME Storage Component
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [[<ore:ingotRedSteel>,<appliedenergistics2:material:35>,<ore:ingotRedSteel>],[<appliedenergistics2:material:35>,<appliedenergistics2:material:23>,<appliedenergistics2:material:35>],[<ore:ingotRedSteel>,<appliedenergistics2:material:35>,<ore:ingotRedSteel>]]);

# 16k ME Storage Component
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [[<ore:ingotEnderium>,<appliedenergistics2:material:36>,<ore:ingotEnderium>],[<appliedenergistics2:material:36>,<appliedenergistics2:material:23>,<appliedenergistics2:material:36>],[<ore:ingotEnderium>,<appliedenergistics2:material:36>,<ore:ingotEnderium>]]);

# 64k ME Storage Component
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [[<ore:ingotEnderium>,<appliedenergistics2:material:37>,<ore:ingotEnderium>],[<appliedenergistics2:material:37>,<appliedenergistics2:material:24>,<appliedenergistics2:material:37>],[<ore:ingotEnderium>,<appliedenergistics2:material:37>,<ore:ingotEnderium>]]);

# ME Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,null,<minecraft:redstone>],[<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]]);

# Wireless Receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [[null,<appliedenergistics2:material:9>,null],[<ore:plateDarkSteel>,<contenttweaker:methodology_processor>,<ore:plateDarkSteel>],[null,<ore:plateDarkSteel>,null]]);

# Wireless Booster
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [[<ore:plateEnderium>,<ore:plateEnderium>,<ore:plateEnderium>],[<ore:plateHslaSteel>,<appliedenergistics2:material:41>,<ore:plateHslaSteel>],[<ore:plateHslaSteel>,<ore:plateHslaSteel>,<ore:plateHslaSteel>]]);

# Formation Core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShaped(<appliedenergistics2:material:43>*2, [[null,<minecraft:redstone>,null],[<ore:crystalPureCertusQuartz>,<appliedenergistics2:material:22>,<ore:crystalPureCertusQuartz>],[null,<ore:dustFluix>,null]]);

# Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShaped(<appliedenergistics2:material:44>*2, [[null,<minecraft:redstone>,null],[<ore:gemBlackQuartz>,<appliedenergistics2:material:22>,<ore:gemBlackQuartz>],[null,<ore:dustFluix>,null]]);

# Fluix Pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, [[<threng:material>,<ore:crystalFluix>,<threng:material>],[<ore:crystalFluix>,<minecraft:ender_pearl>,<ore:crystalFluix>],[<threng:material>,<ore:crystalFluix>,<threng:material>]]);

# Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>*4, [[<ore:platePolytetrafluoroethylene>,<ore:plateHslaSteel>,<ore:platePolytetrafluoroethylene>],[<appliedenergistics2:quartz_vibrant_glass>,<contenttweaker:methodology_processor>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:platePolytetrafluoroethylene>,<ore:plateHslaSteel>,<ore:platePolytetrafluoroethylene>]]);

# Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShapedMirrored(<appliedenergistics2:material:53>, [[<ore:plateStainlessSteel>,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:25>,<ore:plateStainlessSteel>],[<ore:plateStainlessSteel>,<contenttweaker:methodology_processor>,null]]);
<appliedenergistics2:material:53>.addTooltip(format.white("Use it sparingly! If you use it a lot, it could"));
<appliedenergistics2:material:53>.addTooltip(format.white("cause your ME Network to completely lag out!"));

# 1k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [[<ore:gemOsglolapis>,<ore:crystalPureCertusQuartz>,<ore:gemOsglolapis>],[<ore:crystalPureCertusQuartz>,<appliedenergistics2:material:22>,<ore:crystalPureCertusQuartz>],[<ore:gemOsglolapis>,<ore:crystalPureCertusQuartz>,<ore:gemOsglolapis>]]);

# 4k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [[<ore:gemOsglolapis>,<appliedenergistics2:material:54>,<ore:gemOsglolapis>],[<appliedenergistics2:material:54>,<appliedenergistics2:material:23>,<appliedenergistics2:material:54>],[<ore:gemOsglolapis>,<appliedenergistics2:material:54>,<ore:gemOsglolapis>]]);

# 16k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [[<ore:gemOsglolapis>,<appliedenergistics2:material:55>,<ore:gemOsglolapis>],[<appliedenergistics2:material:55>,<appliedenergistics2:material:23>,<appliedenergistics2:material:55>],[<ore:gemOsglolapis>,<appliedenergistics2:material:55>,<ore:gemOsglolapis>]]);

# 64k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [[<ore:gemOsglolapis>,<appliedenergistics2:material:56>,<ore:gemOsglolapis>],[<appliedenergistics2:material:56>,<appliedenergistics2:material:24>,<appliedenergistics2:material:56>],[<ore:gemOsglolapis>,<appliedenergistics2:material:56>,<ore:gemOsglolapis>]]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapedMirrored(<appliedenergistics2:material:58>, [[<appliedenergistics2:material:52>,<ore:plateStainlessSteel>,null],[<appliedenergistics2:interface>,<appliedenergistics2:material:28>,<ore:plateStainlessSteel>],[<appliedenergistics2:material:52>,<ore:plateStainlessSteel>,null]]);

# ME Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.addShaped(<appliedenergistics2:part:80> * 1, [[null, <ore:plateRedAlloy>, null], [<appliedenergistics2:part:16>, <randomthings:contactlever>, <appliedenergistics2:part:16>],[null, <ore:plateRedAlloy>, null]]);

# Cable Anchor
recipes.remove(<appliedenergistics2:part:120>);
recipes.addShapeless(<appliedenergistics2:part:120>*4, [<ore:gtceKnife>, <ore:boltSteel>]);
recipes.addShapeless(<appliedenergistics2:part:120>*8, [<ore:gtceKnife>, <ore:boltStainlessSteel>]);
recipes.addShapeless(<appliedenergistics2:part:120>*16, [<ore:gtceKnife>, <ore:boltHslaSteel>]);

# Illuminated Panel
recipes.removeShaped(<appliedenergistics2:part:180>);
recipes.addShapedMirrored(<appliedenergistics2:part:180>, [[null,<minecraft:glowstone_dust>,<appliedenergistics2:quartz_glass>],[<ore:plateStainlessSteel>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[null,<minecraft:glowstone_dust>,<appliedenergistics2:quartz_glass>]]);

# ME Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShapedMirrored(<appliedenergistics2:part:220>, [[<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>,<ore:lightPlateStainlessSteel>],[<appliedenergistics2:part:260>,<ore:alloyUltimate>,<appliedenergistics2:part:240>]]);

# ME OreDict Storage Bus
recipes.remove(<appliedenergistics2:part:222>);
recipes.addShaped(<appliedenergistics2:part:222>, [[null,<contenttweaker:estimation_processor>,null],[<mekanism:dictionary>,<appliedenergistics2:part:220>,<mekanism:dictionary>],[null,<contenttweaker:estimation_processor>,null]]);

# ME Export Bus
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>, [[<ore:lightPlateStainlessSteel>,<appliedenergistics2:material:43>,<ore:lightPlateStainlessSteel>],[<ore:plateHslaSteel>,<minecraft:piston>,<ore:plateHslaSteel>]]);

# ME Import Bus
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>, [[<ore:plateHslaSteel>,<appliedenergistics2:material:44>,<ore:plateHslaSteel>],[<ore:lightPlateStainlessSteel>,<minecraft:sticky_piston>,<ore:lightPlateStainlessSteel>]]);

# ME Level Emitter
recipes.remove(<appliedenergistics2:part:280>);
recipes.addShaped(<appliedenergistics2:part:280>, [[<projectred-core:resource_item:11>],[<ore:stickStainlessSteel>],[<appliedenergistics2:material:23>]]);

# ME Fluid Level Emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShaped(<appliedenergistics2:part:281>, [[<projectred-core:resource_item:11>],[<ore:stickStainlessSteel>],[<contenttweaker:operation_processor>]]);

# ME Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShapedMirrored(<appliedenergistics2:part:300>, [[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>],[<appliedenergistics2:material:44>,<ore:crystalFluix>,<ore:itemCompressedObsidian>],[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>]]);

# ME Identity Annihilation Plane
recipes.remove(<appliedenergistics2:part:301>);
recipes.addShapeless(<appliedenergistics2:part:301>, [<appliedenergistics2:part:300>,<appliedenergistics2:material:9>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]})]);

# ME Fluid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShapedMirrored(<appliedenergistics2:part:302>, [[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>],[<appliedenergistics2:material:44>,<contenttweaker:operation_processor>,<ore:itemCompressedObsidian>],[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>]]);

# ME Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShapedMirrored(<appliedenergistics2:part:320>, [[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedDiamond>],[<appliedenergistics2:material:43>,<ore:crystalFluix>,<ore:itemCompressedDiamond>],[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedDiamond>]]);

# ME Fluid Formation Plane
recipes.remove(<appliedenergistics2:part:321>);
recipes.addShapedMirrored(<appliedenergistics2:part:321>, [[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>],[<appliedenergistics2:material:44>,<contenttweaker:operation_processor>,<ore:itemCompressedObsidian>],[<ore:plateStainlessSteel>,<ore:crystalFluix>,<ore:itemCompressedObsidian>]]);

# Pattern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:material:52>,<appliedenergistics2:part:360>,<appliedenergistics2:material:52>],[null,<contenttweaker:methodology_processor>,null]]);

# ME Extended Processing Pattern Terminal
recipes.remove(<appliedenergistics2:part:341>);
recipes.addShapedMirrored(<appliedenergistics2:part:341>, [[<contenttweaker:estimation_processor>,null,<contenttweaker:estimation_processor>],[<appliedenergistics2:part:340>,<appliedenergistics2:material:24>,<appliedenergistics2:part:340>],[<contenttweaker:estimation_processor>,null,<contenttweaker:estimation_processor>]]);

# ME Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShapedMirrored(<appliedenergistics2:part:360>, [[<appliedenergistics2:material:23>,<contenttweaker:estimation_processor>,null],[<ore:ingotRedAlloy>,<extrautils2:crafter>,<appliedenergistics2:part:380>],[<appliedenergistics2:material:23>,<contenttweaker:estimation_processor>,null]]);

# ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShapedMirrored(<appliedenergistics2:part:380>, [[null,<appliedenergistics2:material:22>,null],[<appliedenergistics2:material:43>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:44>],[null,<appliedenergistics2:material:22>,null]]);

# ME Storage Monitor
recipes.remove(<appliedenergistics2:part:400>);
recipes.addShaped(<appliedenergistics2:part:400>, [[null,<appliedenergistics2:part:280>,null],[<ore:dustFluix>,<ore:itemIlluminatedPanel>,<ore:dustFluix>],[null,<appliedenergistics2:sky_stone_chest>,null]]);

# ME Conversion Monitor
recipes.remove(<appliedenergistics2:part:420>);
recipes.addShapedMirrored(<appliedenergistics2:part:420>, [[null,<appliedenergistics2:part:280>,null],[<appliedenergistics2:material:43>,<appliedenergistics2:part:400>,<appliedenergistics2:material:44>],[null,<appliedenergistics2:material:22>,null]]);

# P2P Tunnel - ME
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShapedMirrored(<appliedenergistics2:part:460>*2, [[null,<ore:plateStainlessSteel>,<ore:crystalFluix>],[<ore:plateDoubleStainlessSteel>,<appliedenergistics2:material:24>,<ore:crystalFluix>],[null,<ore:plateStainlessSteel>,<ore:crystalFluix>]]);

# Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShapeless(<appliedenergistics2:part:480>, [<appliedenergistics2:part:521>]);
recipes.addShaped(<appliedenergistics2:part:480>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:interface>,<appliedenergistics2:part:360>,<appliedenergistics2:interface>],[null,<contenttweaker:methodology_processor>,null]]);

// ========================================================================= //

// AE2 Additions ================================================================= //

# 256k ME Storage Component
recipes.remove(<aeadditions:storage.component>);
recipes.addShaped(<aeadditions:storage.component>, [[<ore:ingotEnergeticAlloy>,<appliedenergistics2:material:38>,<ore:ingotEnergeticAlloy>],[<appliedenergistics2:material:38>,<contenttweaker:operation_processor>,<appliedenergistics2:material:38>],[<ore:ingotEnergeticAlloy>,<appliedenergistics2:material:38>,<ore:ingotEnergeticAlloy>]]);

# 1024k ME Storage Component
recipes.remove(<aeadditions:storage.component:1>);
recipes.addShaped(<aeadditions:storage.component:1>, [[<ore:ingotEnergeticAlloy>,<aeadditions:storage.component>,<ore:ingotEnergeticAlloy>],[<aeadditions:storage.component>,<contenttweaker:methodology_processor>,<aeadditions:storage.component>],[<ore:ingotEnergeticAlloy>,<aeadditions:storage.component>,<ore:ingotEnergeticAlloy>]]);

# 4096k ME Storage Component
recipes.remove(<aeadditions:storage.component:2>);
recipes.addShaped(<aeadditions:storage.component:2>, [[<ore:ingotVibrantAlloy>,<aeadditions:storage.component:1>,<ore:ingotVibrantAlloy>],[<aeadditions:storage.component:1>,<contenttweaker:clearance_processor>,<aeadditions:storage.component:1>],[<ore:ingotVibrantAlloy>,<aeadditions:storage.component:1>,<ore:ingotVibrantAlloy>]]);

# 16384k ME Storage Component
recipes.remove(<aeadditions:storage.component:3>);
recipes.addShaped(<aeadditions:storage.component:3>, [[<ore:ingotVibrantAlloy>,<aeadditions:storage.component:2>,<ore:ingotVibrantAlloy>],[<aeadditions:storage.component:2>,<contenttweaker:scheduling_processor>,<aeadditions:storage.component:2>],[<ore:ingotVibrantAlloy>,<aeadditions:storage.component:2>,<ore:ingotVibrantAlloy>]]);

# Advanced Storage Housing
recipes.remove(<aeadditions:storage.casing>);
recipes.addShaped(<aeadditions:storage.casing>, [[<appliedenergistics2:quartz_vibrant_glass>,<ore:dustFluix>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:dustFluix>,null,<ore:dustFluix>],[<enderio:item_material:14>,<enderio:item_material:14>,<enderio:item_material:14>]]);

# 256k Storage Cell
recipes.removeShaped(<aeadditions:storage.physical>);
recipes.addShaped(<aeadditions:storage.physical>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:dustFluix>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:dustFluix>,<aeadditions:storage.component>,<ore:dustFluix>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 1024k Storage Cell
recipes.removeShaped(<aeadditions:storage.physical:1>);
recipes.addShaped(<aeadditions:storage.physical:1>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:dustFluix>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:dustFluix>,<aeadditions:storage.component:1>,<ore:dustFluix>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 4096k Storage Cell
recipes.removeShaped(<aeadditions:storage.physical:2>);
recipes.addShaped(<aeadditions:storage.physical:2>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:dustFluix>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:dustFluix>,<aeadditions:storage.component:2>,<ore:dustFluix>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 16384k Storage Cell
recipes.removeShaped(<aeadditions:storage.physical:3>);
recipes.addShaped(<aeadditions:storage.physical:3>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<ore:dustFluix>,<appliedenergistics2:quartz_vibrant_glass>],[<ore:dustFluix>,<aeadditions:storage.component:3>,<ore:dustFluix>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# Certus Quartz Tank
recipes.remove(<aeadditions:certustank>);
recipes.addShaped(<aeadditions:certustank>, [[<thermalfoundation:material:200>,<thermalfoundation:material:200>,<thermalfoundation:material:200>],[<appliedenergistics2:quartz_glass>,null,<appliedenergistics2:quartz_glass>],[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>]]);

# Fluid Storage Housing
recipes.remove(<aeadditions:storage.casing:1>);
recipes.addShaped(<aeadditions:storage.casing:1>, [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,null,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);

# 256k ME Fluid Storage Component
recipes.remove(<aeadditions:storage.component:4>);
recipes.addShaped(<aeadditions:storage.component:4>, [[<extrautils2:ingredients:3>,<appliedenergistics2:material:57>,<extrautils2:ingredients:3>],[<appliedenergistics2:material:57>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:57>],[<extrautils2:ingredients:3>,<appliedenergistics2:material:57>,<extrautils2:ingredients:3>]]);

# 1024k ME Fluid Storage Component
recipes.remove(<aeadditions:storage.component:5>);
recipes.addShaped(<aeadditions:storage.component:5>, [[<ore:ingotDemonlord>,<aeadditions:storage.component:4>,<ore:ingotDemonlord>],[<aeadditions:storage.component:4>,<contenttweaker:clearance_processor>,<aeadditions:storage.component:4>],[<ore:ingotDemonlord>,<aeadditions:storage.component:4>,<ore:ingotDemonlord>]]);

# 4096k ME Fluid Storage Component
recipes.remove(<aeadditions:storage.component:6>);
recipes.addShaped(<aeadditions:storage.component:6>, [[<thermalfoundation:material:136>,<aeadditions:storage.component:5>,<thermalfoundation:material:136>],[<aeadditions:storage.component:5>,<contenttweaker:scheduling_processor>,<aeadditions:storage.component:5>],[<thermalfoundation:material:136>,<aeadditions:storage.component:5>,<thermalfoundation:material:136>]]);

# 256k ME Fluid Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/256k");
recipes.addShaped(<aeadditions:storage.fluid>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<aeadditions:storage.component:4>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);

# 1024k ME Fluid Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/1024k");
recipes.addShaped(<aeadditions:storage.fluid:1>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<aeadditions:storage.component:5>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);

# 4096k ME Fluid Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/4096k");
recipes.addShaped(<aeadditions:storage.fluid:2>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<aeadditions:storage.component:6>,<thermalfoundation:material:1028>],[<aeadditions:certustank>,<aeadditions:certustank>,<aeadditions:certustank>]]);

# 1k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:7>);
recipes.addShaped(<aeadditions:storage.component:7>, [[<mekanism:enrichedalloy>,<ore:crystalPureCertusQuartz>,<mekanism:enrichedalloy>],[<ore:crystalPureCertusQuartz>,<contenttweaker:methodology_processor>,<ore:crystalPureCertusQuartz>],[<mekanism:enrichedalloy>,<ore:crystalPureCertusQuartz>,<mekanism:enrichedalloy>]]);

# 4k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:8>);
recipes.addShaped(<aeadditions:storage.component:8>, [[<mekanism:enrichedalloy>,<aeadditions:storage.component:7>,<mekanism:enrichedalloy>],[<aeadditions:storage.component:7>,<contenttweaker:methodology_processor>,<aeadditions:storage.component:7>],[<mekanism:enrichedalloy>,<aeadditions:storage.component:7>,<mekanism:enrichedalloy>]]);

# 16k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:9>);
recipes.addShaped(<aeadditions:storage.component:9>, [[<mekanism:reinforcedalloy>,<aeadditions:storage.component:8>,<mekanism:reinforcedalloy>],[<aeadditions:storage.component:8>,<contenttweaker:methodology_processor>,<aeadditions:storage.component:8>],[<mekanism:reinforcedalloy>,<aeadditions:storage.component:8>,<mekanism:reinforcedalloy>]]);

# 64k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:10>);
recipes.addShaped(<aeadditions:storage.component:10>, [[<mekanism:reinforcedalloy>,<aeadditions:storage.component:9>,<mekanism:reinforcedalloy>],[<aeadditions:storage.component:9>,<contenttweaker:clearance_processor>,<aeadditions:storage.component:9>],[<mekanism:reinforcedalloy>,<aeadditions:storage.component:9>,<mekanism:reinforcedalloy>]]);

# 256k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:11>);
recipes.addShaped(<aeadditions:storage.component:11>, [[<mekanism:atomicalloy>,<aeadditions:storage.component:10>,<mekanism:atomicalloy>],[<aeadditions:storage.component:10>,<contenttweaker:clearance_processor>,<aeadditions:storage.component:10>],[<mekanism:atomicalloy>,<aeadditions:storage.component:10>,<mekanism:atomicalloy>]]);

# 1024k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:12>);
recipes.addShaped(<aeadditions:storage.component:12>, [[<mekanism:atomicalloy>,<aeadditions:storage.component:11>,<mekanism:atomicalloy>],[<aeadditions:storage.component:11>,<contenttweaker:clearance_processor>,<aeadditions:storage.component:11>],[<mekanism:atomicalloy>,<aeadditions:storage.component:11>,<mekanism:atomicalloy>]]);

# 4096k ME Gas Storage Component
recipes.remove(<aeadditions:storage.component:13>);
recipes.addShaped(<aeadditions:storage.component:13>, [[<ore:alloyUltimate>,<aeadditions:storage.component:12>,<ore:alloyUltimate>],[<aeadditions:storage.component:12>,<contenttweaker:scheduling_processor>,<aeadditions:storage.component:12>],[<ore:alloyUltimate>,<aeadditions:storage.component:12>,<ore:alloyUltimate>]]);

# Gas Storage Housing
recipes.remove(<aeadditions:storage.casing:2>);
recipes.addShaped(<aeadditions:storage.casing:2>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,null,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 1k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas>);
recipes.addShapeless(<aeadditions:storage.gas>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:7>]);
recipes.addShaped(<aeadditions:storage.gas>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:7>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 4k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:1>);
recipes.addShapeless(<aeadditions:storage.gas:1>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:8>]);
recipes.addShaped(<aeadditions:storage.gas:1>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:8>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 16k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:2>);
recipes.addShapeless(<aeadditions:storage.gas:2>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:9>]);
recipes.addShaped(<aeadditions:storage.gas:2>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:9>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 64k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:3>);
recipes.addShapeless(<aeadditions:storage.gas:3>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:10>]);
recipes.addShaped(<aeadditions:storage.gas:3>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:10>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 256k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:4>);
recipes.addShapeless(<aeadditions:storage.gas:4>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:11>]);
recipes.addShaped(<aeadditions:storage.gas:4>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:11>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 1024k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:5>);
recipes.addShapeless(<aeadditions:storage.gas:5>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:12>]);
recipes.addShaped(<aeadditions:storage.gas:5>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:12>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 4096k Gas Storage Cell
recipes.remove(<aeadditions:storage.gas:6>);
recipes.addShapeless(<aeadditions:storage.gas:6>, [<aeadditions:storage.casing:2>, <aeadditions:storage.component:13>]);
recipes.addShaped(<aeadditions:storage.gas:6>, [[<ore:empoweredGlodCrystal>,<thermalfoundation:material:72>,<ore:empoweredGlodCrystal>],[<thermalfoundation:material:72>,<aeadditions:storage.component:13>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME Gas Level Emitter
recipes.remove(<aeadditions:part.base:8>);
recipes.addShaped(<aeadditions:part.base:8>, [[<projectred-core:resource_item:11>],[<ore:stickStainlessSteel>],[<contenttweaker:methodology_processor>]]);
#<aeadditions:part.base:8>.addTooltip(format.red(format.italic("Disabled due to a bug where it completely")));
#<aeadditions:part.base:8>.addTooltip(format.red(format.italic("behaves as a Fluid Level Emitter.")));

# ME Gas Storage Bus
recipes.remove(<aeadditions:part.base:7>);
recipes.addShapedMirrored(<aeadditions:part.base:7>, [[<ore:plateHslaSteel>,<ore:plateHslaSteel>,<ore:plateHslaSteel>],[<aeadditions:part.base:4>,<mekanism:atomicalloy>,<aeadditions:part.base:5>]]);

# ME Gas Import Bus
recipes.remove(<aeadditions:part.base:4>);
recipes.addShaped(<aeadditions:part.base:4>, [[<appliedenergistics2:material:44>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:44>],[<ore:plateHslaSteel>,<minecraft:sticky_piston>,<ore:plateHslaSteel>]]);

# ME Gas Export Bus
recipes.remove(<aeadditions:part.base:5>);
recipes.addShaped(<aeadditions:part.base:5>, [[<appliedenergistics2:material:43>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:43>],[<ore:plateHslaSteel>,<minecraft:piston>,<ore:plateHslaSteel>]]);

# ME Gas Storage Monitor
recipes.remove(<aeadditions:part.base:9>);
recipes.addShaped(<aeadditions:part.base:9>, [[null,<mekanism:transmitter:2>.withTag({tier: 0}),null],[<ore:dustFluix>,<ore:itemIlluminatedPanel>,<ore:dustFluix>],[null,<mekanism:gastank>.withTag({tier: 0}),null]]);

# ME Gas Conversion Monitor
recipes.remove(<aeadditions:part.base:10>);
recipes.addShapedMirrored(<aeadditions:part.base:10>, [[null,<mekanism:transmitter:2>.withTag({tier: 0}),null],[<appliedenergistics2:material:43>,<aeadditions:part.base:9>,<appliedenergistics2:material:44>],[null,<contenttweaker:methodology_processor>,null]]);

# ME Gas Terminal
recipes.remove(<aeadditions:part.base:6>);
recipes.addShaped(<aeadditions:part.base:6>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:material:22>,<appliedenergistics2:part:380>,<appliedenergistics2:material:22>],[null,<contenttweaker:methodology_processor>,null]]);
recipes.addShaped(<aeadditions:part.base:6>, [[null,<appliedenergistics2:material:22>,null],[<contenttweaker:methodology_processor>,<appliedenergistics2:part:380>,<contenttweaker:methodology_processor>],[null,<appliedenergistics2:material:22>,null]]);

# ME Gas Interface
recipes.remove(<aeadditions:gas_interface>);
recipes.addShaped(<aeadditions:gas_interface>, [[<ore:empoweredGlodCrystal>,<contenttweaker:methodology_processor>,<ore:empoweredGlodCrystal>],[<appliedenergistics2:material:44>,<gregtech:machine_casing:4>,<appliedenergistics2:material:43>],[<ore:empoweredGlodCrystal>,<contenttweaker:methodology_processor>,<ore:empoweredGlodCrystal>]]);

# [Packaging Component]*4 from [Eye of Ender][+3]
recipes.removeByRecipeName("packagedauto:package_component");
craft.make(<packagedauto:package_component> * 4, ["pretty",
  "□ : □",
  "c ◊ c",
  "□ : □"], {
  "□": <ore:lightPlateAdvancedAlloy>,           # Light Advanced Alloy Plate
  ":": <ore:oc:materialCircuitBoardPrinted>,    # Printed Circuit Board (PCB)
  "c": <ore:oc:circuitChip3>,                   # Microchip (Tier 3)
  "◊": <ore:gemEnderEye> | <ore:pearlEnderEye>, # Eye of Ender
});

# [ME Packaging Component] from [Packaging Component][+4]
recipes.removeByRecipeName("packagedauto:me_package_component");
craft.make(<packagedauto:me_package_component>, ["pretty",
  "□ ⌃ □",
  "A P F",
  "□ ⌃ □"], {
  "□": <ore:lightPlateAdvancedAlloy>,      # Light Advanced Alloy Plate
  "⌃": <appliedenergistics2:quartz_glass>, # Dense Quartz Glass
  "A": <appliedenergistics2:material:44>,  # Annihilation Core
  "P": <packagedauto:package_component>,   # Packaging Component
  "F": <appliedenergistics2:material:43>,  # Formation Core
});

# [Packager] from [Advanced Packager III][+4]
recipes.removeByRecipeName("packagedauto:packager");
craft.make(<packagedauto:packager>, ["pretty",
  "□ M □",
  "* A *",
  "□ S □"], {
  "□": <ore:plateAdvancedAlloy>,            # Advanced Alloy Plate
  "M": <packagedauto:me_package_component>, # ME Packaging Component
  "*": <quantumflux:craftingpiece>,         # Quibit Crystal
  "A": <gregtech:machine:503>,              # Advanced Packager III
  "S": <threng:material:14>,                # Speculative Processor
});

# [Package Recipe Encoder] from [Database Upgrade (Tier 3)][+4]
recipes.removeByRecipeName("packagedauto:encoder");
craft.make(<packagedauto:encoder>, ["pretty",
  "□ P □",
  "C : C",
  "□ E □"], {
  "□": <ore:plateAdvancedAlloy>,              # Advanced Alloy Plate
  "P": <packagedauto:package_component>,      # Packaging Component
  "C": <avaritia:compressed_crafting_table>,  # Compressed Crafting Table
  ":": <ore:oc:databaseUpgrade3>,             # Database Upgrade (Tier 3)
  "E": <contenttweaker:estimation_processor>, # Estimation Processor
});

# [Unpackager] from [Advanced Packager III][+4]
recipes.removeByRecipeName("packagedauto:unpackager");
craft.make(<packagedauto:unpackager>, ["pretty",
  "□ M □",
  "* A *",
  "□ S □"], {
  "□": <ore:plateAdvancedAlloy>,            # Advanced Alloy Plate
  "M": <packagedauto:me_package_component>, # ME Packaging Component
  "*": <quantumflux:craftingpiece>,         # Quibit Crystal
  "A": <gregtech:machine:503>,              # Advanced Packager III
  "S": <threng:material:14>,                # Speculative Processor
});

# [Packager Extension] from [Advanced Packager III][+4]
recipes.removeByRecipeName("packagedauto:packager_extension");
craft.make(<packagedauto:packager_extension>, ["pretty",
  "□ M □",
  ": A :",
  "□ S □"], {
  "□": <ore:plateAdvancedAlloy>,            # Advanced Alloy Plate
  "M": <packagedauto:me_package_component>, # ME Packaging Component
  ":": <ore:oc:circuitChip3>,               # Microchip (Tier 3)
  "A": <gregtech:machine:503>,              # Advanced Packager III
  "S": <threng:material:14>,                # Speculative Processor
});

# [Package Recipe Holder]*4 from [Packaging Component][+2]
recipes.removeByRecipeName("packagedauto:recipe_holder");
craft.make(<packagedauto:recipe_holder> * 4, ["pretty",
  "п □ п",
  "□ P □",
  "п □ п"], {
  "п": <ore:plateAdvancedAlloy>,         # Advanced Alloy Plate
  "□": <ore:plateAwakenedDraconium>,     # Awakened Draconium Plate
  "P": <packagedauto:package_component>, # Packaging Component
});

# [Crystal Growth Accelerator] from [Fluix Block][+3]
recipes.removeByRecipeName("appliedenergistics2:network/blocks/crystal_processing_quartz_growth_accelerator");
craft.make(<appliedenergistics2:quartz_growth_accelerator>, ["pretty",
  "□ M □",
  "⌃ п ⌃",
  "□ M □"], {
  "□": <ore:plateStainlessSteel>,          # Stainless Steel Plate
  "M": <appliedenergistics2:part:16>,      # ME Glass Cable - Fluix
  "⌃": <appliedenergistics2:quartz_glass>, # Dense Quartz Glass
  "п": <appliedenergistics2:fluix_block>,  # Fluix Block
});

# [Certus Quartz Wrench] from [Flawless Certus Quartz][+2]
recipes.removeByRecipeName("appliedenergistics2:tools/certus_quartz_wrench");
craft.make(<appliedenergistics2:certus_quartz_wrench>, ["pretty",
  "  ⌃  ",
  "⌃ ^ ⌃",
  "F ⌃  "], {
  "⌃": <ore:plateCertusQuartz>,       # Certus Quartz Plate
  "^": <ore:gemFlawlessCertusQuartz>, # Flawless Certus Quartz
  "F": <ore:gtceFiles>,               # Iron File
});

# [Nether Quartz Wrench] from [Flawless Nether Quartz][+2]
recipes.removeByRecipeName("appliedenergistics2:tools/nether_quartz_wrench");
craft.make(<appliedenergistics2:nether_quartz_wrench>, ["pretty",
  "  ⌃  ",
  "⌃ ^ ⌃",
  "F ⌃  "], {
  "⌃": <ore:plateNetherQuartz>,       # Nether Quartz Plate
  "^": <ore:gemFlawlessNetherQuartz>, # Flawless Nether Quartz
  "F": <ore:gtceFiles>,               # Iron File
});




