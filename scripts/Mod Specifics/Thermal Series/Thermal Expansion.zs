import mods.jei.JEI as JEI;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.mekanism.infuser as MetallurgicInfuser;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         															                                                                                               //
//			Thermal Expansion Fixes                                                                                                              //
//			         																                                                                                             //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Adding Florbs and Morbs do JEI (after hiding them in the Configs)
JEI.addItem(<thermalexpansion:florb>);
JEI.addItem(<thermalexpansion:morb>);

// Thermal "Chassis's" =====================

// Device Frame ---> Thermical Blue Alloy Chassis
<thermalexpansion:frame:64>.displayName = "Thermical Blue Alloy Chassis";

recipes.remove(<thermalexpansion:frame:64>);
assembler.recipeBuilder()
    .inputs(<forestry:hardened_machine>, <ore:plateBlueAlloy>*6)
    .fluidInputs(<liquid:steel> * 288)
    .circuit(8)
    .outputs(<thermalexpansion:frame:64>)
    .duration(300)
    .EUt(480)
.buildAndRegister();

// Machine Frame ---> Thermical Silver Chassis
<thermalexpansion:frame>.displayName = "Thermical Silver Chassis";

recipes.remove(<thermalexpansion:frame>);
assembler.recipeBuilder()
    .inputs(<ore:itemEnhancedMachineChassi>, <ore:plateEnergeticSilver>*6)
    .fluidInputs(<liquid:blue_steel> * 288)
    .circuit(8)
    .outputs(<thermalexpansion:frame>)
    .duration(300)
    .EUt(450)
.buildAndRegister();

// Energy Cell Frame ---> Thermical Lead Chassis
<thermalexpansion:frame:128>.displayName = "Thermical Lead Chassis";

recipes.remove(<thermalexpansion:frame:128>);
chemical_bath.recipeBuilder()
    .inputs(<thermalexpansion:frame>)
    .fluidInputs(<liquid:lead> * 1152)
    .outputs(<thermalexpansion:frame:128>)
    .duration(300)
    .EUt(512)
.buildAndRegister();

// Hardened Cell Frame ---> Thermical HSLA Chassis
<thermalexpansion:frame:129>.displayName = "Thermical HSLA Chassis";

recipes.remove(<thermalexpansion:frame:129>);
chemical_bath.recipeBuilder()
    .inputs(<thermalexpansion:frame:128>)
    .fluidInputs(<liquid:hsla_steel> * 1152)
    .outputs(<thermalexpansion:frame:129>)
    .duration(320)
    .EUt(512)
.buildAndRegister();

// Reinforced Cell Frame ---> Thermical Lumium Chassis
<thermalexpansion:frame:130>.displayName = "Thermical Lumium Chassis";

recipes.remove(<thermalexpansion:frame:130>);
chemical_bath.recipeBuilder()
    .inputs(<thermalexpansion:frame:129>)
    .fluidInputs(<liquid:lumium> * 1152)
    .outputs(<thermalexpansion:frame:130>)
    .duration(320)
    .EUt(570)
.buildAndRegister();

// Signalum Cell Frame ---> Thermical Signalum Chassis
<thermalexpansion:frame:131>.displayName = "Thermical Signalum Chassis";

recipes.remove(<thermalexpansion:frame:131>);
chemical_bath.recipeBuilder()
    .inputs(<thermalexpansion:frame:130>)
    .fluidInputs(<liquid:signalum> * 1152)
    .outputs(<thermalexpansion:frame:131>)
    .duration(370)
    .EUt(570)
.buildAndRegister();

// Resonant Cell Frame ---> Thermical Enderium Chassis
<thermalexpansion:frame:132>.displayName = "Thermical Enderium Chassis";

recipes.remove(<thermalexpansion:frame:132>);
chemical_bath.recipeBuilder()
    .inputs(<thermalexpansion:frame:131>)
    .fluidInputs(<liquid:enderium> * 1152)
    .outputs(<thermalexpansion:frame:132>)
    .duration(380)
    .EUt(600)
.buildAndRegister();

#### Filling the "Energy Cell Frames"

MetallurgicInfuser.addRecipe("REDSTONE", 640, <thermalexpansion:frame:130>, <thermalexpansion:frame:146>);
MetallurgicInfuser.addRecipe("REDSTONE", 1280, <thermalexpansion:frame:131>, <thermalexpansion:frame:147>);
MetallurgicInfuser.addRecipe("REDSTONE", 1920, <thermalexpansion:frame:132>, <thermalexpansion:frame:148>);

