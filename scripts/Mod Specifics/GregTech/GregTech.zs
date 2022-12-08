import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Script                                                                                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Removing Conflicting Recipes

// Nether Quartz Plate * 4
<recipemap:cutter>.findRecipe(30, [<minecraft:quartz_block:0>], [<liquid:lubricant> * 3]).remove();
// Nether Quartz Plate * 4
<recipemap:cutter>.findRecipe(30, [<minecraft:quartz_block:0>], [<liquid:distilled_water> * 11]).remove();
// Nether Quartz Plate * 4
<recipemap:cutter>.findRecipe(30, [<minecraft:quartz_block:0>], [<liquid:water> * 15]).remove();


// Mortar Tools being made with Flint Shards

recipes.remove(<gregtech:meta_tool:12>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}));
recipes.remove(<gregtech:meta_tool:15>.withTag({ench: [{lvl: 2 as short, id: 20 as short}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}));

recipes.addShaped(<gregtech:meta_tool:12>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}) * 1, [[null, <pyrotech:material:10>, null], [<ore:stone>, <pyrotech:material:10>, <ore:stone>],[<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShapeless("GTFlintKnife",<gregtech:meta_tool:15>.withTag({ench: [{lvl: 2 as short, id: 20 as short}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}),[<pyrotech:material:10>, <ore:stickWood>]);


// Early Game Concrete
recipes.remove(<forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}));

// Stone Rod
recipes.addShapeless("StoneRod",<ore:stickStone>.firstItem*4,[<ore:gtceFiles>, <ore:stone>]);

// Crafting Station
recipes.remove(<gregtech:machine:1647>);
recipes.addShaped(<gregtech:machine:1647> * 1, [[<ore:chestWood>, <ore:frameGtTreatedWood>, <ore:chestWood>], [<ore:plateBronze>, <tconstruct:tooltables:0>, <ore:plateBronze>],[<ore:plateBronze>, <ore:gtceSaws>, <ore:plateBronze>]]);

// Treated Wood Fixes
recipes.remove(<gregtech:meta_stick:1648>);
recipes.addShapeless("TreatedWood",<ore:stickTreatedWood>.firstItem*4,[<ore:gtceSaws>, <ore:plankTreatedWood>]);

saw.recipeBuilder()
    .inputs(<ore:plankTreatedWood>)
    .outputs(<ore:stickTreatedWood>.firstItem * 4)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

// Electric Blast Furnace
recipes.remove(<gregtech:machine:1001>);
recipes.addShaped(<gregtech:machine:1001> * 1, [[<ore:craftingFurnace>, <ore:craftingFurnace>, <ore:craftingFurnace>], [<ore:circuitLv>, <gregtech:metal_casing:2>, <ore:circuitLv>],[<ore:cableGtSingleTin>, <ore:circuitMv>, <ore:cableGtSingleTin>]]);

//Basalt Dust Rebalance ==========
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustBasalt> * 16], null).remove();

centrifuge.recipeBuilder()
	.inputs(<ore:dustBasalt> * 32)
    .outputs(<ore:dustBiotite>.firstItem * 2,
    <ore:dustOlivine>.firstItem,
    <ore:dustCalcite>.firstItem * 2,
    <ore:dustFlint>.firstItem * 6,
    <ore:dustDarkAsh>.firstItem * 3)   
	.duration(200)
	.EUt(300)
.buildAndRegister();

//The Beneath Gas Implementation ========

gas_collector.recipeBuilder()
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
    .fluidOutputs(<liquid:beneath_gas> *10000)
    .property("dimension", 10) 
	.duration(200)
	.EUt(320)
.buildAndRegister();

centrifuge.recipeBuilder()
	.fluidInputs(<liquid:beneath_gas> * 10000)
    .outputs(<ore:dustTinyBasalt>.firstItem * 4, <ore:dustTinyCupricOxide>.firstItem * 3)
    .fluidOutputs(<liquid:fluorine> * 1000, <liquid:carbon_dioxide> * 2000)   
	.duration(200)
	.EUt(320)
.buildAndRegister();

// Industrial Steam Engine
recipes.remove(<gregtech:machine:2027>);
recipes.addShaped(<gregtech:machine:2027> * 1, [[<ore:pipeSmallFluidPotin>, <ore:plateBrass>, <ore:pipeSmallFluidPotin>], [<ore:plateBrass>, <ore:circuitMv>, <ore:plateBrass>],[<ore:gearSmallBronze>, <ore:gearDarkSteel>, <ore:gearSmallBronze>]]);

