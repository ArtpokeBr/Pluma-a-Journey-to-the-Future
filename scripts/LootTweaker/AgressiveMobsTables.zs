import crafttweaker.entity.IEntityDropFunction;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

/*
# Removing items from the final droplist
<entity:minecraft:spider>.removeDrop(<minecraft:string>);

# Clears all drops from an entity
<entity:minecraft:spider>.clearDrops();

# You can use weighted itemstacks instead of using the final "chance" parameter
<entity:minecraft:spider>.addDrop(<minecraft:apple> % 35, 1, 4);

# You can add player only drops if you don't want something to be dropped in mobfarms. Some killing mechanics "act" as a player though
<entity:minecraft:spider>.addPlayerOnlyDrop(<minecraft:fermented_spider_eye> % 50, 1, 2);
*/

function remove_entry(tableName as string, poolName as string, entryName as string) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.removeEntry(entryName);
}

function add_entry(tableName as string, newPoolName as string, itemEntry as IItemStack, minRolls as int, maxRolls as int, minBonusRolls as int, maxBonusRolls as int, weight as int) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.addPool(newPoolName, minRolls, maxRolls, minBonusRolls, maxBonusRolls);
	pool.addItemEntry(itemEntry, weight);
}

function clear_pool(tableName as string, poolName as string) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.clearEntries();
}

// Editing the Ghast Loottable
add_entry("minecraft:entities/ghast", "ghastbladder", <contenttweaker:ghasbladder>, 1, 2, 0, 0, 100);

//<entity:minecraft:ghast>.addDrop(<contenttweaker:ghasbladder> % 40, 1, 2);

//Editing the Blazes Loottable

// Editing the Pigman Loottable
remove_entry("minecraft:entities/zombie_pigman", "main", "minecraft:rotten_flesh");
add_entry("minecraft:entities/zombie_pigman", "pigmanflesh", <contenttweaker:pigmanflesh>, 1, 3, 0, 0, 100);

//<entity:minecraft:zombie_pigman>.addDrop(<contenttweaker:pigmanflesh> % 50, 1, 2);
//<entity:minecraft:zombie_pigman>.removeDrop(<minecraft:rotten_flesh>);

// Editing The Ender Dragon Loottable
add_entry("minecraft:entities/ender_dragon", "dragonscales", <quark:enderdragon_scale>, 1, 5, 0, 0, 100);
add_entry("minecraft:entities/ender_dragon", "dragoneggs", <minecraft:dragon_egg>, 1, 1, 0, 0, 25);

//<entity:minecraft:ender_dragon>.addDrop(<quark:enderdragon_scale> % 100, 1, 5);
//<entity:minecraft:ender_dragon>.addDrop(<minecraft:dragon_egg> % 25, 1, 1);
//<entity:minecraft:ender_dragon>.addDrop(<gregtech:meta_block_compressed_13:10> % 75, 1, 6);

// Editing The Enderman's Loottable
add_entry("minecraft:entities/enderman", "endermanheart", <contenttweaker:endermansheart>, 1, 2, 0, 0, 100);

//<entity:minecraft:enderman>.addDrop(<contenttweaker:endermansheart> % 75, 1, 1);


// Editing The Lich's Loottable
add_entry("twilightforest:entities/lich", "lichbones", <contenttweaker:lich_bones>, 4, 9, 0, 0, 100);

//<entity:twilightforest:lich>.addDrop(<contenttweaker:lich_bones> % 60, 1, 6);
