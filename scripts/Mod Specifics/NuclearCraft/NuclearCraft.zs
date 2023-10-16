import mods.nuclearcraft.AlloyFurnace as AlloyFurnace;
import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;

# Chassis ============================

// Radiation-Proof HSLA Steel Chassis
<nuclearcraft:part:10>.displayName = "Radiation-Proof HSLA Steel Chassis";
recipes.remove(<nuclearcraft:part:10>);

assembler.recipeBuilder()
	.inputs(<thermalexpansion:frame:129>, <ore:springTough>*2, <ore:screwTough>*4)
	.fluidInputs(<liquid:modularium>*1152)
    .circuit(8)
    .outputs(<nuclearcraft:part:10>)
	.duration(280)
	.EUt(256)
.buildAndRegister();

// Radiation-Proof Enderium Chassis
<nuclearcraft:part:12>.displayName = "Radiation-Proof Enderium Chassis";
recipes.remove(<nuclearcraft:part:12>);

assembler.recipeBuilder()
	.inputs(<thermalexpansion:frame:132>, <ore:springHardCarbon>*2, <ore:screwHardCarbon>*4)
	.fluidInputs(<liquid:molten.niobium_titanium>*1152)
    .circuit(8)
    .outputs(<nuclearcraft:part:12>)
	.duration(280)
	.EUt(800)
.buildAndRegister();

// Basic Plating
	recipes.remove(<nuclearcraft:part>);
	recipes.addShapedMirrored("Basic Plating", 
	<nuclearcraft:part> * 4, 
	[[<ore:plateTough>, <ore:casingLead>, <ore:plateTough>],
	[<ore:casingLead>, <ore:plateDoubleAdvancedAlloy>, <ore:casingLead>], 
	[<ore:plateTough>, <ore:casingLead>, <ore:plateTough>]]);

// Copper Solenoid
	recipes.remove(<nuclearcraft:part:4>);
	recipes.addShapedMirrored("Copper Solenoid", 
	<nuclearcraft:part:4> * 4, 
	[[<ore:plateCopper>, <ore:casingCopper>, <ore:plateCopper>],
	[<ore:stickTough>, <ore:plateAdvancedAlloy>, <ore:stickTough>], 
	[<ore:plateCopper>, <ore:casingCopper>, <ore:plateCopper>]]);

# [Cobblestone Generator] from [NAND Chip][+4]
recipes.removeByRecipeName("nuclearcraft:cobblestone_generator");
recipes.removeByRecipeName("nuclearcraft:cobblestone_generator_1");
craft.make(<nuclearcraft:cobblestone_generator>, ["pretty",
  "□ R □",
  "~ U A",
  "□ R □"], {
  "□": <ore:lightPlateSteel>,   # Light Steel Plate
  "R": <pyrotech:material:5>,   # Refractory Brick
  "~": <minecraft:lava_bucket>, # Lava Bucket
  "U": <ore:circuitUlv>,        # NAND Chip
  "A": <minecraft:water_bucket>,      # Water Bucket
});

# [Cobblestone Generator]*2 from [NAND Chip][+4]
craft.remake(<nuclearcraft:cobblestone_generator> * 2, ["pretty",
  "□ B □",
  "~ U A",
  "□ B □"], {
  "□": <ore:lightPlateSteel>,      # Light Steel Plate
  "B": <forestry:bituminous_peat>, # Bituminous Peat
  "~": <minecraft:lava_bucket>,    # Lava Bucket
  "U": <ore:circuitUlv>,           # NAND Chip
  "A": <minecraft:water_bucket>,         # Water Bucket
});

# [Compact Cobblestone Generator] from [Integrated Logic Circuit][+4]
recipes.removeByRecipeName("nuclearcraft:cobblestone_generator_compact");
craft.make(<nuclearcraft:cobblestone_generator_compact>, ["pretty",
  "□ ▬ □",
  "~ L A",
  "□ ▬ □"], {
  "□": <ore:lightPlateAluminium>, # Light Aluminium Plate
  "▬": <ore:ingotCobaltBrass>,    # Cobalt Brass Ingot
  "~": <minecraft:lava_bucket>,   # Lava Bucket
  "L": <ore:circuitLv>,           # Integrated Logic Circuit
  "A": <minecraft:water_bucket>,        # Water Bucket
});

