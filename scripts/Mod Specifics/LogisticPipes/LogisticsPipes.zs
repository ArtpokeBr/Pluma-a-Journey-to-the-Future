import crafttweaker.item.IItemStack;
import mods.enderio.AlloySmelter as AlloySmelter;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																                                                         //
//			Logistic Pipes Script                                                                                                            //
//			         																                                                         //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# [Logistics HUD Glasses] from [Logistics HUD Nose Bridge][+5]
recipes.removeByRecipeName("nuclearcraft:hud_glasses_2");
recipes.removeByRecipeName("nuclearcraft:hud_glasses_1");
recipes.removeByRecipeName("nuclearcraft:hud_glasses");
craft.make(<logisticspipes:hud_glasses>, ["pretty",
  "C c C",
  "o g o",
  "L S L"], {
  "C": <ore:screwConstructionAlloy>, # Iron Alloy Screw
  "c": <ore:gtceScrewdrivers>,       # Iron Screwdriver
  "o": <logisticspipes:parts:1>,     # Logistics HUD Glass
  "g": <logisticspipes:parts:2>,     # Logistics HUD Nose Bridge
  "L": <logisticspipes:parts>,       # Logistics HUD Bow
  "S": <ore:artisansSolderer>.reuse().transformDamage(5),       # Artisan's Solderer
});

# [Logistics HUD Glass] from [Glass Pane][+3]
craft.make(<logisticspipes:parts:1>, ["pretty",
  "  C S",
  "C □ C",
  "B C  "], {
  "C": <ore:foilConstructionAlloy>, # Iron Alloy Foil
  "S": <ore:artisansSolderer>.reuse().transformDamage(5), # Artisan's Solderer
  "□": <ore:plateGlass>,            # Glass Pane
  "B": <ore:artisansBurner>.reuse().transformDamage(5), # Artisan's Burner
});

# [Logistics HUD Nose Bridge] from [Iron Alloy Plate][+3]
craft.make(<logisticspipes:parts:2>, ["pretty",
  "     ",
  "B □ S",
  "C   C"], {
  "B": <ore:artisansBurner>.reuse().transformDamage(5), # Artisan's Burner
  "□": <ore:plateConstructionAlloy>, # Iron Alloy Plate
  "S": <ore:artisansSolderer>.reuse().transformDamage(5), # Artisan's Solderer
  "C": <ore:foilConstructionAlloy>,  # Iron Alloy Foil
});

# [Logistics HUD Bow] from [Artisan's Burner][+3]
craft.make(<logisticspipes:parts>, ["pretty",
  "    S",
  "C C □",
  "  B C"], {
  "S": <ore:artisansSolderer>.reuse().transformDamage(5), # Artisan's Solderer
  "C": <ore:foilConstructionAlloy>,  # Iron Alloy Foil
  "□": <ore:plateConstructionAlloy>, # Iron Alloy Plate
  "B": <ore:artisansBurner>.reuse().transformDamage(5), # Artisan's Burner
});

//Blank Modules and Blank Upgrades
recipes.remove(<logisticspipes:module_blank>);

AlloySmelter.addRecipe(<logisticspipes:module_blank>, [<ore:paper>, <ore:plateGold>, <ore:plateRestonia>]);
AlloySmelter.addRecipe(<contenttweaker:blank_upgrade_module>, [<ore:paper>, <ore:plateGold>, <ore:gearRestonia>]);

//Logistic Block Frame
recipes.remove(<logisticspipes:frame>);

assembler.recipeBuilder()
	.fluidInputs(<liquid:empoweredoil>*250)
    .inputs(<ore:plateConstructionAlloy>*8, <ore:gearAAVoid>)
    .outputs(<logisticspipes:frame>)
	.circuit(8)
    .duration(300)
    .EUt(100)
.buildAndRegister();

// Logistics Power Junction
recipes.remove(<logisticspipes:power_junction>);
recipes.addShaped(<logisticspipes:power_junction> * 1, [[<ore:plateBatteryAlloy>, <logisticspipes:chip_basic>, <ore:plateBatteryAlloy>], [<ore:plateRedstone>, <logisticspipes:frame>, <ore:plateRedstone>],[<ore:plateBatteryAlloy>, <ore:batteryMv>, <ore:plateBatteryAlloy>]]);

// Pipe Controller
recipes.remove(<logisticspipes:pipe_controller>);
recipes.addShaped(<logisticspipes:pipe_controller> * 1, [[<ore:plateAluminium>, <ore:platePalis>, <ore:plateAluminium>], [<ore:plateRestonia>, <logisticspipes:chip_fpga>, <ore:plateRestonia>],[<ore:plateRestonia>, <ore:gearSmallConstructionAlloy>, <ore:plateRestonia>]]);

