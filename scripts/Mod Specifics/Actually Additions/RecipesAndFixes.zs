import mods.actuallyadditions.AtomicReconstructor as AtomicReconstructor;
import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import crafttweaker.item.IIngredient;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Actually Additions Script                                                                                                        //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


///////// Lamps =======================

//Function to add Recipes to all Actually Additions Lamps
function makeLampRecipe (inputColor as IItemStack, outputLamp as IItemStack){  

    recipes.remove(outputLamp);
    recipes.addShaped(outputLamp, [[<ore:blockGlowstone>, <ore:platePalis>, <ore:blockGlowstone>], [inputColor, <ore:gearBlackQuartz>, inputColor],[<ore:blockGlowstone>, <ore:platePalis>, <ore:blockGlowstone>]]);

    assembler.recipeBuilder()
        .inputs(<ore:blockGlowstone>*4, inputColor*2, <ore:gearBlackQuartz>, <ore:platePalis>*2)
        .outputs([outputLamp])
        .duration(300)
        .EUt(12)
    .buildAndRegister();

}

makeLampRecipe(<projectred-core:resource_item:500>, <actuallyadditions:block_colored_lamp:0>);
makeLampRecipe(<projectred-core:resource_item:501>, <actuallyadditions:block_colored_lamp:1>);
makeLampRecipe(<projectred-core:resource_item:502>,<actuallyadditions:block_colored_lamp:2>);
makeLampRecipe(<projectred-core:resource_item:503>,<actuallyadditions:block_colored_lamp:3>);
makeLampRecipe(<projectred-core:resource_item:504>,<actuallyadditions:block_colored_lamp:4>);
makeLampRecipe(<projectred-core:resource_item:505>,<actuallyadditions:block_colored_lamp:5>);
makeLampRecipe(<projectred-core:resource_item:506>,<actuallyadditions:block_colored_lamp:6>);
makeLampRecipe(<projectred-core:resource_item:507>,<actuallyadditions:block_colored_lamp:7>);
makeLampRecipe(<projectred-core:resource_item:508>,<actuallyadditions:block_colored_lamp:8>);
makeLampRecipe(<projectred-core:resource_item:509>,<actuallyadditions:block_colored_lamp:9>);
makeLampRecipe(<projectred-core:resource_item:510>,<actuallyadditions:block_colored_lamp:10>);
makeLampRecipe(<projectred-core:resource_item:511>,<actuallyadditions:block_colored_lamp:11>);
makeLampRecipe(<projectred-core:resource_item:512>,<actuallyadditions:block_colored_lamp:12>);
makeLampRecipe(<projectred-core:resource_item:513>,<actuallyadditions:block_colored_lamp:13>);
makeLampRecipe(<projectred-core:resource_item:514>,<actuallyadditions:block_colored_lamp:14>);
makeLampRecipe(<projectred-core:resource_item:515>,<actuallyadditions:block_colored_lamp:15>);

// Chiseling The Lamps
mods.chisel.Carving.addGroup("Actually Lamps");

var ActuallyAdditionsLamps as IItemStack[] = [
<actuallyadditions:block_colored_lamp>,
<actuallyadditions:block_colored_lamp:1>,
<actuallyadditions:block_colored_lamp:2>,
<actuallyadditions:block_colored_lamp:3>,
<actuallyadditions:block_colored_lamp:4>,
<actuallyadditions:block_colored_lamp:5>,
<actuallyadditions:block_colored_lamp:6>,
<actuallyadditions:block_colored_lamp:7>,
<actuallyadditions:block_colored_lamp:8>,
<actuallyadditions:block_colored_lamp:15>,
<actuallyadditions:block_colored_lamp:14>,
<actuallyadditions:block_colored_lamp:13>,
<actuallyadditions:block_colored_lamp:12>,
<actuallyadditions:block_colored_lamp:11>,
<actuallyadditions:block_colored_lamp:10>,
<actuallyadditions:block_colored_lamp:9>
];
for i in ActuallyAdditionsLamps {
mods.chisel.Carving.addVariation("Actually Lamps", i);
}

