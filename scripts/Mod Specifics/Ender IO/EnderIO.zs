import mods.enderio.AlloySmelter as AlloySmelter;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.actuallyadditions.Compost;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.inworldcrafting.FluidToItem;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ender IO Script                                                                                                                  //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor:0>);
recipes.addShaped(<enderio:item_basic_capacitor:0> * 1, [[null, <ore:boltGold>, <ore:dustBedrock>], [<ore:boltGold>, <ore:ingotElectricalSteel>, <ore:boltGold>],[<ore:dustBedrock>, <ore:boltGold>, null]]);

// Silver Capacitor
recipes.remove(<enderio:item_capacitor_silver>);
recipes.addShaped(<enderio:item_capacitor_silver> * 1, [[null, <ore:boltSilver>, <ore:dustBedrock>], [<ore:boltSilver>, <ore:ingotElectricalSteel>, <ore:boltSilver>],[<ore:dustBedrock>, <ore:boltSilver>, null]]);

// Simple Machine Chassis
recipes.remove(<enderio:item_material:0>);
recipes.addShaped(<enderio:item_material:0> * 1, [[<ore:barsIron>, <ore:plateElectricalSteel>, <ore:barsIron>], [<ore:plateElectricalSteel>, <ore:dustBedrock>, <ore:plateElectricalSteel>],[<ore:barsIron>, <ore:plateElectricalSteel>, <ore:barsIron>]]);

// Simple Alloy Smelter
//recipes.remove(<enderio:block_simple_alloy_smelter>);
//recipes.addShaped(<enderio:block_simple_alloy_smelter> * 1, [[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>], [<ore:craftingFurnace>, <enderio:item_material:0>, <ore:craftingFurnace>],[<ore:plateEnori>, <ore:springElectricalSteel>, <ore:plateEnori>]]);

// Simple SAG Mill
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill> * 1, [[<ore:gemFlint>, <ore:gemFlint>, <ore:gemFlint>], [<ore:plateElectricalSteel>, <enderio:item_material:0>, <ore:plateElectricalSteel>],[<ore:gearEnori>, <ore:springElectricalSteel>, <ore:gearEnori>]]);

// Dark Steel Upgrade
AlloySmelter.addRecipe(<enderio:item_dark_steel_upgrade>, [<enderio:block_dark_iron_bars>*4, <gregtech:meta_item_1:383>, <ore:gemBlackQuartz>*4], 1000, 1.0);

//Industrial Machine Chassis
assembler.recipeBuilder()
    .inputs(<ore:itemSimpleMachineChassi>, <ore:dyeMachine>)
    .fluidInputs(<liquid:empoweredoil> * 250)
    .circuit(8)
    .outputs(<ore:itemMachineChassi>.firstItem)
    .duration(200)
    .EUt(80)
.buildAndRegister();

// Organic Black Dye [Egg] and [Slimeball]
AlloySmelter.addRecipe(<enderio:item_material:50>*2, [<ore:dustCarbon>*2, <ore:egg>, <contenttweaker:ink_dropplet>*2], 1000, 1.0);
AlloySmelter.addRecipe(<enderio:item_material:50>*4, [<ore:dustCarbon>*4, <ore:slimeball>, <contenttweaker:ink_dropplet>*2], 1000, 1.0);

mixer.recipeBuilder()
    .inputs(<ore:dustCarbon>*4, <ore:slimeball>, <contenttweaker:ink_dropplet>*2)
    .outputs(<enderio:item_material:50>*4)
    .duration(200)
    .EUt(48)
.buildAndRegister();

// Organic Green Dye [Egg] and [Slimeball]
AlloySmelter.addRecipe(<enderio:item_material:48>*2, [<enderio:item_material:46>*6, <ore:egg>, <ore:dustCarbon>*2], 1000, 1.0);
AlloySmelter.addRecipe(<enderio:item_material:48>*4, [<enderio:item_material:46>*12, <ore:slimeball>, <ore:dustCarbon>*2], 1000, 1.0);

mixer.recipeBuilder()
    .inputs(<enderio:item_material:46>*12, <ore:slimeball>, <ore:dustCarbon>*2)
    .outputs(<enderio:item_material:48>*4)
    .duration(200)
    .EUt(48)
