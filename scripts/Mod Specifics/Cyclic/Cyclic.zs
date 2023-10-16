import mods.artisanworktables.builder.RecipeBuilder;
import mods.roots.Fey as Fey;

//GPS Marker
recipes.remove(<cyclicmagic:card_location>);
forming.recipeBuilder()
    .inputs(<ore:stickBlueSteel>, <ore:stickBlueSteel>, <ore:gemFlawlessBlueTopaz>)
    .outputs(<cyclicmagic:card_location>)
	.duration(60)
	.EUt(128)
.buildAndRegister();

//Iron Spikes
recipes.remove(<cyclicmagic:spikes_iron>);
recipes.addShapeless("CyclicIronSpike",<cyclicmagic:spikes_iron>,[<extrautils2:spike_iron>, <ore:craftingRedstoneTorch>, <ore:dustRedstone>, <ore:gtceWrenches>]);

//Diamond Spikes
recipes.remove(<cyclicmagic:spikes_diamond>);
recipes.addShapeless("CyclicDiamondSpike",<cyclicmagic:spikes_diamond>,[<extrautils2:spike_diamond>, <ore:craftingRedstoneTorch>, <ore:dustRedstone>, <ore:gtceWrenches>]);

//Crystallized Obsidian
recipes.remove(<cyclicmagic:crystallized_obsidian>);
mixer.recipeBuilder()
    .inputs(<ore:dustObsidian>, <ore:dustStygian>)
    .fluidInputs(<liquid:nacre>*1000)
    .outputs(<cyclicmagic:crystallized_obsidian>)
	.duration(600)
	.EUt(260)
.buildAndRegister();

// Dynamites ============================

# Combat
recipes.remove(<cyclicmagic:dynamite_safe>);
assembler.recipeBuilder()
    .inputs(<ore:paper>, <ore:twine>, <ore:dyeLime>)
    .circuit(13)
    .fluidInputs(<liquid:glyceryl_trinitrate>*500)
    .outputs(<cyclicmagic:dynamite_safe>*6)
	.duration(600)
	.EUt(30)
.buildAndRegister();

# Dynamite I
recipes.remove(<cyclicmagic:ender_tnt_1>);
assembler.recipeBuilder()
    .inputs(<ore:paper>, <ore:twine>, <ore:dustSmallEnderPearl>*2)
    .circuit(13)
    .fluidInputs(<liquid:glyceryl_trinitrate>*500)
    .outputs(<cyclicmagic:ender_tnt_1>*6)
	.duration(600)
	.EUt(30)
.buildAndRegister();

# The Rest of the those Dynamites Scales normally.

// Corrupeted Chorus Fruit
recipes.remove(<cyclicmagic:corrupted_chorus>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:chorus_fruit>, <contenttweaker:corruptedstarmetal>)
    .fluidInputs(<liquid:fermented_enderlyne>*1000)
    .outputs(<cyclicmagic:corrupted_chorus>)
	.duration(300)
	.EUt(400)
.buildAndRegister();

// Automatic Torch
recipes.remove(<cyclicmagic:tool_auto_torch>);
recipes.addShaped(<cyclicmagic:tool_auto_torch> * 1, [[<ore:barsIron>, <ore:springIron>, <ore:barsIron>], [<ore:gtceFiles>, <torchmaster:terrain_lighter>, <ore:gtceWrenches>],[<ore:barsIron>, <ore:heavyPlateIron>, <ore:barsIron>]]);

// Torch launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
recipes.addShaped(<cyclicmagic:tool_torch_launcher> * 1, [[<ore:gtceHardHammers>, <ore:springSmallGold>, <ore:blockCoal>], [<ore:screwSteel>, <torchmaster:terrain_lighter>, <ore:springSmallGold>],[<ore:heavyPlateSteel>, <ore:screwSteel>, <ore:gtceScrewdrivers>]]);

// Remote Lever
recipes.remove(<cyclicmagic:password_remote>);
recipes.addShaped(<cyclicmagic:password_remote> * 1, [[<ore:plateStone>, <ore:gemEnderEye>, <ore:plateStone>], [<ore:plateStone>, <minecraft:lever>, <ore:plateStone>],[<ore:plateStone>, <tconstruct:large_plate>.withTag({Material: "stone"}), <ore:plateStone>]]);

