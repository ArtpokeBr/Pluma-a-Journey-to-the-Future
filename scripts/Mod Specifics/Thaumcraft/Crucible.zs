import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;
import mods.thaumcraft.Crucible;

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