# [Compact Cobblestone Generator]*2 from [Integrated Logic Circuit][+4]
craft.remake(<nuclearcraft:cobblestone_generator_compact> * 2, ["pretty",
  "□ ▬ □",
  "~ L A",
  "□ ▬ □"], {
  "□": <ore:lightPlateAluminium>, # Light Aluminium Plate
  "▬": <ore:ingotHoneySteel>,     # Honey-Steel Ingot
  "~": <minecraft:lava_bucket>,   # Lava Bucket
  "L": <ore:circuitLv>,           # Integrated Logic Circuit
  "A": <minecraft:water_bucket>,        # Water Bucket
});

# [Dense Cobblestone Generator] from [Good Integrated Circuit][+4]
recipes.removeByRecipeName("nuclearcraft:cobblestone_generator_dense");
craft.make(<nuclearcraft:cobblestone_generator_dense>, ["pretty",
  "□ ▬ □",
  "~ M A",
  "□ ▬ □"], {
  "□": <ore:lightPlateChrome>,   # Light Chrome Plate
  "▬": <ore:ingotPulsatingIron>, # Pulsating Iron Ingot
  "~": <minecraft:lava_bucket>,  # Lava Bucket
  "M": <ore:circuitMv>,          # Good Integrated Circuit
  "A": <minecraft:water_bucket>,       # Water Bucket
});

# [Dense Cobblestone Generator]*2 from [Good Integrated Circuit][+4]
craft.remake(<nuclearcraft:cobblestone_generator_dense> * 2, ["pretty",
  "□ P □",
  "~ M A",
  "□ P □"], {
  "□": <ore:lightPlateChrome>,         # Light Chrome Plate
  "P": <forestry:crafting_material:1>, # Pulsating Mesh
  "~": <minecraft:lava_bucket>,        # Lava Bucket
  "M": <ore:circuitMv>,                # Good Integrated Circuit
  "A": <minecraft:water_bucket>,             # Water Bucket
});


# [Infinite Water Source] from [Aluminium Ingot][+2]
recipes.removeByRecipeName("nuclearcraft:water_source");
craft.make(<nuclearcraft:water_source>, ["pretty",
  "□ ▬ □",
  "E   E",
  "□ ▬ □"], {
  "□": <ore:plateDarkSteel>,      # Dark Steel Plate
  "▬": <ore:ingotAluminium>,      # Aluminium Ingot
  "E": <enderio:block_reservoir>, # Endervoir
});

# [Compact Infinite Water Source] from [Stainless Steel Ingot][+2]
recipes.removeByRecipeName("nuclearcraft:water_source_compact");
craft.make(<nuclearcraft:water_source_compact>, ["pretty",
  "□ ▬ □",
  "I   I",
  "□ ▬ □"], {
  "□": <ore:plateDarkSteel>,        # Dark Steel Plate
  "▬": <ore:ingotStainlessSteel>,   # Stainless Steel Ingot
  "I": <nuclearcraft:water_source>, # Infinite Water Source
});

# [Dense Infinite Water Source] from [Cobalt Steel Ingot][+2]
recipes.removeByRecipeName("nuclearcraft:water_source_dense");
craft.make(<nuclearcraft:water_source_dense>, ["pretty",
  "□ ▬ □",
  "C   C",
  "□ ▬ □"], {
  "□": <ore:plateDarkSteel>,                # Dark Steel Plate
  "▬": <ore:ingotCobaltSteel>,              # Cobalt Steel Ingot
  "C": <nuclearcraft:water_source_compact>, # Compact Infinite Water Source
});

# Tough Alloy Recipe
mixer.recipeBuilder()
	.inputs(<ore:dustLiquifiedCoralium>, <ore:dustDarkSteel>)
  .outputs(<ore:dustTough>.firstItem*2)
	.duration(700)
	.EUt(150)
.buildAndRegister();

# [Alloy Furnace] from [Ender Furnace][+4]
recipes.removeByRecipeName("nuclearcraft:alloy_furnace");
craft.make(<nuclearcraft:alloy_furnace>, ["pretty",
  "□ v □",
  "G E G",
  "□ C □"], {
  "□": <ore:plateBasic>,              # Basic Plating
  "v": <ore:circuitEv>,               # Nanoprocessor Assembly
  "G": <ore:wireGtQuadrupleNichrome>, # 4x Nichrome Wire
  "E": <enderutilities:machine_0>,    # Ender Furnace
  "C": <ore:solenoidCopper>,          # Copper Solenoid
});

# [Servomechanism] from [Fine Annealed Copper Wire][+4]
recipes.removeByRecipeName("nuclearcraft:part_7");
craft.make(<nuclearcraft:part:7>, ["pretty",
  "F F F",
  "□ □ □",
  "i E п"], {
  "F": <ore:boltFerroboron>,         # Ferroboron Bolt
  "□": <ore:plateSteel>,             # Steel Plate
  "i": <ore:wireFineAnnealedCopper>, # Fine Annealed Copper Wire
  "E": <gregtech:meta_item_1:175>,   # EV Electric Piston
  "п": <ore:plateFerroboron>,        # Ferroboron Plate
});