// ======================================== //


//Thermal Miscelaneous Stuff =====================

//Morb
recipes.removeByRecipeName("thermalexpansion:morb");
recipes.removeByRecipeName("thermalexpansion:morb_1");
recipes.removeByRecipeName("thermalexpansion:morb_2");
recipes.removeByRecipeName("thermalexpansion:morb_3");
recipes.removeByRecipeName("thermalexpansion:morb_4");

alloy.recipeBuilder()
	.inputs(<thermalexpansion:florb>, <ore:foilSoularium>*4)
	.outputs(<thermalexpansion:morb>)   
	.duration(100)
    .EUt(240)
.buildAndRegister();

# Reusable Morb
alloy.recipeBuilder()
	.inputs(<thermalexpansion:morb>, <ore:foilSignalum>*4)
	.outputs(<thermalexpansion:morb:1>)   
	.duration(100)
    .EUt(240)
.buildAndRegister();

//Florb
recipes.removeByRecipeName("thermalexpansion:florb");
recipes.removeByRecipeName("thermalexpansion:florb_1");
recipes.removeByRecipeName("thermalexpansion:florb_2");
recipes.removeByRecipeName("thermalexpansion:florb_3");
recipes.removeByRecipeName("thermalexpansion:florb_4");

solidifier.recipeBuilder()
	.fluidInputs(<liquid:stainless_steel>*288)
    .notConsumable(<gregtech:meta_item_1:17>)
	.outputs(<thermalexpansion:florb> * 4)   
	.duration(87)
    .EUt(140)
.buildAndRegister();

# Magmatic Florb
alloy.recipeBuilder()
	.inputs(<thermalexpansion:florb>, <ore:foilArdite>*4)
	.outputs(<thermalexpansion:florb:1>)   
	.duration(100)
    .EUt(240)
.buildAndRegister();

// Portable Tank (Basic)
recipes.remove(<thermalexpansion:tank:0>);
recipes.addShaped(<thermalexpansion:tank:0> * 1, [[<ore:plateConstructionAlloy>, <ore:strengthenedGlass>, <ore:plateConstructionAlloy>], [<ore:strengthenedGlass>, <ore:plateDoubleCopper>, <ore:strengthenedGlass>],[<ore:plateConstructionAlloy>, <thermalfoundation:material:512>, <ore:plateConstructionAlloy>]]);

//Reservoir (Basic)
recipes.removeByRecipeName("thermalexpansion:reservoir");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <ore:ringMenril>, <ore:screwSteel>],
    [<ore:lightPlateCopper>, <gregtech:meta_item_1:80>, <ore:lightPlateCopper>],
    [<ore:plateCopper>, <thermalfoundation:material:512>, <ore:plateCopper>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:reservoir>)
.create();

//Reservoir (Hardened)
recipes.removeByRecipeName("thermalexpansion:reservoir_1");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <ore:ringMenril>, <ore:screwSteel>],
    [<ore:lightPlateInvar>, <thermalexpansion:reservoir>, <ore:lightPlateInvar>],
    [<ore:plateInvar>, <ore:gearInvar>, <ore:plateInvar>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:reservoir:1>)
.create();

//Reservoir (Reinforced)
recipes.removeByRecipeName("thermalexpansion:reservoir_2");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <ore:ringMenril>, <ore:screwSteel>],
    [<ore:lightPlateElectrum>, <thermalexpansion:reservoir:1>, <ore:lightPlateElectrum>],
    [<ore:plateElectrum>, <ore:gearElectrum>, <ore:plateElectrum>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:reservoir:2>)
.create();

//Reservoir (Signalum)
recipes.removeByRecipeName("thermalexpansion:reservoir_3");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwStainlessSteel>, <ore:ringMenril>, <ore:screwStainlessSteel>],
    [<ore:lightPlateSignalum>, <thermalexpansion:reservoir:2>, <ore:lightPlateSignalum>],
    [<ore:plateSignalum>, <ore:gearSignalum>, <ore:plateSignalum>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:reservoir:3>)
.create();

//Reservoir (Enderium)
recipes.removeByRecipeName("thermalexpansion:reservoir_4");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwStainlessSteel>, <ore:ringMenril>, <ore:screwStainlessSteel>],
    [<ore:lightPlateEnderium>, <thermalexpansion:reservoir:2>, <ore:lightPlateEnderium>],
    [<ore:plateEnderium>, <ore:gearEnderium>, <ore:plateEnderium>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:reservoir:4>)
