import mods.artisanworktables.builder.RecipeBuilder;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Embers Script                                                                                                                    //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Ember Material

//Grit out of Crystal
macerator.recipeBuilder()
    .inputs(<embers:crystal_ember>)
    .outputs(<embers:dust_ember>)
    .duration(150)
    .EUt(16)
.buildAndRegister();

//Fluid Ember out of Crystal
extractor.recipeBuilder()
    .inputs(<embers:crystal_ember>)
    .fluidOutputs(<liquid:ember>*144)
    .duration(242)
    .EUt(280)
.buildAndRegister();

//Fluid Ember out of Shard
extractor.recipeBuilder()
    .inputs(<embers:shard_ember>)
    .fluidOutputs(<liquid:ember>*24)
    .duration(121)
    .EUt(280)
.buildAndRegister();

//Fluid Ember out of Soulsand
extractor.recipeBuilder()
    .inputs(<ore:soulSand>)
    .fluidOutputs(<liquid:oil_soul>*250)
    .duration(100)
    .EUt(650)
.buildAndRegister();

//Caminite Brick
furnace.remove(<embers:brick_caminite>);

arc_furnace.recipeBuilder()
    .inputs(<embers:blend_caminite>)
    .fluidInputs(<liquid:beneath_gas> * 250)
    .outputs(<embers:brick_caminite>)
    .duration(200)
    .EUt(400)
.buildAndRegister();

//Caminite Bricks
recipes.removeByRecipeName("embers:block_caminite_brick");

compressor.recipeBuilder()
    .inputs(<embers:brick_caminite>*4)
    .outputs(<embers:block_caminite_brick>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Caminite Plate
furnace.remove(<embers:plate_caminite>);

arc_furnace.recipeBuilder()
    .inputs(<embers:plate_caminite_raw>)
    .fluidInputs(<liquid:beneath_gas> * 250)
    .outputs(<embers:plate_caminite>)
    .duration(200)
    .EUt(400)
.buildAndRegister();

//Caminite Stamp
furnace.remove(<embers:stamp_flat>);

arc_furnace.recipeBuilder()
    .inputs(<embers:stamp_flat_raw>)
    .fluidInputs(<liquid:beneath_gas> * 250)
    .outputs(<embers:stamp_flat>)
    .duration(200)
    .EUt(400)
.buildAndRegister();

//Caminite Stamp Plate
furnace.remove(<embers:stamp_plate>);

arc_furnace.recipeBuilder()
    .inputs(<embers:stamp_plate_raw>)
    .fluidInputs(<liquid:beneath_gas> * 250)
    .outputs(<embers:stamp_plate>)
    .duration(200)
    .EUt(400)
.buildAndRegister();

// Fluid Tank
recipes.remove(<embers:block_tank>);
recipes.addShaped(<embers:block_tank> * 1, [[<embers:brick_caminite>, null, <embers:brick_caminite>], [<ore:lightPlateIron>, null, <ore:lightPlateIron>],[<embers:brick_caminite>, <ore:lightPlateIron>, <embers:brick_caminite>]]);

// Reservoir
recipes.remove(<embers:large_tank>);
recipes.addShaped(<embers:large_tank> * 1, [[<embers:plate_caminite>, <embers:block_tank>, <embers:plate_caminite>], [<ore:heavyPlateIron>, null, <ore:heavyPlateIron>],[<embers:plate_caminite>, <embers:block_tank>, <embers:plate_caminite>]]);

// Mechanical Core
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core> * 1, [[<ore:plateStainlessSteel>, <ore:lightPlateLead>, <ore:plateStainlessSteel>], [<ore:lightPlateLead>, <ore:frameGtVibrantAlloy>, <ore:lightPlateLead>],[<ore:plateStainlessSteel>, <ore:lightPlateLead>, <ore:plateStainlessSteel>]]);

// Ember Bore
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore> * 1, [[<embers:plate_caminite>, <ore:gearStainlessSteel>, <embers:plate_caminite>], [<embers:plate_caminite>, <embers:mech_core>, <embers:plate_caminite>],[<ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>]]);

