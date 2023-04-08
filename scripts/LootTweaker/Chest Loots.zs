import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

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

function addLootList(table as string, pool as string, map as int[IItemStack], countMin as int = 0, countMax as int = 0) {
	val loot_pool = loottweaker.LootTweaker.getTable(table).getPool(pool);
	for item, weight in map {
		if(isNull(item)) continue;
		if(countMin <= 0 || countMax <= 0)
			loot_pool.addItemEntry(item, weight);
		else
			loot_pool.addItemEntryHelper(item, weight, 0, [Functions.setCount(countMin, max(countMin, countMax))], []);
	}
}

# Custom loot in Anu's Castle Loot
add_entry("fossil:anu_castle", "custom_ancient_wood_loot", <fossil:ancient_wood>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_ancient_wood_pillar_loot", <fossil:ancient_wood_pillar>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_ancient_stone_loot", <fossil:ancient_stone>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_ancient_bricks_loot", <randomthings:ancientbrick>, 0, 1, 0, 0, 100);

add_entry("fossil:anu_castle", "custom_embers_crystal_seed_loot_copper", <embers:seed_copper>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_embers_crystal_seed_loot_iron", <embers:seed_iron>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_embers_crystal_seed_loot_gold", <embers:seed_gold>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_embers_crystal_seed_loot_silver", <embers:seed_silver>, 0, 1, 0, 0, 100);
add_entry("fossil:anu_castle", "custom_embers_crystal_seed_loot_lead", <embers:seed_lead>, 0, 1, 0, 0, 100);

// add_entry("fossil:anu_castle", "custom_scarab_gem_loot", <fossil:scarab_gem>, 0, 1, 0, 0, 5);
// add_entry("fossil:anu_castle", "custom_aquatic_scarab_gem_loot", <fossil:aquatic_scarab_gem>, 0, 1, 0, 0, 5);

# Clearing Vanilla Loot Tables

clear_pool("minecraft:chests/end_city_treasure", "main");
clear_pool("minecraft:chests/igloo_chest", "main");
clear_pool("minecraft:chests/jungle_temple", "main");
clear_pool("minecraft:chests/nether_bridge", "main");
clear_pool("minecraft:chests/spawn_bonus_chest", "main");


// // Village Workshop (Railcraft)

	clear_pool("railcraft:chests/village_workshop", "railcraft_resources");
	clear_pool("railcraft:chests/village_workshop", "railcraft_carts");
	clear_pool("railcraft:chests/village_workshop", "railcraft_tools");
	clear_pool("railcraft:chests/village_workshop", "railcraft_tracks");

	LootTweaker.getTable("railcraft:chests/village_workshop").addPool("railcraft_carts_custom", 1, 4, 1, 4);
	LootTweaker.getTable("railcraft:chests/village_workshop").addPool("railcraft_tracks_custom", 4, 8, 1, 2);
	LootTweaker.getTable("railcraft:chests/village_workshop").addPool("railcraft_foods_custom", 2, 6, 1, 2);
	LootTweaker.getTable("railcraft:chests/village_workshop").addPool("railcraft_tools_custom", 1, 4, 1, 3);
	LootTweaker.getTable("railcraft:chests/village_workshop").addPool("railcraft_resources_custom", 2, 6, 1, 2);

	# Carts
	addLootList(
		"railcraft:chests/village_workshop", 
		"railcraft_carts_custom", {
		<minecraft:minecart>  					: 20,
		<minecraft:tnt_minecart>    			: 10,
		<railcraft:cart_tank> 					: 1,
		<railcraft:cart_chest_void>  			: 1,
		<railcraft:cart_jukebox>  				: 2,
		<railcraft:cart_trade_station>  		: 5,
	});

	# Tracks
	addLootList(
		"railcraft:chests/village_workshop", 
		"railcraft_tracks_custom", {
		<tconstruct:wood_rail>       			: 45,
		<railcraft:track_flex_abandoned>        : 40,
		<minecraft:rail>         				: 50,
		<railcraft:track_flex_strap_iron>       : 30,
		<railcraft:track_parts>   				: 20,
	});

	# Foods
	addLootList(
		"railcraft:chests/village_workshop", 
		"railcraft_foods_custom", {
		<harvestcraft:leafychickensandwichitem> : 40,
		<harvestcraft:blueberryjuiceitem>  		: 40,
		<harvestcraft:cheeseitem>  				: 40,
		<harvestcraft:toastitem>  				: 40,
		<harvestcraft:baconandeggsitem>  		: 40,
		<harvestcraft:ploughmanslunchitem>  	: 20,
		<harvestcraft:ricecakeitem>  			: 40,
		<harvestcraft:fishdinneritem>  			: 40,
		<harvestcraft:beansandriceitem>  		: 40,
		<harvestcraft:blueberrypancakesitem>  	: 40,
		<harvestcraft:omeletitem>  				: 40,
		<harvestcraft:spagettiitem>  			: 40,
		<harvestcraft:potroastitem>  			: 40,
		<harvestcraft:lemonsmoothieitem>  		: 40,
		<harvestcraft:eggplantparmitem>  		: 40,
		<harvestcraft:lemonaideitem>  			: 40,
		<harvestcraft:cucumbersaladitem>  		: 40,
		<harvestcraft:pineapplehamitem>  		: 40,
	});

	# Tools
	addLootList(
		"railcraft:chests/village_workshop", 
		"railcraft_tools_custom", {
		<railcraft:tool_crowbar_iron>  			: 25,
		<railcraft:tool_crowbar_steel>  		: 10,
		<railcraft:armor_goggles>  				: 30,
		<railcraft:armor_overalls>  			: 30,
		<railcraft:backpack_signalman_t1>  		: 4,
		<railcraft:backpack_trackman_t1>  		: 4,
		<railcraft:tool_whistle_tuner>  		: 6,
		<railcraft:tool_spike_maul_iron>  		: 8,
		<railcraft:tool_spike_maul_steel>  		: 4,
		<railcraft:tool_charge_meter>  			: 10,
		<railcraft:tool_magnifying_glass>  		: 15,

		<railcraft:tool_sword_steel>  			: 2,
		<railcraft:tool_shovel_steel>  			: 2,
		<railcraft:tool_shears_steel>  			: 2,
		<railcraft:tool_pickaxe_steel>  		: 2,
		<railcraft:tool_hoe_steel>  			: 2,
		<railcraft:tool_axe_steel>  			: 2,
		<railcraft:armor_helmet_steel>  		: 2,
		<railcraft:armor_chestplate_steel>  	: 2,
		<railcraft:armor_leggings_steel>  		: 2,
		<railcraft:armor_boots_steel>  			: 2,

		<railcraft:tool_signal_surveyor>  		: 5,
		<railcraft:tool_signal_tuner>  			: 5,
		<railcraft:signal_lamp>  				: 5,
	});

	# Resources
	addLootList(
		"railcraft:chests/village_workshop", 
		"railcraft_resources_custom", {
		<railcraft:tie:1>  						: 25,
		<railcraft:tie>  						: 25,
		<railcraft:rail>  						: 10,
		<railcraft:rail:2>  					: 10,
		<railcraft:rail:1>  					: 10,
		<railcraft:rail:5>  					: 10,
		<railcraft:concrete>  					: 30,
		<extrabees:propolis:7>  				: 30,
		<ore:plateIron>.firstItem  				: 25,
		<ore:plateSteel>.firstItem  			: 5,
		<ore:plateWroughtIron>.firstItem  		: 15,
		<railcraft:rebar>  						: 15,
		<railcraft:charge:6>  					: 5,
		<railcraft:charge:7>  					: 3,
		<railcraft:charge:8>  					: 2,
		<railcraft:charge:9>  					: 6,
		<railcraft:charge:10>  					: 7,
		<railcraft:charge:2>  					: 3,
		<railcraft:charge:3>  					: 2,
		<railcraft:charge:4>  					: 1,
		<railcraft:glass>  						: 40,
		<ore:itemSlag>.firstItem  				: 35,
		<minecraft:coal>  						: 60,
	});

// // Village Blacksmith (Vanilla)

	clear_pool("minecraft:chests/village_blacksmith", "main");
	clear_pool("minecraft:chests/village_blacksmith", "magichood");
	clear_pool("minecraft:chests/village_blacksmith", "randomthings:biomeCrystal");
	clear_pool("minecraft:chests/village_blacksmith", "botania_inject_pool");
	clear_pool("railcraft:chests/village_blacksmith", "railcraft_general");

	LootTweaker.getTable("minecraft:chests/village_blacksmith").addPool("blacksmith_foods_custom", 2, 6, 1, 2);
	LootTweaker.getTable("minecraft:chests/village_blacksmith").addPool("blacksmith_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/village_blacksmith").addPool("blacksmith_resources_custom", 4, 10, 1, 2);

	# Resources
	addLootList(
		"minecraft:chests/village_blacksmith", 
		"blacksmith_resources_custom", {
		<quark:iron_plate>  										: 70,
		<quark:iron_plate:1>  										: 70,
		<twilightforest:iron_ladder>  								: 65,
		<minecraft:iron_ingot>  									: 60,
		<minecraft:iron_bars>  										: 50,
		<ore:plateIron>.firstItem  									: 55,
		<ore:ingotWroughIron>.firstItem  							: 30,
		<ore:plateWroughIron>.firstItem  							: 32,
		<minecraft:coal>  											: 65,
		<ore:gemLigniteCoal>.firstItem  							: 70,
		<ore:itemSlag>.firstItem		  							: 25,
		<ore:itemSlagRich>.firstItem	  							: 15,
		<ore:ringIron>.firstItem 									: 20,
		<ore:screwIron>.firstItem 									: 15,
		<ore:ringWroughIron>.firstItem 								: 15,
		<ore:ingotPigIron>.firstItem  								: 5,
		<ore:stickIron>.firstItem 									: 25,
		<tconstruct:knife_blade>.withTag({Material: "iron"})  		: 10,
		<tconstruct:pick_head>.withTag({Material: "iron"})  		: 8,
		<tconstruct:axe_head>.withTag({Material: "iron"})  			: 7,
		<tconstruct:shovel_head>.withTag({Material: "iron"})  		: 6,
		<tconstruct:sword_blade>.withTag({Material: "iron"})  		: 5,
		<ore:plateBronze>.firstItem  								: 80,
		<ore:ringBronze>.firstItem  								: 75,
		<ore:screwBronze>.firstItem  								: 77,
		<ore:gearBronze>.firstItem  								: 74,
	});

	# Tools
	addLootList(
		"minecraft:chests/village_blacksmith", 
		"blacksmith_tools_custom", {
		<pyrotech:flint_hammer_durable>  			: 60,
		<pyrotech:iron_butchers_knife>  			: 50,
		<pyrotech:iron_hunters_knife>  				: 50,
		<pyrotech:sawmill_blade_iron>  				: 25,
		<betterbuilderswands:wandiron>  			: 30,
		<microblockcbe:saw_iron>  					: 45,
		<thermalfoundation:tool.sickle_iron>  		: 20,
		<thermalfoundation:tool.shield_iron>  		: 15,
		<actuallyadditions:iron_paxel>  			: 5,
	});

	# Foods
	addLootList(
		"minecraft:chests/village_blacksmith", 
		"blacksmith_foods_custom", {
		<harvestcraft:ploughmanslunchitem>  		: 20,
		<harvestcraft:peanutbuttercookiesitem>  	: 40,
		<harvestcraft:lemonchickenitem>  			: 40,
		<harvestcraft:cucumbersaladitem>  			: 40,
		<harvestcraft:cornonthecobitem>  			: 40,
		<harvestcraft:fishandchipsitem>  			: 40,
		<harvestcraft:friesitem>  					: 40,
		<harvestcraft:cherrypieitem>  				: 40,
		<harvestcraft:bakedbeetsitem>  				: 40,
		<harvestcraft:summerradishsaladitem>  		: 40,
		<harvestcraft:stuffedpepperitem>  			: 40,
		<harvestcraft:grapesaladitem>  				: 40,
		<harvestcraft:blackberryyogurtitem>  		: 40,
		<harvestcraft:lemonjellysandwichitem>  		: 40,
		<harvestcraft:strawberryjellysandwichitem>  : 40,
		<harvestcraft:orangejellysandwichitem>  	: 40,
		<harvestcraft:grapesodaitem>  				: 40,
		<harvestcraft:honeylemonlambitem>  			: 40,
	});

// Abandoned Mineshaft (Vanilla)

	clear_pool("minecraft:chests/abandoned_mineshaft", "main"); 
	clear_pool("minecraft:chests/abandoned_mineshaft", "pool1"); 
	clear_pool("minecraft:chests/abandoned_mineshaft", "pool2"); 
	clear_pool("railcraft:chests/abandoned_mineshaft", "railcraft_resources");
	clear_pool("railcraft:chests/abandoned_mineshaft", "railcraft_carts");
	clear_pool("railcraft:chests/abandoned_mineshaft", "railcraft_tools");

	clear_pool("minecraft:chests/abandoned_mineshaft", "forestry_factory_items");

	clear_pool("minecraft:chests/abandoned_mineshaft", "botania_inject_pool");

	clear_pool("minecraft:chests/abandoned_mineshaft", "randomthings:biomeCrystal");

	LootTweaker.getTable("railcraft:chests/abandoned_mineshaft").addPool("abandoned_mineshaft_carts_custom", 1, 4, 1, 4);
	LootTweaker.getTable("railcraft:chests/abandoned_mineshaft").addPool("abandoned_mineshaft_tracks_custom", 4, 8, 1, 2);
	LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").addPool("abandoned_mineshaft_foods_custom", 2, 6, 1, 2);
	LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").addPool("abandoned_mineshaft_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").addPool("abandoned_mineshaft_resources_custom", 4, 10, 1, 2);

	# Resources
	addLootList(
		"minecraft:chests/abandoned_mineshaft", 
		"abandoned_mineshaft_resources_custom", {
		<ore:gemSapphire>.firstItem  						: 5,
		<ore:gemLapis>.firstItem  							: 10,
		<ore:gemFlint>.firstItem  							: 30,
		<ore:gemCoal>.firstItem  							: 20,
		<ore:gemBlackQuartz>.firstItem  					: 8,
		<ore:gemRedstone>.firstItem  						: 10,
		<minecraft:ladder>  								: 40,
		<minecraft:torch>  									: 60,
		<tconstruct:stone_torch>  							: 60,
		<minecraft:trapdoor>  								: 35,
		<actuallyadditions:item_crystal_shard>  			: 25,
		<actuallyadditions:item_crystal_shard:5>  			: 25,
		<actuallyadditions:item_crystal_shard:4>  			: 25,
		<actuallyadditions:item_crystal_shard:3>  			: 25,
		<actuallyadditions:item_crystal_shard:2>  			: 25,
		<actuallyadditions:item_crystal_shard:1>  			: 25,
		<minecraft:string>  								: 30,
		<minecraft:stick>  									: 30,
		<minecraft:redstone_block>  						: 15,
		<pyrotech:limestone>  								: 60,
		<ore:oreCopper>.firstItem*4  						: 50,
		<ore:oreTin>.firstItem*4  							: 50,
		<ore:oreIron>.firstItem*4  							: 50,
		<ore:oreCoal>.firstItem*4  							: 50,
		<ore:oreLigniteCoal>.firstItem*4  					: 50,
		<ore:oreLead>.firstItem*4  							: 50,
		<ore:oreSilver>.firstItem*4  						: 50,
	});

	# Tools
	addLootList(
		"minecraft:chests/abandoned_mineshaft", 
		"abandoned_mineshaft_tools_custom", {
		<minecraft:compass>  				: 50,
		<minecraft:clock>  					: 50,
		<forestry:kit_pickaxe>  			: 30,
		<forestry:kit_shovel>  				: 30,
		<railcraft:tool_crowbar_steel>  	: 20,
		<railcraft:tool_spike_maul_steel>	: 20,
		<spiceoflife:lunchbox>				: 5,
		<tconstruct:throwball:1>*4			: 20,
		<cyclicmagic:tool_torch_launcher>	: 5,
		<pyrotech:flint_pickaxe_durable>  	: 35,
		<pyrotech:flint_shovel_durable>  	: 35,
		<cyclicmagic:glowing_helmet>  		: 1,
	});

	# Carts
	addLootList(
		"railcraft:chests/abandoned_mineshaft", 
		"abandoned_mineshaft_carts_custom", {
		<minecraft:minecart>  					: 50,
		<minecraft:tnt_minecart>    			: 25,
		<railcraft:cart_tank> 					: 1,
		<minecraft:hopper_minecart>  			: 5,
		<minecraft:furnace_minecart>  			: 15,
		<railcraft:cart_bed>  					: 5,
	});

	# Tracks
	addLootList(
		"railcraft:chests/abandoned_mineshaft", 
		"abandoned_mineshaft_tracks_custom", {
		<tconstruct:wood_rail>       			: 45,
		<railcraft:track_flex_abandoned>        : 40,
		<minecraft:rail>         				: 50,
		<railcraft:track_flex_strap_iron>       : 30,
		<railcraft:track_parts>   				: 20,
	});

	# Foods
	addLootList(
		"minecraft:chests/abandoned_mineshaft", 
		"abandoned_mineshaft_foods_custom", {
		<abyssalcraft:mre>   						: 5,
		<minecraft:bread>   						: 40,
		<harvestcraft:applepieitem>   				: 40,
		<harvestcraft:fishsandwichitem>   			: 40,
		<harvestcraft:carrotsoupitem>   			: 40,
		<harvestcraft:mashedpotatoesitem>   		: 40,
		<harvestcraft:pbandjitem>   				: 40,
		<harvestcraft:bakedbeansitem>   			: 40,
		<harvestcraft:cranberryjellysandwichitem>   : 40,
		<harvestcraft:peachjellysandwichitem>   	: 40,
		<harvestcraft:donutitem>   					: 40,
		<harvestcraft:beefjerkyitem>   				: 40,
		<harvestcraft:maplecandiedbaconitem>   		: 40,
		<harvestcraft:apricotglazedporkitem>   		: 40,
		<harvestcraft:lambbarleysoupitem>   		: 40,
		<harvestcraft:creamcookieitem>   			: 40,
		<harvestcraft:zombiejerkyitem>   			: 40,
		<harvestcraft:potroastitem>   				: 40,
		<minecraft:pumpkin_seeds>*2   				: 30,
		<minecraft:melon_seeds>*2   				: 30,
		<minecraft:beetroot_seeds>*2   				: 30,
	});

// Desert Pyramid (Vanilla)

	clear_pool("minecraft:chests/desert_pyramid", "main");
	clear_pool("minecraft:chests/desert_pyramid", "pool1");

	clear_pool("minecraft:chests/desert_pyramid", "forestry_factory_items");

	clear_pool("minecraft:chests/desert_pyramid", "botania_inject_pool");

	clear_pool("minecraft:chests/desert_pyramid", "moms_spaghetti");

	clear_pool("minecraft:chests/desert_pyramid", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/desert_pyramid").addPool("desert_pyramid_foods_custom", 2, 6, 1, 2);
	LootTweaker.getTable("minecraft:chests/desert_pyramid").addPool("desert_pyramid_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/desert_pyramid").addPool("desert_pyramid_resources_custom", 4, 10, 1, 2);

	# Resources
	addLootList(
		"minecraft:chests/desert_pyramid", 
		"desert_pyramid_resources_custom", {
		<minecraft:sand>*8  				: 60,
		<minecraft:sand:1>*8  				: 60,
		<biomesoplenty:white_sand>*8  		: 60,
		<railcraft:brick_sandy:4>  			: 60,
		<railcraft:brick_sandy>  			: 60,
		<railcraft:brick_red_sandy>  		: 60,
		<railcraft:brick_red_sandy:3>  		: 60,
		<ore:gemQuartzite>.firstItem  		: 30,
		<ore:gemSalt>.firstItem  			: 35,
		<ore:gemAndradite>.firstItem  		: 30,
		<minecraft:flint>  					: 40,
		<minecraft:iron_ingot>  			: 25,
		<minecraft:gold_ingot>  			: 25,
		<enderio:item_alloy_ingot:3>  		: 10,
		<tconstruct:materials>  			: 35,
		<minecraft:rotten_flesh>*8  		: 75,
		<thaumcraft:loot_bag:2>  			: 5,
		<thaumcraft:loot_bag:1>  			: 8,
		<thaumcraft:loot_bag>  				: 10,
		<botania:blacklotus>  				: 8,
		<pyrotech:freckleberry_seeds>*4  	: 40,
		<pyrotech:pyroberry_seeds>*4  		: 40,
		<pyrotech:material:37>  			: 10,
		<pyrotech:material:36>  			: 10,
		<pyrotech:material:39>  			: 15,
		<minecraft:bone>  					: 70,
		<fossil:relic_scrap>  				: 5,
		<fossil:plant_fossil>  				: 8,
		<fossil:biofossil>  				: 5,
		<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeAcacia", UID0: "forestry.treeAcacia", Slot: 0 as byte}, {UID1: "forestry.heightSmall", UID0: "forestry.heightSmall", Slot: 1 as byte}, {UID1: "forestry.saplingsLower", UID0: "forestry.saplingsLower", Slot: 2 as byte}, {UID1: "forestry.fruitNone", UID0: "forestry.fruitNone", Slot: 3 as byte}, {UID1: "forestry.yieldLowest", UID0: "forestry.yieldLowest", Slot: 4 as byte}, {UID1: "forestry.sappinessLowest", UID0: "forestry.sappinessLowest", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationAverage", UID0: "forestry.maturationAverage", Slot: 7 as byte}, {UID1: "forestry.i1d", UID0: "forestry.i1d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}): 10,
		<ore:dustAsh>.firstItem*4  			: 70,
	});

	# Tools
	addLootList(
		"minecraft:chests/desert_pyramid", 
		"desert_pyramid_tools_custom", {
			<pyrotech:bow_drill_durable>  										: 10,
			<pyrotech:bone_pickaxe_durable>  									: 20,
			<pyrotech:bone_shovel_durable>  									: 20,
			<pyrotech:bone_axe_durable>  										: 20,
			<pyrotech:bone_hoe_durable>  										: 20,
			<pyrotech:bone_hammer_durable>  									: 15,
			<astralsorcery:itemilluminationwand>.withTag({astralsorcery: {}})  	: 1, 
			<cyclicmagic:horse_upgrade_type>  									: 8,
			<randomthings:pitcherplant>  										: 1,
			<randomthings:imbue>  												: 9,
			<randomthings:lavacharm>.withTag({charge: 200})  					: 4,
			<cyclicmagic:dynamite_safe>  										: 12,
	});

	# Foods
	addLootList(
		"minecraft:chests/desert_pyramid", 
		"desert_pyramid_foods_custom", {
		<harvestcraft:mangojuiceitem>  					: 40,
		<harvestcraft:mincepieitem>  					: 40,
		<harvestcraft:pemmicanitem>  					: 40,
		<mysticalworld:cactus_dandelion_salad>  		: 40,
		<mysticalworld:stuffed_aubergine>  				: 40,
		<harvestcraft:cracklinsitem>  					: 40,
		<harvestcraft:dandelionsaladitem>  				: 40,
		<harvestcraft:tiropitaitem>  					: 40,
		<harvestcraft:taiyakiitem>  					: 40,
		<harvestcraft:deluxenachoesitem>  				: 1,
		<harvestcraft:peaandhamsoupitem>  				: 40,
		<harvestcraft:steaktartareitem>  				: 40,
		<harvestcraft:akutuqitem>  						: 40,
		<harvestcraft:nopalessaladitem>  				: 40,
		<harvestcraft:succotashitem>  					: 40,
		<harvestcraft:pearjellysandwichitem>  			: 40,
		<harvestcraft:sausageitem>  					: 40,
		<harvestcraft:creepercookieitem>  				: 40,
	});

// Stronghold Corridor (Vanilla)

	clear_pool("minecraft:chests/stronghold_corridor", "main");
	clear_pool("minecraft:chests/stronghold_corridor", "railcraft_general");
	clear_pool("minecraft:chests/stronghold_corridor", "floralchemy_inject_pool");
	clear_pool("minecraft:chests/stronghold_corridor", "botania_inject_pool");

	//clear_pool("minecraft:chests/stronghold_corridor", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/stronghold_corridor").addPool("stronghold_corridor_foods_custom", 2, 4, 1, 2);
	LootTweaker.getTable("minecraft:chests/stronghold_corridor").addPool("stronghold_corridor_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/stronghold_corridor").addPool("stronghold_corridor_resources_custom", 2, 6, 1, 2);

	# Resources
	addLootList(
		"minecraft:chests/stronghold_corridor", 
		"stronghold_corridor_resources_custom", {
		<minecraft:stonebrick>*4  			: 60,
		<minecraft:stonebrick:3>*4  		: 60,
		<minecraft:stone>*4  				: 60,
		<ore:gemEnderEye>.firstItem  		: 1,
		<ore:gemGreenSapphire>.firstItem  	: 10,
		<ore:gemPyrope>.firstItem  			: 15,
		<ore:ingotPigiron>.firstItem  		: 20,
		<ore:ingotGold>.firstItem   		: 30,
		<ore:gemEmerald>.firstItem    		: 20,
		<ore:dustRedstone>.firstItem    	: 25,
		<randomthings:glowingmushroom>*4    : 35,
		<extrautils2:enderlilly>*4    		: 35,
		<minecraft:rotten_flesh>    		: 40,
		<minecraft:string>    				: 40,
		<thaumcraft:loot_bag:2>    			: 5,
		<thaumcraft:loot_bag:1>    			: 10,
		<thaumcraft:loot_bag>    			: 15,
	});

	# Tools
	addLootList(
		"minecraft:chests/stronghold_corridor", 
		"stronghold_corridor_tools_custom", {
			<minecraft:iron_helmet>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 5}], RepairCost: 3}): 35,
			<minecraft:iron_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 52}], RepairCost: 3}): 35,
			<minecraft:iron_leggings>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 2 as short, id: 7}], RepairCost: 3}): 35,
			<minecraft:iron_boots>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 2}], RepairCost: 3}): 35,
			<tconstruct:axe_head>.withTag({Material: "aquamarine"})    		: 10,
			<tconstruct:pick_head>.withTag({Material: "fluix"})    			: 8,
			<tconstruct:shovel_head>.withTag({Material: "prismarine"})    	: 10,
			<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}): 25,
			<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}): 25,
			<minecraft:splash_potion>.withTag({Potion: "cofhcore:resistance3"}): 20,
			<minecraft:spectral_arrow>*8									: 50,
			<thermalfoundation:tool.shield_platinum>						: 18,
			<cyclicmagic:food_step>											: 15,
	});

	# Foods
	addLootList(
		"minecraft:chests/stronghold_corridor", 
		"stronghold_corridor_foods_custom", {
			<harvestcraft:glazedcarrotsitem>				: 40,
			<harvestcraft:cherrypieitem>					: 40,
			<harvestcraft:lemonchickenitem>					: 40,
			<harvestcraft:espressoitem>						: 40,
			<harvestcraft:summerradishsaladitem>			: 40,
			<harvestcraft:brownieitem>						: 40,
			<harvestcraft:softpretzelandmustarditem>		: 40,
			<harvestcraft:chiliitem>						: 40,
			<harvestcraft:beanburritoitem>					: 40,
			<harvestcraft:gourmetbeefburgeritem>			: 1,
			<harvestcraft:epicbaconitem>					: 5,
			<harvestcraft:chaoscookieitem>					: 40,
			<harvestcraft:vegemiteitem>						: 40,
			<harvestcraft:persimmonjellysandwichitem>		: 40,
			<harvestcraft:raspberryyogurtitem>				: 40,
			<harvestcraft:frosteddonutitem>					: 40,
			<harvestcraft:chocolatedonutitem>				: 40,
			<harvestcraft:blackberrycobbleritem>			: 40,
	});