.create();

//Flux Capacitor (Basic)
recipes.removeByRecipeName("thermalexpansion:capacitor");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <contenttweaker:etchedredalloywiring>, <ore:screwSteel>],
    [<ore:lightPlateLead>, <simplyjetpacks:metaitem:4>, <ore:lightPlateLead>],
    [<ore:gearRedAlloy>, <ore:dustSulfur>, <ore:gearRedAlloy>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:capacitor>)
.create();

//Flux Capacitor (Hardened)
recipes.removeByRecipeName("thermalexpansion:capacitor_1");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <contenttweaker:etchedredalloywiring>, <ore:screwSteel>],
    [<ore:lightPlateInvar>, <thermalexpansion:capacitor>, <ore:lightPlateInvar>],
    [<ore:gearRedAlloy>, <ore:dustSulfur>, <ore:gearRedAlloy>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:capacitor:1>)
.create();

//Flux Capacitor (Reinforced)
recipes.removeByRecipeName("thermalexpansion:capacitor_2");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwSteel>, <contenttweaker:etchedredalloywiring>, <ore:screwSteel>],
    [<ore:lightPlateElectrum>, <thermalexpansion:capacitor:1>, <ore:lightPlateElectrum>],
    [<ore:gearRedAlloy>, <ore:dustSulfur>, <ore:gearRedAlloy>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:capacitor:2>)
.create();

//Flux Capacitor (Signalum)
recipes.removeByRecipeName("thermalexpansion:capacitor_3");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwStainlessSteel>, <contenttweaker:etchedredalloywiring>, <ore:screwStainlessSteel>],
    [<ore:lightPlateSignalum>, <thermalexpansion:capacitor:2>, <ore:lightPlateSignalum>],
    [<ore:gearRedAlloy>, <ore:dustSulfur>, <ore:gearRedAlloy>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:capacitor:3>)
.create();

//Flux Capacitor (Enderium)
recipes.removeByRecipeName("thermalexpansion:capacitor_4");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:screwStainlessSteel>, <contenttweaker:etchedredalloywiring>, <ore:screwStainlessSteel>],
    [<ore:lightPlateEnderium>, <thermalexpansion:capacitor:3>, <ore:lightPlateEnderium>],
    [<ore:gearRedAlloy>, <ore:dustSulfur>, <ore:gearRedAlloy>]])
  .addTool(<ore:gtceScrewdrivers>, 20)
  .addOutput(<thermalexpansion:capacitor:4>)
.create();

// ======================================== //

// Thermal Upgrades =======================

// Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:0>);
recipes.addShaped(<thermalfoundation:upgrade:0> * 1, [[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>], [<ore:plateInvar>, <ore:gearConstantan>, <ore:plateInvar>],[<ore:dustRedstone>, <ore:springInvar>, <ore:dustRedstone>]]);

// Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1> * 1, [[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], [<ore:plateElectrum>, <ore:gearBrass>, <ore:plateElectrum>],[<ore:dustRedstone>, <ore:springElectrum>, <ore:dustRedstone>]]);

// Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2> * 1, [[<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>], [<ore:plateSignalum>, <ore:gearDawnstone>, <ore:plateSignalum>],[<ore:dustCryotheum>, <ore:springSignalum>, <ore:dustCryotheum>]]);

// Enderium Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3> * 1, [[<ore:plateEnderium>, <ore:plateEnderium>, <ore:plateEnderium>], [<ore:plateEnderium>, <ore:gearMithril>, <ore:plateEnderium>],[<ore:dustCryotheum>, <ore:springEnderium>, <ore:dustCryotheum>]]);


// Augment: Auxiliary Reception Coil
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped(<thermalexpansion:augment:128> * 1, [[<ore:plateSilver>, <ore:plateGold>, <ore:plateSilver>], [<ore:springGold>, <mekanism:speedupgrade>, <ore:springGold>],[<ore:plateSilver>, <ore:plateGold>, <ore:plateSilver>]]);

// Augment: Auxiliary Sieve
recipes.remove(<thermalexpansion:augment:129>);
recipes.addShaped(<thermalexpansion:augment:129> * 1, [[<ore:plateSilver>, <ore:plateBronze>, <ore:plateSilver>], [<ore:springBronze>, <thermalfoundation:material:512>, <ore:springBronze>],[<ore:plateSilver>, <ore:plateBronze>, <ore:plateSilver>]]);

