
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

// =============================================== //

var glod_crystal_block = VanillaFactory.createBlock("glod_crystal_block", <blockmaterial:iron>);
glod_crystal_block.setBlockHardness(3);
glod_crystal_block.setBlockResistance(6);
glod_crystal_block.setToolClass("pickaxe");
glod_crystal_block.setToolLevel(2);
glod_crystal_block.setBlockSoundType(<soundtype:metal>);
glod_crystal_block.register();

var empowered_glod_crystal_block = VanillaFactory.createBlock("empowered_glod_crystal_block", <blockmaterial:iron>);
empowered_glod_crystal_block.setBlockHardness(3);
empowered_glod_crystal_block.setBlockResistance(6);
empowered_glod_crystal_block.setToolClass("pickaxe");
empowered_glod_crystal_block.setToolLevel(2);
empowered_glod_crystal_block.setBlockSoundType(<soundtype:metal>);
empowered_glod_crystal_block.register();

var endor_crystal_block = VanillaFactory.createBlock("endor_crystal_block", <blockmaterial:iron>);
endor_crystal_block.setBlockHardness(3);
endor_crystal_block.setBlockResistance(6);
endor_crystal_block.setToolClass("pickaxe");
endor_crystal_block.setToolLevel(2);
endor_crystal_block.setBlockSoundType(<soundtype:metal>);
endor_crystal_block.register();

var empowered_endor_crystal_block = VanillaFactory.createBlock("empowered_endor_crystal_block", <blockmaterial:iron>);
empowered_endor_crystal_block.setBlockHardness(3);
empowered_endor_crystal_block.setBlockResistance(6);
empowered_endor_crystal_block.setToolClass("pickaxe");
empowered_endor_crystal_block.setToolLevel(2);
empowered_endor_crystal_block.setBlockSoundType(<soundtype:metal>);
empowered_endor_crystal_block.register();

// var ObsidianGlass = VanillaFactory.createBlock("obsidian_glass", <blockmaterial:glass>);
// ObsidianGlass.setLightValue(0);
// ObsidianGlass.setBlockHardness(5.0);
// ObsidianGlass.setBlockResistance(5.0);
// ObsidianGlass.setToolClass("pickaxe");
// ObsidianGlass.setToolLevel(3);
// ObsidianGlass.setBlockSoundType(<soundtype:glass>);
// ObsidianGlass.setFullBlock(false);
// ObsidianGlass.setTranslucent(true);
// ObsidianGlass.setBlockLayer("CUTOUT");
// ObsidianGlass.register();

var baykoks_bloodied_stone = VanillaFactory.createBlock("baykoksbloodiedstone", <blockmaterial:rock>);
baykoks_bloodied_stone.setBlockHardness(1.5);
baykoks_bloodied_stone.setBlockResistance(6.0);
baykoks_bloodied_stone.setToolClass("pickaxe");
baykoks_bloodied_stone.setToolLevel(0);
baykoks_bloodied_stone.setBlockSoundType(<soundtype:stone>);
baykoks_bloodied_stone.register();

var aluminium_gravel = VanillaFactory.createBlock("aluminiumgravel", <blockmaterial:rock>);
aluminium_gravel.setBlockHardness(5.0);
aluminium_gravel.setBlockResistance(3.0);
aluminium_gravel.setGravity(true);
aluminium_gravel.setToolClass("shovel");
aluminium_gravel.setToolLevel(2);
aluminium_gravel.setBlockSoundType(<soundtype:ground>);
aluminium_gravel.register();

var modularCasing = VanillaFactory.createBlock("modular_casing", <blockmaterial:iron>);
modularCasing.setLightOpacity(3);
modularCasing.setLightValue(0);
modularCasing.setBlockHardness(5.0);
modularCasing.setBlockResistance(5.0);
modularCasing.setToolClass("pickaxe");
modularCasing.setToolLevel(3);
modularCasing.setBlockSoundType(<soundtype:metal>);
modularCasing.register();

var vanadiumsteelCasing = VanillaFactory.createBlock("vanadiumsteel_casing", <blockmaterial:iron>);
vanadiumsteelCasing.setLightOpacity(3);
vanadiumsteelCasing.setLightValue(0);
vanadiumsteelCasing.setBlockHardness(5.0);
vanadiumsteelCasing.setBlockResistance(5.0);
vanadiumsteelCasing.setToolClass("pickaxe");
vanadiumsteelCasing.setToolLevel(3);
vanadiumsteelCasing.setBlockSoundType(<soundtype:metal>);
vanadiumsteelCasing.register();

