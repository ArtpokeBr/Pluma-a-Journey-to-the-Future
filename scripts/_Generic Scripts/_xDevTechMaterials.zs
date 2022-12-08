#loader gregtech

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;

import mods.gregtech.material.Material;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.MaterialFlag;
import mods.gregtech.MaterialFlagBuilder;
//import mods.gregtech.recipe.IRecipeUtils;
//import mods.gregtech.recipe.helpers;
import mods.gregtech.recipe.Utils;

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;

import mods.mekanism.chemical.injection as ChemicalInjection;
import mods.mekanism.purification as PurificationChamber;
import mods.mekanism.enrichment as EnrichmentChamber;
import mods.mekanism.compressor as ChemicalCompressor;

import mods.gregtech.recipe.RecipeMap;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.Crucible;

// =================================

val lightPlate as OrePrefix = OrePrefix.registerOrePrefix("lightPlate", 1);

lightPlate.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasIngot();
} as IMaterialPredicate);

lightPlate.createMaterialItem();

// ====

val heavyPlate as OrePrefix = OrePrefix.registerOrePrefix("heavyPlate", 1);

heavyPlate.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasIngot();
} as IMaterialPredicate);

heavyPlate.createMaterialItem();

// ====

val oreCluster as OrePrefix = OrePrefix.registerOrePrefix("oreCluster", 1);

oreCluster.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

oreCluster.createMaterialItem();

// ====

val oreCrystal as OrePrefix = OrePrefix.registerOrePrefix("oreCrystal", 1);

oreCrystal.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

oreCrystal.createMaterialItem();

// ====

val oreShard as OrePrefix = OrePrefix.registerOrePrefix("oreShard", 1);

oreShard.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

oreShard.createMaterialItem();

// ====

val oreClump as OrePrefix = OrePrefix.registerOrePrefix("oreClump", 1);

oreClump.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

oreClump.createMaterialItem();

// ====

val orePurified as OrePrefix = OrePrefix.registerOrePrefix("orePurified", 1);

orePurified.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

orePurified.createMaterialItem();

// ====

// -=-=-=--=- Flags -=-=-=-=-=-=-=-=-=-=-=-=-=

// # Enriched Egg Flag
// val enriched_egg = MaterialFlagBuilder.create("enriched_egg")
// .requireFluid()
// .build();

// <material:vinteum>.addFlags("enriched_egg");
// <material:graphite>.addFlags("enriched_egg");
// <material:apatite>.addFlags("enriched_egg");
// <material:starmetal>.addFlags("enriched_egg");
// <material:menril>.addFlags("enriched_egg");
// <material:plastic>.addFlags("enriched_egg");
// <material:rubber>.addFlags("enriched_egg");
// <material:fluix>.addFlags("enriched_egg");
// <material:concrete>.addFlags("enriched_egg");
// <material:uranium>.addFlags("enriched_egg");
// <material:fluorine>.addFlags("enriched_egg");
// <material:radon>.addFlags("enriched_egg");
// <material:polycaprolactam>.addFlags("enriched_egg");
// <material:manasteel>.addFlags("enriched_egg");

// val enrichedEgg as OrePrefix = OrePrefix.registerOrePrefix("enrichedEgg", 1);

// enrichedEgg.setGenerationPredicate(function(mat as Material) as bool {
//     return mat.hasFlag(enriched_egg);
// } as IMaterialPredicate);

// enrichedEgg.createMaterialItem();

// -=-=-=-=-=-=-=-=--=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