//Large Bronze Boiler
recipes.remove(<gregtech:machine:1013>);
recipes.addShaped(
    <gregtech:machine:1013>,
    [
        [<ore:cableGtSingleTin>,         <ore:circuitMv>,         <ore:cableGtSingleTin>],
        [<ore:circuitMv>, <gregtech:boiler_firebox_casing>,  <ore:circuitMv>],
        [<ore:cableGtSingleTin>,         <ore:circuitMv>,         <ore:cableGtSingleTin>]
    ]
);

//Modularium
mixer.recipeBuilder()
    .inputs(<ore:dustBismuth>*2, <ore:dustStainlessSteel>, <ore:dustSilver>)
    .outputs(<ore:dustModularium>.firstItem*4)
	.duration(240)
	.EUt(260)
.buildAndRegister();

// Modular Casing
recipes.addShaped(<contenttweaker:modular_casing:0> * 2, [[<ore:plateModularium>, <ore:gtceHardHammers>, <ore:plateModularium>], [<ore:plateModularium>, <ore:frameGtModularium>, <ore:plateModularium>],[<ore:plateModularium>, <ore:gtceWrenches>, <ore:plateModularium>]]);

assembler.recipeBuilder()
	.inputs(<ore:plateModularium>*6, <ore:frameGtModularium>)
    .outputs(<contenttweaker:modular_casing> * 2)
    .circuit(6)   
	.duration(50)
	.EUt(16)
.buildAndRegister();

//Time Vortex Fluid
large_chemical_reactor.recipeBuilder()
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 22}))
    .fluidInputs(<liquid:binnie.dna.raw>*100, <liquid:carbon>*1000)
    .fluidOutputs(<liquid:time_vortex_fluid>*1000)
    .duration(300)
    .EUt(500)
.buildAndRegister();

//Mince Meat Fixing and Expanding
<recipemap:macerator>.findRecipe(2, [<minecraft:chicken:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:mutton:0>], null).remove();

macerator.recipeBuilder()
    .inputs([<ore:listAllmeatraw>])
    .outputs(<ore:dustMeat>.firstItem*2, <ore:dustTinyBone>.firstItem)
    .chancedOutput(<tconstruct:edible:3>, 1000, 1000)
    .duration(80)
    .EUt(4)
.buildAndRegister();

// Stainless Metallic Casing

recipes.addShaped(<contenttweaker:vanadiumsteel_casing> * 2, [[<ore:plateVanadiumSteel>, <ore:gtceHardHammers>, <ore:plateVanadiumSteel>], [<ore:plateVanadiumSteel>, <ore:frameGtVanadiumSteel>, <ore:plateVanadiumSteel>],[<ore:plateVanadiumSteel>, <ore:gtceWrenches>, <ore:plateVanadiumSteel>]]);

assembler.recipeBuilder()
	.inputs(<ore:plateVanadiumSteel>*6, <ore:frameGtVanadiumSteel>)
    .outputs(<contenttweaker:vanadiumsteel_casing> * 2)
    .circuit(6)   
	.duration(50)
	.EUt(16)
.buildAndRegister();

//Bricked Hulls ==========================================

//Wrough Iron
alloy.recipeBuilder()
	.inputs(<ore:plateWroughtIron>*5, <ore:blockBrick>*3)
    .outputs(<gregtech:steam_casing:3>) 
	.duration(100)
	.EUt(20)
.buildAndRegister();

//Bronze
alloy.recipeBuilder()
	.inputs(<ore:plateBronze>*5, <ore:blockBrick>*3)
    .outputs(<gregtech:steam_casing:1>) 
	.duration(100)
	.EUt(20)
.buildAndRegister();

//Obscure Compound Dust
mixer.recipeBuilder()
	.inputs(<ore:dustBlackQuartz>, <ore:dustBiotite>)
    .outputs(<ore:dustObscureCompound>.firstItem*2) 
	.duration(167)
	.EUt(230)
.buildAndRegister();

// Implosion Compressor
recipes.remove(<gregtech:machine:1003>);
recipes.addShaped(<gregtech:machine:1003> * 1, [[<ore:heavyPlateRefinedObsidian>, <ore:heavyPlateRefinedObsidian>, <ore:heavyPlateRefinedObsidian>], [<ore:circuitHv>, <gregtech:metal_casing:4>, <ore:circuitHv>],[<ore:cableGtSingleAluminium>, <ore:circuitEv>, <ore:cableGtSingleAluminium>]]);

