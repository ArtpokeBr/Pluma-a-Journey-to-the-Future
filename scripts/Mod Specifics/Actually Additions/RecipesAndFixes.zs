import mods.actuallyadditions.AtomicReconstructor as AtomicReconstructor;
import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import crafttweaker.item.IIngredient;
import mods.actuallyadditions.Compost as Compost;

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
    .fluidInputs([<liquid:canolaoil> * 80])
    .circuit(4)
    .fluidOutputs(<liquid:refinedcanolaoil> * 80)
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

# [Small Storage Crate] from [Wood Chassis][+2]
recipes.remove(<actuallyadditions:block_giant_chest>);
craft.make(<actuallyadditions:block_giant_chest>, ["pretty",
  "I * I",
  "* # *",
  "I * I"], {
  "I": <ironchest:iron_chest> | <ironchest:iron_chest:4>,# Iron Chest or Silver Chest
  "*": <ore:endorCrystal>,               # Endor Crystal
  "#": <actuallyadditions:block_misc:4>, # Wood Chassis
});

# [Medium Storage Crate] from [Small Storage Crate][+2]
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
craft.make(<actuallyadditions:block_giant_chest_medium>, ["pretty",
  "G * G",
  "* S *",
  "G * G"], {
  "G": <ironchest:iron_chest:1>,              # Gold Chest
  "*": <ore:empoweredEndorCrystal>,           # Empowered Endor Crystal
  "S": <actuallyadditions:block_giant_chest>, # Small Storage Crate
});

# [Large Storage Crate] from [Medium Storage Crate][+2]
recipes.remove(<actuallyadditions:block_giant_chest_large>);
craft.make(<actuallyadditions:block_giant_chest_large>, ["pretty",
  "D * D",
  "* M *",
  "D * D"], {
  "D": <ironchest:iron_chest:2>,         # Diamond Chest
  "*": <ore:empoweredBlockEndorCrystal>, # Empowered Endor Crystal Block
  "M": <actuallyadditions:block_giant_chest_medium>, # Medium Storage Crate
});

// Storage Crate Keeper (Recipe Removed in Removals.zs)
//recipes.remove(<actuallyadditions:item_crate_keeper>);
<actuallyadditions:item_crate_keeper>.addTooltip(format.green("Shift + Right Click to carry a Crate,") + format.white(" you don't actually need this Upgrade!"));
//recipes.addShaped(<actuallyadditions:item_crate_keeper> * 1, [[<ore:plateEnori>, <ore:endorCrystal>, <ore:plateEnori>], [<ore:endorCrystal>, <ore:gearBlackQuartz>, <ore:endorCrystal>],[<ore:plateEnori>, <ore:endorCrystal>, <ore:plateEnori>]]);

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

# [Energy Laser Relay]*4 from [4x Energetic Alloy Wire][+4]
AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay>);
recipes.remove(<actuallyadditions:block_laser_relay>);
craft.make(<actuallyadditions:block_laser_relay> * 4, ["pretty",
  "  E  ",
  "R G R",
  "□ п □"], {
  "E": <ore:ringEnergeticAlloy>,            # Energetic Alloy Ring
  "R": <ore:screwRefinedObsidian>,          # Refined Obsidian Screw
  "G": <ore:wireGtQuadrupleEnergeticAlloy>, # 4x Energetic Alloy Wire
  "□": <ore:plateAAVoidEmpowered>,          # Empowered Void Plate
  "п": <ore:lightPlateEnergeticAlloy>,      # Light Energetic Alloy Plate
});

# [Advanced Energy Laser Relay]*4 from [8x Energetic Alloy Wire][+4]
recipes.remove(<actuallyadditions:block_laser_relay_advanced>);
craft.make(<actuallyadditions:block_laser_relay_advanced> * 4, ["pretty",
  "  E  ",
  "D G D",
  "□ п □"], {
  "E": <ore:ringEnergeticAlloy>,        # Energetic Alloy Ring
  "D": <ore:screwDarkSteel>,            # Dark Steel Screw
  "G": <ore:wireGtOctalEnergeticAlloy>, # 8x Energetic Alloy Wire
  "□": <ore:plateAAVoidEmpowered>,      # Empowered Void Plate
  "п": <ore:lightPlateEnergeticAlloy>,  # Light Energetic Alloy Plate
});

