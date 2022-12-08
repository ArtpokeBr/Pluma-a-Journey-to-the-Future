import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;
import mods.thaumcraft.Crucible;

var CrucibleRemovals as IItemStack[] = [
<thaumcraft:cluster:6>,
<thaumcraft:cluster:4>,
<thaumcraft:cluster>,
//<thaumcraft:cluster:5>,
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
//<thaumcraft:cluster:5>,
<thaumcraft:cluster:7>,
<thaumcraft:cluster:1>,
<thaumcraft:cluster:2>,
<thaumcraft:cluster:3>
];
for item in HidingThaumClusters {
JEI.hide(item);
furnace.remove(<*>, item);
}

# Purifying Bath Salts
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:bath_salts>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:BathSalts", "BATHSALTS", <thaumcraft:bath_salts>, <thaumcraft:salis_mundus>, [<aspect:victus> * 80, <aspect:aqua> * 60, <aspect:cognitio> * 60, <aspect:sensus> * 40, <aspect:ordo> * 40]);