// =================== Fixing Black Quartz Stuff =================== //

// Chiseling Blocks
mods.chisel.Carving.addGroup("Black Quartz");

var BlackQuartzBlocks as IItemStack[] = [
<actuallyadditions:block_misc:2>,
<actuallyadditions:block_misc:1>,
<actuallyadditions:block_misc>
];
for i in BlackQuartzBlocks {
recipes.remove(i);
mods.chisel.Carving.addVariation("Black Quartz", i);
}

mods.chisel.Carving.addVariation("Black Quartz", <gregtech:meta_block_compressed_2000>);

# Replacing all Black Quartz Ocurrences withe the Correct one.
recipes.replaceAllOccurences(<actuallyadditions:item_misc:5>, <gregtech:meta_gem:32000>);

// == //

# Book Tooltip ================

<actuallyadditions:item_booklet>.addTooltip(format.green("Please note that some Items/Blocks from the Mod are Disabled."));

# Lamps OreDict ===============

<ore:actuallyLamp>.add(<actuallyadditions:block_colored_lamp:1>, <actuallyadditions:block_colored_lamp:2>, <actuallyadditions:block_colored_lamp:3>, <actuallyadditions:block_colored_lamp:4>, <actuallyadditions:block_colored_lamp:5>, <actuallyadditions:block_colored_lamp:6>, <actuallyadditions:block_colored_lamp:7>, <actuallyadditions:block_colored_lamp:8>, <actuallyadditions:block_colored_lamp:15>, <actuallyadditions:block_colored_lamp:14>, <actuallyadditions:block_colored_lamp:13>, <actuallyadditions:block_colored_lamp:12>, <actuallyadditions:block_colored_lamp:11>, <actuallyadditions:block_colored_lamp:10>, <actuallyadditions:block_colored_lamp:9>);

# Obsidian AIOT Compatibility ===============================================
recipes.remove(<actuallyadditions:obsidian_paxel>);
recipes.addShapeless("ObsidianAIOT", <actuallyadditions:obsidian_paxel>, [<pyrotech:obsidian_sword>, <pyrotech:obsidian_pickaxe>, <pyrotech:obsidian_axe>, <pyrotech:obsidian_shovel>, <pyrotech:obsidian_hoe>]);

# Wood Casing Rework =======================

<actuallyadditions:block_misc:4>.displayName = "Wood Chassis";

// Wood Chassis Basic
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4>, [[<ore:plankWood>, <ore:plateWood>, <ore:plankWood>], [<ore:plateWood>, <forestry:impregnated_casing>, <ore:plateWood>],[<ore:plankWood>, <ore:plateWood>, <ore:plankWood>]]);

# Iron Casing and Normal Casing Rework =======================

recipes.remove(<actuallyadditions:block_misc:9>);
recipes.remove(<actuallyadditions:block_misc:7>);
recipes.remove(<actuallyadditions:block_misc:8>);

<actuallyadditions:block_misc:9>.displayName = "Iron Chassis";
<actuallyadditions:block_misc:7>.displayName = "Steel Chassis";
<actuallyadditions:block_misc:8>.displayName = "Ender Chassis";

//Iron Chassis
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<ore:heavyPlateIron>, <ore:lightPlateIron>, <ore:heavyPlateIron>], [<ore:lightPlateIron>, <actuallyadditions:block_misc:4>, <ore:lightPlateIron>],[<ore:heavyPlateIron>, <ore:lightPlateIron>, <ore:heavyPlateIron>]]);

//Steel Chassis
recipes.addShaped(<actuallyadditions:block_misc:7>, [[<ore:heavyPlateSteel>, <ore:lightPlateLead>, <ore:heavyPlateSteel>], [<ore:lightPlateLead>, <actuallyadditions:block_misc:9>, <ore:lightPlateLead>],[<ore:heavyPlateSteel>, <ore:lightPlateLead>, <ore:heavyPlateSteel>]]);