.buildAndRegister();

// Organic Brown Dye [Egg] and [Slimeball]
AlloySmelter.addRecipe(<enderio:item_material:49>*2, [<enderio:item_material:47>*6, <ore:egg>, <ore:dustCarbon>*2], 1000, 1.0);
AlloySmelter.addRecipe(<enderio:item_material:49>*4, [<enderio:item_material:47>*12, <ore:slimeball>, <ore:dustCarbon>*2], 1000, 1.0);

mixer.recipeBuilder()
    .inputs(<enderio:item_material:47>*12, <ore:slimeball>, <ore:dustCarbon>*2)
    .outputs(<enderio:item_material:49>*4)
    .duration(200)
    .EUt(48)
.buildAndRegister();

// SAG Mill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill> * 1, [[<ore:gemFlint>, <ore:gemFlint>, <ore:gemFlint>], [<ore:plateDarkSteel>, <enderio:block_simple_sag_mill>, <ore:plateDarkSteel>],[<ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>]]);

// Enhanced SAG Mill
recipes.remove(<enderio:block_enhanced_sag_mill>);
recipes.addShaped(<enderio:block_enhanced_sag_mill> * 1, [[<ore:gemFlint>, <ore:gemFlint>, <ore:gemFlint>], [<ore:plateEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:plateEndSteel>],[<ore:gearVibrant>, <gregtech:meta_item_1:173>, <ore:gearVibrant>]]);

// Alloy Smelter
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped(<enderio:block_alloy_smelter> * 1, [[<ore:plateDarkSteel>, <ore:craftingFurnace>, <ore:plateDarkSteel>], [<ore:craftingFurnace>, <ore:itemMachineChassi>, <ore:craftingFurnace>],[<ore:gearDark>, <ore:springDarkSteel>, <ore:gearDark>]]);

// Enhanced Alloy Smelter
recipes.remove(<enderio:block_enhanced_alloy_smelter>);
recipes.addShaped(<enderio:block_enhanced_alloy_smelter> * 1, [[<ore:plateEndSteel>, <minecraft:cauldron>, <ore:plateEndSteel>], [<ore:plateDoubleDarkSteel>, <ore:itemEnhancedMachineChassi>, <ore:plateDoubleDarkSteel>],[<ore:gearVibrant>, <ore:springEndSteel>, <ore:gearVibrant>]]);

// Stirling Generator
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped(<enderio:block_stirling_generator> * 1, [[<ore:plateDarkSteel>, <ore:craftingFurnace>, <ore:plateDarkSteel>], [<ore:springDarkSteel>, <enderio:item_material:1>, <ore:springDarkSteel>],[<ore:gearDark>, <gregtech:meta_item_1:172>, <ore:gearDark>]]);

// Combustion Generator
recipes.remove(<enderio:block_combustion_generator>);
recipes.addShaped(<enderio:block_combustion_generator> * 1, [[<ore:plateDarkSteel>, <ore:plateDoubleElectricalSteel>, <ore:plateDarkSteel>], [<enderio:block_tank:0>, <enderio:item_material:1>, <enderio:block_tank:0>],[<ore:gearDark>, <gregtech:meta_item_1:172>, <ore:gearDark>]]);

// Enhanced Combustion Generator
recipes.remove(<enderio:block_enhanced_combustion_generator>);
recipes.addShaped(<enderio:block_enhanced_combustion_generator> * 1, [[<ore:plateEndSteel>, <enderio:block_combustion_generator>, <ore:plateEndSteel>], [<enderio:block_tank:1>, <ore:itemEnhancedMachineChassi>, <enderio:block_tank:1>],[<ore:gearVibrant>, <gregtech:meta_item_1:173>, <ore:gearVibrant>]]);

// Wired Charger
recipes.remove(<enderio:block_wired_charger>);
recipes.addShaped(<enderio:block_wired_charger> * 1, [[<ore:plateElectricalSteel>, <ore:gearDarkSteel>, <ore:plateElectricalSteel>], [<ore:batteryLv>, <ore:itemMachineChassi>, <ore:batteryLv>],[<ore:plateElectricalSteel>, <ore:gearDarkSteel>, <ore:plateElectricalSteel>]]);

