import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;
import mods.thaumcraft.Crucible;

/*
 ██████╗██████╗ ██╗   ██╗ ██████╗██╗██████╗ ██╗     ███████╗
██╔════╝██╔══██╗██║   ██║██╔════╝██║██╔══██╗██║     ██╔════╝
██║     ██████╔╝██║   ██║██║     ██║██████╔╝██║     █████╗  
██║     ██╔══██╗██║   ██║██║     ██║██╔══██╗██║     ██╔══╝  
╚██████╗██║  ██║╚██████╔╝╚██████╗██║██████╔╝███████╗███████╗
 ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝╚═════╝ ╚══════╝╚══════╝
*/

var CrucibleRemovals as IItemStack[] = [
<thaumcraft:cluster:6>,
<thaumcraft:cluster:4>,
<thaumcraft:cluster>,
<thaumcraft:cluster:5>,
<thaumcraft:cluster:7>,
<thaumcraft:cluster:1>,
<thaumcraft:cluster:2>,
<thaumcraft:cluster:3>
];
for item in CrucibleRemovals {
mods.thaumcraft.Crucible.removeRecipe(item);
}

//Hiding Original Native Clusters
var HidingThaumClusters as IItemStack[] = [
<thaumcraft:cluster:6>,
<thaumcraft:cluster:4>,
<thaumcraft:cluster>,
<thaumcraft:cluster:5>,
<thaumcraft:cluster:7>,
<thaumcraft:cluster:1>,
<thaumcraft:cluster:2>,
<thaumcraft:cluster:3>
];
for item in HidingThaumClusters {
JEI.hide(item);
furnace.remove(<*>, item);
}

# [Yellow Nitor]*8 from [Glowstone Nano-Particles][+3]
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
mods.thaumcraft.Crucible.registerRecipe(
  "nitor_yellow", # Name
  "BASEALCHEMY", # Research
  <thaumcraft:nitor_yellow> * 8, # Output
  <enderio:block_holier_fog>, # Input
  [<aspect:ignis> * 10, <aspect:potentia> * 10, <aspect:lux> * 10]
);

# [Salis Mundus]*4 from [Mana Powder][+3]
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:salis_mundus>);
mods.thaumcraft.Crucible.registerRecipe(
  "salis_mundus", # Name
  "TAR_ESSENCE_SALT", # Research
  <thaumcraft:salis_mundus> * 4, # Output
  <ore:powderMana>, # Input
  [<aspect:auram> * 20, <aspect:visum> * 10, <aspect:ventus> * 15]
);

# [Purifying Bath Salts] from [Phial of Imperium Essentia][+6]
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:bath_salts>);
mods.thaumcraft.Crucible.registerRecipe(
  "bath_salts", # Name
  "BATHSALTS", # Research
  <thaumcraft:bath_salts>, # Output
  <thaumcraft:salis_mundus>, # Input
  [<aspect:victus> * 40, <aspect:aqua> * 80, <aspect:sensus> * 4, <aspect:ordo> * 10, <aspect:imperium> * 10, <aspect:cognitio> * 40]
);

# [Alchemical Brass Ingot]
// mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:64> * 3);
// mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:128> * 3);
// mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:2>);
// mods.thaumcraft.Crucible.registerRecipe("thaumcraft:brassingot", "METALLURGY@1", <thaumcraft:ingot:2>, <botania:manaresource:7>, [<aspect:instrumentum> * 10, <aspect:cognitio> * 10]);

# [Thaumium Ingot]
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:thaumiumingot", "METALLURGY@2", <ore:ingotThaumium>.firstItem, <ore:ingotBrass>.firstItem, [<aspect:praecantatio> * 10,<aspect:metallum> * 10,<aspect:alkimia> * 10,<aspect:exanimis> * 10]);

# [Void Metal Ingot] from [Void Seed][+3]
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:1>);
mods.thaumcraft.Crucible.registerRecipe(
  "thaumcraft:void_metal_ingot", # Name
  "METALLURGY@2", # Research
  <ore:ingotVoid>.firstItem, # Output
  <thaumcraft:void_seed>, # Input
  [<aspect:tenebrae> * 10, <aspect:exitium> * 5, <aspect:vitium> * 5, <aspect:metallum> * 15 ]
);

# Impetus Jewel
mods.thaumcraft.Crucible.removeRecipe(<thaumicaugmentation:material:5>);
mods.thaumcraft.Crucible.registerRecipe("thaumicaugmentation:impetus_jewel", "", <thaumicaugmentation:material:5>, <contenttweaker:impetus_crystal>, [<aspect:ordo> * 30, <aspect:potentia> * 30,<aspect:fluctus> * 15, <aspect:infernum> * 15]);

# Alumentum
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:alumentum", "ALUMENTUM", <thaumcraft:alumentum>, <ore:crystalAlumina>.firstItem, [<aspect:potentia> * 5, <aspect:ignis> * 2, <aspect:metallum> * 2, <aspect:perditio> * 2]);

# Magic Tallow
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:tallow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:hedge_tallow", "HEDGEALCHEMY@1", <thaumcraft:tallow>, <thaumcraft:flesh_block>, [<aspect:ignis> * 20,<aspect:praecantatio> * 12, <aspect:permutatio> * 8]);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:hedge_tallow_2", "HEDGEALCHEMY@1", <thaumcraft:tallow>, <ore:tallow>, [<aspect:ignis> * 10,<aspect:praecantatio> * 6, <aspect:permutatio> * 4]);