// Stronghold Crossing (Vanilla)

	clear_pool("minecraft:chests/stronghold_crossing", "main");
	clear_pool("minecraft:chests/stronghold_crossing", "railcraft_general");
	clear_pool("minecraft:chests/stronghold_crossing", "floralchemy_inject_pool");
	clear_pool("minecraft:chests/stronghold_crossing", "moms_spaghetti");

	//clear_pool("minecraft:chests/stronghold_crossing", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/stronghold_crossing").addPool("stronghold_crossing_foods_custom", 2, 4, 1, 2);
	LootTweaker.getTable("minecraft:chests/stronghold_crossing").addPool("stronghold_crossing_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/stronghold_crossing").addPool("stronghold_crossing_resources_custom", 2, 6, 1, 2);

	# Resources
	addLootList(
		"minecraft:chests/stronghold_crossing", 
		"stronghold_crossing_resources_custom", {
		<minecraft:stonebrick>*4  			: 60,
		<minecraft:stonebrick:3>*4  		: 60,
		<minecraft:stone>*4  				: 60,
		<ore:gemEnderEye>.firstItem  		: 5,
		<ore:gemGreenSapphire>.firstItem  	: 10,
		<ore:gemPyrope>.firstItem  			: 15,
		<ore:ingotPigiron>.firstItem  		: 20,
		<ore:ingotGold>.firstItem   		: 30,
		<ore:gemEmerald>.firstItem    		: 20,
		<ore:dustRedstone>.firstItem    	: 25,
		<randomthings:glowingmushroom>*4    : 35,
		<extrautils2:enderlilly>*4    		: 35,
		<minecraft:rotten_flesh>    		: 40,
		<minecraft:string>    				: 40,
		<thaumcraft:loot_bag:2>    			: 5,
		<thaumcraft:loot_bag:1>    			: 10,
		<thaumcraft:loot_bag>    			: 15,
	});

	# Tools
	addLootList(
		"minecraft:chests/stronghold_crossing", 
		"stronghold_crossing_tools_custom", {
			<minecraft:iron_helmet>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 5}], RepairCost: 3}): 35,
			<minecraft:iron_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 52}], RepairCost: 3}): 35,
			<minecraft:iron_leggings>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 2 as short, id: 7}], RepairCost: 3}): 35,
			<minecraft:iron_boots>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 1 as short, id: 2}], RepairCost: 3}): 35,
			<tconstruct:axe_head>.withTag({Material: "aquamarine"})    		: 10,
			<tconstruct:pick_head>.withTag({Material: "fluix"})    			: 8,
			<tconstruct:shovel_head>.withTag({Material: "prismarine"})    	: 10,
			<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}): 25,
			<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}): 25,
			<minecraft:splash_potion>.withTag({Potion: "cofhcore:resistance3"}): 20,
			<minecraft:spectral_arrow>*8									: 50,
			<thermalfoundation:tool.shield_platinum>						: 18,
			<cyclicmagic:food_step>											: 15,
			<botania:enderhand>												: 15,
	});

	# Foods
	addLootList(
		"minecraft:chests/stronghold_crossing", 
		"stronghold_crossing_foods_custom", {
			<harvestcraft:glazedcarrotsitem>				: 40,
			<harvestcraft:cherrypieitem>					: 40,
			<harvestcraft:lemonchickenitem>					: 40,
			<harvestcraft:espressoitem>						: 40,
			<harvestcraft:summerradishsaladitem>			: 40,
			<harvestcraft:brownieitem>						: 40,
			<harvestcraft:softpretzelandmustarditem>		: 40,
			<harvestcraft:chiliitem>						: 40,
			<harvestcraft:beanburritoitem>					: 40,
			<harvestcraft:gourmetbeefburgeritem>			: 1,
			<harvestcraft:epicbaconitem>					: 5,
			<harvestcraft:chaoscookieitem>					: 40,
			<harvestcraft:vegemiteitem>						: 40,
			<harvestcraft:persimmonjellysandwichitem>		: 40,
			<harvestcraft:raspberryyogurtitem>				: 40,
			<harvestcraft:frosteddonutitem>					: 40,
			<harvestcraft:chocolatedonutitem>				: 40,
			<harvestcraft:blackberrycobbleritem>			: 40,
	});