// Enhanced Wired Charger
recipes.remove(<enderio:block_enhanced_wired_charger>);
recipes.addShaped(<enderio:block_enhanced_wired_charger> * 1, [[<ore:plateEndSteel>, <ore:gearEndSteel>, <ore:plateEndSteel>], [<ore:batteryMv>, <ore:itemEnhancedMachineChassi>, <ore:batteryMv>],[<ore:gearVibrant>, <ore:springElectricalSteel>, <ore:gearVibrant>]]);

// Wireless Energy Transmitter Dish Assembly
recipes.remove(<enderio:item_material:65>);
recipes.addShaped(<enderio:item_material:65> * 1, [[<ore:boltElectricalSteel>, <ore:plateElectricalSteel>, null], [null, <ore:stickElectricalSteel>, <ore:ringElectricalSteel>],[<ore:boltElectricalSteel>, <ore:plateElectricalSteel>, null]]);

// The Vat
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat> * 1, [[<ore:plateElectricalSteel>, <minecraft:cauldron>, <ore:plateElectricalSteel>], [<enderio:block_tank:0>, <enderio:item_material:1>, <enderio:block_tank:0>],[<ore:plateDoubleDarkSteel>, <gregtech:machine:215>, <ore:plateDoubleDarkSteel>]]);

// The Enhanced Vat
recipes.remove(<enderio:block_enhanced_vat>);
recipes.addShaped(<enderio:block_enhanced_vat> * 1, [[<ore:plateEndSteel>, <minecraft:cauldron>, <ore:plateEndSteel>], [<enderio:block_tank:1>, <ore:itemEnhancedMachineChassi>, <enderio:block_tank:1>],[<ore:gearVibrant>, <ore:springEndSteel>, <ore:gearVibrant>]]);

// Painting Machine
recipes.remove(<enderio:block_painter>);
recipes.addShaped(<enderio:block_painter> * 1, [[<ore:plateNetherQuartz>, <ore:lensDiamond>, <ore:plateNetherQuartz>], [<ore:gearIronInfinity>, <enderio:item_material:0>, <ore:gearIronInfinity>],[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>]]);

// Power Buffer
recipes.remove(<enderio:block_buffer:1>);
recipes.addShaped(<enderio:block_buffer:1> * 1, [[<ore:plateConstructionAlloy>, <ore:plateElectricalSteel>, <ore:plateConstructionAlloy>], [<ore:batteryLv>, <enderio:item_material:1>, <ore:batteryLv>],[<ore:plateConstructionAlloy>, <ore:plateElectricalSteel>, <ore:plateConstructionAlloy>]]);

// Impulse Hopper
recipes.remove(<enderio:block_impulse_hopper>);
recipes.addShaped(<enderio:block_impulse_hopper> * 1, [[<ore:plateElectricalSteel>, <ore:hopper>, <ore:plateElectricalSteel>], [<ore:gearIronInfinity>, <enderio:item_material:1>, <ore:gearIronInfinity>],[<ore:plateElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:plateElectricalSteel>]]);

// Crafter
recipes.remove(<enderio:block_crafter>);
recipes.addShaped(<enderio:block_crafter> * 1, [[<ore:plateSilicon>, <ore:plateSilicon>, <ore:plateSilicon>], [<ore:springSmallConstructionAlloy>, <enderio:item_material:1>, <ore:springSmallConstructionAlloy>],[<ore:gearIronInfinity>, <ore:craftingTableWood>, <ore:gearIronInfinity>]]);

// Conduit Facade
recipes.remove(<enderio:item_conduit_facade:0>);
recipes.addShaped(<enderio:item_conduit_facade:0> * 4, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:itemConduitBinder>, null, <ore:itemConduitBinder>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//Dark Steel Anvil
recipes.remove(<enderio:block_dark_steel_anvil>);

recipes.addShaped(<enderio:block_dark_steel_anvil>, [
[<ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:blockDarkSteel>],
[<ore:screwDarkSteel>, <ore:blockDarkSteel>, <ore:screwDarkSteel>],
[<ore:plateDarkSteel>, <ore:blockDarkSteel>, <ore:plateDarkSteel>]]);

alloy.recipeBuilder()
    .inputs(<ore:ingotDarkSteel>*31)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<enderio:block_dark_steel_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:dark_steel>*4464)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<enderio:block_dark_steel_anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

