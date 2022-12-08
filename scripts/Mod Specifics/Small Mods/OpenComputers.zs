// Adapter
recipes.remove(<opencomputers:adapter:0>);
recipes.addShaped(<opencomputers:adapter:0> * 1, [[<ore:cableGtSingleIron>, <opencomputers:material:7>, <ore:cableGtSingleIron>], [null, <gregtech:machine_casing:1>, <ore:gtceWrenches>],[<ore:circuitLv>, <ore:cableGtSingleIron>, null]]);

// Electronics Assembler
recipes.remove(<opencomputers:assembler:0>);
recipes.addShaped(<opencomputers:assembler:0> * 1, [[<ore:screwIron>, <ore:craftingTableWood>, <ore:screwIron>], [<ore:craftingPiston>, <opencomputers:material:8>, <ore:craftingPiston>],[<ore:screwIron>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Cable
recipes.remove(<opencomputers:cable>);
assembler.recipeBuilder()
	.inputs(<ore:wireGtSingleCopper>*8, <ore:dustEmerald>)
	.outputs(<opencomputers:cable>*8)
	.duration(300)
	.EUt(32)
.buildAndRegister();

// Capacitor
recipes.remove(<opencomputers:capacitor:0>);
recipes.addShaped(<opencomputers:capacitor:0> * 1, [[null, <gregtech:machine:1317>, null], [<gregtech:machine_casing:1>, <opencomputers:material:6>, <gregtech:machine_casing:1>],[<ore:circuitLv>, <ore:gtceWrenches>, <ore:circuitLv>]]);

// Computer Case (Tier 1)
recipes.remove(<opencomputers:case1:0>);
recipes.addShaped(<opencomputers:case1:0> * 1, [[<ore:screwAluminium>, <ore:circuitLv>, <ore:gtceWrenches>], [<ore:rotorBronze>, <gregtech:machine_casing:1>, <ore:rotorBronze>],[<ore:screwAluminium>, <opencomputers:material:7>, <ore:gtceScrewdrivers>]]);

// Computer Case (Tier 2)
recipes.remove(<opencomputers:case2:0>);
recipes.addShaped(<opencomputers:case2:0> * 1, [[<ore:screwStainlessSteel>, <ore:circuitLv>, <ore:gtceWrenches>], [<ore:rotorSteel>, <opencomputers:case1:0>, <ore:rotorSteel>],[<ore:screwStainlessSteel>, <opencomputers:material:8>, <ore:gtceScrewdrivers>]]);

// Computer Case (Tier 3)
recipes.remove(<opencomputers:case3:0>);
recipes.addShaped(<opencomputers:case3:0> * 1, [[<ore:screwTitanium>, <ore:circuitLv>, <ore:gtceWrenches>], [<ore:rotorTitanium>, <opencomputers:case2:0>, <ore:rotorTitanium>],[<ore:screwTitanium>, <opencomputers:material:9>, <ore:gtceScrewdrivers>]]);

//Block of Chameleon
recipes.removeByRecipeName("opencomputers:chameliumblock6");
compressor.recipeBuilder()
	.inputs(<opencomputers:material:28>*9)
	.outputs(<opencomputers:chameliumblock>)
	.duration(300)
	.EUt(32)
.buildAndRegister();

// Charger
recipes.remove(<opencomputers:charger:0>);
recipes.addShaped(<opencomputers:charger:0> * 1, [[null, <ore:plateStainlessSteel>, null], [<gregtech:machine:1316>, <gregtech:machine_casing:2>, <gregtech:machine:1316>],[<opencomputers:material:9>, <ore:gtceWrenches>, <ore:circuitLv>]]);

// Disassembler
recipes.remove(<opencomputers:disassembler:0>);
recipes.addShaped(<opencomputers:disassembler:0> * 1, [[<opencomputers:material:11>, <ore:paneGlass>, <opencomputers:tool:0>], [<ore:craftingPiston>, null, <ore:obsidian>],[<ore:screwIron>, <ore:gtceScrewdrivers>, <ore:screwIron>]]);

// Disk Drive
recipes.remove(<opencomputers:diskdrive:0>);
recipes.addShaped(<opencomputers:diskdrive:0> * 1, [[null, <opencomputers:material:8>, null], [<ore:craftingPiston>, <gregtech:machine_casing:1>, <ore:lensDiamond>],[<opencomputers:material:8>, <ore:gtceWrenches>, <opencomputers:material:8>]]);

// Geolyzer
recipes.remove(<opencomputers:geolyzer:0>);
recipes.addShaped(<opencomputers:geolyzer:0> * 1, [[<ore:screwGold>, <opencomputers:tool:0>, <ore:screwGold>], [<ore:gemEnderEye>, <opencomputers:material:8>, <ore:gemEnderEye>],[<ore:screwGold>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Hologram Projector (Tier 1)
recipes.remove(<opencomputers:hologram1:0>);
recipes.addShaped(<opencomputers:hologram1:0> * 1, [[<opencomputers:material:8>, <ore:paneGlassColorless>, <opencomputers:material:8>], [<ore:circuitLv>, <ore:gemDiamond>, <ore:circuitLv>],[<ore:obsidian>, <ore:dustGlowstone>, <ore:obsidian>]]);

// Hologram Projector (Tier 2)
recipes.remove(<opencomputers:hologram2:0>);
recipes.addShaped(<opencomputers:hologram2:0> * 1, [[<opencomputers:material:9>, <ore:blockGlassColorless>, <opencomputers:material:9>], [<ore:circuitLv>, <ore:blockDiamond>, <ore:circuitLv>],[<ore:obsidian>, <ore:dustBlaze>, <ore:obsidian>]]);

// Motion Sensor
recipes.remove(<opencomputers:motionsensor:0>);
recipes.addShaped(<opencomputers:motionsensor:0> * 1, [[<ore:screwGold>, <minecraft:daylight_detector>, <ore:screwGold>], [<minecraft:daylight_detector>, <opencomputers:component:1>, <minecraft:daylight_detector>],[<ore:screwGold>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Power Converter
recipes.remove(<opencomputers:powerconverter:0>);
recipes.addShaped(<opencomputers:powerconverter:0> * 1, [[null, <opencomputers:material:8>, null], [<ore:plateSteel>, <gregtech:machine:1272>, <ore:plateSteel>],[<ore:circuitLv>, <ore:gtceWrenches>, <ore:circuitLv>]]);

// 3D Printer
recipes.remove(<opencomputers:printer:0>);
recipes.addShaped(<opencomputers:printer:0> * 1, [[<ore:screwIron>, <ore:hopper>, <ore:screwIron>], [<ore:craftingPiston>, <opencomputers:material:9>, <ore:craftingPiston>],[<ore:ingotIron>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Raid
recipes.remove(<opencomputers:raid:0>);
recipes.addShaped(<opencomputers:raid:0> * 1, [[<ore:wireGtSingleIron>, <opencomputers:component:17>, <ore:wireGtSingleIron>], [<opencomputers:component:6>, <opencomputers:diskdrive:0>, <opencomputers:component:6>],[<ore:wireGtSingleIron>, <opencomputers:material:8>, <ore:wireGtSingleIron>]]);

// Redstone I/O
recipes.remove(<opencomputers:redstone:0>);
recipes.addShaped(<opencomputers:redstone:0> * 1, [[<ore:plateRedAlloy>, <ore:circuitLv>, <ore:plateRedAlloy>], [<ore:plateRedAlloy>, <gregtech:machine_casing:2>, <opencomputers:card:4>],[<opencomputers:material:8>, <ore:circuitLv>, <opencomputers:material:8>]]);

// Relay
recipes.remove(<opencomputers:relay:0>);
recipes.addShaped(<opencomputers:relay:0> * 1, [[null, <opencomputers:card:6>, null], [<ore:cableGtSingleIron>, <gregtech:machine_casing:2>, <ore:cableGtSingleIron>],[<ore:circuitLv>, <ore:gtceWrenches>, <ore:circuitLv>]]);

// Screen (Tier 1)
recipes.remove(<opencomputers:screen1:0>);
recipes.addShaped(<opencomputers:screen1:0> * 1, [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:gtceWrenches>], [<ore:dustRedstone>, <opencomputers:material:6>, <ore:paneGlass>],[<ore:plateAluminium>, <ore:plateAluminium>, <ore:gtceScrewdrivers>]]);

// Screen (Tier 2)
recipes.remove(<opencomputers:screen2:0>);
recipes.addShaped(<opencomputers:screen2:0> * 1, [[<ore:plateStainlessSteel>, <ore:screwStainlessSteel>, <ore:gtceWrenches>], [<opencomputers:material:8>, <opencomputers:screen1:0>, <gregtech:machine_casing:1>],[<ore:plateStainlessSteel>, <ore:screwStainlessSteel>, <ore:gtceScrewdrivers>]]);

// Screen (Tier 3)
recipes.remove(<opencomputers:screen3:0>);
recipes.addShaped(<opencomputers:screen3:0> * 1, [[<ore:plateTitanium>, <ore:circuitLv>, <ore:gtceWrenches>], [<opencomputers:material:9>, <opencomputers:screen2:0>, <opencomputers:material:9>],[<ore:plateTitanium>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Rack
recipes.remove(<opencomputers:rack:0>);
recipes.addShaped(<opencomputers:rack:0> * 1, [[<ore:gtceScrewdrivers>, <opencomputers:card:7>, <ore:gtceWrenches>], [<ore:rotorSteel>, <ore:chest>, <ore:rotorSteel>],[<opencomputers:relay:0>, <ore:circuitLv>, <opencomputers:powerdistributor:0>]]);

// Waypoint
recipes.remove(<opencomputers:waypoint:0>);
recipes.addShaped(<opencomputers:waypoint:0> * 1, [[<ore:screwIron>, <opencomputers:material:7>, <ore:screwIron>], [<opencomputers:material:6>, <opencomputers:material:13>, <opencomputers:material:6>],[<ore:screwIron>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Net Splitter
recipes.remove(<opencomputers:netsplitter:0>);
recipes.addShaped(<opencomputers:netsplitter:0> * 1, [[<ore:screwIron>, <ore:cableGtSingleIron>, <ore:screwIron>], [<ore:cableGtSingleIron>, <ore:craftingPiston>, <ore:cableGtSingleIron>],[<ore:screwIron>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Transposer
recipes.remove(<opencomputers:transposer:0>);
recipes.addShaped(<opencomputers:transposer:0> * 1, [[<ore:screwIron>, <opencomputers:upgrade:18>, <ore:screwIron>], [<ore:hopper>, <minecraft:bucket>, <ore:hopper>],[<ore:screwIron>, <opencomputers:upgrade:24>, <gregtech:meta_tool:11>]]);

// Arithmetic Logic Unit (ALU)
recipes.remove(<opencomputers:material:10>);
recipes.addShaped(<opencomputers:material:10> * 1, [[null, null, null], [null, <opencomputers:material:7>, null],[<ore:circuitLv>, <ore:circuitLv>, <ore:circuitLv>]]);

// Card Base
recipes.remove(<opencomputers:material:5>);
recipes.addShaped(<opencomputers:material:5> * 1, [[<ore:wireGtSingleIron>, <opencomputers:material:7>, <opencomputers:material:6>], [<ore:wireGtSingleIron>, <ore:circuitLv>, <ore:circuitLv>],[<ore:wireGtSingleIron>, <ore:wireGtSingleGold>, <ore:wireGtSingleGold>]]);

// Control Unit (CU)
recipes.remove(<opencomputers:material:11>);
recipes.addShaped(<opencomputers:material:11> * 1, [[null, <opencomputers:material:6>, null], [null, <ore:circuitLv>, null],[<opencomputers:material:6>, <opencomputers:material:6>, <opencomputers:material:6>]]);

// Disk Platter
recipes.remove(<opencomputers:material:12>);
recipes.addShaped(<opencomputers:material:12> * 1, [[null, <ore:plateAluminium>, null], [<ore:plateAluminium>, null, <ore:plateAluminium>],[null, <ore:plateAluminium>, null]]);

// Transistor
recipes.remove(<opencomputers:material:6>);
assembler.recipeBuilder()
	.inputs(<ore:ingotIron>, <ore:paper>, <ore:ingotIron>, <ore:ingotGold>, <minecraft:redstone>, <ore:ingotGold>, <projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>)
	.fluidInputs(<liquid:glue>*200)
    .outputs(<opencomputers:material:6> * 6)
	.duration(300)
	.EUt(32)
.buildAndRegister();

// Microchip (Tier 1)
recipes.remove(<opencomputers:material:7>);
assembler.recipeBuilder()
	.inputs(<ore:plateSteel>, <projectred-core:resource_item>, <ore:plateSteel>, <opencomputers:material:6>, <projectred-core:resource_item:301>, <opencomputers:material:6>, <ore:plateSteel>, <projectred-core:resource_item>, <ore:plateSteel>)
	.fluidInputs(<liquid:refined_glue>*200)
    .outputs(<opencomputers:material:7> * 8)
	.duration(300)
	.EUt(32)
.buildAndRegister();

// Microchip (Tier 2)
recipes.remove(<opencomputers:material:8>);
assembler.recipeBuilder()
	.inputs(<ore:plateRoseGold>, <ore:plateLapis>, <ore:plateRoseGold>, <opencomputers:material:7>, <projectred-core:resource_item:341>, <opencomputers:material:7>, <ore:plateRoseGold>, <ore:plateLapis>, <ore:plateRoseGold>)
	.fluidInputs(<liquid:refined_glue>*200)
    .outputs(<opencomputers:material:8> * 8)
	.duration(300)
	.EUt(64)
.buildAndRegister();

// Microchip (Tier 3)
recipes.remove(<opencomputers:material:9>);
assembler.recipeBuilder()
	.inputs(<ore:plateCobaltSteel>, <mekanism:compresseddiamond>, <ore:plateCobaltSteel>, <opencomputers:material:8>, <projectred-core:resource_item:342>, <opencomputers:material:8>, <ore:plateCobaltSteel>, <mekanism:compresseddiamond>, <ore:plateCobaltSteel>)
	.fluidInputs(<liquid:refined_glue>*200)
    .outputs(<opencomputers:material:9> * 8)
	.duration(300)
	.EUt(256)
.buildAndRegister();

// Microcontroller Case (Tier 1)
recipes.remove(<opencomputers:material:20>);
recipes.addShaped(<opencomputers:material:20> * 1, [[<ore:wireGtSingleIron>, <opencomputers:material:7>, <ore:wireGtSingleIron>], [<ore:wireGtSingleRedAlloy>, <ore:chestWood>, <ore:wireGtSingleRedAlloy>],[<ore:wireGtSingleIron>, <ore:circuitLv>, <ore:wireGtSingleIron>]]);

// Microcontroller Case (Tier 2)
recipes.remove(<opencomputers:material:21>);
recipes.addShaped(<opencomputers:material:21> * 1, [[<ore:wireGtSingleGold>, <opencomputers:material:9>, <ore:wireGtSingleGold>], [<ore:plateRedAlloy>, <minecraft:chest>, <ore:plateRedAlloy>],[<ore:wireGtSingleGold>, <ore:circuitLv>, <ore:wireGtSingleGold>]]);

// Tablet Case (Tier 1)
recipes.remove(<opencomputers:material:17>);
recipes.addShaped(<opencomputers:material:17> * 1, [[<ore:screwGold>, <minecraft:stone_button>, <ore:screwGold>], [<opencomputers:component:3>, <opencomputers:screen2:0>, <opencomputers:material:9>],[<ore:screwGold>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);

// Tablet Case (Tier 2)
recipes.remove(<opencomputers:material:18>);
recipes.addShaped(<opencomputers:material:18> * 1, [[<opencomputers:material:8>, <minecraft:stone_button>, <ore:screwGold>], [<opencomputers:component:3>, <opencomputers:screen2:0>, <opencomputers:material:9>],[<opencomputers:material:8>, <ore:circuitLv>, <ore:gtceScrewdrivers>]]);
