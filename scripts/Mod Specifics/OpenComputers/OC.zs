#modloaded opencomputers

import mods.actuallyadditions.AtomicReconstructor as AtomicReconstructor;

//Block of Chameleon
recipes.removeByRecipeName("opencomputers:chameliumblock6");
compressor.recipeBuilder()
	.inputs(<opencomputers:material:28>*9)
	.outputs(<opencomputers:chameliumblock>)
	.duration(300)
	.EUt(32)
.buildAndRegister();

// Cable
recipes.remove(<opencomputers:cable>);
assembler.recipeBuilder()
	.inputs(<ore:wireGtSingleCopper>*8, <ore:dustEmerald>)
	.outputs(<opencomputers:cable>*8)
	.duration(300)
	.EUt(32)
.buildAndRegister();

# [Adapter] from [MV Machine Casing][+5]
recipes.removeByRecipeName("opencomputers:adapter0");
craft.make(<opencomputers:adapter>, ["pretty",
  "G : G",
  "C ⌂ P",
  "G M G"], {
  "G": <ore:cableGtSingleConductiveIron>,  # 1x Conductive Iron Cable
  ":": <ore:oc:circuitChip1>,              # Microchip (Tier 1)
  "C": <projectred-core:resource_item:11>, # Cathode
  "⌂": <ore:MVCasing>,                     # MV Machine Casing
  "P": <projectred-core:resource_item:12>, # Pointer
  "M": <ore:circuitMv>,                    # Good Electronic Circuit
});

# [Electronics Assembler] from [Microchip (Tier 2)][+4]
recipes.removeByRecipeName("opencomputers:assembler1");
craft.make(<opencomputers:assembler>, ["pretty",
  "S e S",
  "M : M",
  "S v S"], {
  "S": <ore:screwSteel>,           # Steel Screw
  "e": <extrautils2:crafter>,      # Mechanical Crafter
  "M": <gregtech:meta_item_1:173>, # MV Electric Piston
  ":": <ore:oc:circuitChip2>,      # Microchip (Tier 2)
  "v": <ore:circuitMv>,            # Good Electronic Circuit
});

# [Capacitor] from [Medium Voltage 4x Battery Buffer][+4]
recipes.removeByRecipeName("opencomputers:capacitor3");
craft.make(<opencomputers:capacitor>, ["pretty",
  "□ □ □",
  ": e :",
  "M v M"], {
  "□": <ore:plateBeryllium>,        # Beryllium Plate
  ":": <ore:oc:materialTransistor>, # Tiny Transistor
  "e": <gregtech:machine:1317>,     # Medium Voltage 4x Battery Buffer
  "M": <ore:circuitMv>,             # Good Electronic Circuit
  "v": <ore:batteryMv>,             # Medium Lithium Battery
});

# [Computer Case (Tier 1)] from [MV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:case14");
craft.make(<opencomputers:case1>, ["pretty",
  "A M A",
  "E ⌂ E",
  "A : A"], {
  "A": <ore:screwAluminium>,      # Aluminium Screw
  "M": <ore:circuitMv>,           # Good Electronic Circuit
  "E": <ore:rotorEnergeticAlloy>, # Energetic Alloy Rotor
  "⌂": <ore:MVCasing>,            # MV Machine Casing
  ":": <ore:oc:circuitChip1>,     # Microchip (Tier 1)
});

# [Computer Case (Tier 2)] from [HV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:case26");
craft.make(<opencomputers:case2>, ["pretty",
  "S H S",
  "E ⌂ E",
  "S : S"], {
  "S": <ore:screwStainlessSteel>,   # Stainless Steel Screw
  "H": <ore:circuitHv>,             # Advanced Integrated Circuit
  "E": <ore:rotorElectrum>,         # Electrum Rotor
  "⌂": <gregtech:machine_casing:3>, # HV Machine Casing
  ":": <ore:oc:circuitChip2>,       # Microchip (Tier 2)
});

# [Computer Case (Tier 3)] from [EV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:case35");
craft.make(<opencomputers:case3>, ["pretty",
  "T v T",
  "E ⌂ E",
  "T : T"], {
  "T": <ore:screwTitanium>,         # Titanium Screw
  "v": <ore:circuitEv>,             # Workstation
  "E": <ore:rotorEnderium>,         # Enderium Rotor
  "⌂": <gregtech:machine_casing:4>, # EV Machine Casing
  ":": <ore:oc:circuitChip3>,       # Microchip (Tier 3)
});

# [Charger] from [MV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:charger8");
craft.make(<opencomputers:charger>, ["pretty",
  "□ □ □",
  "L ⌂ L",
  "H : H"], {
  "□": <ore:plateStainlessSteel>, # Stainless Steel Plate
  "L": <gregtech:machine:1316>,   # Low Voltage 4x Battery Buffer
  "⌂": <ore:MVCasing>,            # MV Machine Casing
  "H": <ore:circuitHv>,           # Advanced Integrated Circuit
  ":": <ore:oc:circuitChip3>,     # Microchip (Tier 3)
});

# [Disassembler] from [MV Machine Casing][+7]
recipes.removeByRecipeName("opencomputers:disassembler9");
craft.make(<opencomputers:disassembler>, ["pretty",
  "m ⌃ :",
  "M ⌂ V",
  "A c A"], {
  "m": <ore:oc:materialCU>,        # Control Unit (CU)
  "⌃": <randomthings:quartzglass>, # Quartz Glass
  ":": <ore:oc:analyzer>,          # Analyzer
  "M": <gregtech:meta_item_1:173>, # MV Electric Piston
  "⌂": <ore:MVCasing>,             # MV Machine Casing
  "V": <gregtech:meta_item_1:188>, # MV Robot Arm
  "A": <ore:screwAluminium>,       # Aluminium Screw
  "c": <ore:oc:circuitChip1>,      # Microchip (Tier 1)
});

# [Disk Drive] from [MV Machine Casing][+5]
recipes.removeByRecipeName("opencomputers:diskdrive10");
craft.make(<opencomputers:diskdrive>, ["pretty",
  "A v A",
  "M ⌂ D",
  "A : A"], {
  "A": <ore:screwAluminium>,       # Aluminium Screw
  "v": <ore:circuitMv>,            # Good Electronic Circuit
  "M": <gregtech:meta_item_1:173>, # MV Electric Piston
  "⌂": <ore:MVCasing>,             # MV Machine Casing
  "D": <ore:lensDiamond>,          # Diamond Lens
  ":": <ore:oc:circuitChip2>,      # Microchip (Tier 2)
});

# [Geolyzer] from [MV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:geolyzer11");
craft.make(<opencomputers:geolyzer>, ["pretty",
  "A : A",
  "M ⌂ M",
  "A v A"], {
  "A": <ore:screwAluminium>,       # Aluminium Screw
  ":": <ore:oc:analyzer>,          # Analyzer
  "M": <gregtech:meta_item_1:233>, # MV Sensor
  "⌂": <ore:MVCasing>,             # MV Machine Casing
  "v": <ore:circuitMv>,            # Good Electronic Circuit
});