// Ender Casing
recipes.addShaped(<actuallyadditions:block_misc:8> * 1, [[<ore:plateEnderPearl>, <ore:plateDiamatineEmpowered>, <ore:plateEnderPearl>], [<forestry:thermionic_tubes:5>, <actuallyadditions:block_misc:7>, <forestry:thermionic_tubes:5>],[<ore:plateEnderPearl>, <ore:plateDiamatineEmpowered>, <ore:plateEnderPearl>]]);

// Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);
recipes.addShaped(<actuallyadditions:item_misc:7> * 1, [[null, <ore:EnoriCrystal>, <ore:plateTreatedWood>], [<ore:EnoriCrystal>, <ore:stickBlackQuartz>, <ore:EnoriCrystal>],[<ore:plateTreatedWood>, <ore:EnoriCrystal>, null]]);

// Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.addShaped(<actuallyadditions:item_misc:8> * 1, [[null, <ore:glodCrystal>, <ore:plateTreatedWood>], [<ore:glodCrystal>, <forestry:oak_stick>, <ore:glodCrystal>],[<ore:plateTreatedWood>, <ore:glodCrystal>, null]]);

# Renaming Atomic Reconstructor
<actuallyadditions:block_atomic_reconstructor>.addTooltip(format.darkPurple("A Special machine that can Reconstruct Materials"));

//Renaming Diamatine to Diamantine
<actuallyadditions:item_crystal:2>.displayName = "Diamantine Crystal";
<actuallyadditions:block_crystal:2>.displayName = "Diamantine Crystal Block";
<actuallyadditions:block_crystal_empowered:2>.displayName = "Empowered Diamantine Crystal Block";
<actuallyadditions:item_crystal_empowered:2>.displayName = "Empowered Diamantine Crystal";

//Worm Tooltip
<actuallyadditions:item_worm>.addTooltip(format.red("Can only be bough in the Shop. And it lives for about 1 Hour."));

##### Canola Oil Processing ######

//Refined Canola Oil
extractor.recipeBuilder()
    .inputs(<ore:cropCanola>)
    .fluidOutputs([<liquid:canolaoil> * 80])
    .duration(300)
    .EUt(32)
    .buildAndRegister();

//Refined Canola Oil
distillery.recipeBuilder()
    .fluidInputs([<liquid:canolaoil> * 5])
    .property("circuit", 4)
    .fluidOutputs(<liquid:refinedcanolaoil> * 5)
    .duration(600)
    .EUt(32)
    .buildAndRegister();

//Crystallized Oil
mixer.recipeBuilder()
    .fluidInputs([<liquid:refinedcanolaoil> * 1000])
    .inputs(<actuallyadditions:item_misc:23>)
    .fluidOutputs(<liquid:crystaloil> * 1000)
    .duration(600)
    .EUt(32)
    .buildAndRegister();

//Empowered Oil
mixer.recipeBuilder()
    .fluidInputs([<liquid:crystaloil> * 1000])
    .inputs(<actuallyadditions:item_misc:24>)
    .fluidOutputs(<liquid:empoweredoil> * 1000)
    .duration(600)
    .EUt(32)
    .buildAndRegister();

//Greenhouse Glass

<actuallyadditions:block_greenhouse_glass>.displayName = "Greenhouse Glass MKI";
<actuallyadditions:block_greenhouse_glass>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<actuallyadditions:block_greenhouse_glass>.addShiftTooltip(format.aqua("This Glass actually can be place above Crops/Saplings to increse their Growth Speed."));
<actuallyadditions:block_greenhouse_glass>.addShiftTooltip(format.aqua("Also, you can stack them to increse the speed even more!"));

