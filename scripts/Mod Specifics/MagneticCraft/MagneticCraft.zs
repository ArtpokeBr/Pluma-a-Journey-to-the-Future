import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			MagneticCraft Script                                                                                                             //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Renaming MagneticCraft's Plates

<magneticraft:light_plates>.displayName = "Iron Light Plate";
<magneticraft:light_plates:1>.displayName = "Gold Light Plate";
<magneticraft:light_plates:2>.displayName = "Copper Light Plate";
<magneticraft:light_plates:3>.displayName = "Lead Light Plate";
<magneticraft:light_plates:5>.displayName = "Tungsten Light Plate";
<magneticraft:light_plates:6>.displayName = "Steel Light Plate";

// Renaming MagneticCraft's Copper Stuff
<magneticraft:crafting:3>.displayName = "Fine Copper Wire Coil";

// Renaming MagneticCraft's Magnet
<magneticraft:crafting:4>.displayName = "Magnetic Bronze";

// Renaming MagneticCraft Stuff to Match ULV from GT
<magneticraft:crafting:2>.displayName = "ULV Motor";
<magneticraft:crafting:1>.displayName = "ULV Alternator";
<magneticraft:multiblock_parts>.displayName = "ULV Machine Block";

//Tooltips
<magneticraft:airlock>.addTooltip(format.white("This Block, when provided with RF, will create a Dome of Air underwater."));