# [Extreme Energy Laser Relay]*4 from [16x Energetic Alloy Wire][+4]
recipes.remove(<actuallyadditions:block_laser_relay_extreme>);
craft.make(<actuallyadditions:block_laser_relay_extreme> * 4, ["pretty",
  "  E  ",
  "D G D",
  "□ п □"], {
  "E": <ore:ringEnergeticAlloy>,       # Energetic Alloy Ring
  "D": <ore:screwDarkSteel>,           # Dark Steel Screw
  "G": <ore:wireGtHexEnergeticAlloy>,  # 16x Energetic Alloy Wire
  "□": <ore:plateAAVoidEmpowered>,     # Empowered Void Plate
  "п": <ore:heavyPlateEnergeticAlloy>, # Heavy Energetic Alloy Plate
});

# [Fluid Laser Relay]*4 from [Huge Polyethylene (PE) Fluid Pipe][+4]
AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_fluids>);
craft.remake(<actuallyadditions:block_laser_relay_fluids> * 4, ["pretty",
  "  M  ",
  "R H R",
  "□ п □"], {
  "M": <ore:ringManasteel>,        # Manasteel Ring
  "R": <ore:screwRefinedObsidian>, # Refined Obsidian Screw
  "H": <ore:pipeHugeFluidPlastic>, # Huge Polyethylene (PE) Fluid Pipe
  "□": <ore:plateAAVoidEmpowered>, # Empowered Void Plate
  "п": <ore:lightPlatePlastic>,    # Light Polyethylene (PE) Plate
});

# [Item Laser Relay]*4 from [Restrictive Electrum Item Pipe][+4]
AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_item>);
craft.remake(<actuallyadditions:block_laser_relay_item> * 4, ["pretty",
  "  T  ",
  "R N R",
  "□ п □"], {
  "T": <ore:ringTerrastone>,                # Terrastone Ring
  "R": <ore:screwRefinedObsidian>,          # Refined Obsidian Screw
  "N": <ore:pipeNormalRestrictiveElectrum>, # Restrictive Electrum Item Pipe
  "□": <ore:plateAAVoidEmpowered>,          # Empowered Void Plate
  "п": <ore:lightPlateTerrastone>,          # Light Terrastone Plate
});

# [Advanced Item Laser Relay]*4 from [Large Restrictive Electrum Item Pipe][+4]
recipes.remove(<actuallyadditions:block_laser_relay_item_whitelist>);
craft.make(<actuallyadditions:block_laser_relay_item_whitelist> * 4, ["pretty",
  "  T  ",
  "R L R",
  "□ п □"], {
  "T": <ore:ringTerrastone>,               # Terrastone Ring
  "R": <ore:screwRefinedObsidian>,         # Refined Obsidian Screw
  "L": <ore:pipeLargeRestrictiveElectrum>, # Large Restrictive Electrum Item Pipe
  "□": <ore:plateAAVoidEmpowered>,         # Empowered Void Plate
  "п": <ore:heavyPlateTerrastone>,         # Heavy Terrastone Plate
});

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

# [Coal Generator] from [Steel Hull][+4]
recipes.removeByRecipeName("actuallyadditions:recipes145");
craft.make(<actuallyadditions:block_coal_generator>, ["pretty",
  "□ C □",
  "▬ S ▬",
  "□ F □"], {
  "□": <ore:plateSteel>,                       # Steel Plate
  "C": <magneticraft:copper_coil>,             # Copper Coil
  "▬": <ore:ingotCarbon>,                      # Carbon Brick
  "S": <gregtech:steam_casing:2>,              # Steel Hull
  "F": <ore:craftingFurnace>,                  # Furnace
});

