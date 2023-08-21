import mods.nuclearcraft.AlloyFurnace as AlloyFurnace;

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