// Stronghold Library (Vanilla)

	clear_pool("minecraft:chests/stronghold_library", "main");
	clear_pool("minecraft:chests/stronghold_library", "floralchemy_inject_pool");

	//clear_pool("minecraft:chests/stronghold_library", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/stronghold_library").addPool("stronghold_library_foods_custom", 2, 4, 1, 2);
	LootTweaker.getTable("minecraft:chests/stronghold_library").addPool("stronghold_library_tools_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/stronghold_library").addPool("stronghold_library_resources_custom", 2, 6, 1, 2);
	LootTweaker.getTable("minecraft:chests/stronghold_library").addPool("stronghold_library_celestial_notes_custom", 1, 2, 0, 0);

	# Resources
	addLootList(
		"minecraft:chests/stronghold_library", 
		"stronghold_library_resources_custom", {
		<minecraft:paper>*4  				: 60,
		<cyclicmagic:carbon_paper>*4  		: 60,
		<minecraft:book>*4  				: 60,
		<ore:gemEnderEye>.firstItem  		: 5,
		<ore:gemGreenSapphire>.firstItem  	: 10,
		<ore:gemPyrope>.firstItem  			: 15,
		<ore:ingotPigiron>.firstItem  		: 20,
		<ore:ingotGold>.firstItem   		: 30,
		<ore:gemEmerald>.firstItem    		: 20,
		<ore:dustRedstone>.firstItem    	: 25,
		<randomthings:glowingmushroom>*4    : 35,
		<minecraft:web>*4    				: 35,
		<minecraft:rotten_flesh>    		: 40,
		<minecraft:string>    				: 40,
		<thaumcraft:loot_bag:2>    			: 5,
		<thaumcraft:loot_bag:1>    			: 10,
		<thaumcraft:loot_bag>    			: 15,
		<minecraft:map>    					: 20,
	});

	# Tools
	addLootList(
		"minecraft:chests/stronghold_library", 
		"stronghold_library_tools_custom", {
			//Holding II
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 38}]})    	: 15,
			//Quickdraw
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 57}]})    	: 20,
			//Archeology II
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 36}]})    	: 20,
			//Magnetic
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 15}]})    	: 20,
			//Wrecking IV
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 11}]})    	: 10,
			//Paleotologist III
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 37}]})    	: 20,
			//Silk Touch
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33}]})    	: 10,
			//Ball of Moss
			<tconstruct:materials:18>    																: 35,
			//Ender Book
			<cyclicmagic:book_ender>    																: 5,
			//Easter Egg
			<minecraft:written_book>.withTag({pages: ["{\"text\":\"Congratulations\\nYou\\u0027ve found an\\n\\nEASTER EGG!\\n\\n:POG:\"}"], author: "Artpoke_", title: "A Briliant Guide", resolved: 1 as byte}): 5,

	});

	# Celestial Notes
	addLootList(
		"minecraft:chests/stronghold_library", 
		"stronghold_library_celestial_notes_custom", {
			<thaumcraft:celestial_notes>    		: 20,
			<thaumcraft:celestial_notes:1>    		: 20,
			<thaumcraft:celestial_notes:2>    		: 20,
			<thaumcraft:celestial_notes:3>    		: 20,
			<thaumcraft:celestial_notes:4>    		: 20,
			<thaumcraft:celestial_notes:6>    		: 20,
			<thaumcraft:celestial_notes:7>    		: 20,
			<thaumcraft:celestial_notes:8>    		: 20,
			<thaumcraft:celestial_notes:12>    		: 20,
			<thaumcraft:celestial_notes:11>    		: 20,
			<thaumcraft:celestial_notes:10>    		: 20,
			<thaumcraft:celestial_notes:9>    		: 20,
	});

	# Foods
	addLootList(
		"minecraft:chests/stronghold_library", 
		"stronghold_library_foods_custom", {
			<harvestcraft:glazedcarrotsitem>				: 40,
			<harvestcraft:cherrypieitem>					: 40,
			<harvestcraft:lemonchickenitem>					: 40,
			<harvestcraft:espressoitem>						: 40,
			<harvestcraft:summerradishsaladitem>			: 40,
			<harvestcraft:brownieitem>						: 40,
			<harvestcraft:softpretzelandmustarditem>		: 40,
			<harvestcraft:chiliitem>						: 40,
			<harvestcraft:beanburritoitem>					: 40,
			<harvestcraft:gourmetbeefburgeritem>			: 1,
			<harvestcraft:epicbaconitem>					: 5,
			<harvestcraft:chaoscookieitem>					: 40,
			<harvestcraft:vegemiteitem>						: 40,
			<harvestcraft:persimmonjellysandwichitem>		: 40,
			<harvestcraft:raspberryyogurtitem>				: 40,
			<harvestcraft:frosteddonutitem>					: 40,
			<harvestcraft:chocolatedonutitem>				: 40,
			<harvestcraft:blackberrycobbleritem>			: 40,
	});