# [Compost] from [Empty Wooden Form][+4]
recipes.removeByRecipeName("actuallyadditions:recipes119");
craft.make(<actuallyadditions:block_compost>, ["pretty",
  "#   #",
  "L E L",
  "≢ ≠ ≢"], {
  "#": <ore:boltWood>,             # Short Wood Stick
  "L": <minecraft:ladder>,         # Ladder
  "E": <gregtech:meta_item_1:347>, # Empty Wooden Form
  "≢": <gregtech:planks:1>,        # Treated Wood Planks
  "≠": <ore:frameGtTreatedWood>,   # Treated Wood Frame Box
});

# [Canola Press] from [Steel Hull][+5]
recipes.removeByRecipeName("actuallyadditions:recipes132");
craft.make(<actuallyadditions:block_canola_press>, ["pretty",
  "T P T",
  "# S #",
  "░ A ░"], {
  "T": <pyrotech:material:23>,          # Tarred Board
  "P": <ore:craftingPiston>,            # Piston
  "#": <gregtech:planks:1>,             # Treated Wood Planks
  "S": <gregtech:steam_casing:2>,       # Steel Hull
  "░": <ore:compressed1xCobblestone>,   # 1x Compressed Cobblestone
  "A": <actuallyadditions:item_misc:8>, # Advanced Coil
});

# [Fermenting Barrel] from [Wooden Barrel][+4]
recipes.removeByRecipeName("actuallyadditions:recipes133");
craft.make(<actuallyadditions:block_fermenting_barrel>, ["pretty",
  "T B T",
  "* W *",
  "# # #"], {
  "T": <pyrotech:material:23>,          # Tarred Board
  "B": <pyrotech:barrel_lid>,           # Barrel Lid
  "*": <ore:glodCrystal>,               # Glod Crystal
  "W": <exnihilocreatio:block_barrel0>, # Wooden Barrel
  "#": <gregtech:planks:1>,             # Treated Wood Planks
});

# [Knife Handle] from [Treated Wood Stick][+1]
recipes.removeByRecipeName("actuallyadditions:recipes223");
craft.shapeless(<actuallyadditions:item_misc:3>, "#S", {
  "#": <ore:stickTreatedWood>, # Treated Wood Stick
  "S": <ore:gtceSaws>,         # Iron Buzzsaw (LV)
});

# [Knife Blade] from [Iron Bolt][+1]
recipes.removeByRecipeName("actuallyadditions:recipes224");
craft.make(<actuallyadditions:item_misc:2>, ["pretty",
  "  I",
  "  I",
  "  r"], {
  "I": <pyrotech:material:19>, # Iron Shard
  "r": <ore:boltIron>,         # Iron Bolt
});

# [Knife] from [Durable Twine][+3]
recipes.removeByRecipeName("actuallyadditions:recipes51");
craft.shapeless(<actuallyadditions:item_knife>, "nKPt", {
  "n": <actuallyadditions:item_misc:3>, # Knife Handle
  "K": <actuallyadditions:item_misc:2>, # Knife Blade
  "P": <ore:materialPressedwax>,        # Pressed Wax
  "t": <pyrotech:material:26>,          # Durable Twine
});

# Bio-Mesh and Fertilizer Tooltip
<actuallyadditions:item_misc:1>.addTooltip(format.gray("<Press Shift for more Info>"));
<actuallyadditions:item_misc:1>.addShiftTooltip(format.white("Use an ") + format.darkAqua("Actually Additions Knife ") + format.white("with ") + format.green("Any Food Item " ) + format.white("to obtain a varied amount of this item."));
<actuallyadditions:item_fertilizer>.addTooltip(format.white("Works just like ") + format.green("Bonemeal."));

# [Drill Core] from [Electronic Circuit][+4]
recipes.removeByRecipeName("actuallyadditions:recipes28");
craft.make(<actuallyadditions:item_misc:16>, ["pretty",
  "  □  ",
  "F L i",
  "□ Σ □"], {
  "□": <ore:plateEnori>,        # Enori Plate
  "F": <ore:wireFineRedAlloy>,  # Fine Red Alloy Wire
  "L": <ore:circuitLv>,         # Electronic Circuit
  "i": <ore:wireFineAluminium>, # Fine Aluminium Wire
  "Σ": <gregtech:meta_item_1:446>, # Power Unit (LV)
});