# [Hologram Projector (Tier 1)] from [Lime Illumar][+5]
recipes.removeByRecipeName("opencomputers:hologram112");
craft.make(<opencomputers:hologram1>, ["pretty",
  ": ⌃ :",
  "M I M",
  "□ * □"], {
  ":": <ore:oc:circuitChip2>,      # Microchip (Tier 2)
  "⌃": <randomthings:quartzglass>, # Quartz Glass
  "M": <ore:circuitMv>,            # Good Electronic Circuit
  "I": <ore:projredIllumar>,       # Lime Illumar
  "□": <ore:lightPlateAluminium>,  # Light Aluminium Plate
  "*": <ore:glodCrystal>,          # Glod Crystal
});

# [Hologram Projector (Tier 2)] from [Lime Illumar][+5]
recipes.removeByRecipeName("opencomputers:hologram213");
craft.make(<opencomputers:hologram2>, ["pretty",
  ": ⌃ :",
  "H I H",
  "□ * □"], {
  ":": <ore:oc:circuitChip3>,          # Microchip (Tier 3)
  "⌃": <randomthings:quartzglass>,     # Quartz Glass
  "H": <ore:circuitHv>,                # Advanced Integrated Circuit
  "I": <ore:projredIllumar>,           # Lime Illumar
  "□": <ore:lightPlateStainlessSteel>, # Light Stainless Steel Plate
  "*": <ore:empoweredGlodCrystal>,     # Empowered Glod Crystal
});

# [Motion Sensor] from [Central Processing Unit (CPU) (Tier 2)][+5]
recipes.removeByRecipeName("opencomputers:motionsensor15");
craft.make(<opencomputers:motionsensor>, ["pretty",
  "A □ A",
  "D : M",
  "A v A"], {
  "A": <ore:screwAluminium>,          # Aluminium Screw
  "□": <ore:plateMenril>,             # Menril Plate
  "D": <minecraft:daylight_detector>, # Daylight Sensor
  ":": <ore:oc:cpu2>,                 # Central Processing Unit (CPU) (Tier 2)
  "M": <gregtech:meta_item_1:233>,    # MV Sensor
  "v": <ore:circuitMv>,               # Good Electronic Circuit
});

# [Power Converter] from [LV Energy Converter (1A)][+5]
recipes.removeByRecipeName("opencomputers:powerconverter16");
craft.make(<opencomputers:powerconverter>, ["pretty",
  "□ : □",
  "⌂ Ϟ ⌂",
  "M L M"], {
  "□": <ore:plateAluminium>,    # Aluminium Plate
  ":": <ore:oc:circuitChip2>,   # Microchip (Tier 2)
  "⌂": <ore:casingSteel>,       # Steel Casing
  "Ϟ": <gregtech:machine:1674>, # LV Energy Converter (1A)
  "M": <ore:circuitMv>,         # Good Electronic Circuit
  "L": <ore:batteryLv>,         # Small Sodium Battery
});

# [3D Printer] from [MV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:printer18");
craft.make(<opencomputers:printer>, ["pretty",
  "A I A",
  ": ⌂ :",
  "A M A"], {
  "A": <ore:screwAluminium>,    # Aluminium Screw
  "I": <magneticraft:inserter>, # Inserter
  ":": <ore:oc:circuitChip2>,   # Microchip (Tier 2)
  "⌂": <ore:MVCasing>,          # MV Machine Casing
  "M": <ore:circuitMv>,         # Good Electronic Circuit
});

# [Raid] from [Disk Drive][+4]
recipes.removeByRecipeName("opencomputers:raid19");
craft.make(<opencomputers:raid>, ["pretty",
  "S a S",
  ": d :",
  "S c S"], {
  "S": <ore:screwStainlessSteel>, # Stainless Steel Screw
  "a": <ore:oc:apu2>,             # Accelerated Processing Unit (APU) (Tier 3)
  ":": <ore:oc:ram1>,             # Memory (Tier 1)
  "d": <ore:oc:diskDrive>,        # Disk Drive
  "c": <ore:oc:circuitChip3>,     # Microchip (Tier 3)
});

# [Redstone I/O] from [MV Machine Casing][+4]
recipes.removeByRecipeName("opencomputers:redstone20");
craft.make(<opencomputers:redstone>, ["pretty",
  "□ r □",
  "□ ⌂ □",
  ": M :"], {
  "□": <ore:lightPlateRedAlloy>, # Light Red Alloy Plate
  "r": <ore:oc:redstoneCard1>,   # Redstone Card (Tier 1)
  "⌂": <ore:MVCasing>,           # MV Machine Casing
  ":": <ore:oc:circuitChip2>,    # Microchip (Tier 2)
  "M": <ore:circuitMv>,          # Good Electronic Circuit
});

# [Relay] from [MV Machine Casing][+5]
recipes.removeByRecipeName("opencomputers:relay21");
craft.make(<opencomputers:relay>, ["pretty",
  "□ l □",
  ": ⌂ :",
  "M c M"], {
  "□": <ore:lightPlateStainlessSteel>, # Light Stainless Steel Plate
  "l": <ore:oc:lanCard>,               # Network Card
  ":": <ore:oc:cable>,                 # Cable
  "⌂": <ore:MVCasing>,                 # MV Machine Casing
  "M": <ore:circuitMv>,                # Good Electronic Circuit
  "c": <ore:oc:circuitChip2>,          # Microchip (Tier 2)
});

# [Transistor Rework]
<opencomputers:material:6>.displayName = "Tiny Transistor";
recipes.remove(<opencomputers:material:6>);
AtomicReconstructor.addRecipe(<opencomputers:material:6>*4, <gregtech:meta_item_1:518>, 10000);

# [Microchip Tier 1]
recipes.remove(<opencomputers:material:7>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:6>*4, <ore:wireFineRedAlloy>*4, <gregtech:meta_item_1:381>)
	.outputs(<opencomputers:material:7>*8)
	.duration(300)
	.EUt(32)
.buildAndRegister();

# [Microchip Tier 2]
recipes.remove(<opencomputers:material:8>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:7>*4, <ore:wireFineGold>*4, <gregtech:meta_item_1:382>)
	.outputs(<opencomputers:material:8>*4)
	.duration(404)
	.EUt(64)
.buildAndRegister();

# [Microchip Tier 3]
recipes.remove(<opencomputers:material:9>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:8>*4, <ore:wireFineVibrantAlloy>*4, <gregtech:meta_item_1:383>)
	.outputs(<opencomputers:material:9>*2)
	.duration(404)
	.EUt(64)
.buildAndRegister();

# [Screen (Tier 1)] from [Glowstone Dust][+4]
recipes.removeByRecipeName("opencomputers:screen122");
craft.make(<opencomputers:screen1>, ["pretty",
  "□ □ п",
  ": ▲ G",
  "□ □ п"], {
  "□": <ore:plateAluminium>,                  # Aluminium Plate
  "п": <ore:plateSteel>,                      # Steel Plate
  ":": <ore:oc:circuitChip1>,                 # Microchip (Tier 1)
  "▲": <ore:dustGlowstone>,                   # Glowstone Dust
  "G": <ore:paneGlassGray> | <ore:paneGlassWhite> | <ore:paneGlassBlack> | <ore:paneGlassLightGray># Gray/White/Black/LightGray Stained Glass Pane
});