// Augment: Nullification Chamber
recipes.remove(<thermalexpansion:augment:130>);
recipes.addShaped(<thermalexpansion:augment:130> * 1, [[<ore:plateSilver>, <ore:plateInvar>, <ore:plateSilver>], [<ore:springInvar>, <extrautils2:trashcan>, <ore:springInvar>],[<ore:plateSilver>, <ore:plateInvar>, <ore:plateSilver>]]);

// Augment: Nutrient Recovery
recipes.remove(<thermalexpansion:augment:320>);
recipes.addShaped(<thermalexpansion:augment:320> * 1, [[<ore:plateSterlingSilver>, <ore:blockGlassHardened>, <ore:plateSterlingSilver>], [<thermalfoundation:fertilizer:1>, <thermalfoundation:material:512>, <thermalfoundation:fertilizer:1>],[<ore:plateSterlingSilver>, <ore:blockGlassHardened>, <ore:plateSterlingSilver>]]);

// Augment: Sapling Infuser
recipes.remove(<thermalexpansion:augment:323>);
recipes.addShaped(<thermalexpansion:augment:323> * 1, [[<ore:plateSterlingSilver>, <thermalfoundation:glass_alloy:6>, <ore:plateSterlingSilver>], [<contenttweaker:arboreal_essence>, <thermalfoundation:material:512>, <contenttweaker:arboreal_essence>],[<ore:plateSterlingSilver>, <thermalfoundation:glass_alloy:6>, <ore:plateSterlingSilver>]]);

// Augment: Monoculture Cycle
recipes.remove(<thermalexpansion:augment:324>);
recipes.addShaped(<thermalexpansion:augment:324> * 1, [[<ore:plateSterlingSilver>, <thermalfoundation:glass_alloy:5>, <ore:plateSterlingSilver>], [<thermalfoundation:fertilizer:2>, <thermalfoundation:material:512>, <thermalfoundation:fertilizer:2>],[<ore:plateSterlingSilver>, <thermalfoundation:glass_alloy:5>, <ore:plateSterlingSilver>]]);

// Augment: Reflux Columm
recipes.remove(<thermalexpansion:augment:368>);
recipes.addShaped(<thermalexpansion:augment:368> * 1, [[<ore:plateSterlingSilver>, <ore:plateConstantan>, <ore:plateSterlingSilver>], [<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "oil", Amount: 1000}}), <thermalfoundation:material:515>, <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "oil", Amount: 1000}})],[<ore:plateSterlingSilver>, <ore:plateConstantan>, <ore:plateSterlingSilver>]]);

// Augment: Alchemical Retort
recipes.remove(<thermalexpansion:augment:369>);
recipes.addShaped(<thermalexpansion:augment:369> * 1, [[<ore:plateSterlingSilver>, <ore:plateSignalum>, <ore:plateSterlingSilver>], [<minecraft:cauldron>, <thermalfoundation:material:515>, <minecraft:brewing_stand>],[<ore:plateSterlingSilver>, <ore:plateSignalum>, <ore:plateSterlingSilver>]]);

// Augment: Flux Linkage Concentrator
recipes.remove(<thermalexpansion:augment:400>);
recipes.addShaped(<thermalexpansion:augment:400> * 1, [[<ore:plateSilver>, <ore:plateElectrum>, <ore:plateSilver>], [<ore:springElectrum>, <thermalfoundation:material:512>, <ore:springElectrum>],[<ore:plateSilver>, <ore:plateElectrum>, <ore:plateSilver>]]);

// Augment: Flux Reconstruction
recipes.remove(<thermalexpansion:augment:401>);
recipes.addShaped(<thermalexpansion:augment:401> * 1, [[<ore:plateSterlingSilver>, <ore:plateElectrum>, <ore:plateSterlingSilver>], [<ore:springElectrum>, <enderio:block_dark_steel_anvil>, <ore:springElectrum>],[<ore:plateSterlingSilver>, <ore:plateElectrum>, <ore:plateSterlingSilver>]]);

// Augment: Enstabulation Apparatus
recipes.remove(<thermalexpansion:augment:416>);
recipes.addShaped(<thermalexpansion:augment:416> * 1, [[<ore:plateSterlingSilver>, <ore:plateGlitchInfused>, <ore:plateSterlingSilver>], [<ore:springGlitchInfused>, <minecraft:diamond_sword>, <ore:springGlitchInfused>],[<ore:plateSterlingSilver>, <ore:plateGlitchInfused>, <ore:plateSterlingSilver>]]);