// Woodland Mansion (Vanilla)

	clear_pool("minecraft:chests/woodland_mansion", "main");
	clear_pool("minecraft:chests/woodland_mansion", "pool1");
	clear_pool("minecraft:chests/woodland_mansion", "pool2");

	//clear_pool("minecraft:chests/woodland_mansion", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/woodland_mansion").addPool("woodland_mansion_foods_custom", 2, 8, 1, 2);
	LootTweaker.getTable("minecraft:chests/woodland_mansion").addPool("woodland_mansion_tools_custom", 1, 2, 0, 0);
	LootTweaker.getTable("minecraft:chests/woodland_mansion").addPool("woodland_mansion_terrarium_custom", 1, 2, 0, 1);
	LootTweaker.getTable("minecraft:chests/woodland_mansion").addPool("woodland_mansion_resources_custom", 2, 4, 0, 2);

	# Resources
	addLootList(
		"minecraft:chests/woodland_mansion", 
		"woodland_mansion_resources_custom", {
		<minecraft:planks:5>*8  						: 60,
		<quark:carved_wood:5>*8  						:60,
		<randomthings:ingredient:9> 					: 15,
		<minecraft:emerald>  							: 35,
		<roots:wildwood_planks>  						: 40,
		<roots:wildwood_sapling>  						: 25,
		<tconstruct:materials:15>  						: 25,
		<integrateddynamics:crystalized_menril_chunk>  	: 10,
		<thaumcraft:loot_bag:2>  						: 5,
		<thaumcraft:loot_bag:1>  						: 8,
		<thaumcraft:loot_bag>  							: 10,
		<botania:blacklotus>  							: 8,
		<pyrotech:freckleberry_seeds>*4  				: 40,
		<pyrotech:pyroberry_seeds>*4  					: 40,
		<minecraft:bone>  								: 70,
		<ore:dustAsh>.firstItem*4  						: 70,
		<minecraft:gunpowder>*4  						: 70,
	});

	# Tools
	addLootList(
		"minecraft:chests/woodland_mansion", 
		"woodland_mansion_tools_custom", {
			<cyclicmagic:evoker_fang>  																			: 40,
			<botania:blacklotus:1>  																			: 5,
			<botania:auraring>  																				: 5,
			<actuallyadditions:emerald_paxel>  																	: 15,
			<actuallyadditions:item_helm_emerald>.withTag({ench: [{lvl: 1 as short, id: 6}], RepairCost: 1})  	: 10,
			<actuallyadditions:item_chest_emerald>.withTag({ench: [{lvl: 1 as short, id: 70}], RepairCost: 1})  : 10,
			<actuallyadditions:item_pants_emerald>.withTag({ench: [{lvl: 1 as short, id: 70}], RepairCost: 1})  : 10,
			<actuallyadditions:item_boots_emerald>.withTag({ench: [{lvl: 3 as short, id: 8}], RepairCost: 1})  	: 10,
			<minecraft:splash_potion>.withTag({Potion: "cofhcore:healing4"})  									: 20,
			<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"})  							: 20,
			<minecraft:potion>.withTag({Potion: "cofhcore:haste3+"})  											: 20,
	});

	# Terrarium's
	addLootList(
		"minecraft:chests/woodland_mansion", 
		"woodland_mansion_terrarium_custom", {
				<biomesoplenty:terrarium:9>  	: 20,
				<biomesoplenty:terrarium:10>  	: 20,
				<biomesoplenty:terrarium:11>  	: 20,
				<biomesoplenty:terrarium:12>  	: 20,
				<biomesoplenty:terrarium:13>  	: 20,
				<biomesoplenty:terrarium:14>  	: 20,
				<biomesoplenty:terrarium:15>  	: 20,
				<biomesoplenty:terrarium>  		: 20,
				<biomesoplenty:terrarium:1>  	: 20,
				<biomesoplenty:terrarium:2>  	: 20,
				<biomesoplenty:terrarium:3>  	: 20,
				<biomesoplenty:terrarium:4>  	: 20,
				<biomesoplenty:terrarium:5>  	: 20,
				<biomesoplenty:terrarium:6>  	: 20,
				<biomesoplenty:terrarium:7>  	: 20,
				<biomesoplenty:terrarium:8>  	: 20,
	});

	# Foods
	addLootList(
		"minecraft:chests/woodland_mansion", 
		"woodland_mansion_foods_custom", {
				<harvestcraft:springrollitem>  				: 20,
				<harvestcraft:rosepetalteaitem>  			: 20,
				<harvestcraft:taiyakiitem>  				: 20,
				<harvestcraft:nopalessaladitem>  			: 20,
				<harvestcraft:friedbolognasandwichitem>  	: 20,
				<harvestcraft:gyudonitem>  					: 20,
				<harvestcraft:slimepieitem>  				: 20,
				<harvestcraft:honeybreaditem>  				: 20,
				<harvestcraft:cottagepieitem>  				: 20,
				<harvestcraft:southernstylebreakfastitem>  	: 1,
				<harvestcraft:salmonpattiesitem>  			: 20,
				<harvestcraft:porklomeinitem>  				: 20,
				<harvestcraft:steakfajitaitem>  			: 20,
				<harvestcraft:bbqpotatochipsitem>  			: 20,
				<harvestcraft:deviledeggitem>  				: 20,
				<harvestcraft:honeysoyribsitem>  			: 20,
				<harvestcraft:netherwingsitem>  			: 20,
				<harvestcraft:dimsumitem>  					: 20,
	});