// Tinker's Lens
recipes.remove(<embers:tinker_lens>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateElectricalSteel>, <ore:screwLead>, <ore:foilLead>],
    [<ore:lightPlateLead>, <quark:framed_glass_pane>, <ore:foilLead>],
    [<ore:plateElectricalSteel>, <ore:screwLead>, <ore:foilLead>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<embers:tinker_lens>)
  .create();

//Ember Dial
recipes.remove(<embers:ember_gauge>);
forming.recipeBuilder()
    .inputs(<ore:plateDoubleCopper>, <minecraft:compass>, <ore:dustRedstone>, <embers:shard_ember>)
    .outputs(<embers:ember_gauge>)
    .duration(120)
    .EUt(200)
.buildAndRegister();

//Fluid Dial
recipes.remove(<embers:fluid_gauge>);
forming.recipeBuilder()
    .inputs(<ore:plateDoubleIron>, <minecraft:compass>, <ore:dustRedstone>, <embers:plate_caminite>)
    .outputs(<embers:fluid_gauge>)
    .duration(120)
    .EUt(200)
.buildAndRegister();

// Ember Activator
recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator> * 1, [[<ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>], [<ore:plateDoubleAnnealedCopper>, <magneticraft:crafting:3>, <ore:plateDoubleAnnealedCopper>],[<embers:plate_caminite>, <tconstruct:seared_furnace_controller:0>, <embers:plate_caminite>]]);

// Copper Cell
recipes.remove(<embers:copper_cell:0>);
recipes.addShaped(<embers:copper_cell:0> * 1, [[<embers:block_caminite_brick>, <ore:lightPlateCobaltBrass>, <embers:block_caminite_brick>], [<ore:lightPlateCobaltBrass>, <magneticraft:multiblock_parts:4>, <ore:lightPlateCobaltBrass>],[<embers:block_caminite_brick>, <ore:lightPlateCobaltBrass>, <embers:block_caminite_brick>]]);

// Ember Emitter
recipes.remove(<embers:ember_emitter>);
recipes.addShaped(<embers:ember_emitter> * 4, [[null, <magneticraft:crafting:3>, null], [<ore:plateSteel>, <magneticraft:crafting:3>, <ore:plateSteel>],[<ore:plateStainlessSteel>, <embers:plate_caminite>, <ore:plateStainlessSteel>]]);

// Ember Receptor
recipes.remove(<embers:ember_receiver>);
recipes.addShaped(<embers:ember_receiver> * 4, [[null, null, null], [<ore:stickSteelMagnetic>, <magneticraft:crafting:3>, <ore:stickSteelMagnetic>],[<ore:lightPlateStainlessSteel>, <embers:plate_caminite>, <ore:lightPlateStainlessSteel>]]);

// Tinker's Hammer
recipes.remove(<embers:tinker_hammer>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:lightPlateSteel>, <embers:crystal_ember>, <ore:lightPlateSteel>],
    [<ore:lightPlateSteel>, <tconstruct:tough_tool_rod>.withTag({Material: "wood"}), <ore:lightPlateSteel>],
    [null, <tconstruct:tough_tool_rod>.withTag({Material: "wood"}), null]])
  .setFluid(<liquid:black_steel> * 288)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<embers:tinker_hammer>)
  .create();

// Melter
recipes.remove(<embers:block_furnace>);
recipes.addShaped(<embers:block_furnace> * 1, [[<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>], [<embers:brick_caminite>, <ore:pipeHugeFluidStainlessSteel>, <embers:brick_caminite>],[<ore:lightPlateStainlessSteel>, <gregtech:machine:306>, <ore:lightPlateStainlessSteel>]]);

// Stamp Base
recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper_base> * 1, [[null, null, null], [<ore:lightPlateLead>, null, <ore:lightPlateLead>],[<embers:block_caminite_brick>, <gregtech:meta_item_1:81>, <embers:block_caminite_brick>]]);

// Stamper
recipes.remove(<embers:stamper>);
recipes.addShaped(<embers:stamper> * 1, [[<embers:plate_caminite>, <ore:heavyPlateAnnealedCopper>, <embers:plate_caminite>], [<embers:brick_caminite>, <ore:springSteel>, <embers:brick_caminite>],[<embers:brick_caminite>, <ore:lightPlateStainlessSteel>, <embers:brick_caminite>]]);