# [Electric Motor] from [EV Electric Motor][+3]
recipes.removeByRecipeName("nuclearcraft:part_8");
craft.make(<nuclearcraft:part:8>, ["pretty",
  "□ □ R",
  "C C E",
  "□ □ R"], {
  "□": <ore:plateSteel>,           # Steel Plate
  "R": <ore:boltRoseGold>,         # Rose Gold Bolt
  "C": <ore:solenoidCopper>,       # Copper Solenoid
  "E": <gregtech:meta_item_1:130>, # EV Electric Motor
});

# [Linear Actuator] from [EV Electric Piston][+4]
recipes.removeByRecipeName("nuclearcraft:part_9");
craft.make(<nuclearcraft:part:9>, ["pretty",
  "F   п",
  "□ E  ",
  "P □ F"], {
  "F": <ore:wireFineAnnealedCopper>, # Fine Annealed Copper Wire
  "п": <ore:plateSteel>,             # Steel Plate
  "□": <ore:plateFerroboron>,        # Ferroboron Plate
  "E": <gregtech:meta_item_1:175>,   # EV Electric Piston
  "P": <ore:lightPlateFerroboron>,   # Light Ferroboron Plate
});

# [Manufactory] from [Servomechanism][+4]
recipes.removeByRecipeName("nuclearcraft:manufactory");
craft.make(<nuclearcraft:manufactory>, ["pretty",
  "□ E □",
  "п s п",
  "□ C □"], {
  "□": <ore:plateBasic>,     # Basic Plating
  "E": <ore:circuitEv>,      # Workstation
  "п": <tconstruct:large_plate>.withTag({Material: "flint"}), # Flint Large Plate
  "s": <ore:servo>,          # Servomechanism
  "C": <ore:solenoidCopper>, # Copper Solenoid
});

# [Speed Upgrade]*2 from [Speed Upgrade][+3]
recipes.removeByRecipeName("nuclearcraft:upgrade");
craft.make(<nuclearcraft:upgrade> * 2, ["pretty",
  "b □ b",
  "L S L",
  "b □ b"], {
  "b": <ore:bioplastic>,               # Bioplastic
  "□": <ore:plateLapis>,               # Lapis Plate
  "L": <forestry:thermionic_tubes:11>, # Lapis Electron Tube
  "S": <mekanism:speedupgrade>,        # Speed Upgrade
});

# [Energy Upgrade]*2 from [Energy Upgrade][+3]
recipes.removeByRecipeName("nuclearcraft:upgrade_1");
recipes.removeByRecipeName("nuclearcraft:upgrade_2");
craft.make(<nuclearcraft:upgrade:1> * 2, ["pretty",
  "b □ b",
  "G Ϟ G",
  "b □ b"], {
  "b": <ore:bioplastic>,              # Bioplastic
  "□": <ore:plateGold>,               # Gold Plate
  "G": <forestry:thermionic_tubes:4>, # Golden Electron Tube
  "Ϟ": <mekanism:energyupgrade>,      # Energy Upgrade
});

# [Portable Ender Chest] from [Ender Chest][+7]
recipes.remove(<nuclearcraft:portable_ender_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "nuclearcraft:portable_ender_chest", # Name
  "BASEARTIFICE", # Research
  50, # Vis cost
  [<aspect:aer> * 10, <aspect:terra> * 10, <aspect:perditio> * 10, ],
  <nuclearcraft:portable_ender_chest>, # Output
  Grid(["pretty",
  "T § T",
  "B c B",
  "T B T"], {
  "T": <ore:foilThaumium>,              # Thaumium Foil
  "§": <contenttweaker:endermansheart>, # Enderman's Heart
  "B": <quark:quilted_wool:15>,         # Black Quilted Wool
  "c": <ore:chestEnder>,                # Ender Chest
}).shaped());

# [Advanced Plating]*4 from [Double Signalum Plate][+2]
craft.make(<nuclearcraft:part:1> * 4, ["pretty",
  "□ ⌂ □",
  "⌂ п ⌂",
  "□ ⌂ □"], {
  "□": <ore:plateBasic>,          # Basic Plating
  "⌂": <ore:casingFerroboron>,    # Ferroboron Casing
  "п": <ore:plateDoubleSignalum>, # Double Signalum Plate
});