recipes.remove(<actuallyadditions:block_greenhouse_glass>);
alloy.recipeBuilder()
    .inputs(<ore:dustBorosilicateGlass> * 8)
    .notConsumable(<gregtech:meta_item_1:18>)
    .outputs(<actuallyadditions:block_greenhouse_glass>)
    .duration(200)
    .EUt(90)
.buildAndRegister();

// Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor> * 1, [[<ore:heavyPlateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<magneticraft:crafting:1>, <actuallyadditions:block_misc:9>, <ore:craftingLensGreen>],[<ore:heavyPlateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Small Storage Crate
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest> * 1, [[<ore:chestWood>, <ore:empoweredEndorCrystal>, <ore:chestWood>], [<ore:empoweredEndorCrystal>, <actuallyadditions:block_misc:4>, <ore:empoweredEndorCrystal>],[<ore:chestWood>, <ore:empoweredEndorCrystal>, <ore:chestWood>]]);

// Medium Storage Crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium> * 1, [[<ore:plankTreatedWood>, <ore:empoweredEndorCrystal>, <ore:plankTreatedWood>], [<ore:empoweredEndorCrystal>, <actuallyadditions:block_giant_chest>, <ore:empoweredEndorCrystal>],[<ore:plankTreatedWood>, <ore:empoweredEndorCrystal>, <ore:plankTreatedWood>]]);

// Large Storage Crate
recipes.remove(<actuallyadditions:block_giant_chest_large>);
recipes.addShaped(<actuallyadditions:block_giant_chest_large> * 1, [[<ore:plankTreatedWood>, <actuallyadditions:block_crystal_empowered:2>, <ore:plankTreatedWood>], [<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_giant_chest_medium>, <actuallyadditions:block_crystal_empowered:2>],[<ore:plankTreatedWood>, <actuallyadditions:block_crystal_empowered:2>, <ore:plankTreatedWood>]]);

// Storage Crate Keeper
recipes.remove(<actuallyadditions:item_crate_keeper>);
recipes.addShaped(<actuallyadditions:item_crate_keeper> * 1, [[<ore:plateEnori>, <ore:endorCrystal>, <ore:plateEnori>], [<ore:endorCrystal>, <ore:gearBlackQuartz>, <ore:endorCrystal>],[<ore:plateEnori>, <ore:endorCrystal>, <ore:plateEnori>]]);

// Batteries ========================================================================

// Single Battery
recipes.remove(<actuallyadditions:item_battery:0>);
recipes.addShaped(<actuallyadditions:item_battery:0> * 1, [[<ore:plateBatteryAlloy>, <actuallyadditions:item_crystal:0>, <ore:plateBatteryAlloy>], [<ore:plateEnori>, <actuallyadditions:item_misc:8>, <ore:plateEnori>],[<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]]);

// Double Battery
recipes.remove(<actuallyadditions:item_battery_double:0>);
recipes.addShaped(<actuallyadditions:item_battery_double:0> * 1, [[<ore:plateBatteryAlloy>, <actuallyadditions:item_crystal:0>, <ore:plateBatteryAlloy>], [<ore:plateEnori>, <actuallyadditions:item_battery:0>, <ore:plateEnori>],[<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]]);

// Triple Battery
recipes.remove(<actuallyadditions:item_battery_triple:0>);
recipes.addShaped(<actuallyadditions:item_battery_triple:0> * 1, [[<ore:plateBatteryAlloy>, <actuallyadditions:item_crystal:0>, <ore:plateBatteryAlloy>], [<ore:plateEnori>, <actuallyadditions:item_battery_double:0>, <ore:plateEnori>],[<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]]);

// Quadruple Battery
recipes.remove(<actuallyadditions:item_battery_quadruple:0>);
recipes.addShaped(<actuallyadditions:item_battery_quadruple:0> * 1, [[<ore:plateBatteryAlloy>, <actuallyadditions:item_crystal:0>, <ore:plateBatteryAlloy>], [<ore:plateEnori>, <actuallyadditions:item_battery_triple:0>, <ore:plateEnori>],[<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]]);