# [Drill] from [Drill Core][+5]
recipes.removeByRecipeName("actuallyadditions:recipes27");
craft.make(<actuallyadditions:item_drill:3>.withTag({Energy: 0}), ["pretty",
  "□ H □",
  "A D A",
  "* i *"], {
  "□": <ore:plateDiamatine>,                # Diamantine Plate
  "H": <ore:toolHeadDrillDiamond>,          # Diamond Drill Tip
  "A": <actuallyadditions:item_misc:8>,     # Advanced Coil
  "D": <actuallyadditions:item_misc:16>,    # Drill Core
  "*": <actuallyadditions:block_crystal:5>, # Enori Crystal Block
  "i": <forestry:thermionic_tubes:5>,       # Diamantine Electron Tube
});

# [Drill Speed Augment I] from [Restonia Gear][+2]
recipes.removeByRecipeName("actuallyadditions:recipes30");
craft.make(<actuallyadditions:item_drill_upgrade_speed>, ["pretty",
  "□ A □",
  "A ¤ A",
  "□ A □"], {
  "□": <ore:plateEnori>,                     # Enori Plate
  "A": <ore:listAllsugar> | <ore:dustSugar>, # Sugar
  "¤": <ore:gearRestonia>,                   # Restonia Gear
});

# [Drill Speed Augment II] from [Cake][+2]
recipes.removeByRecipeName("actuallyadditions:recipes31");
craft.make(<actuallyadditions:item_drill_upgrade_speed_ii>, ["pretty",
  "□ A □",
  "A C A",
  "□ A □"], {
  "□": <ore:plateEnori>,                     # Enori Plate
  "A": <ore:listAllsugar> | <ore:dustSugar>, # Sugar
  "C": <minecraft:cake>,                     # Cake
});

# [Drill Speed Augment III] from [Diamantine Gear][+2]
recipes.removeByRecipeName("actuallyadditions:recipes32");
craft.make(<actuallyadditions:item_drill_upgrade_speed_iii>, ["pretty",
  "□ ◊ □",
  "◊ ¤ ◊",
  "□ ◊ □"], {
  "□": <ore:plateEnori>,    # Enori Plate
  "◊": <ore:gemSugar>,      # Sugar Cube
  "¤": <ore:gearDiamatine>, # Diamantine Gear
});

# [Drill Silk Touch Augment] from [Silky Propolis][+3]
recipes.removeByRecipeName("actuallyadditions:recipes37");
craft.make(<actuallyadditions:item_drill_upgrade_silk_touch>, ["pretty",
  "□ W □",
  "* S *",
  "□ W □"], {
  "□": <ore:plateEnori>,               # Enori Plate
  "W": <forestry:crafting_material:3>, # Woven Silk
  "*": <ore:EmeradicCrystal> | <ore:crystalEmeraldic>, # Emeradic Crystal
  "S": <forestry:propolis:3>,          # Silky Propolis
});

# [Drill Fortune Augment I] from [Experience Imbue][+2]
recipes.removeByRecipeName("actuallyadditions:recipes33");
craft.make(<actuallyadditions:item_drill_upgrade_fortune>, ["pretty",
  "□ * □",
  "* E *",
  "□ * □"], {
  "□": <ore:plateEnori>,                        # Enori Plate
  "*": <ore:PalisCrystal> | <ore:crystalPalis>, # Palis Crystal
  "E": <randomthings:imbue:2>,                  # Experience Imbue
});

# [Drill Fortune Augment II (Gives Fortune III!)] from [Experience Imbue][+2]
recipes.removeByRecipeName("actuallyadditions:recipes34");
craft.make(<actuallyadditions:item_drill_upgrade_fortune_ii>, ["pretty",
  "□ * □",
  "* E *",
  "□ * □"], {
  "□": <ore:plateEnori>,            # Enori Plate
  "*": <ore:EmpoweredPalisCrystal>, # Empowered Palis Crystal
  "E": <randomthings:imbue:2>,      # Experience Imbue
});