var livingmatter = VanillaFactory.createBlock("livingmatter", <blockmaterial:ground>);
livingmatter.setBlockHardness(1.0);
livingmatter.setBlockResistance(1.0);
livingmatter.setToolClass("shovel");
livingmatter.setToolLevel(0);
livingmatter.setBlockSoundType(<soundtype:ground>);
livingmatter.register();

var dreammatter = VanillaFactory.createBlock("dreammatter", <blockmaterial:ground>);
dreammatter.setBlockHardness(2.0);
dreammatter.setBlockResistance(2.0);
dreammatter.setToolClass("shovel");
dreammatter.setToolLevel(0);
dreammatter.setBlockSoundType(<soundtype:ground>);
dreammatter.register();

var osglolapis_block = VanillaFactory.createBlock("osglolapis_block", <blockmaterial:iron>);
osglolapis_block.setBlockHardness(4);
osglolapis_block.setBlockResistance(4);
osglolapis_block.setToolClass("pickaxe");
osglolapis_block.setToolLevel(1);
osglolapis_block.setBlockSoundType(<soundtype:metal>);
osglolapis_block.register();

var hyper_diamond_block = VanillaFactory.createBlock("hyper_diamond_block", <blockmaterial:iron>);
hyper_diamond_block.setBlockHardness(6.0);
hyper_diamond_block.setBlockResistance(5.0);
hyper_diamond_block.setToolClass("pickaxe");
hyper_diamond_block.setToolLevel(2);
hyper_diamond_block.setBlockSoundType(<soundtype:metal>);
hyper_diamond_block.register();

var industrial_grade_graphite_ore = VanillaFactory.createBlock("industrial_grade_graphite_ore", <blockmaterial:rock>);
industrial_grade_graphite_ore.setBlockHardness(3.0);
industrial_grade_graphite_ore.setBlockResistance(3.0);
industrial_grade_graphite_ore.setToolClass("pickaxe");
industrial_grade_graphite_ore.setToolLevel(2);
industrial_grade_graphite_ore.setBlockSoundType(<soundtype:stone>);
industrial_grade_graphite_ore.register();

//Nacre Related =========

var nacre_block = VanillaFactory.createBlock("nacre_block", <blockmaterial:rock>);
nacre_block.setBlockHardness(1.5);
nacre_block.setBlockResistance(6.0);
nacre_block.setToolClass("pickaxe");
nacre_block.setToolLevel(0);
nacre_block.setBlockSoundType(<soundtype:stone>);
nacre_block.register();

var nacre_bricks = VanillaFactory.createBlock("nacre_bricks", <blockmaterial:rock>);
nacre_bricks.setBlockHardness(1.5);
nacre_bricks.setBlockResistance(6.0);
nacre_bricks.setToolClass("pickaxe");
nacre_bricks.setToolLevel(0);
nacre_bricks.setBlockSoundType(<soundtype:stone>);
nacre_bricks.register();

var nacre_block_weathered = VanillaFactory.createBlock("nacre_block_weathered", <blockmaterial:rock>);
nacre_block_weathered.setBlockHardness(1.5);
nacre_block_weathered.setBlockResistance(6.0);
nacre_block_weathered.setToolClass("pickaxe");
nacre_block_weathered.setToolLevel(0);
nacre_block_weathered.setBlockSoundType(<soundtype:stone>);
nacre_block_weathered.register();

var nacre_bricks_weathered = VanillaFactory.createBlock("nacre_bricks_weathered", <blockmaterial:rock>);
nacre_bricks_weathered.setBlockHardness(1.5);
nacre_bricks_weathered.setBlockResistance(6.0);
nacre_bricks_weathered.setToolClass("pickaxe");
nacre_bricks_weathered.setToolLevel(0);
nacre_bricks_weathered.setBlockSoundType(<soundtype:stone>);
nacre_bricks_weathered.register();

// Ported from 1.7.10 Tinkers