# [DU Plating]*4 from [HDPE Large Plate][+2]
craft.make(<nuclearcraft:part:2> * 4, ["pretty",
  "□ ▬ □",
  "▬ п ▬",
  "□ ▬ □"], {
  "□": <ore:plateAdvanced>, # Advanced Plating
  "▬": <ore:ingotUranium238All> | <ore:ingotUranium238ZA>, # Uranium-238-Zirconium Alloy
  "п": <tconstruct:large_plate>.withTag({Material: "polyethylene"}), # HDPE Large Plate
});

# [Elite Plating] from [DU Plating][+3]
craft.make(<nuclearcraft:part:3>, ["pretty",
  "* □ *",
  "▬ п ▬",
  "* □ *"], {
  "*": <ore:dustCrystalBinder>,           # Crystal Binder
  "□": <ore:lightPlateMagnesiumDiboride>, # Light Magnesium Diboride Plate
  "▬": <ore:ingotThermoconducting>,       # Thermoconducting Alloy Ingot
  "п": <ore:plateDU>,                     # DU Plating
});

# [Rock Crusher] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:rock_crusher");
craft.make(<nuclearcraft:rock_crusher>, ["pretty",
  "□ E □",
  "a c a",
  "□ m □"], {
  "□": <ore:plateAdvanced>, # Advanced Plating
  "E": <ore:circuitEv>,     # Quantumprocessor
  "a": <ore:actuator>,      # Linear Actuator
  "c": <ore:chassis>,       # Radiation-Proof HSLA Steel Chassis
  "m": <ore:motor>,         # Electric Motor
});

# [Pressurizer] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:pressurizer");
craft.make(<nuclearcraft:pressurizer>, ["pretty",
  "□ E □",
  "a c a",
  "□ п □"], {
  "□": <ore:plateAdvanced>,   # Advanced Plating
  "E": <ore:circuitEv>,       # Quantumprocessor
  "a": <ore:actuator>,        # Linear Actuator
  "c": <ore:chassis>,         # Radiation-Proof HSLA Steel Chassis
  "п": <ore:heavyPlateTough>, # Heavy Tough Alloy Plate
});

# [Separator] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:separator");
craft.make(<nuclearcraft:separator>, ["pretty",
  "□ b □",
  "E c E",
  "□ m □"], {
  "□": <ore:plateAdvanced>, # Advanced Plating
  "b": <ore:bioplastic>,    # Bioplastic
  "E": <ore:circuitEv>,     # Workstation
  "c": <ore:chassis>,       # Radiation-Proof HSLA Steel Chassis
  "m": <ore:motor>,         # Electric Motor
});

# [Hazmat Suit Headwear] from [Carbon Fiber Helmet Core][+4]
recipes.remove(<nuclearcraft:helm_hazmat>);
craft.make(<nuclearcraft:helm_hazmat>, ["pretty",
  "Y M Y",
  "H C H",
  "b   b"], {
  "Y": <extrabees:honey_drop:14>,        # Yellow Tinted Honey
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "H": <nuclearcraft:rad_shielding:2>,   # Heavy Radiation Shielding
  "C": <conarm:helmet_core>.withTag({Material: "carbon_fiber"}), # Carbon Fiber Helmet Core
  "b": <ore:bioplastic>,                 # Bioplastic
});

# [Hazmat Suit Chestpiece] from [Carbon Fiber Chestplate Core][+3]
recipes.remove(<nuclearcraft:chest_hazmat>);
craft.make(<nuclearcraft:chest_hazmat>, ["pretty",
  "M H M",
  "Y C Y",
  "H M H"], {
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "H": <nuclearcraft:rad_shielding:2>,   # Heavy Radiation Shielding
  "Y": <extrabees:honey_drop:14>,        # Yellow Tinted Honey
  "C": <conarm:chest_core>.withTag({Material: "carbon_fiber"}), # Carbon Fiber Chestplate Core
});

# [Hazmat Suit Leggings] from [Carbon Fiber Leggings Core][+4]
recipes.remove(<nuclearcraft:legs_hazmat>);
craft.make(<nuclearcraft:legs_hazmat>, ["pretty",
  "Y b Y",
  "H C H",
  "M   M"], {
  "Y": <extrabees:honey_drop:14>,        # Yellow Tinted Honey
  "b": <ore:bioplastic>,                 # Bioplastic
  "H": <nuclearcraft:rad_shielding:2>,   # Heavy Radiation Shielding
  "C": <conarm:leggings_core>.withTag({Material: "carbon_fiber"}), # Carbon Fiber Leggings Core
  "M": <contenttweaker:magical_leather>, # Magical Leather
});