// Mixer Centrifuge
recipes.remove(<embers:mixer>);
recipes.addShaped(<embers:mixer> * 1, [[<ore:plateStainlessSteel>, <ore:heavyPlateStainlessSteel>, <ore:plateStainlessSteel>], [<ore:plateStainlessSteel>, <magneticraft:crafting:3>, <ore:plateStainlessSteel>],[<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>]]);

// Exchange Tablet
recipes.remove(<embers:alchemy_tablet>);
recipes.addShaped(<embers:alchemy_tablet> * 1, [[<ore:foilCopper>, <ore:plateRoseGold>, <ore:foilCopper>], [<embers:stairs_caminite_brick>, <gregtech:meta_item_1:99>, <embers:stairs_caminite_brick>],[<embers:block_caminite_brick>, <ore:heavyPlateDawnstone>, <embers:block_caminite_brick>]]);

// Alchemy Pedestal
recipes.remove(<embers:alchemy_pedestal>);
recipes.addShaped(<embers:alchemy_pedestal> * 1, [[<ore:plateSoularium>, null, <ore:plateSoularium>], [<ore:plateDoubleDawnstone>, <embers:crystal_ember>, <ore:plateDoubleDawnstone>],[<embers:stairs_caminite_brick>, <magneticraft:multiblock_parts:4>, <embers:stairs_caminite_brick>]]);

// Beam Cannon
recipes.remove(<embers:beam_cannon>);
recipes.addShaped(<embers:beam_cannon> * 1, [[<ore:springSmallCopper>, <embers:crystal_ember>, <ore:springSmallCopper>], [<ore:springCopper>, <embers:crystal_ember>, <ore:springCopper>],[<ore:lightPlateDawnstone>, <embers:block_caminite_brick>, <ore:lightPlateDawnstone>]]);

//Liquid Ember into Solid Ember

# Crystal
solidifier.recipeBuilder()
    .fluidInputs(<liquid:ember>*864)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<embers:crystal_ember>)
    .duration(60)
    .EUt(7)
.buildAndRegister();

//Archaic Bricks
recipes.removeByRecipeName("embers:archaic_bricks");
recipes.removeByRecipeName("embers:archaic_bricks_2");

