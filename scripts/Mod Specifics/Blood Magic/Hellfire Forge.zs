import mods.bloodmagic.TartaricForge as TartaricForge;

//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);

// Arcane Ashes
TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:redstone>, <minecraft:coal>, <ore:dyeWhite>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:arcane_ashes>,[<ore:dustRedrock>, <embers:dust_metallurgic>, <ore:dustSiliconDioxide>, <ore:dustBiotite>], 5,10);

// Tartaric Gem's =============================================================================== //

// Tartaric Gem
TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>, <minecraft:glass>, <ore:dyeBlue>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:soul_gem>,[<embers:adhesive>, <ore:quartzRed>, <ore:manaPearl>, <evilcraft:garmonbozia>], 5,10);

# Lesser Tartaric Gem
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:diamond>,<ore:blockRedstone>.firstItem,<ore:blockLapis>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:1>.withTag({}), [<bloodmagic:soul_gem>,<contenttweaker:gusty_core>,<contenttweaker:aquatic_core>,<contenttweaker:fire_core>], 64, 32);

# Common Tartaric Gem
TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>,<minecraft:diamond>,<minecraft:gold_block>,<bloodmagic:slate:2>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:2>.withTag({}), [<bloodmagic:soul_gem:1>,<contenttweaker:magical_core>,<contenttweaker:holy_core>,<contenttweaker:environmental_core>], 256, 128);

# Greater Tartaric Gem
TartaricForge.removeRecipe([<bloodmagic:soul_gem:2>,<bloodmagic:slate:3>,<bloodmagic:blood_shard>,<bloodmagic:item_demon_crystal>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:3>.withTag({}), [<bloodmagic:soul_gem:2>,<bloodmagic:decorative_brick>,<bloodmagic:item_demon_crystal>,<contenttweaker:potency_core>], 1024, 512);

# Grand Tartaric Gem
TartaricForge.removeRecipe([<bloodmagic:soul_gem:3>,<minecraft:nether_star>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:4>.withTag({}), [<bloodmagic:soul_gem:3>,<botania:manaresource:5>], 4096, 2048);

// ============================================================================================== //

# Sentient Sword
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_sword>]);
TartaricForge.addRecipe(<bloodmagic:sentient_sword>.withTag({}), [<ore:ingotSentientMetal>,<tconstruct:sword_blade>.withTag({Material: "dreadium"})], 32, 4);

# Sentient Pickaxe
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_pickaxe>]);
TartaricForge.addRecipe(<bloodmagic:sentient_pickaxe>.withTag({}), [<ore:ingotSentientMetal>,<tconstruct:pick_head>.withTag({Material: "dreadium"})], 32, 4);

# Sentient Shovel
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_shovel>]);
TartaricForge.addRecipe(<bloodmagic:sentient_shovel>.withTag({}), [<ore:ingotSentientMetal>,<tconstruct:shovel_head>.withTag({Material: "dreadium"})], 32, 4);

# Sentient Axe
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_axe>]);
TartaricForge.addRecipe(<bloodmagic:sentient_axe>.withTag({}), [<ore:ingotSentientMetal>,<tconstruct:axe_head>.withTag({Material: "dreadium"})], 32, 4);

# Sentient Bow
TartaricForge.removeRecipe([<minecraft:bow>,<bloodmagic:soul_gem:1>,<ore:string>.firstItem,<ore:string>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:sentient_bow>.withTag({}), [<roots:wildwood_bow>,<ore:ingotSentientMetal>,<randomthings:ingredient:12>,<randomthings:ingredient:12>], 75, 4);

# Sentient Armor (deployed with a single item)
TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>.withTag({}), <minecraft:iron_block>, <minecraft:obsidian>]);
TartaricForge.addRecipe(<bloodmagic:sentient_armour_gem>, [<roots:wildwood_chestplate>,<contenttweaker:potency_core>,<ore:blockSentientMetal>,<ore:compressed1xObsidian>], 100, 25);


// Reagents ===================================================================================== //

# Water Reagent
TartaricForge.removeRecipe([<minecraft:sugar>,<minecraft:water_bucket>,<minecraft:water_bucket>]);
TartaricForge.addRecipe(<bloodmagic:component>, [<extrabees:propolis>,<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),<ore:blockSugar>,<ore:blockRockSalt>], 8, 4);

# Lava Reagent
TartaricForge.removeRecipe([<minecraft:lava_bucket>,<minecraft:redstone>,<ore:cobblestone>.firstItem,<ore:blockCoal>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:1>, [<ore:slimecrystalMagma>,<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}),<ore:plateFiery>,<minecraft:coal_block>], 8, 4);