// Quintuple Battery
recipes.remove(<actuallyadditions:item_battery_quintuple:0>);
recipes.addShaped(<actuallyadditions:item_battery_quintuple:0> * 1, [[<ore:plateBatteryAlloy>, <actuallyadditions:item_crystal:0>, <ore:plateBatteryAlloy>], [<ore:plateEnori>, <actuallyadditions:item_battery_quadruple:0>, <ore:plateEnori>],[<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]]);

// --------------- ========================================================================

// Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped(<actuallyadditions:block_empowerer> * 1, [[<ore:screwRunicSteel>, <actuallyadditions:item_crystal:0>, <ore:screwRunicSteel>], [<ore:gearSmallRunicSteel>, <actuallyadditions:item_battery_double:0>, <ore:gearSmallRunicSteel>],[<actuallyadditions:block_misc:9>, <actuallyadditions:block_display_stand>, <actuallyadditions:block_misc:9>]]);

// Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);
recipes.addShaped(<actuallyadditions:block_display_stand> * 1, [[<ore:springSmallRunicSteel>, <actuallyadditions:item_misc:8>, <ore:springSmallRunicSteel>], [<actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_green_wall>],[<actuallyadditions:block_testifi_bucks_white_wall>, <actuallyadditions:block_testifi_bucks_white_wall>, <actuallyadditions:block_testifi_bucks_white_wall>]]);

// Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer> * 1, [[<ore:plateEnoriEmpowered>, <ore:gearSmallStainlessSteel>, <ore:plateEnoriEmpowered>], [<ore:plateStainlessSteel>, <actuallyadditions:block_misc:9>, <ore:plateStainlessSteel>],[<ore:plateEnoriEmpowered>, <ore:circuitMv>, <ore:plateEnoriEmpowered>]]);

// Shock Absorber
recipes.remove(<actuallyadditions:block_shock_suppressor>);
recipes.addShaped(<actuallyadditions:block_shock_suppressor> * 1, [[<ore:plateObsidian>, <ore:plateAAVoid>, <ore:plateObsidian>], [<ore:plateAAVoid>, <actuallyadditions:item_misc:8>, <ore:plateAAVoid>],[<ore:plateObsidian>, <gregtech:meta_item_1:732>, <ore:plateObsidian>]]);

// Player Interface
recipes.remove(<actuallyadditions:block_player_interface>);
recipes.addShaped(<actuallyadditions:block_player_interface> * 1, [[<ore:plateStainlessSteel>, <ore:itemSkull>, <ore:plateStainlessSteel>], [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:block_misc:8>, <actuallyadditions:item_crystal_empowered:2>],[<ore:plateStainlessSteel>, <actuallyadditions:item_misc:8>, <ore:plateStainlessSteel>]]);

// Item Interface
recipes.remove(<actuallyadditions:block_item_viewer>);
recipes.addShaped(<actuallyadditions:block_item_viewer> * 1, [[<actuallyadditions:item_misc:7>, <ore:plateSteel>, <actuallyadditions:item_misc:7>], [<ore:plateRestonia>, <ore:chestWood>, <ore:plateRestonia>],[<actuallyadditions:item_misc:7>, <ore:plateSteel>, <actuallyadditions:item_misc:7>]]);

// Energy Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay>);
recipes.addShaped(<actuallyadditions:block_laser_relay> * 1, [[null, <ore:ringConductiveIron>, null], [<ore:screwSteel>, <ore:wireGtQuadrupleConductiveIron>, <ore:screwSteel>],[<ore:plateAAVoid>, <ore:plateDoubleConductiveIron>, <ore:plateAAVoid>]]);

// Advanced Energy Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_advanced>);
recipes.addShaped(<actuallyadditions:block_laser_relay_advanced> * 1, [[<ore:plateRestoniaEmpowered>, <ore:plateEnoriEmpowered>, <ore:plateRestoniaEmpowered>], [<ore:plateEnoriEmpowered>, <actuallyadditions:block_laser_relay>, <ore:plateEnoriEmpowered>],[<ore:plateRestoniaEmpowered>, <ore:plateEnoriEmpowered>, <ore:plateRestoniaEmpowered>]]);

