#modloaded ic2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

var FilledTinCans as IData[][IItemStack] = {
	<minecraft:potato> : [1],
    <minecraft:cookie> : [2],
    <minecraft:melon> : [2],
    <minecraft:fish> : [2],
    <minecraft:chicken> : [2],
    <minecraft:porkchop> : [2],
    <minecraft:beef> : [3],
    <minecraft:apple> : [4],
    <minecraft:carrot> : [4],
    <minecraft:bread> : [5],
    <minecraft:cooked_fish> : [5],
    <minecraft:cooked_chicken> : [6],
    <minecraft:baked_potato> : [6],
    <minecraft:mushroom_stew> : [6],
    <minecraft:pumpkin_pie> : [6],
    <minecraft:cooked_porkchop> : [8],
    <minecraft:cooked_beef> : [8],
    <minecraft:cake> : [12],
    <minecraft:poisonous_potato>*2 : [1],
    <minecraft:rotten_flesh>*2 : [1],
};

for food, multiplier in FilledTinCans {
		<recipemap:canner>.recipeBuilder()
			.inputs(<ic2:crafting:10> * multiplier[0], food)
			.outputs(<ic2:filled_tin_can> * multiplier[0])
			.duration(100 * multiplier[0])
			.EUt(40)
		.buildAndRegister();
}