var refined_stone_bricks = VanillaFactory.createBlock("brick_stone_refined", <blockmaterial:rock>);
refined_stone_bricks.setBlockHardness(1.5);
refined_stone_bricks.setBlockResistance(6.0);
refined_stone_bricks.setToolClass("pickaxe");
refined_stone_bricks.setToolLevel(0);
refined_stone_bricks.setBlockSoundType(<soundtype:stone>);
refined_stone_bricks.register();

var refined_stone_fancybricks = VanillaFactory.createBlock("fancybrick_stone_refined", <blockmaterial:rock>);
refined_stone_fancybricks.setBlockHardness(1.5);
refined_stone_fancybricks.setBlockResistance(6.0);
refined_stone_fancybricks.setToolClass("pickaxe");
refined_stone_fancybricks.setToolLevel(0);
refined_stone_fancybricks.setBlockSoundType(<soundtype:stone>);
refined_stone_fancybricks.register();

var refined_stone_road = VanillaFactory.createBlock("road_stone_refined", <blockmaterial:rock>);
refined_stone_road.setBlockHardness(1.5);
refined_stone_road.setBlockResistance(6.0);
refined_stone_road.setToolClass("pickaxe");
refined_stone_road.setToolLevel(0);
refined_stone_road.setBlockSoundType(<soundtype:stone>);
refined_stone_road.register();

var refined_stone_square = VanillaFactory.createBlock("squarebrick_stone_refined", <blockmaterial:rock>);
refined_stone_square.setBlockHardness(1.5);
refined_stone_square.setBlockResistance(6.0);
refined_stone_square.setToolClass("pickaxe");
refined_stone_square.setToolLevel(0);
refined_stone_square.setBlockSoundType(<soundtype:stone>);
refined_stone_square.register();

// Ported from 1.7.10 Chisel

var mason_bricks_1 = VanillaFactory.createBlock("mason_bricks_felsic", <blockmaterial:rock>);
mason_bricks_1.setBlockHardness(1.5);
mason_bricks_1.setBlockResistance(6.0);
mason_bricks_1.setToolClass("pickaxe");
mason_bricks_1.setToolLevel(0);
mason_bricks_1.setBlockSoundType(<soundtype:stone>);
mason_bricks_1.register();

var mason_bricks_2 = VanillaFactory.createBlock("mason_bricks_mafic", <blockmaterial:rock>);
mason_bricks_2.setBlockHardness(1.5);
mason_bricks_2.setBlockResistance(6.0);
mason_bricks_2.setToolClass("pickaxe");
mason_bricks_2.setToolLevel(0);
mason_bricks_2.setBlockSoundType(<soundtype:stone>);
mason_bricks_2.register();

var mason_bricks_3 = VanillaFactory.createBlock("mason_bricks_mixed", <blockmaterial:rock>);
mason_bricks_3.setBlockHardness(1.5);
mason_bricks_3.setBlockResistance(6.0);
mason_bricks_3.setToolClass("pickaxe");
mason_bricks_3.setToolLevel(0);
mason_bricks_3.setBlockSoundType(<soundtype:stone>);
mason_bricks_3.register();

var mason_bricks_4 = VanillaFactory.createBlock("mason_bricks_plain", <blockmaterial:rock>);
mason_bricks_4.setBlockHardness(1.5);
mason_bricks_4.setBlockResistance(6.0);
mason_bricks_4.setToolClass("pickaxe");
mason_bricks_4.setToolLevel(0);
mason_bricks_4.setBlockSoundType(<soundtype:stone>);
mason_bricks_4.register();

// Immersive Engineering Blocks ===================================

#Concrete
var ie_concrete = VanillaFactory.createBlock("ie_concrete", <blockmaterial:rock>);
ie_concrete.setBlockHardness(1.5);
ie_concrete.setBlockResistance(6.0);
ie_concrete.setToolClass("pickaxe");
ie_concrete.setToolLevel(0);
ie_concrete.setBlockSoundType(<soundtype:stone>);
ie_concrete.register();

var ie_concrete_tile = VanillaFactory.createBlock("ie_concrete_tile", <blockmaterial:rock>);
ie_concrete_tile.setBlockHardness(1.5);
ie_concrete_tile.setBlockResistance(6.0);
ie_concrete_tile.setToolClass("pickaxe");
ie_concrete_tile.setToolLevel(0);
ie_concrete_tile.setBlockSoundType(<soundtype:stone>);
ie_concrete_tile.register();