// Extreme Energy Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_extreme>);
recipes.addShaped(<actuallyadditions:block_laser_relay_extreme> * 1, [[<ore:plateRestoniaEmpowered>, <ore:plateDiamatineEmpowered>, <ore:plateRestoniaEmpowered>], [<ore:plateDiamatineEmpowered>, <actuallyadditions:block_laser_relay_advanced>, <ore:plateDiamatineEmpowered>],[<ore:plateRestoniaEmpowered>, <ore:plateDiamatineEmpowered>, <ore:plateRestoniaEmpowered>]]);

// Advanced Item Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_item_whitelist>);
recipes.addShaped(<actuallyadditions:block_laser_relay_item_whitelist> * 1, [[<ore:plateEmeradicEmpowered>, <ore:plateEnoriEmpowered>, <ore:plateEmeradicEmpowered>], [<ore:plateEnoriEmpowered>, <actuallyadditions:block_laser_relay_item>, <ore:plateEnoriEmpowered>],[<ore:plateEmeradicEmpowered>, <ore:plateEnoriEmpowered>, <ore:plateEmeradicEmpowered>]]);

// Ranged Collector
recipes.remove(<actuallyadditions:block_ranged_collector>);
recipes.addShaped(<actuallyadditions:block_ranged_collector> * 1, [[<ore:plateBrass>, <ore:plateAAVoid>, <ore:plateBrass>], [<ore:endorCrystal>, <ore:hopper>, <ore:endorCrystal>],[<ore:plateBrass>, <actuallyadditions:block_misc:9>, <ore:plateBrass>]]);

// Long-Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
recipes.addShaped(<actuallyadditions:block_directional_breaker> * 1, [[<ore:lightPlateGold>, <ore:plateBrass>, <ore:lightPlateGold>], [<gregtech:meta_item_1:172>, <actuallyadditions:block_breaker>, <actuallyadditions:block_crystal:0>],[<ore:lightPlateGold>, <ore:plateBrass>, <ore:lightPlateGold>]]);

// Experience Solidifier
recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:block_xp_solidifier> * 1, [[<ore:plateDiamatineEmpowered>, <actuallyadditions:item_solidified_experience>, <ore:plateDiamatineEmpowered>], [<actuallyadditions:item_misc:8>, <forestry:hardened_machine>, <actuallyadditions:item_misc:8>],[<ore:plateDiamatineEmpowered>, <actuallyadditions:item_solidified_experience>, <ore:plateDiamatineEmpowered>]]);

// Energizer
recipes.remove(<actuallyadditions:block_energizer>);
recipes.addShaped(<actuallyadditions:block_energizer> * 1, [[<ore:plateRestonia>, <ore:plateBatteryAlloy>, <ore:plateRestonia>], [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:8>],[<ore:plateRestonia>, <actuallyadditions:item_battery_double:0>, <ore:plateRestonia>]]);

// Enervator
recipes.remove(<actuallyadditions:block_enervator>);
recipes.addShaped(<actuallyadditions:block_enervator> * 1, [[<ore:plateRestonia>, <actuallyadditions:item_battery_double:0>, <ore:plateRestonia>], [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:8>],[<ore:plateRestonia>, <ore:plateBatteryAlloy>, <ore:plateRestonia>]]);

// Phantomface
recipes.remove(<actuallyadditions:block_phantomface>);
recipes.addShaped(<actuallyadditions:block_phantomface> * 1, [[<ore:plateStainlessSteel>, <ore:chest>, <ore:plateStainlessSteel>], [<ore:plateDiamatineEmpowered>, <forestry:hardened_machine>, <ore:plateDiamatineEmpowered>],[<ore:plateStainlessSteel>, <actuallyadditions:item_misc:8>, <ore:plateStainlessSteel>]]);