// Fluid Tank
recipes.remove(<enderio:block_tank:0>);
recipes.addShaped(<enderio:block_tank:0> * 1, [[<ore:plateConstructionAlloy>, <ore:barsIron>, <ore:plateConstructionAlloy>], [<ore:barsIron>, <ore:strengthenedGlass>, <ore:barsIron>],[<ore:plateConstructionAlloy>, <ore:barsIron>, <ore:plateConstructionAlloy>]]);

// Pressurized Fluid Tank (Configured)
recipes.remove(<enderio:block_tank:1>);
recipes.addShaped(<enderio:block_tank:1> * 1, [[<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>], [<enderio:block_dark_iron_bars>, <ore:blockGlassHardened>, <enderio:block_dark_iron_bars>],[<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>]]);

//Soul Machine Chassis
assembler.recipeBuilder()
    .inputs(<ore:itemMachineChassi>, <ore:dyeSoulMachine>)
    .fluidInputs(<liquid:soularium> * 864)
    .circuit(8)
    .outputs(<ore:itemSoulMachineChassi>.firstItem)
    .duration(200)
    .EUt(260)
.buildAndRegister();

// Slice'N'Splice
recipes.remove(<enderio:block_slice_and_splice>);
recipes.addShaped(<enderio:block_slice_and_splice> * 1, [[<ore:lightPlateSoularium>, <ore:itemSkull>, <ore:lightPlateSoularium>], [<ore:lightPlateSoularium>, <enderio:item_material:53>, <ore:lightPlateSoularium>],[<ore:gearEnergized>, <ore:springDarkSteel>, <ore:gearEnergized>]]);

// Soul Binder
recipes.remove(<enderio:block_soul_binder>);
recipes.addShaped(<enderio:block_soul_binder> * 1, [[<ore:heavyPlateSoularium>, <enderio:block_enderman_skull:0>, <ore:heavyPlateSoularium>], [<minecraft:skull:4>, <enderio:item_material:53>, <minecraft:skull:2>],[<ore:heavyPlateSoularium>, <minecraft:skull:0>, <ore:heavyPlateSoularium>]]);

//End Steel Chassis
assembler.recipeBuilder()
    .inputs(<ore:itemSoulMachineChassi>, <enderio:block_end_iron_bars>*4, <extrautils2:endershard>*8)
    .fluidInputs(<liquid:end_steel> * 576)
    .circuit(8)
    .outputs(<ore:itemEndSteelMachineChassi>.firstItem)
    .duration(210)
    .EUt(270)
.buildAndRegister();

//Enhanced Machine Chassis
assembler.recipeBuilder()
    .inputs(<ore:itemEndSteelMachineChassi>, <ore:dyeEnhancedMachine>)
    .fluidInputs(<liquid:gas_dwarf> * 250)
    .circuit(8)
    .outputs(<ore:itemEnhancedMachineChassi>.firstItem)
    .duration(250)
    .EUt(280)
.buildAndRegister();

//Nutritious Stick
chemical_bath.recipeBuilder()
    .inputs(<forestry:oak_stick>)
    .fluidInputs(<liquid:nutrient_distillation> * 125)
    .outputs(<ore:itemNutritiousStick>.firstItem)
    .duration(150)
    .EUt(60)
.buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ender IO Alloys Script                                                                                                           //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Crude Steel
AlloySmelter.addRecipe(<ore:ingotCrudeSteel>.firstItem*2, [<ore:ingotSteel>, <ore:gemLigniteCoal>, <ore:dustSiliconDioxide>], 2000, 1.0);

//Conductive Iron
alloy.recipeBuilder()
    .inputs(<ore:dustRedstone>, <ore:ingotWroughtIron>)
    .outputs(<ore:ingotConductiveIron>.firstItem)
    .duration(120)
    .EUt(16)
.buildAndRegister();