# [Hazmat Suit Boots] from [Black Tinted Honey][+3]
recipes.remove(<nuclearcraft:boots_hazmat>);
craft.make(<nuclearcraft:boots_hazmat>, ["pretty",
  "     ",
  "H B H",
  "b C b"], {
  "H": <nuclearcraft:rad_shielding:2>, # Heavy Radiation Shielding
  "B": <extrabees:honey_drop:17>,      # Black Tinted Honey
  "b": <ore:bioplastic>,               # Bioplastic
  "C": <conarm:boots_core>.withTag({Material: "carbon_fiber"}), # Carbon Fiber Boots Core
});

# [Light Radiation Shielding]*2 from [Compressed Carbon][+2]
recipes.removeByRecipeName("nuclearcraft:rad_shielding");
craft.make(<nuclearcraft:rad_shielding> * 2, ["pretty",
  "I I I",
  "C C C",
  "L L L"], {
  "I": <contenttweaker:ie_iron_sheetmetal>, # Iron Sheetmetal
  "C": <ore:itemCompressedCarbon>,          # Compressed Carbon
  "L": <contenttweaker:ie_lead_sheetmetal>, # Lead Sheetmetal
});

# [Medium Radiation Shielding]*2 from [Carbon Fiber Plate][+3]
recipes.removeByRecipeName("nuclearcraft:rad_shielding_1");
craft.make(<nuclearcraft:rad_shielding:1> * 2, ["pretty",
  "b b b",
  "L п L",
  "□ □ □"], {
  "b": <ore:bioplastic>,             # Bioplastic
  "L": <nuclearcraft:rad_shielding>, # Light Radiation Shielding
  "п": <gregtech:meta_item_1:501>,   # Carbon Fiber Plate
  "□": <ore:plateBasic>,             # Basic Plating
});

# [Heavy Radiation Shielding]*2 from [Light Hard Carbon Plate][+3]
recipes.removeByRecipeName("nuclearcraft:rad_shielding_2");
craft.make(<nuclearcraft:rad_shielding:2> * 2, ["pretty",
  "п п п",
  "M P M",
  "□ □ □"], {
  "п": <ore:plateBeryllium>,           # Beryllium Plate
  "M": <nuclearcraft:rad_shielding:1>, # Medium Radiation Shielding
  "P": <ore:lightPlateHardCarbon>,     # Light Hard Carbon Plate
  "□": <ore:plateDU>,                  # DU Plating
});

# [Ingot Former] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:ingot_former");
craft.make(<nuclearcraft:ingot_former>, ["pretty",
  "□ E □",
  "◊ c ◊",
  "□ V □"], {
  "□": <ore:plateBasic>,           # Basic Plating
  "E": <ore:circuitEv>,            # Workstation
  "◊": <ore:gemRhodochrosite>,     # Rhodochrosite
  "c": <ore:chassis>,              # Radiation-Proof HSLA Steel Chassis
  "V": <gregtech:meta_item_1:145>, # EV Electric Pump
});

# [Fluid Infuser] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:infuser");
craft.make(<nuclearcraft:infuser>, ["pretty",
  "□ V □",
  "E c E",
  "□ s □"], {
  "□": <ore:plateAdvanced>,        # Advanced Plating
  "E": <ore:gemFluorite>,          # Fluorite Gem
  "V": <ore:circuitEv>,            # Workstation
  "c": <ore:chassis>,              # Radiation-Proof HSLA Steel Chassis
  "s": <ore:servo>,                # Servomechanism
});

# [Fluid Enricher] from [Radiation-Proof HSLA Steel Chassis][+4]
recipes.removeByRecipeName("nuclearcraft:enricher");
craft.make(<nuclearcraft:enricher>, ["pretty",
  "□ ▲ □",
  "E c E",
  "□ m □"], {
  "□": <ore:plateAdvanced>, # Advanced Plating
  "▲": <ore:dustAlugentum>, # Alugentum Dust
  "E": <ore:circuitEv>,     # Workstation
  "c": <ore:chassis>,       # Radiation-Proof HSLA Steel Chassis
  "m": <ore:motor>,         # Electric Motor
});

# [Rad-X] from [RadAway][+4]
recipes.removeByRecipeName("nuclearcraft:rad_x");
craft.make(<nuclearcraft:rad_x>, ["pretty",
  "▲ ■ ▲",
  "b R b",
  "b ♠ b"], {
  "▲": <ore:dustEnergetic>,     # Energetic Blend
  "■": <mekanism:plasticblock>, # Black Plastic Block
  "b": <ore:bioplastic>,        # Bioplastic
  "R": <nuclearcraft:radaway>,  # RadAway
  "♠": <ore:dustBlaze>,         # Blaze Powder
});