// Handheld Filler
recipes.remove(<actuallyadditions:item_filling_wand:0>);
recipes.addShaped(<actuallyadditions:item_filling_wand:0> * 1, [[<ore:EmpoweredEnoriCrystal>, <ore:gearPalis>, <ore:EmpoweredEnoriCrystal>], [<ore:plateDiamatineEmpowered>, <actuallyadditions:item_misc:8>, <ore:plateDiamatineEmpowered>],[<ore:screwSteel>, <actuallyadditions:item_battery_triple:0>, <ore:screwSteel>]]);

// ESD (Extraordinary Sample Deliverer)
recipes.remove(<actuallyadditions:block_inputter>);
recipes.addShaped(<actuallyadditions:block_inputter> * 1, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plateAAVoid>, <ore:hopper>, <ore:plateAAVoid>],[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Advanced ESD (Express Sending Doughnut)
recipes.remove(<actuallyadditions:block_inputter_advanced>);
recipes.addShaped(<actuallyadditions:block_inputter_advanced> * 1, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:heavyPlateSteel>, <actuallyadditions:block_inputter>, <actuallyadditions:item_crystal_empowered:3>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Item Repairer
recipes.remove(<actuallyadditions:block_item_repairer>);
recipes.addShaped(<actuallyadditions:block_item_repairer> * 1, [[<ore:heavyPlateSteel>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), <ore:heavyPlateSteel>], [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:8>, <actuallyadditions:item_misc:7>],[<ore:heavyPlateSteel>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), <ore:heavyPlateSteel>]]);