// Augment: Pattern Validation
recipes.remove(<thermalexpansion:augment:432>);
recipes.addShaped(<thermalexpansion:augment:432> * 1, [[<ore:plateSilver>, <ore:plateIron>, <ore:plateSilver>], [<thermalfoundation:material:512>, <gregtech:meta_item_1:157>, <thermalfoundation:material:512>],[<ore:plateSilver>, <ore:plateIron>, <ore:plateSilver>]]);

// Augment: Fluidic Fabrication
recipes.remove(<thermalexpansion:augment:433>);
recipes.addShaped(<thermalexpansion:augment:433> * 1, [[<ore:plateSilver>, <ore:plateCopper>, <ore:plateSilver>], [<thermalfoundation:material:512>, <gregtech:meta_item_1:142>, <thermalfoundation:material:512>],[<ore:plateSilver>, <ore:plateCopper>, <ore:plateSilver>]]);

// Augment: Reagent Recovery
recipes.remove(<thermalexpansion:augment:448>);
recipes.addShaped(<thermalexpansion:augment:448> * 1, [[<ore:plateSterlingSilver>, <ore:plateSignalum>, <ore:plateSterlingSilver>], [<ore:dustGlowstone>, <thermalfoundation:material:515>, <ore:dustRedstone>],[<ore:plateSterlingSilver>, <ore:plateSignalum>, <ore:plateSterlingSilver>]]);

// Augment: Pyroclastic Injection
recipes.remove(<thermalexpansion:augment:496>);
recipes.addShaped(<thermalexpansion:augment:496> * 1, [[<ore:plateSterlingSilver>, <ore:plateInvar>, <ore:plateSterlingSilver>], [<ore:dustCryotheum>, <magneticraft:water_generator>, <ore:dustCryotheum>],[<ore:plateSterlingSilver>, <ore:plateInvar>, <ore:plateSterlingSilver>]]);

// Augment: Pyroclastic Injection
recipes.remove(<thermalexpansion:augment:497>);
recipes.addShaped(<thermalexpansion:augment:497> * 1, [[<ore:plateSterlingSilver>, <chisel:lavastone>, <ore:plateSterlingSilver>], [<ore:compressed2xSandstone>, <railcraft:firestone_raw>, <ore:compressed2xSandstone>],[<ore:plateSterlingSilver>, <chisel:lavastone>, <ore:plateSterlingSilver>]]);

// Thermal "Machines" =====================