# [Screen (Tier 2)] from [Green Dye][+5]
recipes.removeByRecipeName("opencomputers:screen224");
craft.make(<opencomputers:screen2>, ["pretty",
  "□ R □",
  "c G :",
  "□ B □"], {
  "□": <ore:plateRoseGold>,   # Rose Gold Plate
  "R": <ore:dyeRed>,          # Red Dye
  "c": <ore:oc:circuitChip2>, # Microchip (Tier 2)
  "G": <ore:dyeGreen>,        # Green Dye
  ":": <ore:oc:screen1>,      # Screen (Tier 1)
  "B": <ore:dyeBlue>,         # Blue Dye
});

# [Screen (Tier 3)] from [Printed Circuit Board (PCB)][+4]
recipes.removeByRecipeName("opencomputers:screen323");
craft.make(<opencomputers:screen3>, ["pretty",
  "□ □ п",
  ": m s",
  "□ □ п"], {
  "□": <ore:plateStainlessSteel>,            # Stainless Steel Plate
  "п": <ore:plateEnderium>,                  # Enderium Plate
  ":": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "s": <ore:oc:screen2>,                     # Screen (Tier 2)
});

# [Grog]
recipes.remove(<opencomputers:material:1>);
mixer.recipeBuilder()
	.inputs(<minecraft:fermented_spider_eye>, <ore:gemSugar>)
  .fluidInputs(<liquid:slime>*288, <liquid:sulfuric_acid>*300)
	.outputs(<opencomputers:material:1>*4)
	.duration(300)
	.EUt(60)
.buildAndRegister();

# [Raw Circuit Board]
recipes.remove(<opencomputers:material:2>);
chemical_reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:381>, <enderio:item_material:48>)
  .fluidInputs(<liquid:clay>*200)
	.outputs(<opencomputers:material:2>)
	.duration(200)
	.EUt(40)
.buildAndRegister();

# [Printed Circuit Board (PCB)]
recipes.remove(<opencomputers:material:4>);
chemical_reactor.recipeBuilder()
	.inputs(<opencomputers:material:3>, <opencomputers:material:1>)
  .fluidInputs(<liquid:gold>*144)
	.outputs(<opencomputers:material:4>)
	.duration(200)
	.EUt(100)
.buildAndRegister();

# [Arithmetic Unic (ALU)]
recipes.remove(<opencomputers:material:10>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:6>*3, <opencomputers:material:7>, <projectred-integration:gate:19>)
	.outputs(<opencomputers:material:10>)
	.duration(300)
	.EUt(32)
.buildAndRegister();

# [Control Unit (CU)]
recipes.remove(<opencomputers:material:11>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:6>*2, <opencomputers:material:8>, <projectred-integration:gate:21>)
	.outputs(<opencomputers:material:11>)
	.duration(300)
	.EUt(32)
.buildAndRegister();

# [Interweb]
recipes.remove(<opencomputers:material:13>);
autoclave.recipeBuilder()
	.inputs(<minecraft:web>)
  .fluidInputs(<liquid:ender>*576)
	.outputs(<opencomputers:material:13>)
	.duration(200)
	.EUt(80)
.buildAndRegister();

# [Rack] from [Durable Shelf][+6]
recipes.removeByRecipeName("opencomputers:rack25");
craft.make(<opencomputers:rack>, ["pretty",
  "S : S",
  "E D E",
  "r M p"], {
  "S": <ore:screwStainlessSteel>,              # Stainless Steel Screw
  ":": <ore:oc:wlanCard2>,                     # Wireless Network Card (Tier 2)
  "E": <ore:rotorElectrum>,                    # Electrum Rotor
  "D": <pyrotech:shelf_stone>,                 # Durable Shelf
  "r": <ore:oc:relay>,                         # Relay
  "M": <ore:circuitMv>,                        # Good Electronic Circuit
  "p": <ore:oc:powerConverter>,                # Power Converter
});

# [Waypoint] from [Interweb][+4]
recipes.removeByRecipeName("opencomputers:waypoint26");
craft.make(<opencomputers:waypoint>, ["pretty",
  "A c A",
  ": m :",
  "A M A"], {
  "A": <ore:screwAluminium>,        # Aluminium Screw
  "c": <ore:oc:circuitChip1>,       # Microchip (Tier 1)
  ":": <ore:oc:materialTransistor>, # Tiny Transistor
  "m": <ore:oc:materialInterweb>,   # Interweb
  "M": <ore:circuitMv>,             # Good Electronic Circuit
});

# [Net Splitter] from [MV Electric Piston][+3]
recipes.removeByRecipeName("opencomputers:netsplitter28");
craft.make(<opencomputers:netsplitter>, ["pretty",
  "A : A",
  ": M :",
  "A L A"], {
  "A": <ore:screwAluminium>,       # Aluminium Screw
  ":": <ore:oc:cable>,             # Cable
  "M": <gregtech:meta_item_1:173>, # MV Electric Piston
  "L": <ore:circuitLv>,            # Microprocessor
});

# [Transposer] from [MV Machine Casing][+5]
recipes.removeByRecipeName("opencomputers:transposer29");
craft.make(<opencomputers:transposer>, ["pretty",
  "A i A",
  "M ⌂ V",
  "A : A"], {
  "A": <ore:screwAluminium>,                # Aluminium Screw
  "i": <ore:oc:inventoryControllerUpgrade>, # Inventory Controller Upgrade
  "M": <gregtech:meta_item_1:158>,          # MV Conveyor Module
  "⌂": <ore:MVCasing>,                      # MV Machine Casing
  "V": <gregtech:meta_item_1:143>,          # MV Electric Pump
  ":": <ore:oc:tankControllerUpgrade>,      # Tank Controller Upgrade
});

# [Card Base]*2 from [Microchip (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:material35");
craft.make(<opencomputers:material:5> * 2, ["pretty",
  "╱ c m",
  "╱ : :",
  "╱ G G"], {
  "╱": <ore:stickAluminium>,                 # Aluminium Rod
  "c": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "m": <ore:oc:materialTransistor>,          # Tiny Transistor
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "G": <ore:wireGtSingleGold>,               # 1x Gold Wire
});

# [Disk Platter] from [Iron Ring][+1]
recipes.removeByRecipeName("opencomputers:material42");
craft.make(<opencomputers:material:12>, ["pretty",
  "  ‚  ",
  "‚ I ‚",
  "  ‚  "], {
  "‚": <ore:nuggetIron>, # Iron Nugget
  "I": <ore:ringIron>,   # Iron Ring
});