// Bigger Combustion Chamber
recipes.remove(<magneticraft:big_combustion_chamber>);
alloy.recipeBuilder()
	.inputs(<magneticraft:combustion_chamber>, <ore:paper>)
	.outputs(<magneticraft:big_combustion_chamber>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();

// Bigger Steam Boiler
recipes.remove(<magneticraft:big_steam_boiler>);
alloy.recipeBuilder()
	.inputs(<magneticraft:steam_boiler>, <ore:paper>)
	.outputs(<magneticraft:big_steam_boiler>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();

// Combustion Chamber
recipes.remove(<magneticraft:combustion_chamber:0>);
recipes.addShaped(<magneticraft:combustion_chamber:0> * 1, [[<ore:plateClay>, <ore:lightPlateIron>, <ore:plateClay>], [<ore:plateClay>, <ore:craftingFurnace>, <minecraft:iron_trapdoor>],[<ore:plateClay>, <ore:plateClay>, <ore:plateClay>]]);

// Boiler
recipes.remove(<magneticraft:steam_boiler:0>);
recipes.addShaped(<magneticraft:steam_boiler:0> * 1, [[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:gtceWrenches>, <ore:plateIron>],[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>]]);

// Copper Coil
recipes.remove(<magneticraft:copper_coil>);
recipes.addShapeless("MagneticCraftCopperCoil",<magneticraft:copper_coil>,[<ore:gtceWireCutters>, <ore:lightPlateCopper>]);

// Fine Copper Wire
recipes.remove(<magneticraft:crafting:3>);
recipes.addShaped(<magneticraft:crafting:3> * 1, [[<ore:lightPlateIron>, <ore:wireFineCopper>, <ore:lightPlateIron>], [<ore:wireFineCopper>, <magneticraft:copper_coil>, <ore:wireFineCopper>],[<ore:lightPlateIron>, <ore:wireFineCopper>, <ore:lightPlateIron>]]);

// Motor
recipes.remove(<magneticraft:crafting:2>);
recipes.addShaped(<magneticraft:crafting:2> * 1, [[<ore:plateLead>, <ore:plateLead>, null], [<magneticraft:crafting:3>, <ore:gearRedstone>, <ore:lightPlateIron>],[<ore:plateLead>, <ore:plateLead>, null]]);

// Alternator
recipes.remove(<magneticraft:crafting:1>);
recipes.addShaped(<magneticraft:crafting:1> * 1, [[<ore:plateLead>, <ore:plateLead>, null], [<magneticraft:crafting:3>, <magneticraft:crafting:4>, <ore:lightPlateIron>],[<ore:plateLead>, <ore:plateLead>, null]]);

// Magnetic Bronze
recipes.remove(<magneticraft:crafting:4>);
recipes.addShapeless("MagneticCraftMagnet",<magneticraft:crafting:4>,[<ore:ingotBronze>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);

// Machine Block
recipes.remove(<magneticraft:multiblock_parts:0>);
recipes.addShaped(<magneticraft:multiblock_parts:0> * 4, [[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>], [<ore:plateIron>, <magneticraft:crafting:2>, <ore:plateIron>],[<ore:plateLead>, <ore:lightPlateLead>, <ore:plateLead>]]);

// Conveyor Belt
recipes.remove(<magneticraft:conveyor_belt:0>);
recipes.addShaped(<magneticraft:conveyor_belt:0> * 4, [[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>], [<ore:stickIron>, <magneticraft:crafting:2>, <ore:stickIron>],[<ore:stickLongIron>, <ore:gtceScrewdrivers>, <ore:stickLongIron>]]);

// Inserter
recipes.remove(<magneticraft:inserter:0>);
recipes.addShaped(<magneticraft:inserter:0> * 1, [[<ore:plateCopper>, <ore:screwIron>, <ore:gtceScrewdrivers>], [<ore:boltIron>, <ore:springSmallLead>, <ore:boltIron>],[<ore:lightPlateIron>, <magneticraft:crafting:2>, <ore:lightPlateIron>]]);

// Inserter Speed Upgrade
recipes.remove(<magneticraft:inserter_upgrade>);
recipes.addShapeless("InserterSpeedUpgrade",<magneticraft:inserter_upgrade>,[<ore:lightPlateIron>, <quark:sugar_block>]);

// Inserter Stack Upgrade
recipes.remove(<magneticraft:inserter_upgrade:1>);
recipes.addShapeless("InserterStackUpgrade",<magneticraft:inserter_upgrade:1>,[<ore:lightPlateIron>, <gregtech:machine:1626>]);

/*
// Hydraulic Press
recipes.remove(<magneticraft:hydraulic_press>);
mixer.recipeBuilder()
	.inputs(<ore:paper>, <ore:dustLazurite>, <ore:craftingPiston>)
	.outputs(<magneticraft:hydraulic_press>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();
*/

// Shelving Unit
recipes.remove(<magneticraft:shelving_unit>);
assembler.recipeBuilder()
	.inputs(<ore:paper>, <ore:heavyPlateIron>, <ore:chestWood>)
    .circuit(20)
	.outputs(<magneticraft:shelving_unit>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();

// Shipping Container
recipes.remove(<magneticraft:container>);
assembler.recipeBuilder()
	.inputs(<ore:paper>, <ore:heavyPlateSteel>, <pyrotech:stash_stone>)
    .circuit(20)
	.outputs(<magneticraft:container>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();

// Bigger Electric Furnace
recipes.remove(<magneticraft:big_electric_furnace>);
assembler.recipeBuilder()
	.inputs(<ore:paper>, <ore:lightPlateLead>, <gregtech:machine:16>)
    .circuit(20)
	.outputs(<magneticraft:big_electric_furnace>)   
	.duration(600)
	.EUt(12)
	.buildAndRegister();

// Iron Grate Machine Block
recipes.remove(<magneticraft:multiblock_parts:2>);
recipes.addShaped(<magneticraft:multiblock_parts:2> * 4, [[<ore:barsIron>, <ore:barsIron>, <ore:barsIron>], [<ore:barsIron>, <ore:compressed1xCobblestone>, <ore:barsIron>],[<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]]);

// Airlock
recipes.remove(<magneticraft:airlock:0>);
recipes.addShaped(<magneticraft:airlock:0> * 1, [[<ore:screwIron>, <ore:gtceWrenches>, <ore:screwIron>], [<gregtech:machine:1610>, <magneticraft:multiblock_parts:0>, <gregtech:machine:1610>],[<ore:screwIron>, <ore:gtceScrewdrivers>, <ore:screwIron>]]);

// WoodenBox
recipes.remove(<magneticraft:box>);
recipes.addShapeless("WoodenBoxMAC",<magneticraft:box>,[<minecraft:chest>, <ore:gtceSaws>]);
recipes.addShapeless("WoodenBoxMAC_1",<minecraft:chest>,[<magneticraft:box>, <ore:gtceSaws>]);

//Limestone Rework into Ghastly Stone ========================================

<magneticraft:limestone>.displayName = "Ghastly Stone";
<magneticraft:limestone:1>.displayName = "Ghastly Brick";
<magneticraft:limestone:2>.displayName = "Ghastly Cobblestone";
<magneticraft:burnt_limestone>.displayName = "Burnt Ghastly Stone";
<magneticraft:burnt_limestone:1>.displayName = "Burnt Ghastly Brick";
<magneticraft:burnt_limestone:2>.displayName = "Burnt Ghastly Cobblestone";
<magneticraft:tile_limestone>.displayName = "Ghastly Stone Tiles";
<magneticraft:tile_limestone:1>.displayName = "Ghastly Stone Tiles (Inverted)";

mixer.recipeBuilder()
    .inputs(<railcraft:brick_red_nether:2>)
    .fluidInputs([<liquid:ghastlycerin> * 100])
    .outputs(<magneticraft:limestone>)
    .duration(80)
    .EUt(32)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<railcraft:brick_red_nether:2> * 2)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 13}))
    .fluidInputs([<liquid:ghastlycerin> * 200])
    .outputs(<magneticraft:limestone> * 4)
    .duration(100)
    .EUt(256)
.buildAndRegister();

// Water Generator being a better version of the Unending Bowl
recipes.remove(<magneticraft:water_generator>);

// assembler.recipeBuilder()
//     .inputs(<extrabees:propolis>, <roots:terra_moss>, <roots:dewgonia>, <ore:plateRunicSteel>, <ore:plateTerrastone>)
//     .outputs(<roots:unending_bowl>)
//     .duration(300)
//     .EUt(120)
// .buildAndRegister();

<magneticraft:water_generator>.displayName = "Unending Bowl (Full Block)";
<magneticraft:water_generator>.addTooltip(format.aqua("An Infinite Water Source"));
<roots:unending_bowl>.addTooltip(format.aqua("An Infinite Water Source"));

recipes.addShapeless("BowlToWaterGen", <magneticraft:water_generator>, [<roots:unending_bowl>, <ore:gtceWrenches>, <ore:gtceScrewdrivers>]);
recipes.addShapeless("WaterGenToBowl", <roots:unending_bowl>, [<magneticraft:water_generator>, <ore:gtceWrenches>, <ore:gtceScrewdrivers>]);

# [Iron Mesh] from [Light Vanadiumsteel Plate][+1]
<magneticraft:crafting:5>.displayName = "Vanadiumsteel Mesh Component";

recipes.removeByRecipeName("magneticraft:crafting_mesh");
craft.make(<magneticraft:crafting:5>, ["pretty",
  "t t t",
  "t □ t",
  "t t t"], {
  "t": <pyrotech:material:26>,        # Durable Twine
  "□": <ore:lightPlateVanadiumSteel>, # Light Vanadiumsteel Plate
});