# Air Reagent
TartaricForge.removeRecipe([<minecraft:ghast_tear>,<ore:feather>.firstItem,<ore:feather>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:2>, [<minecraft:glass_bottle>,<minecraft:glass_bottle>,<ore:turbineBladeBismuthBronze>,<ore:dustAerotheum>], 8, 4);

# Haste Reagent
TartaricForge.removeRecipe([<minecraft:cookie>,<minecraft:sugar>,<minecraft:cookie>,<ore:stone>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:13>, [<harvestcraft:creamcookieitem>,<minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),<minecraft:glowstone>,<ore:blockSugar>], 80, 12);

# Frost Reagent
TartaricForge.removeRecipe([<minecraft:ice>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:redstone>]);
TartaricForge.addRecipe(<bloodmagic:component:32>, [<minecraft:packed_ice>,<minecraft:snow>,<enderio:item_alloy_endergy_ingot:6>,<thermalfoundation:material:1025>], 80, 12);

# Growth Reagent
TartaricForge.removeRecipe([<ore:treeSapling>.firstItem,<ore:treeSapling>.firstItem,<ore:sugarcane>.firstItem,<minecraft:sugar>]);
TartaricForge.addRecipe(<bloodmagic:component:5>, [<minecraft:bone_block>,<natura:overworld_sapling>,<natura:overworld_sapling2:1>,<minecraft:melon>], 80, 12);

# Elasticity Reagent
TartaricForge.removeRecipe([<minecraft:slime>,<minecraft:slime>,<minecraft:leather>,<ore:string>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:31>, [<minecraft:slime>,<minecraft:slime>,<contenttweaker:blood_infused_leather>,<forestry:propolis:3>], 500, 72);

# Void Reagent
TartaricForge.removeRecipe([<minecraft:bucket>,<ore:string>.firstItem,<ore:string>.firstItem,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:4>, [<quantumflux:voidbucket>,<actuallyadditions:item_crystal_empowered:3>,<ore:ingotEnderium>,<ore:ingotEnderium>], 500, 72);

# Suppression Reagent
TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:water_bucket>,<minecraft:lava_bucket>,<minecraft:blaze_rod>]);
TartaricForge.addRecipe(<bloodmagic:component:9>, [<actuallyadditions:block_misc:8>,<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<enderio:item_material:44>], 500, 72);

# Blood Lamp Reagent
TartaricForge.removeRecipe([<ore:glowstone>.firstItem,<minecraft:torch>,<minecraft:redstone>,<minecraft:redstone>]);
TartaricForge.addRecipe(<bloodmagic:component:11>, [<torchmaster:dread_lamp>,<railcraft:signal_lamp>,<ore:lightPlateLumium>,<contenttweaker:rune_of_spring>], 64, 32);

# Magnetism Reagent
TartaricForge.removeRecipe([<ore:string>.firstItem,<minecraft:gold_ingot>,<minecraft:iron_block>,<minecraft:gold_ingot>]);
TartaricForge.addRecipe(<bloodmagic:component:12>, [<quantumflux:magnet:*>,<contenttweaker:power_core>,<simplyjetpacks:metaitemmods:12>,<simplyjetpacks:metaitemmods:12>], 64, 32);

# Mining Reagent
TartaricForge.removeRecipe([<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_shovel>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:3>, [<botania:manasteelpick>,<botania:manasteelshovel>,<bloodmagic:component:13>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})], 32, 16);

# Sight Reagent
TartaricForge.removeRecipe([<bloodmagic:sigil_divination>,<ore:blockGlass>.firstItem,<ore:blockGlass>.firstItem,<minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:component:7>, [<bloodmagic:sigil_divination>,<botania:monocle>,<embers:ashen_cloak_head>,<minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"})], 32, 16);

# Phantom Bridge Reagent
TartaricForge.removeRecipe([<minecraft:soul_sand>,<minecraft:soul_sand>,<ore:stone>.firstItem,<minecraft:obsidian>]);
TartaricForge.addRecipe(<bloodmagic:component:15>, [<actuallyadditions:block_phantomface>,<enderutilities:draw_bridge>,<overloaded:compressed_obsidian>,<ore:ingotManasteel>], 32, 16);

# Compression Reagent
TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:gold_block>,<minecraft:obsidian>,<ore:cobblestone>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:14>, [<avaritia:compressed_crafting_table>,<gregtech:machine:231>,<contenttweaker:reductus>,<contenttweaker:blood_infused_leather>], 32, 16);

# Severance Reagent
TartaricForge.removeRecipe([<minecraft:ender_eye>,<minecraft:ender_pearl>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]);
TartaricForge.addRecipe(<bloodmagic:component:16>, [<forestry:thermionic_tubes:12>,<forestry:thermionic_tubes:12>,<minecraft:ender_eye>,<minecraft:ender_eye>], 32, 16);

# Holding Reagent
TartaricForge.removeRecipe([<ore:chestWood>.firstItem,<ore:leather>.firstItem,<ore:string>.firstItem,<ore:string>.firstItem]);
TartaricForge.addRecipe(<bloodmagic:component:27>, [<appliedenergistics2:drive>,<contenttweaker:reduction_core>,<contenttweaker:blood_infused_leather>,<botania:manaresource:22>], 32, 16);

# Claw Reagent
TartaricForge.removeRecipe([<minecraft:flint>,<minecraft:flint>,<bloodmagic:cutting_fluid>]);
TartaricForge.addRecipe(<bloodmagic:component:30>, [<minecraft:flint>,<minecraft:flint>,<fossil:bone_unique_item:7>,<fossil:bone_unique_item:16>], 16, 4);

# Transposition Reagent
TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:diamond>,<minecraft:ender_pearl>,<minecraft:obsidian>]);
TartaricForge.addRecipe(<bloodmagic:component:18>, [<bloodmagic:teleposer>,<contenttweaker:abyssal_pearl>,<ore:ingotTitaniumTungstenCarbide>,<ore:ingotTitaniumTungstenCarbide>], 1000, 144);

# Teleposition Reagent
TartaricForge.removeRecipe([<bloodmagic:teleposer>,<ore:glowstone>.firstItem,<ore:blockRedstone>.firstItem,<minecraft:gold_ingot>]);
TartaricForge.addRecipe(<bloodmagic:component:17>, [<bloodmagic:teleposer>,<contenttweaker:abyssal_pearl>,<ore:ingotTitaniumCarbide>,<ore:ingotTitaniumCarbide>], 1000, 144);

# Binding Reagent
TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:gold_nugget>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<contenttweaker:binding_reagent>, [<contenttweaker:rune_of_water>,<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_earth>,<contenttweaker:rune_of_air>], 64, 64);

// ===================================================================================================== //