compressor.recipeBuilder()
    .inputs(<embers:archaic_brick>*4)
    .outputs(<embers:archaic_bricks>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Archaic Tile
recipes.removeByRecipeName("embers:archaic_tile");

compressor.recipeBuilder()
    .inputs(<embers:archaic_bricks>)
    .outputs(<embers:archaic_tile>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Archaic Light
recipes.removeByRecipeName("embers:archaic_light");

chemical_bath.recipeBuilder()
    .inputs(<embers:archaic_brick>*4)
    .fluidInputs(<liquid:ember>*96)
    .outputs(<embers:archaic_light>)
    .duration(250)
    .EUt(4)
.buildAndRegister();

//Archaic Edge
recipes.removeByRecipeName("embers:archaic_edge");

forming.recipeBuilder()
    .inputs(<embers:archaic_tile>, <embers:shard_ember>*3)
    .outputs(<embers:archaic_edge>)
    .duration(200)
    .EUt(12)
.buildAndRegister();

// Archaic Circuit
recipes.remove(<embers:archaic_circuit>);
recipes.addShaped(<embers:archaic_circuit> * 1, [[<embers:archaic_brick>, <forestry:thermionic_tubes:0>, <embers:archaic_brick>], [<forestry:thermionic_tubes:0>, <mekanism:controlcircuit:1>, <forestry:thermionic_tubes:0>],[<embers:archaic_brick>, <forestry:thermionic_tubes:0>, <embers:archaic_brick>]]);

// Ashen Amulet
recipes.remove(<embers:ashen_amulet>);
recipes.addShaped(<embers:ashen_amulet> * 1, [[null, <ore:leatherStrip>, null], [<ore:leatherStrip>, null, <ore:leatherStrip>],[<embers:archaic_brick>, <embers:ashen_cloth>, <embers:archaic_brick>]]);

//Ashen Bricks
recipes.removeByRecipeName("embers:ashen_brick");
recipes.removeByRecipeName("embers:ashen_brick2");

alloy.recipeBuilder()
    .inputs(<ore:stoneBricks>, <ore:dustAsh>)
    .outputs(<embers:ashen_brick>)
    .duration(150)
    .EUt(2)
.buildAndRegister();

//Ashen Tile
recipes.removeByRecipeName("embers:ashen_tile");

compressor.recipeBuilder()
    .inputs(<embers:ashen_brick>)
    .outputs(<embers:ashen_tile>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Ashen Stone
recipes.removeByRecipeName("embers:ashen_stone");
recipes.removeByRecipeName("embers:ashen_stone2");

alloy.recipeBuilder()
    .inputs(<ore:stone>, <ore:dustAsh>)
    .outputs(<embers:ashen_stone>)
    .duration(150)
    .EUt(2)
.buildAndRegister();

// Crystal Cell
recipes.remove(<embers:crystal_cell>);
recipes.addShaped(<embers:crystal_cell> * 1, [[<embers:wrapped_sealed_planks>, <embers:crystal_ember>, <embers:wrapped_sealed_planks>], [<ore:lightPlateDawnstone>, <embers:ember_cluster>, <ore:lightPlateDawnstone>],[<embers:wrapped_sealed_planks>, <embers:sealed_planks>, <embers:wrapped_sealed_planks>]]);

// Ashen Armor ====================

# Helmet
recipes.remove(<embers:ashen_cloak_head>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <simplyjetpacks:metaitem:4>, null],
    [<embers:ashen_cloth>, null, <embers:ashen_cloth>],
    [<ore:ringDawnstone>, <embers:ashen_cloth>, <ore:ringDawnstone>]])
  .setFluid(<liquid:dwarven_solution> * 250)
  .addTool(<ore:artisansNeedle>, 20)
  .addOutput(<embers:ashen_cloak_head>)
  .create();

# Chestplate
recipes.remove(<embers:ashen_cloak_chest>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateDawnstone>, null, <ore:plateDawnstone>],
    [<embers:ashen_cloth>, <embers:dawnstone_mail>, <embers:ashen_cloth>],
    [<embers:ashen_cloth>, <ore:plateDawnstone>, <embers:ashen_cloth>]])
  .setFluid(<liquid:dwarven_solution> * 500)
  .addTool(<ore:artisansNeedle>, 20)
  .addOutput(<embers:ashen_cloak_chest>)
  .create();

# Leggings
recipes.remove(<embers:ashen_cloak_legs>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<embers:ashen_cloth>, <embers:ashen_cloth>, <embers:ashen_cloth>],
    [<ore:plateDoubleDawnstone>, null, <ore:plateDoubleDawnstone>],
    [<ore:plateDawnstone>, null, <ore:plateDawnstone>]])
  .setFluid(<liquid:dwarven_solution> * 500)
  .addTool(<ore:artisansNeedle>, 20)
  .addOutput(<embers:ashen_cloak_legs>)
  .create();

# Boots
recipes.remove(<embers:ashen_cloak_boots>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<embers:ashen_cloth>, null, <embers:ashen_cloth>],
    [<embers:ashen_cloth>, null, <embers:ashen_cloth>],
    [<ore:lightPlateRubber>, null, <ore:lightPlateRubber>]])
  .setFluid(<liquid:dawnstone> * 288)
  .addTool(<ore:artisansNeedle>, 20)
  .addOutput(<embers:ashen_cloak_boots>)
  .create();

//Mantle Jar
recipes.remove(<embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}));
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<embers:shard_ember>, null, <embers:shard_ember>],
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}))
  .create();

//Mantle Cartridge
recipes.remove(<embers:ember_cartridge>.withTag({emberCapacity: 2000.0, ember: 0.0}));
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<embers:crystal_ember>, null, <embers:crystal_ember>],
    [<embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}), <embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}), <embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0})],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<embers:ember_cartridge>.withTag({emberCapacity: 6000.0, ember: 0.0}))
  .create();