# [Drill Block Placing Augment] from [Piston][+2]
recipes.removeByRecipeName("actuallyadditions:recipes38");
craft.make(<actuallyadditions:item_drill_upgrade_block_placing>, ["pretty",
  "□ 1 □",
  "1 P 1",
  "□ 1 □"], {
  "□": <ore:plateEnori>,        # Enori Plate
  "1": <ore:compressed1xStone>, # 1x Compressed Stone
  "P": <ore:craftingPiston>,    # Piston
});

# Bio Coal into Carbon Brick and also into Carbon Dust =======
compressor.recipeBuilder()
    .inputs(<actuallyadditions:item_misc:22>*9)
    .outputs(<ore:ingotCarbon>.firstItem)
    .duration(200)
    .EUt(4)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<actuallyadditions:item_misc:22>)
    .outputs(<ore:dustCarbon>.firstItem)
    .duration(80)
    .EUt(4)
.buildAndRegister();

# Biomass from Plant Balls =======
Compost.removeRecipe(<actuallyadditions:item_misc:21>);
Compost.addRecipe(<actuallyadditions:item_misc:21>, <floralchemy:flooded_soil>, <gregtech:meta_item_1:439>, <minecraft:dirt>);

# [Drill Mining Augment I] from [Black Quartz Gear][+2]
recipes.removeByRecipeName("actuallyadditions:recipes35");
craft.make(<actuallyadditions:item_drill_upgrade_three_by_three>, ["pretty",
  "□ п □",
  "п ¤ п",
  "□ п □"], {
  "□": <ore:plateEnori>,      # Enori Plate
  "п": <ore:lightPlateSteel>, # Light Steel Plate
  "¤": <ore:gearBlackQuartz>,      # Black Quartz Gear
});

# [Drill Mining Augment II] from [Black Quartz Gear][+2]
recipes.removeByRecipeName("actuallyadditions:recipes36");
craft.make(<actuallyadditions:item_drill_upgrade_five_by_five>, ["pretty",
  "□ п □",
  "п ¤ п",
  "□ п □"], {
  "□": <ore:plateEnori>,          # Enori Plate
  "п": <ore:lightPlateGoldAlloy>, # Light Gold Alloy Plate
  "¤": <ore:gearBlackQuartz>,          # Black Quartz Gear
});

# [Chest To Storage Crate Upgrade] from [Wood Chassis][+2]
recipes.removeByRecipeName("actuallyadditions:recipes13");
craft.make(<actuallyadditions:item_chest_to_crate_upgrade>, ["pretty",
  "# * #",
  "* ≢ *",
  "# * #"], {
  "#": <tconstruct:large_plate>.withTag({Material: "iron"}), # Tinkers Iron Large Plate
  "*": <ore:endorCrystal>,               # Endor Crystal
  "≢": <actuallyadditions:block_misc:4>, # Wood Chassis
});

# [Small To Medium Storage Crate Upgrade] from [Chest To Storage Crate Upgrade][+2]
recipes.removeByRecipeName("actuallyadditions:recipes14");
craft.make(<actuallyadditions:item_small_to_medium_crate_upgrade>, ["pretty",
  "≢ # ≢",
  "# C #",
  "≢ # ≢"], {
  "≢": <tconstruct:large_plate>.withTag({Material: "electrum"}), # Tinkers Electrum Large Plate
  "#": <ore:empoweredEndorCrystal>,      # Empowered Endor Crystal
  "C": <actuallyadditions:item_chest_to_crate_upgrade>, # Chest To Storage Crate Upgrade
});

# [Medium To Large Storage Crate Upgrade] from [Small To Medium Storage Crate Upgrade][+2]
recipes.removeByRecipeName("actuallyadditions:recipes15");
craft.make(<actuallyadditions:item_medium_to_large_crate_upgrade>, ["pretty",
  "≢ # ≢",
  "# S #",
  "≢ # ≢"], {
  "≢": <tconstruct:large_plate>.withTag({Material: "diamantine_crystal"}), # Tinkers Diamantine Large Plate
  "#": <ore:empoweredBlockEndorCrystal>, # Empowered Endor Crystal Block
  "S": <actuallyadditions:item_small_to_medium_crate_upgrade>, # Small To Medium Storage Crate Upgrade
});