# [Tablet Case (Tier 1)] from [Screen (Tier 2)][+5]
recipes.removeByRecipeName("opencomputers:material47");
craft.make(<opencomputers:material:17>, ["pretty",
  "□ I □",
  "c s :",
  "□ m □"], {
  "□": <ore:plateGold>,                      # Gold Plate
  "I": <quark:iron_button>,                  # Iron Button
  "c": <ore:oc:componentBus1>,               # Component Bus (Tier 1)
  "s": <ore:oc:screen2>,                     # Screen (Tier 2)
  ":": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Tablet Case (Tier 2)] from [Screen (Tier 2)][+6]
recipes.removeByRecipeName("opencomputers:material48");
craft.make(<opencomputers:material:18>, ["pretty",
  ": I □",
  "o s c",
  ": m □"], {
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "I": <quark:iron_button>,                  # Iron Button
  "□": <ore:plateRoseGold>,                  # Rose Gold Plate
  "o": <ore:oc:componentBus3>,               # Component Bus (Tier 3)
  "s": <ore:oc:screen2>,                     # Screen (Tier 2)
  "c": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Chameleon]
recipes.removeByRecipeName("opencomputers:material55");
mixer.recipeBuilder()
	.inputs(<tconstruct:soil>*4, <gregtech:meta_item_1:435>*3, <ore:dustCarbonManganese>*2)
  .fluidInputs(<liquid:distilled_water>*1000)
	.outputs(<opencomputers:material:28>*16)
	.duration(300)
	.EUt(40)
.buildAndRegister();

# [Microcontroller Case (Tier 1)] from [1k ME Storage Component][+4]
recipes.removeByRecipeName("opencomputers:material49");
craft.make(<opencomputers:material:20>, ["pretty",
  "□ : □",
  "E § E",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,             # Light Aluminium Plate
  ":": <ore:oc:circuitChip2>,                 # Microchip (Tier 2)
  "E": <contenttweaker:etchedredalloywiring>, # Etched Red Alloy Wiring
  "§": <appliedenergistics2:material:35>,     # 1k ME Storage Component
  "m": <ore:oc:materialCircuitBoardPrinted>,  # Printed Circuit Board (PCB)
});

# [Microcontroller Case (Tier 2)] from [4k ME Storage Component][+4]
recipes.removeByRecipeName("opencomputers:material50");
craft.make(<opencomputers:material:21>, ["pretty",
  "□ : □",
  "E § E",
  "□ m □"], {
  "□": <ore:lightPlateStainlessSteel>,        # Light Stainless Steel Plate
  ":": <ore:oc:circuitChip3>,                 # Microchip (Tier 3)
  "E": <contenttweaker:etchedredalloywiring>, # Etched Red Alloy Wiring
  "§": <appliedenergistics2:material:36>,     # 4k ME Storage Component
  "m": <ore:oc:materialCircuitBoardPrinted>,  # Printed Circuit Board (PCB)
});

# [Drone Case (Tier 1)] from [Microcontroller Case (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:material51");
craft.make(<opencomputers:material:23>, ["pretty",
  "□ L □",
  ": m :",
  "□ c □"], {
  "□": <ore:plateVibrantAlloy>,       # Vibrant Alloy Plate
  "L": <gregtech:meta_item_1:232>,    # LV Sensor
  ":": <ore:oc:circuitChip1>,         # Microchip (Tier 1)
  "m": <ore:oc:microcontrollerCase1>, # Microcontroller Case (Tier 1)
  "c": <ore:oc:componentBus2>,        # Component Bus (Tier 2)
});

# [Drone Case (Tier 2)] from [Microcontroller Case (Tier 2)][+4]
recipes.removeByRecipeName("opencomputers:material52");
craft.make(<opencomputers:material:24>, ["pretty",
  "□ M □",
  ": m :",
  "□ c □"], {
  "□": <ore:plateVibrantAlloy>,       # Vibrant Alloy Plate
  "M": <gregtech:meta_item_1:233>,    # MV Sensor
  ":": <ore:oc:circuitChip2>,         # Microchip (Tier 2)
  "m": <ore:oc:microcontrollerCase2>, # Microcontroller Case (Tier 2)
  "c": <ore:oc:componentBus3>,        # Component Bus (Tier 3)
});

# [Ink Cartridge (Empty)] from [Fluid Tank (Configured)][+4]
recipes.removeByRecipeName("opencomputers:material53");
craft.make(<opencomputers:material:26>, ["pretty",
  "□ D □",
  ": F :",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,            # Light Aluminium Plate
  "D": <minecraft:dispenser>,                # Dispenser
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "F": <enderio:block_tank>,                 # Fluid Tank (Configured)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Analyzer] from [Microchip (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:tool56");
craft.make(<opencomputers:tool>, ["pretty",
  "  L  ",
  ": c G",
  ": m G"], {
  "L": <gregtech:meta_item_1:232>,           # LV Sensor
  ":": <ore:oc:materialTransistor>,          # Tiny Transistor
  "c": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "G": <ore:boltGold>,                       # Gold Bolt
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Remote Terminal] from [Screen (Tier 2)][+5]
recipes.removeByRecipeName("opencomputers:tool57");
craft.make(<opencomputers:tool:2>, ["pretty",
  "□ o □",
  ": s w",
  "□ k □"], {
  "□": <ore:lightPlateStainlessSteel>,         # Light Stainless Steel Plate
  "o": <ore:oc:solarGeneratorUpgrade>,         # Solar Generator Upgrade
  ":": <ore:oc:circuitChip3>,                  # Microchip (Tier 3)
  "s": <ore:oc:screen2>,                       # Screen (Tier 2)
  "w": <ore:oc:wlanCard2>,                     # Wireless Network Card (Tier 2)
  "k": <ore:oc:keyboard>,                      # Keyboard
});

# [Nanomachines] from [Grog][+5]
recipes.removeByRecipeName("opencomputers:tool62");
craft.make(<opencomputers:tool:5>, ["pretty",
  ": w :",
  "c m r",
  ": M :"], {
  ":": <ore:oc:chamelium>,                     # Chamelium
  "w": <ore:oc:wlanCard2>,                     # Wireless Network Card (Tier 2)
  "c": <ore:oc:cpu2>,                          # Central Processing Unit (CPU) (Tier 2)
  "m": <ore:oc:materialAcid>,                  # Grog
  "r": <ore:oc:ram1>,                          # Memory (Tier 1)
  "M": <ore:batteryMv>,                        # Medium Sodium Battery
});

# [Hover Boots] from [Drone Case (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:hoverboots61");
craft.make(<opencomputers:hoverboots>, ["pretty",
  "□ : □",
  "I d I",
  "□ M □"], {
  "□": <ore:lightPlateAluminium>,           # Light Aluminium Plate
  ":": <ore:oc:hoverUpgrade2>,              # Hover Upgrade (Tier 2)
  "I": <contenttweaker:industrial_leather>, # Industrial Leather
  "d": <ore:oc:droneCase1>,                 # Drone Case (Tier 1)
  "M": <ore:batteryMv>,                     # Medium Sodium Battery
});

# [Memory Tier 1]
recipes.remove(<opencomputers:component:6>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:material:7>*3, <opencomputers:material:4>*3, <ore:componentDiode>*2)
	.outputs(<opencomputers:component:6>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# [Memory Tier 1.5]
recipes.remove(<opencomputers:component:7>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:component:6>*2, <opencomputers:material:7>*3, <opencomputers:material:4>)
	.outputs(<opencomputers:component:7>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# [Memory Tier 2]
recipes.remove(<opencomputers:component:8>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:component:7>*2, <opencomputers:material:8>*3, <opencomputers:material:4>, <ore:componentInductor>*2)
	.outputs(<opencomputers:component:8>)
	.duration(200)
	.EUt(32)
.buildAndRegister();

# [Memory Tier 2.5]
recipes.remove(<opencomputers:component:9>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:component:8>*2, <opencomputers:material:8>*3, <opencomputers:material:4>)
	.outputs(<opencomputers:component:9>)
	.duration(200)
	.EUt(32)
.buildAndRegister();

# [Memory Tier 3]
recipes.remove(<opencomputers:component:10>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:component:9>*2, <opencomputers:material:9>*3, <opencomputers:material:4>, <ore:componentInductor>*2, <ore:componentDiode>*2)
	.outputs(<opencomputers:component:10>)
	.duration(200)
	.EUt(32)
.buildAndRegister();

# [Memory Tier 3.5]
recipes.remove(<opencomputers:component:11>);
circuit_assembler.recipeBuilder()
	.inputs(<opencomputers:component:10>*2, <opencomputers:material:9>*3, <opencomputers:material:4>)
	.outputs(<opencomputers:component:11>)
	.duration(200)
	.EUt(32)
.buildAndRegister();

# [Central Processing Unit (CPU) (Tier 1)] from [Control Unit (CU)][+4]
recipes.removeByRecipeName("opencomputers:component63");
craft.make(<opencomputers:component>, ["pretty",
  "A ♥ A",
  ": a :",
  "A m A"], {
  "A": <ore:foilAluminium>,   # Aluminium Foil
  "♥": <ore:plateRedstone>,   # Redstone Plate
  ":": <ore:oc:circuitChip1>, # Microchip (Tier 1)
  "a": <ore:oc:materialCU>,   # Control Unit (CU)
  "m": <ore:oc:materialALU>,  # Arithmetic Logic Unit (ALU)
});

# [Central Processing Unit (CPU) (Tier 2)] from [Central Processing Unit (CPU) (Tier 1)][+3]
recipes.removeByRecipeName("opencomputers:component64");
craft.make(<opencomputers:component:1>, ["pretty",
  "R r R",
  ": c :",
  "R r R"], {
  "R": <ore:foilRoseGold>,    # Rose Gold Foil
  "r": <ore:oc:ram3>,         # Memory (Tier 2)
  ":": <ore:oc:circuitChip2>, # Microchip (Tier 2)
  "c": <ore:oc:cpu1>,         # Central Processing Unit (CPU) (Tier 1)
});

# [Central Processing Unit (CPU) (Tier 3)] from [Central Processing Unit (CPU) (Tier 2)][+3]
recipes.removeByRecipeName("opencomputers:component65");
craft.make(<opencomputers:component:2>, ["pretty",
  "S : S",
  "c p c",
  "S : S"], {
  "S": <ore:foilStainlessSteel>, # Stainless Steel Foil
  ":": <ore:oc:ram5>,            # Memory (Tier 3)
  "c": <ore:oc:circuitChip3>,    # Microchip (Tier 3)
  "p": <ore:oc:cpu2>,            # Central Processing Unit (CPU) (Tier 2)
});

# [Component Bus (Tier 1)] from [Control Unit (CU)][+4]
recipes.removeByRecipeName("opencomputers:component66");
craft.make(<opencomputers:component:3>, ["pretty",
  "A ♥ A",
  ": a  ",
  "A m A"], {
  "A": <ore:foilAluminium>,                  # Aluminium Foil
  "♥": <ore:plateRedstone>,                  # Redstone Plate
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "a": <ore:oc:materialCU>,                  # Control Unit (CU)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Component Bus (Tier 2)] from [Component Bus (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:component67");
craft.make(<opencomputers:component:4>, ["pretty",
  "R r R",
  ": c  ",
  "R m R"], {
  "R": <ore:foilRoseGold>,                   # Rose Gold Foil
  "r": <ore:oc:ram3>,                        # Memory (Tier 2)
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "c": <ore:oc:componentBus1>,               # Component Bus (Tier 1)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Component Bus (Tier 3)] from [Component Bus (Tier 2)][+4]
recipes.removeByRecipeName("opencomputers:component68");
craft.make(<opencomputers:component:5>, ["pretty",
  "S : S",
  "i c  ",
  "S m S"], {
  "S": <ore:foilStainlessSteel>,             # Stainless Steel Foil
  ":": <ore:oc:ram5>,                        # Memory (Tier 3)
  "i": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "c": <ore:oc:componentBus2>,               # Component Bus (Tier 2)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Server (Tier 1)] from [Computer Case (Tier 1)][+5]
recipes.removeByRecipeName("opencomputers:component75");
craft.make(<opencomputers:component:13>, ["pretty",
  "c r c",
  ": a :",
  "m M m"], {
  "c": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "r": <ore:oc:ram4>,                        # Memory (Tier 2.5)
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "a": <ore:oc:case1>,                       # Computer Case (Tier 1)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "M": <ore:circuitMv>,                      # Good Electronic Circuit
});

# [Server (Tier 2)] from [Computer Case (Tier 2)][+5]
recipes.removeByRecipeName("opencomputers:component76");
craft.make(<opencomputers:component:14>, ["pretty",
  ": r :",
  "c a c",
  "m M m"], {
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "r": <ore:oc:ram5>,                        # Memory (Tier 3)
  "c": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "a": <ore:oc:case2>,                       # Computer Case (Tier 2)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "M": <ore:circuitMv>,                      # Good Electronic Circuit
});

# [Server (Tier 3)] from [Computer Case (Tier 3)][+4]
recipes.removeByRecipeName("opencomputers:component77");
craft.make(<opencomputers:component:15>, ["pretty",
  ": r :",
  ": c :",
  "m H m"], {
  ":": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "r": <ore:oc:ram6>,                        # Memory (Tier 3.5)
  "c": <ore:oc:case3>,                       # Computer Case (Tier 3)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "H": <ore:circuitHv>,                      # Advanced Integrated Circuit
});

# [Graphics Card (Tier 1)]
recipes.remove(<opencomputers:card:1>);
assembler.recipeBuilder()
	.inputs(<opencomputers:material:5>, <opencomputers:material:7>, <opencomputers:material:10>, <opencomputers:component:6>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:1>)
	.duration(250)
	.EUt(16)
.buildAndRegister();

# [Graphics Card (Tier 2)]
recipes.remove(<opencomputers:card:2>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:1>, <opencomputers:material:8>, <opencomputers:component:8>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:2>)
	.duration(250)
	.EUt(40)
.buildAndRegister();

# [Graphics Card (Tier 3)]
recipes.remove(<opencomputers:card:3>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:2>, <opencomputers:material:9>, <opencomputers:component:10>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:3>)
	.duration(250)
	.EUt(100)
.buildAndRegister();

# [Redstone Card]
recipes.remove(<opencomputers:card:4>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:1>, <opencomputers:material:7>, <projectred-core:resource_item:11>, <projectred-core:resource_item:12>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:4>)
	.duration(250)
	.EUt(16)
.buildAndRegister();

# [Redstone Card Tier 2]
recipes.remove(<opencomputers:card:5>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:4>, <opencomputers:material:8>, <projectred-integration:gate:20>, <projectred-core:resource_item:320>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:5>)
	.duration(250)
	.EUt(40)
.buildAndRegister();

# [Network Card]
recipes.remove(<opencomputers:card:6>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:1>, <opencomputers:material:7>, <gregtech:meta_item_1:218>, <gregtech:meta_item_1:233>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:6>)
	.duration(300)
	.EUt(60)
.buildAndRegister();

# [Network Card Tier 2]
recipes.remove(<opencomputers:card:7>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:6>, <opencomputers:material:8>, <ore:gemEnderEye>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:7>)
	.duration(300)
	.EUt(120)
.buildAndRegister();

# [Internet Card]
recipes.remove(<opencomputers:card:8>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:7>, <opencomputers:material:9>, <opencomputers:material:13>, <ore:empoweredEndorCrystal>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:8>)
	.duration(300)
	.EUt(60)
.buildAndRegister();

# [Data Card]
recipes.remove(<opencomputers:card:10>);
assembler.recipeBuilder()
	.inputs(<opencomputers:material:5>, <opencomputers:material:8>, <opencomputers:material:10>, <opencomputers:component:6>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:10>)
	.duration(200)
	.EUt(40)
.buildAndRegister();

# [Data Card Tier 2]
recipes.remove(<opencomputers:card:11>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:10>, <opencomputers:material:9>, <opencomputers:component>, <opencomputers:component:8>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:11>)
	.duration(300)
	.EUt(80)
.buildAndRegister();

# [Data Card Tier 3]
recipes.remove(<opencomputers:card:12>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:10>, <opencomputers:material:9>, <opencomputers:component:1>, <opencomputers:component:10>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:card:12>)
	.duration(300)
	.EUt(80)
.buildAndRegister();

# [Accelerated Processing Unit (APU) (Tier 2)] from [Component Bus (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:component78");
craft.make(<opencomputers:component:16>, ["pretty",
  "R : R",
  "c o g",
  "R : R"], {
  "R": <ore:foilRoseGold>,     # Rose Gold Foil
  ":": <ore:oc:circuitChip1>,  # Microchip (Tier 1)
  "c": <ore:oc:cpu2>,          # Central Processing Unit (CPU) (Tier 2)
  "o": <ore:oc:componentBus1>, # Component Bus (Tier 1)
  "g": <ore:oc:graphicsCard1>, # Graphics Card (Tier 1)
});

# [Accelerated Processing Unit (APU) (Tier 3)] from [Component Bus (Tier 2)][+4]
recipes.removeByRecipeName("opencomputers:component79");
craft.make(<opencomputers:component:17>, ["pretty",
  "S : S",
  "p c g",
  "S : S"], {
  "S": <ore:foilStainlessSteel>, # Stainless Steel Foil
  ":": <ore:oc:circuitChip2>,    # Microchip (Tier 2)
  "p": <ore:oc:cpu3>,            # Central Processing Unit (CPU) (Tier 3)
  "c": <ore:oc:componentBus2>,   # Component Bus (Tier 2)
  "g": <ore:oc:graphicsCard2>,   # Graphics Card (Tier 2)
});

# [Terminal Server] from [Microchip (Tier 2)][+3]
recipes.removeByRecipeName("opencomputers:component80");
craft.make(<opencomputers:component:19>, ["pretty",
  "□ : □",
  ": c :",
  "□ m □"], {
  "□": <ore:lightPlateStainlessSteel>,         # Light Stainless Steel Plate
  ":": <ore:oc:wlanCard2>,                     # Wireless Network Card (Tier 2)
  "c": <ore:oc:circuitChip2>,                  # Microchip (Tier 2)
  "m": <ore:oc:materialCircuitBoardPrinted>,   # Printed Circuit Board (PCB)
});

# [Disk Drive] from [Disk Drive][+4]
recipes.removeByRecipeName("opencomputers:component81");
craft.make(<opencomputers:component:20>, ["pretty",
  "□ c □",
  "╱ d ╱",
  "□ : □"], {
  "□": <ore:lightPlateStainlessSteel>,       # Light Stainless Steel Plate
  "c": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "╱": <ore:stickVanadiumSteel>,             # Vanadiumsteel Rod
  "d": <ore:oc:diskDrive>,                   # Disk Drive
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Angel Upgrade] from [Angel Block][+3]
recipes.removeByRecipeName("opencomputers:upgrade94");
craft.make(<opencomputers:upgrade>, ["pretty",
  "□ * □",
  ": ■ :",
  "□ * □"], {
  "□": <ore:lightPlateAluminium>, # Light Aluminium Plate
  "*": <ore:endorCrystal>,        # Endor Crystal
  ":": <ore:oc:circuitChip1>,     # Microchip (Tier 1)
  "■": <extrautils2:angelblock>,  # Angel Block
});

# [Battery Upgrade (Tier 1)] from [Capacitor][+3]
recipes.removeByRecipeName("opencomputers:upgrade95");
craft.make(<opencomputers:upgrade:1>, ["pretty",
  "□ ¤ □",
  ": c :",
  "□ ¤ □"], {
  "□": <ore:plateBatteryAlloy>,     # Battery Alloy Plate
  "¤": <ore:gearAluminium>,         # Aluminium Gear
  ":": <ore:oc:materialTransistor>, # Tiny Transistor
  "c": <ore:oc:capacitor>,          # Capacitor
});

# [Battery Upgrade (Tier 2)] from [Aluminium Gear][+3]
recipes.removeByRecipeName("opencomputers:upgrade96");
craft.make(<opencomputers:upgrade:2>, ["pretty",
  "R c R",
  ": ¤ :",
  "R c R"], {
  "R": <ore:foilRoseGold>,          # Rose Gold Foil
  "c": <ore:oc:capacitor>,          # Capacitor
  ":": <ore:oc:materialTransistor>, # Tiny Transistor
  "¤": <ore:gearAluminium>,         # Aluminium Gear
});

# [Battery Upgrade (Tier 3)] from [Tiny Transistor][+2]
recipes.removeByRecipeName("opencomputers:upgrade97");
craft.make(<opencomputers:upgrade:3>, ["pretty",
  "□ : □",
  "m : m",
  "□ : □"], {
  "□": <ore:lightPlateAluminium>,   # Light Aluminium Plate
  ":": <ore:oc:capacitor>,          # Capacitor
  "m": <ore:oc:materialTransistor>, # Tiny Transistor
});

# [Chunkloader Upgrade] from [Eye of Ender][+4]
recipes.removeByRecipeName("opencomputers:upgrade98");
craft.make(<opencomputers:upgrade:4>, ["pretty",
  "□ T □",
  ": ◊ :",
  "□ m □"], {
  "□": <ore:lightPlateRoseGold>,                # Light Rose Gold Plate
  "T": <gregtech:transparent_casing>,           # Tempered Glass
  ":": <ore:oc:circuitChip3>,                   # Microchip (Tier 3)
  "◊": <ore:gemEnderEye>,                       # Eye of Ender
  "m": <ore:oc:materialCircuitBoardPrinted>,    # Printed Circuit Board (PCB)
});

# [Card Container (Tier 1)] from [Chest][+4]
recipes.removeByRecipeName("opencomputers:upgrade99");
craft.make(<opencomputers:upgrade:5>, ["pretty",
  "□ i □",
  "A c A",
  "□ : □"], {
  "□": <ore:lightPlateIron>,          # Light Iron Plate
  "i": <ore:oc:circuitChip1>,         # Microchip (Tier 1)
  "A": <ore:springAluminium>,         # Aluminium Spring
  "c": <ore:chestWood>,               # Chest
  ":": <ore:oc:materialCard>,         # Card Base
});

# [Card Container (Tier 2)] from [Chest][+4]
recipes.removeByRecipeName("opencomputers:upgrade100");
craft.make(<opencomputers:upgrade:6>, ["pretty",
  "□ : □",
  "A c A",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,     # Light Aluminium Plate
  ":": <ore:oc:circuitChip2>,         # Microchip (Tier 2)
  "A": <ore:springRoseGold>,          # Rose Gold Spring
  "c": <ore:chestWood>,               # Chest
  "m": <ore:oc:materialCard>,         # Card Base
});

# [Card Container (Tier 3)] from [Chest][+4]
recipes.removeByRecipeName("opencomputers:upgrade101");
craft.make(<opencomputers:upgrade:7>, ["pretty",
  "□ i □",
  "A c A",
  "□ : □"], {
  "□": <ore:lightPlateAluminium>,     # Light Aluminium Plate
  "i": <ore:oc:circuitChip3>,         # Microchip (Tier 3)
  "A": <ore:springStainlessSteel>,    # Stainless Steel Spring
  "c": <ore:chestWood>,               # Chest
  ":": <ore:oc:materialCard>,         # Card Base
});

# [Upgrade Container (Tier 1)] from [Wooden Box][+4]
recipes.removeByRecipeName("opencomputers:upgrade102");
craft.make(<opencomputers:upgrade:8>, ["pretty",
  "□ c □",
  "A W A",
  "□ : □"], {
  "□": <ore:lightPlateIron>,                 # Light Iron Plate
  "c": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "A": <ore:springAluminium>,                # Aluminium Spring
  "W": <magneticraft:box>,                   # Wooden Box
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Upgrade Container (Tier 2)] from [Wooden Box][+4]
recipes.removeByRecipeName("opencomputers:upgrade103");
craft.make(<opencomputers:upgrade:9>, ["pretty",
  "□ c □",
  "A W A",
  "□ : □"], {
  "□": <ore:lightPlateAluminium>,            # Light Aluminium Plate
  "c": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "A": <ore:springRoseGold>,                # Aluminium Spring
  "W": <magneticraft:box>,                   # Wooden Box
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Upgrade Container (Tier 3)] from [Wooden Box][+4]
recipes.removeByRecipeName("opencomputers:upgrade104");
craft.make(<opencomputers:upgrade:10>, ["pretty",
  "□ c □",
  "A W A",
  "□ : □"], {
  "□": <ore:lightPlateAluminium>,            # Light Aluminium Plate
  "c": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "A": <ore:springStainlessSteel>,           # Stainless Steel Spring
  "W": <magneticraft:box>,                   # Wooden Box
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Crafting Upgrade] from [Compressed Crafting Table][+4]
recipes.removeByRecipeName("opencomputers:upgrade105");
craft.make(<opencomputers:upgrade:11>, ["pretty",
  "□ M □",
  ": C :",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,            # Light Aluminium Plate
  "M": <gregtech:meta_item_1:128>,           # MV Electric Motor
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "C": <avaritia:compressed_crafting_table>, # Compressed Crafting Table
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Database Upgrade (Tier 1)] from [Hard Disk Drive (Tier 1) (1MB)][+4]
recipes.removeByRecipeName("opencomputers:upgrade106");
craft.make(<opencomputers:upgrade:12>, ["pretty",
  "□ a □",
  ": h :",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,            # Light Aluminium Plate
  "a": <ore:oc:analyzer>,                    # Analyzer
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "h": <ore:oc:hdd1>,                        # Hard Disk Drive (Tier 1) (1MB)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Database Upgrade (Tier 2)] from [Hard Disk Drive (Tier 2) (2MB)][+4]
recipes.removeByRecipeName("opencomputers:upgrade107");
craft.make(<opencomputers:upgrade:13>, ["pretty",
  "□ a □",
  ": h :",
  "□ m □"], {
  "□": <ore:lightPlateRoseGold>,             # Light Rose Gold Plate
  "a": <ore:oc:analyzer>,                    # Analyzer
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "h": <ore:oc:hdd2>,                        # Hard Disk Drive (Tier 2) (2MB)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Database Upgrade (Tier 3)] from [Hard Disk Drive (Tier 3) (4MB)][+4]
recipes.removeByRecipeName("opencomputers:upgrade108");
craft.make(<opencomputers:upgrade:14>, ["pretty",
  "□ a □",
  ": h :",
  "□ m □"], {
  "□": <ore:lightPlateStainlessSteel>,       # Light Stainless Steel Plate
  "a": <ore:oc:analyzer>,                    # Analyzer
  ":": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "h": <ore:oc:hdd3>,                        # Hard Disk Drive (Tier 3) (4MB)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Experience Upgrade] from [Experience Imbue][+4]
recipes.removeByRecipeName("opencomputers:upgrade109");
craft.make(<opencomputers:upgrade:15>, ["pretty",
  "□ a □",
  ": E :",
  "□ m □"], {
  "□": <ore:plateAluminium>,                 # Aluminium Plate
  "a": <ore:oc:analyzer>,                    # Analyzer
  ":": <ore:oc:circuitChip3>,                # Microchip (Tier 3)
  "E": <randomthings:imbue:2>,               # Experience Imbue
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Generator Upgrade] from [Stirling Generator][+4]
recipes.removeByRecipeName("opencomputers:upgrade110");
craft.make(<opencomputers:upgrade:16>, ["pretty",
  "□ M □",
  ": S :",
  "m □ m"], {
  "□": <ore:plateAluminium>,                 # Aluminium Plate
  "M": <gregtech:meta_item_1:173>,           # MV Electric Piston
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "S": <enderio:block_stirling_generator>,   # Stirling Generator
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Inventory Upgrade] from [Chest][+5]
recipes.removeByRecipeName("opencomputers:upgrade111");
craft.make(<opencomputers:upgrade:17>, ["pretty",
  "□ h □",
  "D c M",
  "□ : □"], {
  "□": <ore:plateAluminium>,             # Aluminium Plate
  "h": <ore:hopper> | <ore:blockHopper>, # Hopper
  "D": <minecraft:dispenser>,            # Dispenser
  "c": <ore:chestWood>,                  # Chest
  "M": <gregtech:meta_item_1:173>,       # MV Electric Piston
  ":": <ore:oc:circuitChip1>,            # Microchip (Tier 1)
});

# [Inventory Controller Upgrade] from [Inventory Upgrade][+4]
recipes.removeByRecipeName("opencomputers:upgrade112");
craft.make(<opencomputers:upgrade:18>, ["pretty",
  "□ D □",
  ": i :",
  "□ m □"], {
  "□": <ore:plateRoseGold>,                  # Rose Gold Plate
  "D": <minecraft:dispenser>,                # Dispenser
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "i": <ore:oc:inventoryUpgrade>,            # Inventory Upgrade
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Navigation Upgrade] from [Empty Map][+3]
recipes.removeByRecipeName("opencomputers:upgrade113");
recipes.removeByRecipeName("opencomputers:upgrade136");
craft.make(<opencomputers:upgrade:19>, ["pretty",
  "□ C □",
  ": M :",
  "□ C □"], {
  "□": <ore:plateRoseGold>,   # Rose Gold Plate
  "C": <minecraft:compass>,   # Compass
  ":": <ore:oc:circuitChip3>, # Microchip (Tier 3)
  "M": <ore:paperMap>,        # Empty Map
});

# [Piston Upgrade] from [Microchip (Tier 1)][+4]
recipes.removeByRecipeName("opencomputers:upgrade114");
craft.make(<opencomputers:upgrade:20>, ["pretty",
  "□ M □",
  "S : S",
  "□ m □"], {
  "□": <ore:plateAluminium>,                 # Aluminium Plate
  "M": <gregtech:meta_item_1:173>,           # MV Electric Piston
  "S": <ore:springSteel>,                    # Steel Spring
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Sign I/O Upgrade] from [Wooden Sign Plate][+4]
recipes.removeByRecipeName("opencomputers:upgrade115");
craft.make(<opencomputers:upgrade:21>, ["pretty",
  "□ I □",
  ": п :",
  "□ M □"], {
  "□": <ore:plateAluminium>,          # Aluminium Plate
  "I": <contenttweaker:ink_dropplet>, # Ink Dropplet
  ":": <ore:oc:circuitChip1>,         # Microchip (Tier 1)
  "п": <tconstruct:sign_head>.withTag({Material: "wood"}), # Wooden Sign Plate
  "M": <gregtech:meta_item_1:173>,    # MV Electric Piston
});

# [Solar Generator Upgrade] from [Generator Upgrade][+2]
recipes.removeByRecipeName("opencomputers:upgrade116");
craft.make(<opencomputers:upgrade:22>, ["pretty",
  "     ",
  "□ □ □",
  ": g :"], {
  "□": <ore:itemPlatePhotovoltaic>, # Photovoltaic Plate
  ":": <ore:oc:circuitChip3>,       # Microchip (Tier 3)
  "g": <ore:oc:generatorUpgrade>,   # Generator Upgrade
});

# [Tank Upgrade] from [Basic Fluid Tank][+5]
recipes.removeByRecipeName("opencomputers:upgrade117");
craft.make(<opencomputers:upgrade:23>, ["pretty",
  "□ N □",
  "D B M",
  "□ : □"], {
  "□": <ore:plateAluminium>,       # Aluminium Plate
  "N": <ore:pipeNormalFluidSteel>, # Steel Fluid Pipe
  "D": <minecraft:dispenser>,      # Dispenser
  "B": <mekanism:machineblock2:11>.withTag({tier: 0}), # Basic Fluid Tank
  "M": <gregtech:meta_item_1:143>, # MV Electric Pump
  ":": <ore:oc:circuitChip1>,      # Microchip (Tier 1)
});

# [Tank Controller Upgrade] from [Basic Fluid Tank][+5]
recipes.removeByRecipeName("opencomputers:upgrade118");
craft.make(<opencomputers:upgrade:24>, ["pretty",
  "□ c □",
  "D B M",
  "□ : □"], {
  "□": <ore:plateAluminium>,                 # Aluminium Plate
  "c": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "D": <minecraft:dispenser>,                # Dispenser
  "B": <mekanism:machineblock2:11>.withTag({tier: 0}), # Basic Fluid Tank
  "M": <gregtech:meta_item_1:248>,           # MV Fluid Regulator
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Tractor Beam Upgrade] from [Ring of Magnetizing][+3]
recipes.removeByRecipeName("opencomputers:upgrade119");
craft.make(<opencomputers:upgrade:25>, ["pretty",
  "M   M",
  "M R M",
  "□ : □"], {
  "M": <magneticraft:crafting:4>,             # Magnetic Bronze
  "R": <actuallyadditions:item_suction_ring>, # Ring of Magnetizing
  "□": <ore:lightPlateAluminium>,             # Light Aluminium Plate
  ":": <ore:oc:circuitChip3>,                 # Microchip (Tier 3)
});

# [Leash Upgrade] from [Control Unit (CU)][+2]
recipes.removeByRecipeName("opencomputers:upgrade120");
craft.make(<opencomputers:upgrade:26>, ["pretty",
  "□ L □",
  "L : L",
  "□ L □"], {
  "□": <ore:plateAluminium>, # Aluminium Plate
  "L": <minecraft:lead>,     # Lead
  ":": <ore:oc:materialCU>,  # Control Unit (CU)
});

# [Hover Upgrade (Tier 1)] from [Power Thruster][+4]
recipes.removeByRecipeName("opencomputers:upgrade121");
craft.make(<opencomputers:upgrade:27>, ["pretty",
  "f : f",
  "S Σ S",
  "f m f"], {
  "f": <ore:feather>,                        # Eagle Feather
  ":": <ore:oc:circuitChip1>,                # Microchip (Tier 1)
  "S": <ore:springSmallAluminium>,           # Small Aluminium Spring
  "Σ": <gregtech:meta_item_1:776>,           # Power Thruster
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Hover Upgrade (Tier 2)] from [Power Thruster][+4]
recipes.removeByRecipeName("opencomputers:upgrade122");
craft.make(<opencomputers:upgrade:28>, ["pretty",
  "f c f",
  "S Σ S",
  "f : f"], {
  "f": <ore:feather>,                        # Eagle Feather
  "c": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "S": <ore:springSmallRoseGold>,            # Small Rose Gold Spring
  "Σ": <gregtech:meta_item_1:776>,           # Power Thruster
  ":": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
});

# [Trading Upgrade] from [Wooden Box][+5]
recipes.removeByRecipeName("opencomputers:upgrade123");
craft.make(<opencomputers:upgrade:29>, ["pretty",
  ": W :",
  "◊ : ◊",
  "D m M"], {
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "W": <magneticraft:box>,                   # Wooden Box
  "◊": <ore:gemEmerald>,                     # Emerald
  "D": <minecraft:dropper>,                  # Dropper
  "m": <ore:oc:materialCircuitBoardPrinted>, # Printed Circuit Board (PCB)
  "M": <gregtech:meta_item_1:173>,           # MV Electric Piston
});

# [Wireless Network Card]
recipes.remove(<opencomputers:upgrade:31>);
assembler.recipeBuilder()
	.inputs(<opencomputers:card:6>, <opencomputers:material:7>, <ore:blockRedstoneAlloy>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:upgrade:31>)
	.duration(300)
	.EUt(60)
.buildAndRegister();

# [HD Tier 1]
recipes.removeByRecipeName("opencomputers:storage129");
assembler.recipeBuilder()
	.inputs(<opencomputers:material:4>, <opencomputers:material:7>*2, <opencomputers:material:12>*3, <ore:plateAluminium>*2, <gregtech:meta_item_1:128>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:storage:2>)
	.duration(200)
	.EUt(32)
.buildAndRegister();

# [HD Tier 2]
recipes.removeByRecipeName("opencomputers:storage130");
assembler.recipeBuilder()
	.inputs(<opencomputers:storage:2>*2, <opencomputers:material:8>*2, <ore:plateRoseGold>*2, <opencomputers:material:4>)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:storage:3>)
	.duration(250)
	.EUt(40)
.buildAndRegister();

# [HD Tier 3]
recipes.removeByRecipeName("opencomputers:storage131");
assembler.recipeBuilder()
	.inputs(<opencomputers:storage:3>*2, <opencomputers:material:9>*2, <ore:plateStainlessSteel>*2, <opencomputers:material:4>, <opencomputers:component:6>*2)
  .fluidInputs(<liquid:soldering_alloy>*72)
	.outputs(<opencomputers:storage:4>)
	.duration(300)
	.EUt(80)
.buildAndRegister();

# [Floppy Disk] from [Disk Platter][+4]
recipes.removeByRecipeName("opencomputers:storage128");
craft.make(<opencomputers:storage:1>, ["pretty",
  "□ L □",
  ": m :",
  "□ E □"], {
  "□": <ore:plateAluminium>,                # Aluminium Plate
  "L": <minecraft:lever>,                   # Lever
  ":": <ore:oc:materialCircuitBoard>,       # Circuit Board
  "m": <ore:oc:materialDisk>,               # Disk Platter
  "E": <projectred-core:resource_item:342>, # Electro Silicon
});
