import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import mods.gregtech.recipe.RecipeMap;

mods.chisel.Carving.addGroup("Railcraft Detectors");
var DetectorsChiseling as IItemStack[] = [
<railcraft:detector>,
<railcraft:detector:1>,
<railcraft:detector:2>,
<railcraft:detector:3>,
<railcraft:detector:4>,
<railcraft:detector:5>,
<railcraft:detector:6>,
<railcraft:detector:8>,
<railcraft:detector:9>,
<railcraft:detector:10>,
<railcraft:detector:11>,
<railcraft:detector:12>,
<railcraft:detector:13>
];
for i in DetectorsChiseling {
recipes.remove(i);    
i.addTooltip(format.red("Can be chiseled into other Detectors")); 
mods.chisel.Carving.addVariation("Railcraft Detectors", i);  
}

//Recipe for the Base Detector
recipes.addShaped("DetectorAny", <railcraft:detector:1>,
    [[<ore:plateElectricalSteel>, <ore:stone>, <ore:plateElectricalSteel>],
    [<ore:stone>, <minecraft:observer>, <ore:stone>],
    [<ore:plateElectricalSteel>, <ore:stone>, <ore:plateElectricalSteel>]]);

assembler.recipeBuilder()
    .inputs([<ore:stone> * 4, <ore:plateElectricalSteel> * 4, <minecraft:observer>])
    .circuit(32)
    .outputs(<railcraft:detector:1>)
    .duration(160)
    .EUt(32)
    .buildAndRegister();

# Signals ====================================================

//Block Signal
recipes.remove(<railcraft:signal>);
recipes.addShaped("BlockSignal", <railcraft:signal>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <railcraft:circuit:2>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>]]);

//Distant Signal
recipes.remove(<railcraft:signal:1>);  
recipes.addShaped("DistantSignal", <railcraft:signal:1>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <railcraft:circuit:1>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>]]);

//Token Signal
recipes.remove(<railcraft:signal:2>);  
recipes.addShaped("TokenSignal", <railcraft:signal:2>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <railcraft:circuit:3>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>]]);  

//Dual Headed Block
recipes.remove(<railcraft:signal_dual>);
recipes.addShaped("DualHeadedBlock", <railcraft:signal_dual>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<railcraft:circuit:1>, <ore:gearSteel>, <railcraft:circuit:2>],
    [<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>]]);

//Dual Headed Distant
recipes.remove(<railcraft:signal_dual:1>);
recipes.addShaped("DualHeadedDistant", <railcraft:signal_dual:1>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<railcraft:circuit:1>, <ore:gearSteel>, <railcraft:circuit:1>],
    [<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>]]);

//Dual Headed Token
recipes.remove(<railcraft:signal_dual:2>);
recipes.addShaped("DualHeadedToken", <railcraft:signal_dual:2>,
    [[<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>],
    [<railcraft:circuit:1>, <ore:gearSteel>, <railcraft:circuit:3>],
    [<ore:plateElectricalSteel>, <railcraft:signal_lamp>, <ore:plateElectricalSteel>]]);

// Signal Boxes ==========================================================================

//Signal Controller
recipes.remove(<railcraft:signal_box:2>);
recipes.addShaped("SignalController", <railcraft:signal_box:2>,
    [[<ore:lightPlateIron>, <railcraft:circuit>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:dustRedstone>, <ore:lightPlateIron>]]);

//Signal Receiver
recipes.remove(<railcraft:signal_box:4>);
recipes.addShaped("SignalReceiver", <railcraft:signal_box:4>,
    [[<ore:lightPlateIron>, <railcraft:circuit:1>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:dustRedstone>, <ore:lightPlateIron>]]);

//Analog Signal Controller Box
recipes.remove(<railcraft:signal_box>);
recipes.addShaped("AanalogSignalControllerBox", <railcraft:signal_box>,
    [[<ore:lightPlateIron>, <railcraft:circuit>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <minecraft:comparator>, <ore:lightPlateIron>]]);

//Signal Capacitor
recipes.remove(<railcraft:signal_box:1>);
recipes.addShaped("SignalCapacitor", <railcraft:signal_box:1>,
    [[<ore:lightPlateIron>, <minecraft:repeater>, <ore:lightPlateIron>],
    [<ore:heavyPlateIron>, <ore:dustRedstone>, <ore:heavyPlateIron>]]);

//Signal Interlock Box
recipes.remove(<railcraft:signal_box:3>);
recipes.addShaped("SignalInterlockBox", <railcraft:signal_box:3>,
    [[null, <railcraft:circuit:1>, null],
    [<ore:lightPlateIron>, <railcraft:circuit>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:dustRedstone>, <ore:lightPlateIron>]]);

//Signal Sequencer
recipes.remove(<railcraft:signal_box:6>);
recipes.addShaped("SignalSequencer", <railcraft:signal_box:6>,
    [[null, <railcraft:circuit:1>, null],
    [<ore:lightPlateIron>, <minecraft:comparator>, <ore:lightPlateIron>],
    [<ore:heavyPlateIron>, <ore:dustRedstone>, <ore:heavyPlateIron>]]);