// Pyrolyse Oven
recipes.remove(<gregtech:machine:1004>);
recipes.addShaped(<gregtech:machine:1004> * 1, [[<gregtech:meta_item_1:173>, <ore:circuitEv>, <ore:wireGtQuadrupleCupronickel>], [<ore:circuitMv>, <gregtech:machine:987>, <ore:circuitMv>],[<gregtech:meta_item_1:173>, <gregtech:meta_item_1:143>, <ore:wireGtQuadrupleCupronickel>]]);

// Fixing Ender Dust ========================================================
recipes.removeByRecipeName("enderio:ender_dust");

// Ender Fluid Link Cover
<recipemap:assembler>.findRecipe(480, [<metaitem:plateEnderPearl> * 9, <metaitem:plateDoubleStainlessSteel>, <metaitem:sensor.hv>, <metaitem:emitter.hv>, <metaitem:electric.pump.hv>], [<liquid:plastic> * 288]).remove();

assembler.recipeBuilder()
    .inputs(<enderio:block_transceiver>, <enderio:item_capacitor_crystalline>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:144>)
    .fluidInputs(<liquid:plastic>*288)
    .outputs(<gregtech:meta_item_1:311>)
    .duration(320)
    .EUt(480)
.buildAndRegister();

//Red Quartz Sand Integration
macerator.recipeBuilder()
	.inputs(<minecraft:sand:1>)
    .outputs(<ore:dustRedSand>.firstItem) 
	.duration(30)
	.EUt(2)
.buildAndRegister();

recipes.addShapeless("RedQuartzSandMortar",<ore:dustRedSand>.firstItem,[<ore:gtceMortars>, <minecraft:sand:1>]);

centrifuge.recipeBuilder()
	.inputs(<ore:dustRedSand>*6)
    .chancedOutput(<ore:dustIron>.firstItem*3, 2000, 1000)
    .fluidOutputs(<liquid:oxygen>*300) 
	.duration(1000)
	.EUt(128)
.buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Crates and Drum's Script                                                                                                //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Wooden Crate
recipes.remove(<gregtech:machine:1625>);
assembler.findRecipe(16, [<ore:plankWood>.firstItem*4,<gregtech:meta_screw:51>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1625> * 1, [[<ore:screwIron>, <ore:plankTreatedWood>, <ore:screwIron>], [<ore:plankTreatedWood>, <ore:gtceSaws>, <ore:plankTreatedWood>],[<ore:screwIron>, <ore:plankTreatedWood>, <ore:screwIron>]]);

assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*4,<ore:screwIron>*4)
    .outputs(<gregtech:machine:1625>)
    .property("circuit", 1)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// Wooden Barrel
recipes.removeByRecipeName("gregtech:wooden_barrel");
recipes.addShaped(<gregtech:machine:1610> * 1, [[<ore:gtceSoftHammers>, <gregtech:meta_item_1:438>, <ore:gtceSaws>], [<ore:plankTreatedWood>, <ore:stickLongIron>, <ore:plankTreatedWood>],[<ore:plankTreatedWood>, <ore:stickLongIron>, <ore:plankTreatedWood>]]);

assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*4,<ore:stickLongIron>*2)
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<gregtech:machine:1610>)
    .property("circuit", 1)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// Bronze Crate