//Redstone Alloy
// alloy.recipeBuilder()
//     .inputs(<ore:dustSilicon>, <ore:ingotRedAlloy>)
//     .outputs(<ore:ingotRedstoneAlloy>.firstItem)
//     .duration(180)
//     .EUt(20)
// .buildAndRegister();

var Redstone_Alloy = HighOven.newMixRecipe(<liquid:redstone_alloy> *144, <liquid:tin>*144, 5400);
Redstone_Alloy.addOxidizer(<ore:dustRedstone>, 50);
Redstone_Alloy.addReducer(<ore:itemInfinityGoop>, 100);
Redstone_Alloy.addPurifier(<ore:dustSilicon>, 50);
Redstone_Alloy.register();

<ore:ingotRedstoneAlloy>.firstItem.addTooltip(format.white("Can also be made inside a ") + format.lightPurple("High Oven") + format.white("."));

//Iron Alloy
AlloySmelter.addRecipe(<ore:ingotConstructionAlloy>.firstItem*2, [<ore:ingotIron>, <ore:ingotLead>, <ore:ingotBrickNether>], 1000, 1.0);

//Electrical Steel
blast_furnace.recipeBuilder()
    .inputs(<ore:dustSilicon>, <ore:ingotSteel>)
    .outputs(<ore:ingotElectricalSteel>.firstItem)
    .property("temperature", 1800)
    .duration(400)
    .EUt(120)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustSilicon>, <ore:ingotSteel>)
    .fluidInputs(<liquid:oxygen> * 250)
    .outputs(<ore:ingotElectricalSteel>.firstItem)
    .property("temperature", 1700)
    .duration(250)
    .EUt(115)
.buildAndRegister();

//Dark Steel
blast_furnace.recipeBuilder()
    .inputs(<ore:dustRefinedObsidian>, <ore:ingotBlackSteel>)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1800)
    .duration(400)
    .EUt(120)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustRefinedObsidian>, <ore:ingotBlackSteel>)
    .fluidInputs(<liquid:oxygen> * 250)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1700)
    .duration(250)
    .EUt(115)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:ingotRefinedObsidian>, <ore:ingotBlackSteel>)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1800)
    .duration(400)
    .EUt(120)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:ingotRefinedObsidian>, <ore:ingotBlackSteel>)
    .fluidInputs(<liquid:oxygen> * 250)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1700)
    .duration(250)
    .EUt(115)
.buildAndRegister();

/*
//Energetic Alloy
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotGold>, <ore:dustRedstone>, <ore:dustGlowstone>)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 1800)
    .duration(400)
    .EUt(150)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:ingotGold>, <ore:dustRedstone>, <ore:dustGlowstone>)
    .fluidInputs(<liquid:nitrogen> * 250)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 1700)
    .duration(250)
    .EUt(128)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustGold>, <ore:dustRedstone>, <ore:dustGlowstone>)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 1800)
    .duration(400)
    .EUt(150)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustGold>, <ore:dustRedstone>, <ore:dustGlowstone>)
    .fluidInputs(<liquid:nitrogen> * 250)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 1700)
    .duration(250)
    .EUt(128)
.buildAndRegister();
*/

//Pulsating Iron
AlloySmelter.addRecipe(<ore:ingotPulsatingIron>.firstItem, [<ore:gemEnderPearl>, <ore:ingotWroughtIron>], 1000, 1.0);
/*
alloy.recipeBuilder()
    .inputs(<ore:gemEnderPearl>, <ore:ingotWroughtIron>)
    .outputs(<ore:ingotPulsatingIron>.firstItem)
    .duration(180)
    .EUt(118)
.buildAndRegister();
*/

//Vibrant Alloy
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotEnergeticAlloy>, <ore:ingotTerrastone>, <ore:gemEnderPearl>)
    .fluidInputs(<liquid:empoweredoil> * 250)
    .outputs(<ore:ingotVibrantAlloy>.firstItem*2)
    .property("temperature", 2000)
    .duration(250)
    .EUt(300)
.buildAndRegister();

//Vivid Alloy
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotEnergeticSilver>, <ore:ingotRunicSteel>, <ore:gemEnderPearl>)
    .fluidInputs(<liquid:empoweredoil> * 250)
    .outputs(<ore:ingotVividAlloy>.firstItem*2)
    .property("temperature", 2000)
    .duration(250)
    .EUt(300)