// Nullifier
recipes.remove(<thermalexpansion:device:1>);
recipes.addShaped(<thermalexpansion:device:1> * 1, [[null, <ore:AAVoidCrystal>, null], [<extrautils2:trashcan>, <thermalexpansion:frame:64>, <extrautils2:trashcanfluid>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Thermal Mediator
recipes.remove(<thermalexpansion:device:2>);
recipes.addShaped(<thermalexpansion:device:2> * 1, [[null, <ore:gearSmallStainlessSteel>, null], [<ore:plateDoubleInvar>, <thermalexpansion:frame:64>, <ore:plateDoubleInvar>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Arboreal Extractor
recipes.remove(<thermalexpansion:device:3>);
recipes.addShaped(<thermalexpansion:device:3> * 1, [[null, <forestry:thermionic_tubes:0>, null], [<ore:plateDoubleStainlessSteel>, <thermalexpansion:frame:64>, <ore:plateDoubleStainlessSteel>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Item Allocator
recipes.remove(<thermalexpansion:device:5>);
recipes.addShaped(<thermalexpansion:device:5> * 1, [[null, <gregtech:machine:1625>, null], [<minecraft:hopper>, <thermalexpansion:frame:64>, <minecraft:hopper>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Fluid Allocator
recipes.remove(<thermalexpansion:device:6>);
recipes.addShaped(<thermalexpansion:device:6> * 1, [[null, <gregtech:machine:1610>, null], [<minecraft:hopper>, <thermalexpansion:frame:64>, <minecraft:hopper>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Insightful Condenser
recipes.remove(<thermalexpansion:device:8>);
recipes.addShaped(<thermalexpansion:device:8> * 1, [[<ore:springSmallGold>, <actuallyadditions:item_solidified_experience>, <ore:springSmallGold>], [<ore:plateEmeradic>, <thermalexpansion:frame:64>, <ore:plateEmeradic>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Decoctive Diffuser
recipes.remove(<thermalexpansion:device:9>);
recipes.addShaped(<thermalexpansion:device:9> * 1, [[null, <thermalfoundation:glass_alloy:4>, null], [<ore:plateDoubleSterlingSilver>, <thermalexpansion:frame:64>, <ore:plateDoubleSterlingSilver>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Creature Encaptulator
recipes.remove(<thermalexpansion:device:11>);
recipes.addShaped(<thermalexpansion:device:11> * 1, [[null, <thermalexpansion:morb:0>, null], [<ore:plateDoubleSoularium>, <thermalexpansion:frame:64>, <ore:plateDoubleSoularium>],[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]]);

// Phytogenic Insolator (Basic)
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4> * 1, [[<ore:circuitEv>, <gregtech:meta_item_1:220>, <ore:circuitEv>], [<randomthings:fertilizeddirt>, <thermalexpansion:frame:0>, <randomthings:fertilizeddirt>],[<ore:gearLumium>, <thermalfoundation:material:513>, <ore:gearLumium>]]);

// Fluid Transposer (Basic)
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped(<thermalexpansion:machine:8> * 1, [[<ore:circuitMv>, <fluiddrawers:tank:0>, <ore:circuitMv>], [<ore:blockGlassHardened>, <thermalexpansion:frame:0>, <ore:blockGlassHardened>],[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

// Sequential Fabricator (Basic) (Acessible on the  MV)
recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped(<thermalexpansion:machine:11> * 1, [[<ore:plateSilver>, <ore:circuitMv>, <ore:plateSilver>], [<ore:workbench>, <actuallyadditions:block_misc:9>, <ore:workbench>],[<ore:plateSilver>, <gregtech:meta_item_1:173>, <ore:plateSilver>]]);

// Alchemical Imbuer (Basic)
recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped(<thermalexpansion:machine:12> * 1, [[<ore:circuitHv>, <minecraft:brewing_stand>, <ore:circuitHv>], [<gregtech:meta_item_1:144>, <thermalexpansion:frame:0>, <gregtech:meta_item_1:144>],[<ore:gearConstantan>, <thermalfoundation:material:513>, <ore:gearConstantan>]]);

// Glacial Precipitator (Basic)
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped(<thermalexpansion:machine:14> * 1, [[<ore:plateSilver>, <ore:circuitMv>, <ore:plateSilver>], [<gregtech:meta_item_1:143>, <actuallyadditions:block_misc:9>, <gregtech:meta_item_1:143>],[<ore:gearSilver>, <gregtech:meta_item_1:173>, <ore:gearSilver>]]);

// Igneous Extruder (Basic)
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15> * 1, [[<ore:compressed2xCobblestone>, <ore:circuitMv>, <ore:compressed2xCobblestone>], [<gregtech:meta_item_1:158>, <actuallyadditions:block_misc:9>, <gregtech:meta_item_1:158>],[<ore:gearSilver>, <gregtech:meta_item_1:173>, <ore:gearSilver>]]);

// Energetic Infuser (Basic)
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9> * 1, [[<ore:circuitEv>, <thermalfoundation:material:514>, <ore:circuitEv>], [<gregtech:meta_item_1:220>, <thermalexpansion:frame:0>, <gregtech:meta_item_1:235>],[<thermalfoundation:material:515>, <ore:gearSilver>, <thermalfoundation:material:513>]]);

// Centrifugal Separator (Basic)
recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped(<thermalexpansion:machine:10> * 1, [[<ore:springSmallGlitchInfused>, <ore:circuitEv>, <ore:springSmallGlitchInfused>], [<gregtech:meta_item_1:175>, <thermalexpansion:frame:0>, <gregtech:meta_item_1:175>],[<ore:gearHoneySteel>, <thermalfoundation:material:513>, <ore:gearHoneySteel>]]);

// Fractionating Still (Basic)
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7> * 1, [[<ore:plateConstantan>, <ore:circuitEv>, <ore:plateConstantan>], [<gregtech:meta_item_1:250>, <thermalexpansion:frame:0>, <gregtech:meta_item_1:145>],[<ore:gearSignalum>, <thermalfoundation:material:513>, <ore:gearSignalum>]]);



// ======================================== //