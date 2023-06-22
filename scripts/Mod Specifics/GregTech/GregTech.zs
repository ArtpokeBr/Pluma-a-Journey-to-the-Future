import mods.gregtech.recipe.RecipeMap;
import mods.pyrotech.SoakingPot as SoakingPot;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting as Melting;
import mods.tconstruct.Casting as Casting;
import crafttweaker.item.IIngredient;

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

/*
recipes.remove(<gregtech:mortar>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 64, AttackDamage: 0.0 as float, Durability: 0, Material: "flint", HarvestLevel: 1, AttackSpeed: -2.4 as float}}));
recipes.remove(<gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, ench: [{lvl: 2 as short, id: 20}], "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 64, AttackDamage: 1.0 as float, Durability: 0, Material: "flint", AttackSpeed: 3.0 as float}}));
recipes.addShaped(<gregtech:mortar>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 64, AttackDamage: 0.0 as float, Durability: 0, Material: "flint", HarvestLevel: 1, AttackSpeed: -2.4 as float}}) * 1, [[null, <pyrotech:material:10>, null], [<ore:stone>, <pyrotech:material:10>, <ore:stone>],[<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShapeless("GTFlintKnife",<gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, ench: [{lvl: 2 as short, id: 20}], "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 64, AttackDamage: 1.0 as float, Durability: 0, Material: "flint", AttackSpeed: 3.0 as float}}),[<pyrotech:material:10>, <ore:stickWood>]);
*/

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
    .inputs(<enderstorage:ender_storage:1>, <enderio:item_capacitor_melodic>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:144>)
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
<recipemap:assembler>.findRecipe(16, [<metaitem:plateWood> * 4, <metaitem:screwIron> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 5})], null).remove();

recipes.addShaped(<gregtech:machine:1625> * 1, [[<ore:screwIron>, <ore:plankTreatedWood>, <ore:screwIron>], [<ore:plankTreatedWood>, <ore:gtceSaws>, <ore:plankTreatedWood>],[<ore:screwIron>, <ore:plankTreatedWood>, <ore:screwIron>]]);

assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*4,<ore:screwIron>*4)
    .outputs(<gregtech:machine:1625>)
    .circuit(1)
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
    .circuit(1)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// ================================================ //

// Bronze Crate
recipes.remove(<gregtech:machine:1626>);
assembler.findRecipe(16, [<gregtech:meta_plate:260>*4,<gregtech:meta_stick_long:260>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Bronze Crate] from [LV Machine Casing][+2]
craft.make(<gregtech:machine:1626>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ L ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongBronze>, # Long Bronze Rod
  "⌂": <ore:casingCopper>,    # Copper Casing
  "L": <ore:LVCasing>,        # LV Machine Casing
});