.buildAndRegister();

//Soularium
blast_furnace.recipeBuilder()
    .inputs(<ore:soulSand>, <ore:ingotGold>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:scorched> * 144)
    .outputs(<ore:ingotSoularium>.firstItem)
    .property("temperature", 2000)
    .duration(250)
    .EUt(300)
.buildAndRegister();

//End Steel
blast_furnace.recipeBuilder()
    .inputs(<ore:dustEndstone>, <ore:ingotDarkSteel>, <ore:dustUvarovite>)
    .outputs(<ore:ingotEndSteel>.firstItem*2)
    .property("temperature", 2700)
    .duration(400)
    .EUt(600)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:dustEndstone>, <ore:ingotDarkSteel>, <ore:dustUvarovite>)
    .fluidInputs(<liquid:nitrogen> * 250)
    .outputs(<ore:ingotEndSteel>.firstItem*2)
    .property("temperature", 2600)
    .duration(250)
    .EUt(512)
.buildAndRegister();

//Pulsating Crystal
recipes.remove(<enderio:item_material:14>);
autoclave.recipeBuilder()
    .inputs(<ore:gemDiamond>)
    .fluidInputs(<liquid:pulsating_iron> * 128)
    .outputs(<ore:itemPulsatingCrystal>.firstItem)
    .duration(250)
    .EUt(512)
.buildAndRegister();

//Vibrant Crystal
recipes.remove(<enderio:item_material:15>);
autoclave.recipeBuilder()
    .inputs(<ore:gemEmerald>)
    .fluidInputs(<liquid:vibrant_alloy> * 128)
    .outputs(<ore:itemVibrantCrystal>.firstItem)
    .duration(250)
    .EUt(512)
.buildAndRegister();

//Infinity Dust and Infinity Dust Fog

<enderio:item_material:20>.addTooltip(format.darkGray("Can only be obtained via Mobs Spawned by an ") + (format.darkPurple("Infinity Dust") + (format.darkGray(" Fog."))));

recipes.addShapeless("EnderIOInfinityDust",<enderio:block_infinity_fog>*4,[<ore:dustBedrock>, <ore:gtceMortars>]);

<enderio:block_infinity_fog>.addTooltip(format.darkGray("Created by chance when ") + (format.darkPurple("left clicking Bedrock with a Soul Bead.")));
<enderio:block_infinity_fog>.addShiftTooltip(format.darkGray(format.italic("It will Consume 4 XP and often destroy the Soul Bead used.")));

solidifier.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:19>)
    .fluidInputs([<liquid:liquid_nightmares> * 144])
    .outputs(<enderio:block_infinity_fog>*9)
    .duration(200)
    .EUt(12)
.buildAndRegister();

//Tormented Enderman Head
chemical_bath.recipeBuilder()
	.inputs(<enderio:block_enderman_skull>)
	.fluidInputs([<liquid:liquid_nightmares> * 1000])
	.outputs(<enderio:block_enderman_skull:2>)
    .duration(180)
    .EUt(18)
.buildAndRegister();

//Soul Vial
recipes.remove(<enderio:item_soul_vial>);
forming.recipeBuilder()
    .inputs(<ore:plateDoubleSoularium>, <ore:blockGlassHardened>*5)
    .outputs(<enderio:item_soul_vial>)
    .duration(160)
    .EUt(470)
.buildAndRegister();

// Dimensional Transceiver
recipes.remove(<enderio:block_transceiver>);
recipes.addShaped(<enderio:block_transceiver> * 1, [[<ore:lightPlateEnderium>, <ore:skullSentientEnder>, <ore:lightPlateEnderium>], [<ore:fusedQuartz>, <mekanism:teleportationcore>, <ore:fusedQuartz>],[<ore:lightPlateEnderium>, <ore:itemWeatherCrystal>, <ore:lightPlateEnderium>]]);

//Magnet
recipes.remove(<enderio:item_magnet>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:lightPlateConductiveIron>, <ore:itemVibrantCrystal>, <ore:lightPlateConductiveIron>],
    [<ore:lightPlateConductiveIron>, <actuallyadditions:item_suction_ring>, <ore:lightPlateConductiveIron>],
    [<ore:plateElectricalSteel>, null, <ore:plateElectricalSteel>]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<enderio:item_magnet>)