// Auto-Breaker
recipes.remove(<actuallyadditions:block_breaker>);
recipes.addShaped(<actuallyadditions:block_breaker> * 1, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:heavyPlateSteel>, <actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Auto-Placer
recipes.remove(<actuallyadditions:block_placer>);
recipes.addShaped(<actuallyadditions:block_placer> * 1, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:heavyPlateSteel>, <actuallyadditions:item_misc:7>, <contenttweaker:endor_crystal>],[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Automatic Precision Dropper
recipes.remove(<actuallyadditions:block_dropper>);
recipes.addShaped(<actuallyadditions:block_dropper> * 1, [[<ore:plateSteel>, <actuallyadditions:item_misc:7>, <ore:plateSteel>], [<ore:heavyPlateSteel>, <minecraft:dropper>, <actuallyadditions:item_crystal:1>],[<ore:plateSteel>, <actuallyadditions:item_misc:7>, <ore:plateSteel>]]);

// Item Filter
recipes.remove(<actuallyadditions:item_filter>);
recipes.addShaped(<actuallyadditions:item_filter> * 1, [[<ore:barsIron>, <ore:barsIron>, <ore:barsIron>], [<ore:barsIron>, <ore:gearBlackQuartz>, <ore:barsIron>],[<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]]);

// Ring
recipes.remove(<actuallyadditions:item_misc:6>);
recipes.addShaped(<actuallyadditions:item_misc:6> * 1, [[<ore:plateIron>, <ore:lightPlateGold>, <ore:plateIron>], [<ore:lightPlateGold>, <ore:dustGlowstone>, <ore:lightPlateGold>],[<ore:plateIron>, <ore:lightPlateGold>, <ore:plateIron>]]);

// Empty Cup
recipes.remove(<actuallyadditions:item_misc:14>);
recipes.addShaped(<actuallyadditions:item_misc:14> * 1, [[<ore:plateBrick>, null, <ore:plateBrick>], [<ore:plateBrick>, <ore:cropCoffee>, <ore:plateBrick>],[<ore:plateBrick>, <ore:plateBrick>, <ore:plateBrick>]]);

//Ender Star
recipes.remove(<actuallyadditions:item_misc:19>);
mixer.recipeBuilder()
    .inputs(<ore:gemNetherStar>, <minecraft:dragon_breath>, <ore:gemFlawlessBlackQuartz>, <ore:empoweredEndorCrystal>)
    .outputs(<actuallyadditions:item_misc:19>)
    .duration(400)
    .EUt(250)
.buildAndRegister();

# [Phantom Connector] from [Neutronium Screwdriver][+5]
recipes.removeByRecipeName("actuallyadditions:recipes49");
craft.make(<actuallyadditions:item_phantom_connector>, ["pretty",
  "T ╳ *",
  "S * ╳",
  "╱ S o"], {
  "T": <ore:gtceScrewdrivers>,       # Screwdriver
  "╳": <ore:EmpoweredAAVoidCrystal>, # Empowered Void Crystal
  "*": <ore:empoweredEndorCrystal>,  # Empowered Endor Crystal
  "S": <ore:screwSteel>,             # Steel Screw
  "╱": <ore:stickPulsatingIron>,     # Pulsating Iron Rod
  "o": <ore:gtceWireCutters>,        # Wire Cutter
});

# [Lens] from [Exquisite Black Quartz][+2]
recipes.remove(<actuallyadditions:item_misc:18>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_misc:18>);
craft.make(<actuallyadditions:item_misc:18>, ["pretty",
  "□ ⌃ □",
  "⌃ ^ ⌃",
  "□ ⌃ □"], {
  "□": <ore:plateSoularium>,          # Soularium Plate
  "⌃": <ore:fusedQuartz>,             # Fused Quartz
  "^": <ore:gemExquisiteBlackQuartz>, # Exquisite Black Quartz
});

# [Lens of Color] from [Lens][+5]
AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);
craft.make(<actuallyadditions:item_color_lens>, ["pretty",
  "□ G □",
  "R L B",
  "□ Y □"], {
  "□": <ore:lightPlateSoularium>,        # Light Soularium Plate
  "G": <gregtech:meta_item_1:434>,       # Chemical Green Dye
  "R": <gregtech:meta_item_1:435>,       # Chemical Red Dye
  "L": <actuallyadditions:item_misc:18>, # Lens
  "B": <gregtech:meta_item_1:432>,       # Chemical Blue Dye
  "Y": <gregtech:meta_item_1:425>,       # Chemical Yellow Dye
});

# [Lens of Detonation] from [Lens][+3]
AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);
craft.make(<actuallyadditions:item_explosion_lens>, ["pretty",
  "□ O □",
  "D L D",
  "□ O □"], {
  "□": <ore:lightPlateSoularium>,        # Light Soularium Plate
  "O": <mekanism:obsidiantnt>,           # Obsidian TNT
  "D": <cyclicmagic:ender_tnt_6>,        # Dynamite VI
  "L": <actuallyadditions:item_misc:18>, # Lens
});

# [Lens of Certain Death] from [Lens][+3]
AtomicReconstructor.removeRecipe(<actuallyadditions:item_damage_lens>);
craft.make(<actuallyadditions:item_damage_lens>, ["pretty",
  "□ S □",
  ": L :",
  "□ S □"], {
  "□": <ore:lightPlateSoularium>,        # Light Soularium Plate
  "S": <tconstruct:sword_blade>.withTag({Material: "steeleaf"}), # Steeleaf Sword Blade
  ":": <minecraft:potion>.withTag({Potion: "cofhcore:harming4"}),# Potion of Harming
  "L": <actuallyadditions:item_misc:18>, # Lens
});

# [Lens of Disenchanting] from [Lens][+3]
recipes.removeByRecipeName("actuallyadditions:recipes16");
craft.make(<actuallyadditions:item_disenchanting_lens>, ["pretty",
  "□ E □",
  "п L п",
  "□ E □"], {
  "□": <ore:plateDiamatineEmpowered>,    # Empowered Diamantine Plate
  "E": <minecraft:enchanting_table>,     # Enchantment Table
  "п": <ore:plateEnchanted>,             # Enchanted Plate
  "L": <actuallyadditions:item_misc:18>, # Lens
});

