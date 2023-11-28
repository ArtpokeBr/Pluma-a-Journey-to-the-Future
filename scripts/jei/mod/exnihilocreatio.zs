#priority 950
#modloaded exnihilocreatio

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import scripts.jei.requious.add as addRecipe;

var x = <assembly:scented_hive>;
x.addJEICatalyst(<exnihilocreatio:hive:1>);
x.setJEIDurationSlot(3,0,"duration", scripts.jei.requious.getVisSlots(5,1));
scripts.jei.requious.addInsOuts(x, [[1,0],[2,0],[0,0]], [[4,0]]);

/*Inject_js(
JSON.parse(loadText('config/exnihilocreatio/ScentedHiveRegistry.json'))
.map(l=>`addRecipe(x, {[<exnihilocreatio:hive:1>, ${
  Object.keys(l.adjacentBlocks).map(i=>`<${i}>`).join(', ')
}] : [<${l.hive}>]});`)
.join('\n')
)*/
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <ore:treeLeaves>, <ore:logWood>] : [<forestry:beehives:0>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <ore:flower>] : [<forestry:beehives:1>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <ore:sand>] : [<forestry:beehives:2>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <minecraft:log:3>, <ore:treeLeaves>] : [<forestry:beehives:3>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <minecraft:end_stone:0>] : [<forestry:beehives:4>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <minecraft:ice:0>, <minecraft:snow:0>] : [<forestry:beehives:5>]});
addRecipe(x, {[<exnihilocreatio:hive:1>.withTag({display:{Name:"§r§bPlace Above the Respective Block"}}), <ore:dirt>] : [<forestry:beehives:6>]});
/**/

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:witch_water>;
x.addJEICatalyst(Bucket('witchwater'));
x.addJEICatalyst(<exnihilocreatio:witchwater>);
x.setJEIDurationSlot(1,0,"duration", scripts.jei.requious.getVisGauge(1,8));
scripts.jei.requious.addInsOuts(x, [[0,0]], [[2,0]]);
addRecipe(x, {[Soul('minecraft:skeleton')] : [Soul('minecraft:wither_skeleton')]});
addRecipe(x, {[Soul('minecraft:creeper')]  : [Soul('minecraft:creeper')]});
addRecipe(x, {[Soul('minecraft:slime')]    : [Soul('minecraft:magma_cube')]});
addRecipe(x, {[Soul('minecraft:spider')]   : [Soul('minecraft:cave_spider')]});
addRecipe(x, {[Soul('minecraft:squid')]    : [Soul('minecraft:ghast')]});
addRecipe(x, {[Soul('minecraft:villager')] : [Soul('minecraft:zombie_villager')]});
addRecipe(x, {[Soul('minecraft:villager')] : [Soul('minecraft:witch')]});
addRecipe(x, {[Soul('minecraft:villager')] : [Soul('minecraft:evocation_illager')]});
addRecipe(x, {[Soul('minecraft:villager')] : [Soul('minecraft:vindication_illager')]});
addRecipe(x, {[Soul('minecraft:pig')]      : [Soul('minecraft:zombie_pigman')]});
addRecipe(x, {[Soul('minecraft:cow')]      : [Soul('minecraft:mooshroom')]});

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