// Simple Dungeon (Vanilla)

	clear_pool("minecraft:chests/simple_dungeon", "main");
	clear_pool("minecraft:chests/simple_dungeon", "pool1");
	clear_pool("minecraft:chests/simple_dungeon", "pool2");
	//clear_pool("minecraft:chests/simple_dungeon", "railcraft_general");
	clear_pool("minecraft:chests/simple_dungeon", "magichood");
	clear_pool("minecraft:chests/simple_dungeon", "botania_inject_pool");
	clear_pool("minecraft:chests/simple_dungeon", "lavacharm");

	//clear_pool("minecraft:chests/simple_dungeon", "randomthings:biomeCrystal");

	LootTweaker.getTable("minecraft:chests/simple_dungeon").addPool("simple_dungeon_foods_custom", 2, 6, 1, 2);
	LootTweaker.getTable("minecraft:chests/simple_dungeon").addPool("simple_dungeon_tools_custom", 1, 2, 0, 0);
	LootTweaker.getTable("minecraft:chests/simple_dungeon").addPool("simple_dungeon_resources_custom", 4, 8, 0, 2);

	# Resources
	addLootList(
		"minecraft:chests/simple_dungeon", 
		"simple_dungeon_resources_custom", {
		<minecraft:rotten_flesh>*8  					: 60,
		<minecraft:bone>*8  							: 60,
		<minecraft:string>*4 							: 60,
		<minecraft:web>*2  								: 55,
		<minecraft:melon_seeds>*2  						: 40,
		<minecraft:beetroot_seeds>*2  					: 40,
		<minecraft:gunpowder>*4  						: 55,
		<minecraft:wheat>*4  							: 35,
		<thaumcraft:loot_bag:2>  						: 5,
		<thaumcraft:loot_bag:1>  						: 8,
		<thaumcraft:loot_bag>  							: 10,
		<minecraft:diamond>*2  							: 8,
		<minecraft:gold_ingot>*4  						: 20,
		<minecraft:iron_ingot>*4  						: 20,
		<minecraft:bone>*2  							: 60,
		<minecraft:coal>*4  							: 70,
		<minecraft:spider_eye>*4  						: 55,
	});

	# Tools
	addLootList(
		"minecraft:chests/simple_dungeon", 
		"simple_dungeon_tools_custom", {
			<minecraft:bucket>  	: 30,
			<tconstruct:axe_head>.withTag({Material: "constantan"})  	: 10,
			<tconstruct:shovel_head>.withTag({Material: "slime"})  	: 10,
			<tconstruct:sword_blade>.withTag({Material: "invar"})  	: 10,
			<tconstruct:hammer_head>.withTag({Material: "certus_quartz"})  	: 10,
			<embers:sword_copper>.withTag({ench: [{lvl: 1 as short, id: 34}, {lvl: 1 as short, id: 56}, {lvl: 1 as short, id: 71}], RepairCost: 7}): 15,
			<embers:pickaxe_copper>.withTag({ench: [{lvl: 1 as short, id: 34}, {lvl: 1 as short, id: 56}, {lvl: 1 as short, id: 24}, {lvl: 1 as short, id: 71}], RepairCost: 15}): 15,
			<embers:axe_copper>.withTag({ench: [{lvl: 1 as short, id: 34}, {lvl: 1 as short, id: 56}, {lvl: 1 as short, id: 71}], RepairCost: 7}): 15,
			<minecraft:compass>  	: 20,
			<minecraft:shears>  	: 20,
			<minecraft:fishing_rod>.withTag({ench: [{lvl: 3 as short, id: 62}, {lvl: 3 as short, id: 61}], RepairCost: 3, display: {Name: "Agropesca Jacaré"}})  	: 5,
	});

	# Foods
	addLootList(
		"minecraft:chests/simple_dungeon", 
		"simple_dungeon_foods_custom", {
				<harvestcraft:springrollitem>  				: 20,
				<harvestcraft:rosepetalteaitem>  			: 20,
				<harvestcraft:taiyakiitem>  				: 20,
				<harvestcraft:nopalessaladitem>  			: 20,
				<harvestcraft:friedbolognasandwichitem>  	: 20,
				<harvestcraft:gyudonitem>  					: 20,
				<harvestcraft:slimepieitem>  				: 20,
				<harvestcraft:honeybreaditem>  				: 20,
				<harvestcraft:cottagepieitem>  				: 20,
				<harvestcraft:cornedbeefbreakfastitem>  	: 1,
				<harvestcraft:salmonpattiesitem>  			: 20,
				<harvestcraft:porklomeinitem>  				: 20,
				<harvestcraft:steakfajitaitem>  			: 20,
				<harvestcraft:bbqpotatochipsitem>  			: 20,
				<harvestcraft:deviledeggitem>  				: 20,
				<harvestcraft:honeysoyribsitem>  			: 20,
				<harvestcraft:netherwingsitem>  			: 20,
				<harvestcraft:dimsumitem>  					: 20,
	});

#Astral Sorcery Shrines
add_entry("astralsorcery:chest_shrine", "astral_shrine_aquamarine", <ore:gemAquamarine>.firstItem, 1, 2, 0, 0, 12);