// Pipe Manager
recipes.remove(<logisticspipes:pipe_manager>);
recipes.addShaped(<logisticspipes:pipe_manager> * 1, [[<ore:plateAluminium>, <ore:platePalis>, <ore:plateAluminium>], [<ore:plateConstructionAlloy>, <logisticspipes:chip_advanced>, <ore:plateConstructionAlloy>],[<ore:plateConstructionAlloy>, <ore:gearSmallConstructionAlloy>, <ore:plateConstructionAlloy>]]);

// Logistics Crafting Table
recipes.remove(<logisticspipes:crafting_table>);
recipes.addShaped(<logisticspipes:crafting_table> * 1, [[<ore:plateAluminium>, <ore:craftingTableWood>, <ore:plateAluminium>], [<ore:plankTreatedWood>, <logisticspipes:frame>, <ore:plankTreatedWood>],[<ore:plateAluminium>, <gregtech:meta_item_1:172>, <ore:plateAluminium>]]);

// Logistics Security Station
recipes.remove(<logisticspipes:security_station>);
recipes.addShaped(<logisticspipes:security_station> * 1, [[<ore:plateAluminium>, <logisticspipes:chip_advanced>, <ore:plateAluminium>], [<ceramics:clay_wall:0>, <logisticspipes:frame>, <ceramics:clay_wall:0>],[<ore:plateAluminium>, <ore:gearRedAlloy>, <ore:plateAluminium>]]);

// Logistics Statistics Table
recipes.remove(<logisticspipes:statistics_table>);
recipes.addShaped(<logisticspipes:statistics_table> * 1, [[<ore:plateAluminium>, <logisticspipes:chip_advanced>, <ore:plateAluminium>], [<minecraft:repeater>, <logisticspipes:frame>, <minecraft:repeater>],[<ore:plateAluminium>, <gregtech:meta_item_1:302>, <ore:plateAluminium>]]);

// Remote Orderer
recipes.remove(<logisticspipes:remote_orderer>);
recipes.addShaped(<logisticspipes:remote_orderer> * 1, [[<ore:plateEnori>, <ore:gemExquisiteCertusQuartz>, <ore:plateEnori>], [<ore:plateEnoriEmpowered>, <gregtech:meta_item_1:307>, <ore:plateEnoriEmpowered>],[<ore:plateEnori>, <ore:gemExquisiteCertusQuartz>, <ore:plateEnori>]]);

// Logistics Disk
recipes.remove(<logisticspipes:disk>);
recipes.addShaped(<logisticspipes:disk> * 1, [[<ore:plateConstructionAlloy>, <ore:dustRedstone>, <ore:plateConstructionAlloy>], [<ore:dustRedstone>, <ore:boltGold>, <ore:dustRedstone>],[<ore:plateConstructionAlloy>, <ore:dustRedstone>, <ore:plateConstructionAlloy>]]);

// Logistics Request Table
recipes.remove(<logisticspipes:pipe_request_table>);
recipes.addShaped(<logisticspipes:pipe_request_table> * 1, [[<ore:plateElectricalSteel>, <logisticspipes:chip_fpga>, <ore:plateElectricalSteel>], [<logisticspipes:pipe_crafting>, <logisticspipes:frame>, <logisticspipes:pipe_request_mk2>],[<ore:plateElectricalSteel>, <gregtech:machine:1625>, <ore:plateElectricalSteel>]]);


// Raw Chips and Refined Chips ======================================

//Basic
recipes.remove(<logisticspipes:chip_basic_raw>);
furnace.remove(<logisticspipes:chip_basic>);

AlloySmelter.addRecipe(<logisticspipes:chip_basic_raw>*4, [<contenttweaker:chip_composite>*2, <ore:foilCopper>*4, <projectred-core:resource_item:320>]);

autoclave.recipeBuilder()
    .inputs(<logisticspipes:chip_basic_raw>)
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs(<logisticspipes:chip_basic>)
    .duration(100)
    .EUt(60)
.buildAndRegister();

//Advanced
recipes.remove(<logisticspipes:chip_advanced_raw>);
furnace.remove(<logisticspipes:chip_advanced>);

AlloySmelter.addRecipe(<logisticspipes:chip_advanced_raw>*4, [<contenttweaker:chip_composite>*2, <ore:foilGold>*4, <projectred-core:resource_item:341>]);

autoclave.recipeBuilder()
    .inputs(<logisticspipes:chip_advanced_raw>)
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs(<logisticspipes:chip_advanced>)
    .duration(100)
    .EUt(60)
.buildAndRegister();

//FPGA
recipes.remove(<logisticspipes:chip_fpga_raw>);
furnace.remove(<logisticspipes:chip_fpga>);

AlloySmelter.addRecipe(<logisticspipes:chip_fpga_raw>*2, [<contenttweaker:chip_composite>*2, <ore:plateDiamond>*4, <projectred-core:resource_item:342>]);

autoclave.recipeBuilder()
    .inputs(<logisticspipes:chip_fpga_raw>)
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs(<logisticspipes:chip_fpga>)
    .duration(100)
    .EUt(60)
.buildAndRegister();