var ie_leaded_concrete = VanillaFactory.createBlock("ie_leaded_concrete", <blockmaterial:rock>);
ie_leaded_concrete.setBlockHardness(1.5);
ie_leaded_concrete.setBlockResistance(6.0);
ie_leaded_concrete.setToolClass("pickaxe");
ie_leaded_concrete.setToolLevel(0);
ie_leaded_concrete.setBlockSoundType(<soundtype:stone>);
ie_leaded_concrete.register();

var ie_hempcrete = VanillaFactory.createBlock("ie_hempcrete", <blockmaterial:rock>);
ie_hempcrete.setBlockHardness(1.5);
ie_hempcrete.setBlockResistance(6.0);
ie_hempcrete.setToolClass("pickaxe");
ie_hempcrete.setToolLevel(0);
ie_hempcrete.setBlockSoundType(<soundtype:stone>);
ie_hempcrete.register();

#Sheetmetals
var ie_iron_sheetmetal = VanillaFactory.createBlock("ie_iron_sheetmetal", <blockmaterial:iron>);
ie_iron_sheetmetal.setBlockHardness(4);
ie_iron_sheetmetal.setBlockResistance(4);
ie_iron_sheetmetal.setToolClass("pickaxe");
ie_iron_sheetmetal.setToolLevel(1);
ie_iron_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_iron_sheetmetal.register();

var ie_aluminium_sheetmetal = VanillaFactory.createBlock("ie_aluminium_sheetmetal", <blockmaterial:iron>);
ie_aluminium_sheetmetal.setBlockHardness(4);
ie_aluminium_sheetmetal.setBlockResistance(4);
ie_aluminium_sheetmetal.setToolClass("pickaxe");
ie_aluminium_sheetmetal.setToolLevel(1);
ie_aluminium_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_aluminium_sheetmetal.register();

var ie_silver_sheetmetal = VanillaFactory.createBlock("ie_silver_sheetmetal", <blockmaterial:iron>);
ie_silver_sheetmetal.setBlockHardness(4);
ie_silver_sheetmetal.setBlockResistance(4);
ie_silver_sheetmetal.setToolClass("pickaxe");
ie_silver_sheetmetal.setToolLevel(1);
ie_silver_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_silver_sheetmetal.register();

var ie_lead_sheetmetal = VanillaFactory.createBlock("ie_lead_sheetmetal", <blockmaterial:iron>);
ie_lead_sheetmetal.setBlockHardness(4);
ie_lead_sheetmetal.setBlockResistance(4);
ie_lead_sheetmetal.setToolClass("pickaxe");
ie_lead_sheetmetal.setToolLevel(1);
ie_lead_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_lead_sheetmetal.register();

var ie_electrum_sheetmetal = VanillaFactory.createBlock("ie_electrum_sheetmetal", <blockmaterial:iron>);
ie_electrum_sheetmetal.setBlockHardness(4);
ie_electrum_sheetmetal.setBlockResistance(4);
ie_electrum_sheetmetal.setToolClass("pickaxe");
ie_electrum_sheetmetal.setToolLevel(1);
ie_electrum_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_electrum_sheetmetal.register();

var ie_cupronickel_sheetmetal = VanillaFactory.createBlock("ie_cupronickel_sheetmetal", <blockmaterial:iron>);
ie_cupronickel_sheetmetal.setBlockHardness(4);
ie_cupronickel_sheetmetal.setBlockResistance(4);
ie_cupronickel_sheetmetal.setToolClass("pickaxe");
ie_cupronickel_sheetmetal.setToolLevel(1);
ie_cupronickel_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_cupronickel_sheetmetal.register();

var ie_uranium_sheetmetal = VanillaFactory.createBlock("ie_uranium_sheetmetal", <blockmaterial:iron>);
ie_uranium_sheetmetal.setBlockHardness(4);
ie_uranium_sheetmetal.setBlockResistance(4);
ie_uranium_sheetmetal.setToolClass("pickaxe");
ie_uranium_sheetmetal.setToolLevel(1);
ie_uranium_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_uranium_sheetmetal.register();

var ie_nickel_sheetmetal = VanillaFactory.createBlock("ie_nickel_sheetmetal", <blockmaterial:iron>);
ie_nickel_sheetmetal.setBlockHardness(4);
ie_nickel_sheetmetal.setBlockResistance(4);
ie_nickel_sheetmetal.setToolClass("pickaxe");
ie_nickel_sheetmetal.setToolLevel(1);
ie_nickel_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_nickel_sheetmetal.register();

