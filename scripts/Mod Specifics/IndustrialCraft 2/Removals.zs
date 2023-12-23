#modloaded ic2

import crafttweaker.item.IItemStack;

var ItensRemovidos as IItemStack[] = [
    <ic2:te:100>,
    <ic2:te:101>,
    <ic2:te:102>,
    <ic2:te:3>,
    <ic2:te:4>,
    <ic2:te:7>,
    <ic2:te:8>,
    <ic2:te:5>,
    <ic2:te:9>,
    <ic2:te:21>,
    <ic2:te:10>,
    <ic2:te:19>,
    <ic2:te:18>,
    <ic2:te:17>,
    <ic2:te:13>,
    <ic2:te:16>,
    <ic2:te:14>,
    <ic2:te:15>,
    <ic2:te:12>,
    <ic2:te:20>,
    <ic2:te:11>,
    <ic2:te:27>,
    <ic2:te:31>,
    <ic2:te:33>,
    <ic2:te:34>,
    <ic2:te:44>,
    <ic2:te:50>,
    <ic2:te:54>,
    <ic2:te:56>,
    <ic2:te:76>,
    <ic2:crushed:3>,
    <ic2:crushed:4>,
    <ic2:crushed:5>,
    <ic2:crushed:6>,
    <ic2:purified>,
    <ic2:purified:1>,
    <ic2:purified:2>,
    <ic2:purified:3>,
    <ic2:purified:4>,
    <ic2:casing:6>,
    <ic2:casing:5>,
    <ic2:casing:4>,
    <ic2:casing:3>,
    <ic2:casing:2>,
    <ic2:casing:1>,
    <ic2:casing>,
    <ic2:plate:17>,
    <ic2:plate:16>,
    <ic2:plate:15>,
    <ic2:plate:14>,
    <ic2:plate:13>,
    <ic2:plate:12>,
    <ic2:plate:11>,
    <ic2:plate:10>,
    <ic2:crushed:2>,
    <ic2:crushed:1>,
    <ic2:crushed>,
    <ic2:purified:6>,
    <ic2:purified:5>,
    <ic2:crafting>,
    <ic2:te:47>, /*Macerator*/
    <gregtech:meta_item_1:438>, /*GTCEU Rubber, Removed here cause it is only relevant for IC2's Compat*/
    <ic2:crafting:3>, /*Advanced Alloy from IC2, Using a GT Generated One currently*/
    <ic2:cover>,
    <ic2:cover:1>,
    <ic2:booze_mug>,
    <ic2:pipe:1>.withTag({size: 3 as byte, type: 1 as byte}),
    <ic2:pipe:1>.withTag({size: 2 as byte, type: 1 as byte}),
    <ic2:pipe:1>.withTag({size: 0 as byte, type: 1 as byte}),
    <ic2:pipe:1>.withTag({size: 1 as byte, type: 1 as byte}),
    <ic2:pipe>.withTag({size: 2 as byte, type: 0 as byte}),
    <ic2:pipe>.withTag({size: 1 as byte, type: 0 as byte}),
    <ic2:pipe>.withTag({size: 3 as byte, type: 0 as byte}),
    <ic2:pipe>.withTag({size: 0 as byte, type: 0 as byte}),
    <ic2:te:45>,
    <ic2:crafting:15>,
    <ic2:crafting:14>,
    <ic2:crafting:13>,
    <ic2:te:43>,/*Compressor*/
    <ic2:te:51>,/*Block Cutting Machine*/
    <ic2:block_cutting_blade>,
    <ic2:block_cutting_blade:1>,
    <ic2:block_cutting_blade:2>,
    <ic2:rotor_iron>,
    <ic2:rotor_steel>,
    <ic2:rotor_carbon>,
    <ic2:rotor_bronze>,
    <ic2:crafting:41>,
    <ic2:crafting:42>,
    <ic2:crafting:29>,
    <ic2:crafting:30>,
    <ic2:rotor_wood>,
    <ic2:crafting:31>,
    <ic2:crafting:32>,
    <ic2:crafting:33>,
    <ic2:crafting:34>,
    <ic2:te:42>,/*Fluid Solid Canning Machine*/
    <ic2:te:49>,/*Solid Canning Machine*/
    <ic2:te:111>,
    <ic2:te:112>,
    <ic2:te:113>,
    <ic2:te:114>,
    <ic2:te:115>,
    <ic2:te:81>,
    <ic2:te:87>,
    <ic2:te:131>,
    <ic2:te:132>,
    <ic2:te:133>,
    <ic2:te:134>,
    <ic2:misc_resource:5>,/*Slag*/

        ];
for item in ItensRemovidos {
	mods.jei.JEI.removeAndHide(item);

	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}

	val actualItem = (item.damage == 0 && item.isDamageable)
        ? item.anyDamage()
        : item;
    furnace.remove(<*>, actualItem);
    furnace.remove(actualItem);
    recipes.remove(actualItem);
}