//Signal Block Relay
recipes.remove(<railcraft:signal_box:5>);
recipes.addShaped("SignalBlockRelay", <railcraft:signal_box:5>,
    [[null, <railcraft:circuit:2>, null],
    [<ore:lightPlateIron>, <railcraft:circuit:2>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:dustRedstone>, <ore:lightPlateIron>]]);

// ====================================================

//Switch Actuator Lever
recipes.remove(<railcraft:actuator>);
recipes.addShaped("SwitchActuatorLever", <railcraft:actuator>,
    [[<ore:dyeRed>, <ore:dyeBlack>, <ore:dyeWhite>],
    [<ore:craftingPiston>, <ore:craftingAnvil>, <ore:heavyPlateIron>]]);

//Switch Actuator Motor
recipes.remove(<railcraft:actuator:1>);
recipes.addShapeless("SwitchActuatorMotor", <railcraft:actuator>, [<railcraft:actuator>, <railcraft:circuit:1>, <magneticraft:crafting:2>]);

//Switch Actuator Motor (Routing Table)
recipes.remove(<railcraft:actuator:2>);
recipes.addShaped("SwitchActuatorMotorRoutingTable", <railcraft:actuator:2>,
    [[<railcraft:actuator>, <railcraft:detector:13>, <ore:screwSteel>],
    [<ore:screwSteel>, null, null]]);

// =========== Loaders and Unloaders ====================================

//Item Loader and Unloader
recipes.remove(<railcraft:manipulator>);
recipes.remove(<railcraft:manipulator:1>);

recipes.addShaped(
            <railcraft:manipulator>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <ore:hopper>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <railcraft:detector>, <ore:plateElectricalSteel>]]);

recipes.addShaped(
            <railcraft:manipulator:1>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <railcraft:detector>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <ore:hopper>, <ore:plateElectricalSteel>]]);                

//Advanced Item Loader and Unloader
recipes.remove(<railcraft:manipulator:2>);
recipes.remove(<railcraft:manipulator:3>);

recipes.addShaped(
            <railcraft:manipulator:2>, [
    [<ore:plateDarkSteel>, <magneticraft:crafting:2>, <ore:plateDarkSteel>], 
    [<ore:heavyPlateLead>, <ore:hopper>, <ore:heavyPlateLead>], 
    [<ore:plateDarkSteel>, <railcraft:detector>, <ore:plateDarkSteel>]]);

recipes.addShaped(
            <railcraft:manipulator:3>, [
    [<ore:plateDarkSteel>, <magneticraft:crafting:2>, <ore:plateDarkSteel>], 
    [<ore:heavyPlateLead>, <railcraft:detector>, <ore:heavyPlateLead>], 
    [<ore:plateDarkSteel>, <ore:hopper>, <ore:plateDarkSteel>]]); 

//Fluid Loader and Unloader
recipes.remove(<railcraft:manipulator:4>);
recipes.remove(<railcraft:manipulator:5>);

recipes.addShaped(
            <railcraft:manipulator:4>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <enderio:block_tank>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <railcraft:detector:6>, <ore:plateElectricalSteel>]]);

recipes.addShaped(
            <railcraft:manipulator:5>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <railcraft:detector:6>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <enderio:block_tank>, <ore:plateElectricalSteel>]]); 


//Cart and Train Dispenser
recipes.remove(<railcraft:manipulator:8>);
recipes.remove(<railcraft:manipulator:9>);

recipes.addShaped(
            <railcraft:manipulator:8>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <minecraft:minecart>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <minecraft:dispenser>, <ore:plateElectricalSteel>]]);

recipes.addShaped(
            <railcraft:manipulator:9>, [
    [<ore:plateElectricalSteel>, <magneticraft:crafting:2>, <ore:plateElectricalSteel>], 
    [<ore:heavyPlateLead>, <minecraft:dispenser>, <ore:heavyPlateLead>], 
    [<ore:plateElectricalSteel>, <minecraft:minecart>, <ore:plateElectricalSteel>]]); 

//Feeding Station
recipes.remove(<railcraft:equipment:2>);
recipes.addShaped("FeedingStation", <railcraft:equipment:2>,
    [[<ore:plateIron>, <minecraft:golden_carrot>, <ore:plateIron>],
    [<minecraft:golden_carrot>, <ore:gearIron>, <minecraft:golden_carrot>],
    [<ore:plateIron>, <minecraft:golden_carrot>, <ore:plateIron>]]);

//Smoker
recipes.remove(<railcraft:equipment:3>);
recipes.addShaped("Smoker", <railcraft:equipment:3>,
    [[<ore:lightPlateSteel>, <minecraft:fire_charge>, <ore:lightPlateSteel>],
    [<ore:lightPlateSteel>, <ore:netherrack>, <ore:lightPlateSteel>],
    [<ore:lightPlateSteel>, <ore:lightPlateSteel>, <ore:lightPlateSteel>]]);                