recipes.remove(<gregtech:machine:1626>);
assembler.findRecipe(16, [<gregtech:meta_plate:260>*4,<gregtech:meta_stick_long:260>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1626> * 1, [[<ore:stickLongBronze>, <ore:plateBronze>, <ore:stickLongBronze>], [<ore:plateBronze>, <gregtech:machine:1625>.withEmptyTag(), <ore:plateBronze>],[<ore:stickLongBronze>, <ore:plateBronze>, <ore:stickLongBronze>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateBronze>*4,<ore:stickLongBronze>*4, <gregtech:machine:1625>)
    .outputs(<gregtech:machine:1626>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// Bronze Drum
recipes.removeByRecipeName("gregtech:bronze_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:260>*4,<gregtech:meta_stick_long:260>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

recipes.addShaped(<gregtech:machine:1611> * 1, [[<ore:plateBronze>, <ore:stickLongBronze>, <ore:plateBronze>], [<ore:stickLongBronze>, <gregtech:machine:1610>, <ore:stickLongBronze>],[<ore:plateBronze>, <ore:stickLongBronze>, <ore:plateBronze>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateBronze>*4,<ore:stickLongBronze>*4, <gregtech:machine:1610>)
    .outputs(<gregtech:machine:1611>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// Steel Crate
recipes.remove(<gregtech:machine:1627>);
assembler.findRecipe(16, [<gregtech:meta_plate:324>*4,<gregtech:meta_stick_long:324>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1627> * 1, [[<ore:stickLongSteel>, <ore:plateSteel>, <ore:stickLongSteel>], [<ore:plateSteel>, <gregtech:machine:1626>.withEmptyTag(), <ore:plateSteel>],[<ore:stickLongSteel>, <ore:plateSteel>, <ore:stickLongSteel>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*4,<ore:stickLongSteel>*4, <gregtech:machine:1626>)
    .outputs(<gregtech:machine:1627>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// Steel Drum
recipes.removeByRecipeName("gregtech:steel_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:324>*4,<gregtech:meta_stick_long:324>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

recipes.addShaped(<gregtech:machine:1612> * 1, [[<ore:plateSteel>, <ore:stickLongSteel>, <ore:plateSteel>], [<ore:stickLongSteel>, <gregtech:machine:1611>, <ore:stickLongSteel>],[<ore:plateSteel>, <ore:stickLongSteel>, <ore:plateSteel>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*4,<ore:stickLongSteel>*4, <gregtech:machine:1611>)
    .outputs(<gregtech:machine:1612>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// Aluminium Crate
recipes.remove(<gregtech:machine:1628>);
assembler.findRecipe(16, [<gregtech:meta_plate:2>*4,<gregtech:meta_stick_long:2>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1628> * 1, [[<ore:stickLongAluminium>, <ore:plateAluminium>, <ore:stickLongAluminium>], [<ore:plateAluminium>, <gregtech:machine:1627>.withEmptyTag(), <ore:plateAluminium>],[<ore:stickLongAluminium>, <ore:plateAluminium>, <ore:stickLongAluminium>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateAluminium>*4,<ore:stickLongAluminium>*4, <gregtech:machine:1627>)
    .outputs(<gregtech:machine:1628>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// Aluminium Drum
recipes.removeByRecipeName("gregtech:aluminium_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:2>*4,<gregtech:meta_stick_long:2>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

recipes.addShaped(<gregtech:machine:1613> * 1, [[<ore:plateAluminium>, <ore:stickLongAluminium>, <ore:plateAluminium>], [<ore:stickLongAluminium>, <gregtech:machine:1612>, <ore:stickLongAluminium>],[<ore:plateAluminium>, <ore:stickLongAluminium>, <ore:plateAluminium>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateAluminium>*4,<ore:stickLongAluminium>*4, <gregtech:machine:1612>)
    .outputs(<gregtech:machine:1613>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// StainlessSteel Crate
recipes.remove(<gregtech:machine:1629>);
assembler.findRecipe(16, [<gregtech:meta_plate:323>*4,<gregtech:meta_stick_long:323>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1629> * 1, [[<ore:stickLongStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickLongStainlessSteel>], [<ore:plateStainlessSteel>, <gregtech:machine:1628>.withEmptyTag(), <ore:plateStainlessSteel>],[<ore:stickLongStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickLongStainlessSteel>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*4,<ore:stickLongStainlessSteel>*4, <gregtech:machine:1628>)
    .outputs(<gregtech:machine:1629>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// StainlessSteel Drum
recipes.removeByRecipeName("gregtech:stainless_steel_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:323>*4,<gregtech:meta_stick_long:323>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

recipes.addShaped(<gregtech:machine:1614> * 1, [[<ore:plateStainlessSteel>, <ore:stickLongStainlessSteel>, <ore:plateStainlessSteel>], [<ore:stickLongStainlessSteel>, <gregtech:machine:1613>, <ore:stickLongStainlessSteel>],[<ore:plateStainlessSteel>, <ore:stickLongStainlessSteel>, <ore:plateStainlessSteel>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*4,<ore:stickLongStainlessSteel>*4, <gregtech:machine:1613>)
    .outputs(<gregtech:machine:1614>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// Titanium Crate
recipes.remove(<gregtech:machine:1630>);
assembler.findRecipe(16, [<gregtech:meta_plate:113>*4,<gregtech:meta_stick_long:113>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1630> * 1, [[<ore:stickLongTitanium>, <ore:plateTitanium>, <ore:stickLongTitanium>], [<ore:plateTitanium>, <gregtech:machine:1629>.withEmptyTag(), <ore:plateTitanium>],[<ore:stickLongTitanium>, <ore:plateTitanium>, <ore:stickLongTitanium>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateTitanium>*4,<ore:stickLongTitanium>*4, <gregtech:machine:1629>)
    .outputs(<gregtech:machine:1630>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();


// TungstenSteel Crate
recipes.remove(<gregtech:machine:1631>);
assembler.findRecipe(16, [<gregtech:meta_plate:2013>*4,<gregtech:meta_stick_long:2013>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

recipes.addShaped(<gregtech:machine:1631> * 1, [[<ore:stickLongTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickLongTungstenSteel>], [<ore:plateTungstenSteel>, <gregtech:machine:1630>.withEmptyTag(), <ore:plateTungstenSteel>],[<ore:stickLongTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickLongTungstenSteel>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateTungstenSteel>*4,<ore:stickLongTungstenSteel>*4, <gregtech:machine:1630>)
    .outputs(<gregtech:machine:1631>)
    .property("circuit", 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Wrough Iron Rework                                                                                                      //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

furnace.remove(<ore:nuggetWroughtIron>.firstItem);

furnace.addRecipe(<contenttweaker:hot_iron_ingot>, <minecraft:iron_ingot>);

hammer.recipeBuilder()
    .inputs(<contenttweaker:hot_iron_ingot>)
    .outputs(<ore:ingotWroughtIron>.firstItem)
    .duration(70)
    .EUt(8)
    .buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Aluminium Script                                                                                                        //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// WTF? Aluminium on a Furnace?
furnace.remove(<ore:ingotAluminium>.firstItem);

// Electrolyzing Gravel Ore into Dust

electrolyzer.recipeBuilder()
    .inputs(<contenttweaker:aluminiumgravel>)
    .outputs(<ore:dustStone>.firstItem * 2, <ore:dustSmallAluminium>.firstItem * 3, <ore:dustTinyLithium>.firstItem)
    .duration(1200)
    .EUt(32)
    .buildAndRegister();    

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech XP Script                                                                                                               //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Extracting XP from Stuff

extractor.recipeBuilder()
    .inputs(<actuallyadditions:item_solidified_experience>)
    .fluidOutputs(<liquid:xpjuice>*144)
    .duration(100)
    .EUt(16)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<minecraft:experience_bottle>)
    .fluidOutputs(<liquid:xpjuice>*144)
    .duration(100)
    .EUt(16)
.buildAndRegister();


extractor.recipeBuilder()
    .inputs(<deepmoblearning:living_matter_overworldian>)
    .fluidOutputs(<liquid:xpjuice>*288)
    .duration(100)
    .EUt(40)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<deepmoblearning:living_matter_hellish>)
    .fluidOutputs(<liquid:xpjuice>*288)
    .duration(100)
    .EUt(40)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<deepmoblearning:living_matter_extraterrestrial>)
    .fluidOutputs(<liquid:xpjuice>*288)
    .duration(100)
    .EUt(40)
.buildAndRegister();

//Filing Stuff

//XP Bottle
canner.recipeBuilder()
    .fluidInputs(<liquid:xpjuice>*144)
    .inputs(<minecraft:glass_bottle>)
    .outputs(<minecraft:experience_bottle>)
    .duration(80)
    .EUt(16)
.buildAndRegister();

//Experience Rod
recipes.remove(<enderio:item_xp_transfer>);
canner.recipeBuilder()
    .fluidInputs(<liquid:xpjuice>*576)
    .inputs(<ore:stickLongVibrantAlloy>, <ore:foilSoularium>*8)
    .outputs(<enderio:item_xp_transfer>)
    .duration(188)
    .EUt(350)
.buildAndRegister();

// Automatic Maintenance Hatch
recipes.remove(<gregtech:machine:1656>);
recipes.addShaped(<gregtech:machine:1656> * 1, [[<ore:circuitIv>, <gregtech:machine:1654>, <ore:circuitIv>], [<gregtech:meta_item_1:190>, <gregtech:machine:989>, <gregtech:meta_item_1:190>],[<ore:circuitIv>, <gregtech:machine:1654>, <ore:circuitIv>]]);