.create();

//Night Vision Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}) * 1, [<enderio:item_dark_steel_upgrade>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>]);


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ender IO Conduit Script                                                                                                          //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Conduit Binder Composite
recipes.remove(<enderio:item_material:22>);
mixer.recipeBuilder()
    .inputs(<ore:dustClay>*2, <ore:gravel>*2, <ore:dustQuartzSand>*2)
    .fluidInputs(<liquid:concrete> * 288)
    .outputs(<enderio:item_material:22>*12)
    .duration(180)
    .EUt(16)
.buildAndRegister();

# Binder now needs a Composter
furnace.remove(<enderio:item_material:4>);
mods.actuallyadditions.Compost.addRecipe(<enderio:item_material:4>, <quark:quilted_wool:8>, <enderio:item_material:22>, <biomesoplenty:dirt:2>);

// Energy Conduit (Conductive Iron)
recipes.remove(<enderio:item_power_conduit:0>);
recipes.addShaped(<enderio:item_power_conduit:0> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:wireGtSingleConductiveIron>, <ore:wireGtSingleConductiveIron>, <ore:wireGtSingleConductiveIron>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Energy Conduit (Energetic Alloy)
recipes.remove(<enderio:item_power_conduit:1>);
recipes.addShaped(<enderio:item_power_conduit:1> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:wireGtSingleEnergeticAlloy>, <ore:wireGtSingleEnergeticAlloy>, <ore:wireGtSingleEnergeticAlloy>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Energy Conduit (Vibrant Alloy)
recipes.remove(<enderio:item_power_conduit:2>);
recipes.addShaped(<enderio:item_power_conduit:2> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:wireGtSingleVibrantAlloy>, <ore:wireGtSingleVibrantAlloy>, <ore:wireGtSingleVibrantAlloy>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Item Conduit
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped(<enderio:item_item_conduit> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:wireGtSinglePulsatingIron>, <ore:wireGtSinglePulsatingIron>, <ore:wireGtSinglePulsatingIron>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Redstone Conduit
recipes.remove(<enderio:item_redstone_conduit:0>);
recipes.addShaped(<enderio:item_redstone_conduit:0> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Fluid Conduit Tier I
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:fusedQuartz>, <ore:fusedQuartz>, <ore:fusedQuartz>],[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Fluid Conduit Tier II
recipes.remove(<enderio:item_liquid_conduit:1>);
assembler.recipeBuilder()
    .inputs(<enderio:item_liquid_conduit>*3, <ore:lightPlateBlueAlloy>, <ore:itemConduitBinder>*6)
    .circuit(9)
    .outputs(<enderio:item_liquid_conduit:1>*3)
    .duration(100)
    .EUt(112)
.buildAndRegister();

// Fluid Conduit Tier III
recipes.remove(<enderio:item_liquid_conduit:2>);
assembler.recipeBuilder()
    .inputs(<enderio:item_liquid_conduit:1>*3, <ore:heavyPlateVibrantAlloy>, <ore:itemConduitBinder>*6)
    .circuit(9)
    .outputs(<enderio:item_liquid_conduit:2>*3)
    .duration(100)
    .EUt(128)
.buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ender IO Armors Script                                                                                                           //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// End Armor =======

recipes.remove(<enderio:item_end_steel_helmet>);
RecipeBuilder.get("blacksmith")
        .setShaped([[null, null, null], [<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>]])
        .addOutput(<enderio:item_end_steel_helmet> * 1)
        .setFluid(<liquid:lava> * 500)
        .addTool(<ore:gtceHardHammers>, 10)
.create();


recipes.remove(<enderio:item_end_steel_chestplate>);
RecipeBuilder.get("blacksmith")
    .setShaped([[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>], [<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_end_steel_chestplate> * 1)
.create();

recipes.remove(<enderio:item_end_steel_leggings>);
RecipeBuilder.get("blacksmith")
    .setShaped([[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>], [<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],[<ore:plateEndSteel>, null, <ore:plateEndSteel>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_end_steel_leggings> * 1)
.create();

recipes.remove(<enderio:item_end_steel_boots>);
RecipeBuilder.get("blacksmith")
    .setShaped([[null, null, null], [<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],[<ore:plateEndSteel>, null, <ore:plateEndSteel>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_end_steel_boots> * 1)
.create();

// Stellar  Armor =======

recipes.remove(<enderio:item_stellar_alloy_helmet>);
RecipeBuilder.get("blacksmith")
    .setShaped([[null, null, null], [<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>],[<ore:plateStellarAlloy>, <ore:skullSentientEnder>, <ore:plateStellarAlloy>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_stellar_alloy_helmet> * 1)
.create();

recipes.remove(<enderio:item_stellar_alloy_chestplate>);
RecipeBuilder.get("blacksmith")
    .setShaped([[<ore:plateStellarAlloy>, <ore:skullSentientEnder>, <ore:plateStellarAlloy>], [<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>],[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_stellar_alloy_chestplate> * 1)
.create();

recipes.remove(<enderio:item_stellar_alloy_leggings>);
RecipeBuilder.get("blacksmith")
    .setShaped([[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], [<ore:plateStellarAlloy>, <ore:skullSentientEnder>, <ore:plateStellarAlloy>],[<ore:plateStellarAlloy>, null, <ore:plateStellarAlloy>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_stellar_alloy_leggings> * 1)
.create();

recipes.remove(<enderio:item_stellar_alloy_boots>);
RecipeBuilder.get("blacksmith")
    .setShaped([[null, null, null], [<ore:plateStellarAlloy>, <ore:skullSentientEnder>, <ore:plateStellarAlloy>],[<ore:plateStellarAlloy>, null, <ore:plateStellarAlloy>]])
    .setFluid(<liquid:lava> * 500)
    .addTool(<ore:gtceHardHammers>, 10)
    .addOutput(<enderio:item_stellar_alloy_boots> * 1)
.create();


// Powered Spawner
recipes.remove(<enderio:block_powered_spawner>);
recipes.addShaped(<enderio:block_powered_spawner> * 1, [[<ore:plateCrystallinePinkSlime>, <ore:itemSkull>, <ore:plateCrystallinePinkSlime>], [<tconstruct:large_plate>.withTag({Material: "meat_metal"}), <ore:itemSoulMachineChassi>, <tconstruct:large_plate>.withTag({Material: "meat_metal"})],[<ore:itemVibrantCrystal>, <ore:skullZombieController>, <ore:itemVibrantCrystal>]]);

//Infinity Reagent ========================
mods.inworldcrafting.FluidToItem.transform(<ore:itemInfinityGoop>.firstItem, <liquid:glue>, [<actuallyadditions:item_misc:11>], true);
mods.inworldcrafting.FluidToItem.transform(<ore:itemInfinityGoop>.firstItem*8, <liquid:glue>, [<ore:gemCharcoal>.firstItem], true);

mods.inworldcrafting.FluidToItem.transform(<ore:itemInfinityGoop>.firstItem, <liquid:glue>, [<actuallyadditions:item_misc:10>], true);
mods.inworldcrafting.FluidToItem.transform(<ore:itemInfinityGoop>.firstItem*8, <liquid:glue>, [<ore:gemCoal>.firstItem], true);

#Charcoal
chemical_bath.recipeBuilder()
    .inputs(<actuallyadditions:item_misc:11>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem)
    .duration(30)
    .EUt(15)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:gemCharcoal>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem*8)
    .duration(60)
    .EUt(30)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:blockCharcoal>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem*64, <ore:itemInfinityGoop>.firstItem*8)
    .duration(120)
    .EUt(40)
.buildAndRegister();

#Coal
chemical_bath.recipeBuilder()
    .inputs(<actuallyadditions:item_misc:10>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem)
    .duration(30)
    .EUt(15)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:gemCoal>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem*8)
    .duration(60)
    .EUt(30)
.buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:blockCoal>)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<ore:itemInfinityGoop>.firstItem*64, <ore:itemInfinityGoop>.firstItem*8)
    .duration(120)
    .EUt(40)
.buildAndRegister();
