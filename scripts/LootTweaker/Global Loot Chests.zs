import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var itemsToRemove as string[] = [

	"minecraft:iron_ore",
	
	"actuallyadditions:block_misc:4",
	"actuallyadditions:item_misc:5",
	
	"forestry:broken_bronze_shovel",
	"forestry:broken_bronze_pickaxe",
	"forestry:kit_pickaxe",
	"forestry:kit_shovel",

	"twilightforest:uncrafting_table",
	"twilightforest:twilight_sapling:7",
	"twilightforest:twilight_sapling:6",

	"cyclicmagic:book_ender",

	"botania:manaresource",

	"railcraft:tool_pickaxe_steel",
	"railcraft:plate",
	"railcraft:cart_tnt_wood",
	"railcraft:ingot",
	"railcraft:gear",
	"railcraft:fluid_bottle_creosote",

	"thermalfoundation:material:771",

	"astralsorcery:itemcraftingcomponent",
	
	"fossil:ancient_glass"

];

for item in itemsToRemove {
	mods.ltt.LootTable.removeGlobalItem(item);
}