// Bronze Drum
recipes.removeByRecipeName("gregtech:bronze_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:260>*4,<gregtech:meta_stick_long:260>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

# [Bronze Drum] from [LV Machine Casing][+2]
craft.make(<gregtech:machine:1611>, ["pretty",
  "⌂ ╱ ⌂",
  "╱ L ╱",
  "⌂ ╱ ⌂"], {
  "⌂": <ore:casingBronze>,    # Bronze Casing
  "╱": <ore:stickLongBronze>, # Long Bronze Rod
  "L": <ore:LVCasing>,        # LV Machine Casing
});

// ================================================ //

// Steel Crate
recipes.remove(<gregtech:machine:1627>);
assembler.findRecipe(16, [<gregtech:meta_plate:324>*4,<gregtech:meta_stick_long:324>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Steel Crate] from [LV Machine Casing][+2]
craft.make(<gregtech:machine:1627>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ L ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongSteel>, # Long Steel Rod
  "⌂": <ore:casingSteel>,    # Steel Casing
  "L": <ore:LVCasing>,       # LV Machine Casing
});

// Steel Drum
recipes.removeByRecipeName("gregtech:steel_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:324>*4,<gregtech:meta_stick_long:324>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

# [Steel Drum] from [LV Machine Casing][+2]
craft.make(<gregtech:machine:1612>, ["pretty",
  "⌂ ╱ ⌂",
  "╱ L ╱",
  "⌂ ╱ ⌂"], {
  "⌂": <ore:casingSteel>,    # Steel Casing
  "╱": <ore:stickLongSteel>, # Long Steel Rod
  "L": <ore:LVCasing>,       # LV Machine Casing
});

// ================================================ //

// Aluminium Crate
recipes.remove(<gregtech:machine:1628>);
assembler.findRecipe(16, [<gregtech:meta_plate:2>*4,<gregtech:meta_stick_long:2>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Aluminium Crate] from [MV Machine Casing][+2]
craft.make(<gregtech:machine:1628>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ M ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongAluminium>, # Long Aluminium Rod
  "⌂": <ore:casingAluminium>,        # Aluminium Casing
  "M": <ore:MVCasing>,           # MV Machine Casing
});

// Aluminium Drum
recipes.removeByRecipeName("gregtech:aluminium_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:2>*4,<gregtech:meta_stick_long:2>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

# [Aluminium Drum] from [MV Machine Casing][+2]
craft.make(<gregtech:machine:1613>, ["pretty",
  "⌂ ╱ ⌂",
  "╱ M ╱",
  "⌂ ╱ ⌂"], {
  "⌂": <ore:casingAluminium>,    # Aluminium Casing
  "╱": <ore:stickLongAluminium>, # Long Aluminium Rod
  "M": <ore:MVCasing>,           # MV Machine Casing
});

// ================================================ //

// StainlessSteel Crate
recipes.remove(<gregtech:machine:1629>);
assembler.findRecipe(16, [<gregtech:meta_plate:323>*4,<gregtech:meta_stick_long:323>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Stainless Steel Crate] from [HV Machine Casing][+2]
craft.make(<gregtech:machine:1629>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ H ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongStainlessSteel>, # Long Stainless Steel Rod
  "⌂": <ore:casingStainlessSteel>,    # StainlessSteel Casing
  "H": <gregtech:machine_casing:3>,   # HV Machine Casing
});

// StainlessSteel Drum
recipes.removeByRecipeName("gregtech:stainless_steel_drum");
assembler.findRecipe(16, [<gregtech:meta_plate:323>*4,<gregtech:meta_stick_long:323>*2,<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

# [Stainless Steel Drum] from [HV Machine Casing][+2]
craft.make(<gregtech:machine:1614>, ["pretty",
  "⌂ ╱ ⌂",
  "╱ H ╱",
  "⌂ ╱ ⌂"], {
  "⌂": <ore:casingStainlessSteel>,    # StainlessSteel Casing
  "╱": <ore:stickLongStainlessSteel>, # Long Stainless Steel Rod
  "H": <gregtech:machine_casing:3>,   # HV Machine Casing
});

// ================================================ //

// Titanium Crate
recipes.remove(<gregtech:machine:1630>);
assembler.findRecipe(16, [<gregtech:meta_plate:113>*4,<gregtech:meta_stick_long:113>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Titanium Crate] from [EV Machine Casing][+2]
craft.make(<gregtech:machine:1630>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ E ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongTitanium>,     # Long Titanium Rod
  "⌂": <ore:casingTitanium>,        # Titanium Casing
  "E": <gregtech:machine_casing:4>, # EV Machine Casing
});

// TungstenSteel Crate
recipes.remove(<gregtech:machine:1631>);
assembler.findRecipe(16, [<gregtech:meta_plate:2013>*4,<gregtech:meta_stick_long:2013>*4,<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

# [Tungstensteel Crate] from [IV Machine Casing][+2]
craft.make(<gregtech:machine:1631>, ["pretty",
  "╱ ⌂ ╱",
  "⌂ I ⌂",
  "╱ ⌂ ╱"], {
  "╱": <ore:stickLongTungstenSteel>, # Long Tungstensteel Rod
  "⌂": <ore:casingTungstenSteel>,    # TungstenSteel Casing
  "I": <gregtech:machine_casing:5>,  # IV Machine Casing
});

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

extractor.recipeBuilder()
    .inputs(<deepmoblearning:living_matter_twilight>)
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

// Advanced Alloy Recipe
compressor.recipeBuilder()
    .inputs(<contenttweaker:mixed_metal>)
    .outputs(<ore:plateAdvancedAlloy>.firstItem)
    .duration(400)
    .EUt(800)
.buildAndRegister();

# [Red Alloy Dust] from [Copper Dust][+1]
craft.reshapeless(<gregtech:meta_dust:2517>, "▲♥♥♥♥", {
  "▲": <ore:dustCopper>,   # Copper Dust
  "♥": <ore:dustRedstone>, # Redstone
});

# [Wood Pulp] by Hand
craft.reshapeless(<ore:dustWood>.firstItem * 6, "T#", {
  "T": <ore:gtceMortars>, # Mortar
  "#": <ore:logWood>,     # Oak Wood
});

# [Liquid Slime Compat]
<recipemap:extractor>.findRecipe(2, [<minecraft:slime_ball:0>], null).remove();

extractor.recipeBuilder()
    .inputs(<minecraft:slime_ball>)
    .outputs(<ore:dustRawRubber>.firstItem*2)
    .fluidOutputs(<liquid:slime>*144)
    .duration(150)
    .EUt(2)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:blockSlimeGreen>)
    .outputs(<ore:dustRawRubber>.firstItem*18)
    .fluidOutputs(<liquid:slime>*1296)
    .duration(1350)
    .EUt(16)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<tconstruct:slime_congealed>)
    .outputs(<ore:dustRawRubber>.firstItem*8)
    .fluidOutputs(<liquid:slime>*576)
    .duration(600)
    .EUt(16)
.buildAndRegister();

# [Paper Processing Rework] ===================================================================================

<recipemap:chemical_bath>.findRecipe(7, [<minecraft:reeds:0>], [<liquid:water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(7, [<minecraft:reeds:0>], [<liquid:distilled_water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(4, [<metaitem:dustWood>], [<liquid:water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(4, [<metaitem:dustWood>], [<liquid:distilled_water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(4, [<metaitem:dustPaper>], [<liquid:water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(4, [<metaitem:dustPaper>], [<liquid:distilled_water> * 100]).remove();

//Making Pulp
chemical_bath.recipeBuilder()
    .inputs(<ore:sugarcane>)
    .fluidInputs(<liquid:water> * 100)
    .outputs(<pyrotech:material:25>)
    .duration(120)
    .EUt(7)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:sugarcane>)
    .fluidInputs(<liquid:distilled_water> * 100)
    .outputs(<pyrotech:material:25>)
    .duration(120)
    .EUt(7)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:dustPaper>)
    .fluidInputs(<liquid:water> * 100)
    .outputs(<pyrotech:material:25>)
    .duration(120)
    .EUt(7)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:dustPaper>)
    .fluidInputs(<liquid:distilled_water> * 100)
    .outputs(<pyrotech:material:25>)
    .duration(120)
    .EUt(7)
.buildAndRegister();

// chemical_bath.recipeBuilder()
//     .inputs(<ore:dustWood>)
//     .fluidInputs(<liquid:water> * 100)
//     .outputs(<pyrotech:material:25>)
//     .duration(120)
//     .EUt(7)
// .buildAndRegister();

// chemical_bath.recipeBuilder()
//     .inputs(<ore:dustWood>)
//     .fluidInputs(<liquid:distilled_water> * 100)
//     .outputs(<pyrotech:material:25>)
//     .duration(120)
//     .EUt(7)
// .buildAndRegister();

// chemical_bath.recipeBuilder()
//     .inputs(<pyrotech:rock:7>)
//     .fluidInputs(<liquid:water> * 100)
//     .outputs(<pyrotech:material:25>)
//     .duration(120)
//     .EUt(7)
// .buildAndRegister();

// chemical_bath.recipeBuilder()
//     .inputs(<pyrotech:rock:7>)
//     .fluidInputs(<liquid:distilled_water> * 100)
//     .outputs(<pyrotech:material:25>)
//     .duration(120)
//     .EUt(7)
// .buildAndRegister();

// ==== //

//Extracting Pulp into Paper
extractor.recipeBuilder()
    .inputs(<pyrotech:material:25>)
    .outputs(<minecraft:paper>)
    .duration(120)
    .EUt(8)
.buildAndRegister();

// ===== //

// Agar Processing Line doesn't require s Sterile Cleanroon Anymore.

# Collagen
<recipemap:chemical_reactor>.findRecipe(480, [<metaitem:dustMeat>, <minecraft:dye:15>], [<liquid:sulfuric_acid> * 500]).remove();
<recipemap:chemical_reactor>.findRecipe(480, [<metaitem:dustMeat> * 2, <minecraft:bone:0>], [<liquid:sulfuric_acid> * 1000]).remove();
<recipemap:large_chemical_reactor>.findRecipe(480, [<metaitem:dustMeat> * 2, <minecraft:bone:0>], [<liquid:sulfuric_acid> * 1000]).remove();


chemical_reactor.recipeBuilder()
    .inputs(<metaitem:dustMeat>, <ore:dustBone>)
    .fluidInputs(<liquid:sulfuric_acid> * 500)
    .property("cleanroom", "cleanroom")
    .outputs(<ore:dustCollagen>.firstItem)
    .duration(3200)
    .EUt(480)
.buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs(<metaitem:dustMeat>, <ore:bone>)
    .fluidInputs(<liquid:sulfuric_acid> * 500)
    .property("cleanroom", "cleanroom")
    .outputs(<ore:dustCollagen>.firstItem*2)
    .duration(3200)
    .EUt(480)
.buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs(<metaitem:dustMeat>, <ore:crystalClusterCalcium>)
    .fluidInputs(<liquid:sulfuric_acid> * 500)
    .property("cleanroom", "cleanroom")
    .outputs(<ore:dustCollagen>.firstItem*9)
    .duration(3200)
    .EUt(480)
.buildAndRegister();

# Gelatin Mixture
<recipemap:mixer>.findRecipe(480, [<metaitem:dustCollagen> * 4], [<liquid:phosphoric_acid> * 1000, <liquid:water> * 3000]).remove();

mixer.recipeBuilder()
    .inputs(<metaitem:dustCollagen> * 4)
    .fluidInputs(<liquid:phosphoric_acid> * 1000, <liquid:water> * 3000)
    .property("cleanroom", "cleanroom")
    .fluidOutputs(<liquid:gelatin_mixture>*4000)
    .duration(3200)
    .EUt(480)
.buildAndRegister();

# Gelatin Dust
<recipemap:centrifuge>.findRecipe(480, null, [<liquid:gelatin_mixture> * 6000]).remove();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:gelatin_mixture> * 6000)
    .property("cleanroom", "cleanroom")
    .outputs(<ore:dustPhosphorus>.firstItem, <ore:dustGelatin>.firstItem*4)
    .duration(4800)
    .EUt(480)
.buildAndRegister();

# Agar Itself
<recipemap:autoclave>.findRecipe(480, [<metaitem:dustGelatin>], [<liquid:distilled_water> * 1000]).remove();

autoclave.recipeBuilder()
    .inputs(<ore:dustGelatin>)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .property("cleanroom", "cleanroom")
    .outputs(<ore:dustAgar>.firstItem)
    .duration(1200)
    .EUt(480)
.buildAndRegister();

/// =========================================================================================================

//Concrete Integration
var GTConcreteChisel as IItemStack[] = [
<gregtech:stone_smooth:4>,
<gregtech:stone_polished:4>,
<gregtech:stone_bricks:4>,
<gregtech:stone_bricks_cracked:4>,
<gregtech:stone_bricks_mossy:4>,
<gregtech:stone_chiseled:4>,
<gregtech:stone_tiled:4>,
<gregtech:stone_bricks_square:4>,
<gregtech:stone_windmill_b:4>,
<gregtech:stone_windmill_a:4>,
<gregtech:stone_bricks_small:4>,
<gregtech:stone_tiled_small:4>,
];
for i in GTConcreteChisel {
mods.chisel.Carving.addVariation("gt_concrete", i);
}

# Also Dark Concrete Chiseling
var GTDarkConcreteChisel as IItemStack[] = [
<gregtech:stone_smooth:5>,
<gregtech:stone_polished:5>,
<gregtech:stone_bricks:5>,
<gregtech:stone_bricks_cracked:5>,
<gregtech:stone_bricks_mossy:5>,
<gregtech:stone_chiseled:5>,
<gregtech:stone_tiled:5>,
<gregtech:stone_tiled_small:5>,
<gregtech:stone_bricks_small:5>,
<gregtech:stone_windmill_a:5>,
<gregtech:stone_windmill_b:5>,
<gregtech:stone_bricks_square:5>
];
for i in GTDarkConcreteChisel {
mods.chisel.Carving.addVariation("gt_darkConcrete", i);
}

# Dark Concrete "Easier" Recipe

var DarkConcreteAdditionalRecipes as IItemStack[IIngredient] = {
    <gregtech:stone_smooth:4>:  <gregtech:stone_smooth:5>,
    <gregtech:stone_polished:4>:  <gregtech:stone_polished:5>,
    <gregtech:stone_bricks:4>:  <gregtech:stone_bricks:5>,
    <gregtech:stone_bricks_cracked:4>:  <gregtech:stone_bricks_cracked:5>,
    <gregtech:stone_bricks_mossy:4>:  <gregtech:stone_bricks_mossy:5>,
    <gregtech:stone_chiseled:4>:  <gregtech:stone_chiseled:5>,
    <gregtech:stone_tiled:4>:  <gregtech:stone_tiled:5>,
    <gregtech:stone_bricks_square:4>:  <gregtech:stone_bricks_square:5>,
    <gregtech:stone_windmill_b:4>:  <gregtech:stone_windmill_b:5>,
    <gregtech:stone_windmill_a:4>:  <gregtech:stone_windmill_a:5>,
    <gregtech:stone_bricks_small:4>:  <gregtech:stone_bricks_small:5>,
    <gregtech:stone_tiled_small:4>:  <gregtech:stone_tiled_small:5>,
    <gregtech:stone_cobble_mossy:4>: <gregtech:stone_cobble_mossy:5>,
    <gregtech:stone_cobble:4>: <gregtech:stone_cobble:5>

    };
for IItemStack, IIngredient in DarkConcreteAdditionalRecipes {
        SoakingPot.addRecipe(
            "DarkConcreteSoak-" + IIngredient.name,    // unique recipe name
            IIngredient,                              // recipe output
            <liquid:water> * 500,                    // input fluid
            IItemStack,                             // input item
            600                                    // recipe duration in ticks
        );
}

//Casting and Melting Concrete
Casting.addBasinRecipe(<gregtech:stone_smooth:4>, null, <liquid:concrete>, 144);

var GTConcreteMelt as IItemStack[] = [
<gregtech:stone_cobble:4>,
<gregtech:stone_smooth:4>,
<gregtech:stone_cobble_mossy:4>,
<gregtech:stone_polished:4>,
<gregtech:stone_bricks:4>,
<gregtech:stone_bricks_cracked:4>,
<gregtech:stone_bricks_mossy:4>,
<gregtech:stone_chiseled:4>,
<gregtech:stone_tiled:4>,
<gregtech:stone_bricks_square:4>,
<gregtech:stone_windmill_b:4>,
<gregtech:stone_windmill_a:4>,
<gregtech:stone_bricks_small:4>,
<gregtech:stone_tiled_small:4>,
<ore:dustConcrete>.firstItem
];
for i in GTConcreteMelt {
Melting.addRecipe(<liquid:concrete>*144, i, 350);
}

/// =========================================================================================================