var ie_steel_sheetmetal = VanillaFactory.createBlock("ie_steel_sheetmetal", <blockmaterial:iron>);
ie_steel_sheetmetal.setBlockHardness(4);
ie_steel_sheetmetal.setBlockResistance(4);
ie_steel_sheetmetal.setToolClass("pickaxe");
ie_steel_sheetmetal.setToolLevel(1);
ie_steel_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_steel_sheetmetal.register();

var ie_gold_sheetmetal = VanillaFactory.createBlock("ie_gold_sheetmetal", <blockmaterial:iron>);
ie_gold_sheetmetal.setBlockHardness(4);
ie_gold_sheetmetal.setBlockResistance(4);
ie_gold_sheetmetal.setToolClass("pickaxe");
ie_gold_sheetmetal.setToolLevel(1);
ie_gold_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_gold_sheetmetal.register();

var ie_copper_sheetmetal = VanillaFactory.createBlock("ie_copper_sheetmetal", <blockmaterial:iron>);
ie_copper_sheetmetal.setBlockHardness(4);
ie_copper_sheetmetal.setBlockResistance(4);
ie_copper_sheetmetal.setToolClass("pickaxe");
ie_copper_sheetmetal.setToolLevel(1);
ie_copper_sheetmetal.setBlockSoundType(<soundtype:metal>);
ie_copper_sheetmetal.register();

# Insulating Glass
var ie_insulating_glass = VanillaFactory.createBlock("ie_insulating_glass", <blockmaterial:iron>);
ie_insulating_glass.setLightValue(0);
ie_insulating_glass.setBlockHardness(5.0);
ie_insulating_glass.setBlockResistance(5.0);
ie_insulating_glass.setToolClass("pickaxe");
ie_insulating_glass.setToolLevel(3);
ie_insulating_glass.setBlockSoundType(<soundtype:metal>);
ie_insulating_glass.setFullBlock(false);
ie_insulating_glass.setTranslucent(true);
ie_insulating_glass.setBlockLayer("CUTOUT");
ie_insulating_glass.register();

# Coils
var ie_hv_coil = VanillaFactory.createBlock("ie_hv_coil", <blockmaterial:iron>);
ie_hv_coil.setBlockHardness(4);
ie_hv_coil.setBlockResistance(4);
ie_hv_coil.setToolClass("pickaxe");
ie_hv_coil.setToolLevel(1);
ie_hv_coil.setBlockSoundType(<soundtype:metal>);
ie_hv_coil.register();

var ie_mv_coil = VanillaFactory.createBlock("ie_mv_coil", <blockmaterial:iron>);
ie_mv_coil.setBlockHardness(4);
ie_mv_coil.setBlockResistance(4);
ie_mv_coil.setToolClass("pickaxe");
ie_mv_coil.setToolLevel(1);
ie_mv_coil.setBlockSoundType(<soundtype:metal>);
ie_mv_coil.register();

var ie_lv_coil = VanillaFactory.createBlock("ie_lv_coil", <blockmaterial:iron>);
ie_lv_coil.setBlockHardness(4);
ie_lv_coil.setBlockResistance(4);
ie_lv_coil.setToolClass("pickaxe");
ie_lv_coil.setToolLevel(1);
ie_lv_coil.setBlockSoundType(<soundtype:metal>);
ie_lv_coil.register();

#Factory Blocks
var ie_generator_block = VanillaFactory.createBlock("ie_generator_block", <blockmaterial:iron>);
ie_generator_block.setBlockHardness(4);
ie_generator_block.setBlockResistance(4);
ie_generator_block.setToolClass("pickaxe");
ie_generator_block.setToolLevel(1);
ie_generator_block.setBlockSoundType(<soundtype:metal>);
ie_generator_block.register();

#Nethersteel from Bewitchment
var nethersteel = VanillaFactory.createBlock("nethersteel", <blockmaterial:iron>);
nethersteel.setBlockHardness(6);
nethersteel.setBlockResistance(6);
nethersteel.setToolClass("pickaxe");
nethersteel.setToolLevel(3);
nethersteel.setBlockSoundType(<soundtype:metal>);
nethersteel.register();