// Fluid Pipe
recipes.remove(<embers:pipe>);
recipes.addShaped(<embers:pipe> * 1, [[null, null, null], [<ore:plateIron>, <ore:pipeNormalFluidSteel>, <ore:plateIron>],[null, null, null]]);

// Fluid Extractor
recipes.remove(<embers:pump>);
recipes.addShaped(<embers:pump> * 1, [[null, <embers:plate_caminite>, null], [<embers:pipe>, <gregtech:meta_item_1:142>, <embers:pipe>],[null, <embers:plate_caminite>, null]]);

// Fluid Dropper
recipes.remove(<embers:fluid_dropper>);
recipes.addShaped(<embers:fluid_dropper> * 1, [[<minecraft:dropper>, <embers:plate_caminite>, <minecraft:dropper>], [<embers:pipe>, <gregtech:meta_item_1:142>, <embers:pipe>],[<minecraft:dropper>, <embers:plate_caminite>, <minecraft:dropper>]]);

// Item Pipe
recipes.remove(<embers:item_pipe>);
recipes.addShaped(<embers:item_pipe> * 1, [[null, null, null], [<ore:plateLead>, <ore:pipeNormalItemCobaltBrass>, <ore:plateLead>],[null, null, null]]);

// Item Extractor
recipes.remove(<embers:item_pump>);
recipes.addShaped(<embers:item_pump> * 1, [[null, <embers:plate_caminite>, null], [<embers:item_pipe>, <gregtech:meta_item_1:157>, <embers:item_pipe>],[null, <embers:plate_caminite>, null]]);

// Item Dropper
recipes.remove(<embers:item_dropper>);
recipes.addShaped(<embers:item_dropper> * 1, [[<minecraft:dropper>, <embers:plate_caminite>, <minecraft:dropper>], [<embers:item_pipe>, <gregtech:meta_item_1:157>, <embers:item_pipe>],[<minecraft:dropper>, <embers:plate_caminite>, <minecraft:dropper>]]);

# [Item Vacuum] from [Item Pipe][+4]
recipes.removeByRecipeName("embers:vacuum");
craft.make(<embers:vacuum>, ["pretty",
  "⌂ □ □",
  "♥ I e",
  "⌂ □ □"], {
  "⌂": <ore:casingLead>,   # Lead Casing
  "□": <ore:plateLead>,    # Lead Plate
  "♥": <ore:gearRedstone>, # Redstone Gear
  "I": <embers:item_pipe>, # Item Pipe
  "e": <ore:enderpearl> | <ore:materialEnderPearl> | <ore:gemEnderPearl>, # Ender Pearl
});

# [Automatic Breaker] from [Redstone Gear][+4]
recipes.removeByRecipeName("embers:breaker");
craft.make(<embers:breaker>, ["pretty",
  "□ L □",
  "п ♥ п",
  "P   P"], {
  "□": <ore:plateWroughtIron>,            # Wrought Iron Plate
  "L": <embers:pickaxe_lead>.anyDamage(), # Lead Pickaxe
  "п": <ore:plateLead>,                   # Lead Plate
  "♥": <ore:gearRedstone>,                # Redstone Gear
  "P": <ore:lightPlateLead>,              # Light Lead Plate
});

# [Item Transfer]*4 from [Item Pipe][+2]
recipes.removeByRecipeName("embers:item_transfer");
craft.make(<embers:item_transfer> * 4, ["pretty",
  "□ I □",
  "п I п",
  "□   □"], {
  "□": <ore:plateLead>,      # Lead Plate
  "I": <embers:item_pipe>,   # Item Pipe
  "п": <ore:lightPlateLead>, # Light Lead Plate
});

# [Mechanical Pump] from [LV Electric Pump][+4]
recipes.removeByRecipeName("embers:mechanical_pump");
craft.make(<embers:mechanical_pump>, ["pretty",
  "F □ F",
  "□ L □",
  "C l C"], {
  "F": <embers:pipe>,              # Fluid Pipe
  "□": <ore:plateWroughtIron>,     # Wrought Iron Plate
  "L": <gregtech:meta_item_1:142>, # LV Electric Pump
  "C": <embers:brick_caminite>,    # Caminite Brick
  "l": <embers:pump>,              # Fluid Extractor
});