//Player Launcher
recipes.remove(<cyclicmagic:tool_launcher>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:materials:9>, <tconstruct:large_plate>.withTag({Material: "slime"}), <ore:EmpoweredDiamantineCrystal>],
    [null, <gregtech:meta_item_1:173>, <tconstruct:large_plate>.withTag({Material: "slime"})],
    [<tconstruct:tough_tool_rod>.withTag({Material: "slime"}), null, <tconstruct:materials:9>]])
  .setFluid(<liquid:refinedcanolaoil> * 1000)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<cyclicmagic:tool_launcher>)
  .create();

//Water Spreader
<cyclicmagic:water_spreader>.addTooltip(format.lightPurple("Can be bought in the Shop!"));

recipes.remove(<cyclicmagic:water_spreader>);
Fey.addRecipe(
  "water_spreader",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <cyclicmagic:water_spreader>,    // the itemstack produced by this recipe
  [<roots:unending_bowl>, <ore:gearRunicSteel>, <ore:springGold>, <ore:EmpoweredPalisCrystal>, <extrabees:propolis>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Water Froster
recipes.remove(<cyclicmagic:water_freezer>);
Fey.addRecipe(
  "water_freezer",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <cyclicmagic:water_freezer>,    // the itemstack produced by this recipe
  [<cyclicmagic:water_spreader>, <ore:lightPlateGold>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

// Carrots ============

# Infected
recipes.remove(<cyclicmagic:horse_upgrade_type>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropCarrot>, <minecraft:fermented_spider_eye>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:horse_upgrade_type>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

# Lapis
recipes.remove(<cyclicmagic:horse_upgrade_variant>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropCarrot>, <ore:gemLapis>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:horse_upgrade_variant>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

# Diamond
recipes.remove(<cyclicmagic:horse_upgrade_health>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropCarrot>, <ore:gemDiamond>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:horse_upgrade_health>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

# Redstone
recipes.remove(<cyclicmagic:horse_upgrade_speed>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropCarrot>, <ore:dustRedstone>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:horse_upgrade_speed>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

# Ender
recipes.remove(<cyclicmagic:horse_upgrade_jump>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropCarrot>, <ore:gemEnderPearl>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:horse_upgrade_jump>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

// Carbon Paper
recipes.removeByRecipeName("cyclicmagic:item.carbon_paper_1_2");
recipes.addShaped(<cyclicmagic:carbon_paper> * 8, [[<ore:paper>, <ore:paper>, <ore:paper>], [<ore:paper>, <ore:dustCarbon>, <ore:paper>],[<ore:paper>, <ore:paper>, <ore:paper>]]);

//Piston Scepter
recipes.remove(<cyclicmagic:tool_push>);
Fey.addRecipe("piston_scepter", <cyclicmagic:tool_push>, [<ore:craftingPiston>, <tconstruct:tough_tool_rod>.withTag({Material: "obsidian"}), <ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:screwIron>], 1);

//Lapis Apple
recipes.remove(<cyclicmagic:apple_lapis>);
chemreactor.recipeBuilder()
    .inputs(<ore:cropApple>, <ore:gemLapis>)
    .fluidInputs(<liquid:biomass>*100)
    .outputs(<cyclicmagic:apple_lapis>)
	.duration(300)
	.EUt(10)
.buildAndRegister();

// Aerial Faith Plate
recipes.remove(<cyclicmagic:plate_vector>);
recipes.addShaped(<cyclicmagic:plate_vector> * 6, [[<ore:plateEmerald>, <quark:obsidian_pressure_plate>, <ore:plateEmerald>], [<ore:plateSteel>, <ore:springSteel>, <ore:plateSteel>],[<ore:artisansSolderer>.reuse().transformDamage(2), <gregtech:meta_item_1:173>, <ore:gtceHardHammers>]]);

// Pattern Replicator
recipes.remove(<cyclicmagic:builder_pattern>);
recipes.addShaped(<cyclicmagic:builder_pattern> * 1, [[<ore:plateRedAlloy>, <ore:plateWroughtIron>, <ore:plateRedAlloy>], [<ore:stickWroughtIron>, <ore:ice>, <ore:stickWroughtIron>],[<ore:plateRedAlloy>, <ore:circuitLv>, <ore:plateRedAlloy>]]);

// Item Collector
recipes.remove(<cyclicmagic:block_vacuum>);
recipes.addShaped(<cyclicmagic:block_vacuum> * 1, [[<ore:plateEnori>, <ore:gemLapis>, <ore:plateEnori>], [<ore:circuitLv>, <actuallyadditions:block_misc:9>, <ore:ringSteel>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Moon Phase Sensor
recipes.remove(<cyclicmagic:moon_sensor>);
recipes.addShaped(<cyclicmagic:moon_sensor> * 1, [[null, null, null], [<ore:dustLunar>, <ore:gemMoon>, <ore:dustLunar>],[<ore:lightPlateRunicSteel>, <minecraft:daylight_detector>, <ore:lightPlateRunicSteel>]]);

// Bullseye Target
recipes.remove(<cyclicmagic:target>);
recipes.addShaped(<cyclicmagic:target> * 1, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:ingotRedstoneAlloy>, <minecraft:observer>, <ore:ingotRedstoneAlloy>],[<ore:stone>, <ore:stone>, <ore:stone>]]);

// Empty Beacon
recipes.remove(<cyclicmagic:beacon_redstone>);
recipes.addShaped(<cyclicmagic:beacon_redstone> * 1, [[<ore:blockGlassColorless>, <ore:craftingLensGlass>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <minecraft:redstone_lamp>, <ore:blockGlassColorless>],[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);

// Block Miner
recipes.remove(<cyclicmagic:block_miner>);
recipes.addShaped(<cyclicmagic:block_miner> * 1, [[<ore:plateIron>, <tconstruct:large_plate>.withTag({Material: "bone"}), <ore:plateIron>], [<ore:ingotRedstoneAlloy>, <actuallyadditions:item_misc:7>, <minecraft:iron_pickaxe>],[<ore:stoneMossy>, <ore:stoneMossy>, <ore:stoneMossy>]]);

// Harvester
recipes.remove(<cyclicmagic:harvester_block>);
recipes.addShaped(<cyclicmagic:harvester_block> * 1, [[<ore:plateEmeradicEmpowered>, <tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:plateEmeradicEmpowered>], [<ore:circuitMv>, <actuallyadditions:block_misc:9>, <ore:ringStainlessSteel>],[<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>]]);

// Controlled Miner
recipes.remove(<cyclicmagic:block_miner_smart>);
recipes.addShaped(<cyclicmagic:block_miner_smart> * 1, [[<ore:platePalisEmpowered>, <tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:platePalisEmpowered>], [<ore:circuitLv>, <actuallyadditions:block_misc:9>, <ore:ringSteel>],[<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>]]);

// Password Trigger
recipes.remove(<cyclicmagic:password_block>);
recipes.addShaped(<cyclicmagic:password_block> * 1, [[<quark:polished_stone>, <ore:plateIron>, <quark:polished_stone>], [<ore:ingotRedstoneAlloy>, <thermalfoundation:security:0>, <ore:ingotRedstoneAlloy>],[<quark:polished_stone>, <ore:plateIron>, <quark:polished_stone>]]);

// Void Anvil
recipes.remove(<cyclicmagic:void_anvil>);

recipes.addShaped(<cyclicmagic:void_anvil>, [
[<ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>],
[<ore:screwRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:screwRefinedObsidian>],
[<ore:plateRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:plateRefinedObsidian>]]);

alloy.recipeBuilder()
    .inputs(<ore:ingotRefinedObsidian>*31)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<cyclicmagic:void_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:refined_obsidian>*4464)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<cyclicmagic:void_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

//Ender Library
recipes.remove(<cyclicmagic:block_library_ctrl>);
assembler.recipeBuilder()
    .inputs([<overloaded:compressed_obsidian>, <ore:gemEnderEye> * 4, <ore:circuitHv>, <ore:gemObsidian>])
    .fluidInputs([<liquid:super_glue> * 800])
    .circuit(8)
    .outputs(<cyclicmagic:block_library_ctrl>)
    .duration(100)
    .EUt(80)
.buildAndRegister();

//Ender Bookshelf
recipes.remove(<cyclicmagic:block_library>);
assembler.recipeBuilder()
    .inputs([<overloaded:compressed_obsidian>, <ore:bookshelf> * 4, <ore:gemObsidian>])
    .fluidInputs([<liquid:super_glue> * 400])
    .circuit(8)
    .outputs(<cyclicmagic:block_library>*4)
    .duration(100)
    .EUt(80)
.buildAndRegister();

// Wireless Transmitter
recipes.remove(<cyclicmagic:wireless_transmitter>);
recipes.addShaped(<cyclicmagic:wireless_transmitter> * 1, [[<quark:polished_stone>, <ore:lightPlateIron>, <quark:polished_stone>], [<minecraft:repeater>, <ore:gemEnderPearl>, <minecraft:repeater>],[<quark:polished_stone>, <ore:lightPlateIron>, <quark:polished_stone>]]);

// Wireless Receiver
recipes.remove(<cyclicmagic:wireless_receiver>);
recipes.addShaped(<cyclicmagic:wireless_receiver> * 1, [[<quark:polished_stone>, <ore:lightPlateIron>, <quark:polished_stone>], [<minecraft:comparator>, <ore:gemEnderPearl>, <minecraft:comparator>],[<quark:polished_stone>, <ore:lightPlateIron>, <quark:polished_stone>]]);

// Slime Plate
recipes.remove(<cyclicmagic:plate_launch_med>);
recipes.addShapeless(<cyclicmagic:plate_launch_med>, [<tconstruct:slime_channel:0>, <minecraft:heavy_weighted_pressure_plate>, <ore:gtceScrewdrivers>, <ore:screwSteel>]);

// Soft Slime Plate
recipes.remove(<cyclicmagic:plate_launch_small>);
recipes.addShapeless(<cyclicmagic:plate_launch_small>, [<tconstruct:slime_channel:1>, <minecraft:heavy_weighted_pressure_plate>, <ore:gtceScrewdrivers>, <ore:screwSteel>]);

// Hardened Slime Plate
recipes.remove(<cyclicmagic:plate_launch_large>);
recipes.addShapeless(<cyclicmagic:plate_launch_large>, [<tconstruct:slime_channel:2>, <minecraft:heavy_weighted_pressure_plate>, <ore:gtceScrewdrivers>, <ore:screwAluminium>]);

// Extreme Slime Plate
recipes.remove(<cyclicmagic:plate_launch_extra>);
recipes.addShapeless(<cyclicmagic:plate_launch_extra>, [<tconstruct:slime_channel:4>, <minecraft:heavy_weighted_pressure_plate>, <ore:gtceScrewdrivers>, <ore:screwAluminium>]);

# [Forester] from [Living Axe][+5]
recipes.removeByRecipeName("cyclicmagic:tile.block_forester_1");
craft.make(<cyclicmagic:block_forester>, ["pretty",
  "# D #",
  "E i E",
  "░ L ░"], {
  "#": <forestry:wood_pile>,           # Wood Pile
  "D": <forestry:thermionic_tubes:2>,  # Bronze Thermionic Tube
  "E": <ore:springElectrum>,           # Electrum Spring
  "i": <roots:living_axe>.anyDamage(), # Living Axe
  "░": <ore:compressed1xCobblestone>,  # 1x Compressed Cobblestone
  "L": <ore:batteryLv>,                # Small Lithium Battery
});

# [Item Magnet]*4 from [Light Magnetic Steel Plate][+2]
recipes.removeByRecipeName("cyclicmagic:tile.magnet_block_1");
craft.make(<cyclicmagic:magnet_block> * 4, ["pretty",
  "R □ R",
  "□ п □",
  "R □ R"], {
  "R": <ore:boltRunicSteel>,          # Runic Steel Bolt
  "□": <ore:plateSteel>,              # Steel Plate
  "п": <ore:lightPlateSteelMagnetic>, # Light Magnetic Steel Plate
});