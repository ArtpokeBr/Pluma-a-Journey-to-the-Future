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

# Cow Loottable ============

//Adding Tallow
// <entity:minecraft:cow>.addDrop(<quark:tallow> % 25, 1, 2);
// <entity:minecraft:mooshroom>.addDrop(<quark:tallow> % 25, 1, 2);

//add_entry("minecraft:entities/cow", "cowtallow", <quark:tallow>, 1, 4, 0, 0, 100);
//add_entry("minecraft:entities/mushroom_cow", "mooshroomtallow", <quark:tallow>, 1, 4, 0, 0, 100);

# Pig Loottable ============

//Readding Tallow
<entity:minecraft:pig>.removeDrop(<quark:tallow>);
// <entity:minecraft:pig>.addDrop(<quark:tallow> % 75, 1, 6);

//remove_entry("minecraft:entities/pig", "main", "quark:tallow");
//add_entry("minecraft:entities/pig", "pigtallow", <quark:tallow>, 1, 4, 0, 0, 100);

# Bat Loottable =================

<entity:minecraft:bat>.removeDrop(<minecraft:leather>);
// <entity:minecraft:bat>.addDrop(<actuallyadditions:item_misc:15> % 35, 1, 2);

//remove_entry("minecraft:entities/bat", "main", "minecraft:leather");
add_entry("minecraft:entities/bat", "batwings", <actuallyadditions:item_misc:15>, 1, 2, 0, 0, 100);