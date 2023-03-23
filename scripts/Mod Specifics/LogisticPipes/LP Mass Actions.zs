import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																                                                         //
//			Logistic Pipes Mass Actions Script                                                                                               //
//			         																                                                         //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var clearNBT as IItemStack[] = [
<logisticspipes:module_item_sink>,
<logisticspipes:module_passive_supplier>,
<logisticspipes:module_extractor>,
<logisticspipes:module_item_sink_polymorphic>,
<logisticspipes:module_quick_sort>,
<logisticspipes:module_terminus>,
<logisticspipes:module_extractor_advanced>,
<logisticspipes:module_provider>,
<logisticspipes:module_item_sink_mod>,
<logisticspipes:module_item_sink_oredict>,
<logisticspipes:module_enchantment_sink>,
<logisticspipes:module_enchantment_sink_mk2>,
<logisticspipes:module_crafter>,
<logisticspipes:module_active_supplier>,
<logisticspipes:module_item_sink_creativetab>,
<logisticspipes:upgrade_sneaky_combination>,
<logisticspipes:upgrade_sneaky>,
<logisticspipes:upgrade_speed>,
<logisticspipes:upgrade_disconnection>,
<logisticspipes:upgrade_satellite_advanced>,
<logisticspipes:upgrade_fluid_crafting>,
<logisticspipes:upgrade_crafting_byproduct>,
<logisticspipes:upgrade_pattern>,
<logisticspipes:upgrade_fuzzy>,
<logisticspipes:upgrade_cc_remote_control>,
<logisticspipes:upgrade_crafting_monitoring>,
<logisticspipes:upgrade_opaque>,
<logisticspipes:upgrade_crafting_cleanup>,
<logisticspipes:upgrade_module_upgrade>,
<logisticspipes:upgrade_action_speed>,
<logisticspipes:upgrade_item_extraction>,
<logisticspipes:upgrade_item_stack_extraction>
];

for i in clearNBT {
recipes.addShapeless(i,[i]);
}

var modules as IItemStack[] = [

<logisticspipes:module_item_sink>,
<logisticspipes:module_passive_supplier>,
<logisticspipes:module_extractor>,
<logisticspipes:module_item_sink_polymorphic>,
<logisticspipes:module_quick_sort>,
<logisticspipes:module_enchantment_sink>,
<logisticspipes:module_enchantment_sink_mk2>,
<logisticspipes:module_crafter>,
<logisticspipes:module_active_supplier>,
<logisticspipes:module_item_sink_oredict>,
<logisticspipes:module_provider>,
<logisticspipes:module_item_sink_mod>,
<logisticspipes:module_terminus>,
<logisticspipes:module_item_sink_creativetab>,
<logisticspipes:module_extractor_advanced>
];
mods.chisel.Carving.addGroup("LPModules"); //Add LP Modules to Chisel
for i in modules {
	recipes.remove(i);
	i.addTooltip(format.darkRed("Can be Chiseled into other Modules!"));
mods.chisel.Carving.addVariation("LPModules", i);
}

//Itemsink Module
assembler.recipeBuilder()
	.fluidInputs(<liquid:soldering_alloy>*72)
    .inputs(<logisticspipes:module_blank>, <ore:plateEmeradic>, <ore:componentTransistor>*2)
    .outputs(<logisticspipes:module_item_sink> * 4)
	.circuit(24)
    .duration(200)
    .EUt(80)
.buildAndRegister();

var upgrades as IItemStack[] = [
<logisticspipes:upgrade_module_upgrade>,
<logisticspipes:upgrade_sneaky_combination>,
<logisticspipes:upgrade_sneaky>,
<logisticspipes:upgrade_speed>,
<logisticspipes:upgrade_disconnection>,
<logisticspipes:upgrade_satellite_advanced>,
<logisticspipes:upgrade_fluid_crafting>,
<logisticspipes:upgrade_crafting_byproduct>,
<logisticspipes:upgrade_pattern>,
<logisticspipes:upgrade_fuzzy>,
<logisticspipes:upgrade_cc_remote_control>,
<logisticspipes:upgrade_crafting_monitoring>,
<logisticspipes:upgrade_opaque>,
<logisticspipes:upgrade_crafting_cleanup>,
<logisticspipes:upgrade_action_speed>,
<logisticspipes:upgrade_item_extraction>,
<logisticspipes:upgrade_item_stack_extraction>,
<logisticspipes:upgrade_lb.buffer_upgrade>,
<logisticspipes:upgrade_lb.adv_extraction_upgrade>

];
recipes.removeByRecipeName("logisticsbridge:recipes/buffer_upgrade");

mods.chisel.Carving.addGroup("LPUpgrades"); //Add LP Modules to Chisel
for i in upgrades {
	recipes.remove(i);
	i.addTooltip(format.darkRed("Can be Chiseled into other Upgrade Modules!"));
mods.chisel.Carving.addVariation("LPUpgrades", i);
}

//Module Upgrade
assembler.recipeBuilder()
	.fluidInputs(<liquid:soldering_alloy>*72)
    .inputs(<contenttweaker:blank_upgrade_module>, <ore:plateAAVoid>, <ore:componentTransistor>*2)
    .outputs(<logisticspipes:upgrade_module_upgrade> * 4)
	.circuit(24)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//Recipes for the Pipes

function addLP_Base_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_basic>,null],[side_item,<logisticspipes:pipe_basic>,side_item],[<ore:plateRestonia>,bottom_item,<ore:plateRestonia>]]);
}

function addLP_Advanced_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_advanced>,null],[side_item,<logisticspipes:pipe_basic>,side_item],[<ore:plateRestonia>,bottom_item,<ore:plateRestonia>]]);
}

function addLP_FPGA_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_fpga>,null],[side_item,<logisticspipes:pipe_basic>,side_item],[<ore:plateRestonia>,bottom_item,<ore:plateRestonia>]]);
}

//Unrouted Pipe
recipes.remove(<logisticspipes:pipe_transport_basic>);
extruder.recipeBuilder()
    .inputs(<ore:ingotConstructionAlloy>*2)
    .outputs(<logisticspipes:pipe_transport_basic>*8)
	.notConsumable(<gregtech:meta_item_1:40>)
    .duration(300)
    .EUt(120)
.buildAndRegister();

//Basic Pipe
recipes.remove(<logisticspipes:pipe_basic>);
assembler.recipeBuilder()
    .fluidInputs(<liquid:redstone> * 288)
    .inputs(<logisticspipes:pipe_transport_basic>, <logisticspipes:chip_basic>)
    .outputs(<logisticspipes:pipe_basic>)
    .duration(200)
    .EUt(120)
.buildAndRegister();

//Request Logistic Pipe
addLP_Base_PipeRecipe(<logisticspipes:pipe_request>, <actuallyadditions:item_misc:8>, <ore:springSmallElectricalSteel>.firstItem);

//Provider Logistic Pipe
addLP_Base_PipeRecipe(<logisticspipes:pipe_provider>, <actuallyadditions:item_misc:8>, <ore:springSmallAluminium>.firstItem);

//Crafting Logistic Pipe
addLP_FPGA_PipeRecipe(<logisticspipes:pipe_crafting>, <ore:plateElectricalSteel>.firstItem, <ore:craftingTableWood>.firstItem);

//Sattelite Logistic Pipe
addLP_FPGA_PipeRecipe(<logisticspipes:pipe_satellite>, <ore:endorCrystal>.firstItem, <ore:gearElectricalSteel>.firstItem);

//Supplier Logistic Pipe
addLP_Base_PipeRecipe(<logisticspipes:pipe_supplier>, <actuallyadditions:item_misc:8>, <minecraft:hopper>);

//Remote Orderer Logistic Pipe
addLP_FPGA_PipeRecipe(<logisticspipes:pipe_remote_orderer>, <ore:plateDiamatineEmpowered>.firstItem, <ore:gemEnderEye>.firstItem);

//Inventory System Connector Logistic Pipe
addLP_Base_PipeRecipe(<logisticspipes:pipe_inventory_system_connector>, <actuallyadditions:item_misc:8>, <appliedenergistics2:smooth_sky_stone_chest>);

//System Entrance Pipe Logistic Pipe
addLP_FPGA_PipeRecipe(<logisticspipes:pipe_system_entrance>, <ore:plateEmeradic>.firstItem, <logisticspipes:pipe_provider>);

//System Destination Pipe Logistic Pipe
addLP_FPGA_PipeRecipe(<logisticspipes:pipe_system_destination>, <ore:plateDoubleRedAlloy>.firstItem, <logisticspipes:pipe_provider>);

//Firewall Logistic Pipe
addLP_Advanced_PipeRecipe(<logisticspipes:pipe_firewall>, <ceramics:clay_wall>, <ore:springElectricalSteel>.firstItem);


// Fluid Pipes ================================================================================================================

function addLPFluid_Base_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_basic>,null],[side_item,<logisticspipes:pipe_basic>,side_item],[<ore:platePalis>,bottom_item,<ore:platePalis>]]);
}

function addLPFluid_Advanced_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_advanced>,null],[side_item,<logisticspipes:pipe_fluid_basic>,side_item],[<ore:platePalis>,bottom_item,<ore:platePalis>]]);
}

function addLPFluid_FPGA_PipeRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[null,<logisticspipes:chip_fpga>,null],[side_item,<logisticspipes:pipe_fluid_basic>,side_item],[<ore:platePalis>,bottom_item,<ore:platePalis>]]);
}

//Basic Fluid Logistic Pipe
addLPFluid_Base_PipeRecipe(<logisticspipes:pipe_fluid_basic>, <ore:ringRubber>.firstItem, <minecraft:bucket>);

//Basic Fluid Container Supplier Logistic Pipe
addLPFluid_Base_PipeRecipe(<logisticspipes:pipe_fluid_supplier>, <minecraft:bucket>, <ore:springSmallAluminium>.firstItem);

//Fluid Insertion Logistic Pipe
addLPFluid_FPGA_PipeRecipe(<logisticspipes:pipe_fluid_insertion>, <ore:pipeNormalFluidAluminium>.firstItem, <ore:gearRedAlloy>.firstItem);

//Fluid Provider Logistic Pipe
addLPFluid_Advanced_PipeRecipe(<logisticspipes:pipe_fluid_provider>, <ore:pipeSmallFluidAluminium>.firstItem, <enderio:block_tank>);

//Fluid Request Logistic Pipe
addLPFluid_Advanced_PipeRecipe(<logisticspipes:pipe_fluid_request>, <ore:pipeSmallFluidAluminium>.firstItem, <minecraft:bucket>);

//Fluid Extraction Logistic Pipe
addLPFluid_FPGA_PipeRecipe(<logisticspipes:pipe_fluid_extractor>, <ore:gearRedAlloy>.firstItem, <gregtech:meta_item_1:142>);

//Fluid Sattelite Logistic Pipe
addLPFluid_FPGA_PipeRecipe(<logisticspipes:pipe_fluid_satellite>, <ore:endorCrystal>.firstItem, <ore:gearAluminium>.firstItem);

//Fluid Supplier Logistic Pipe
addLPFluid_Advanced_PipeRecipe(<logisticspipes:pipe_fluid_supplier_mk2>, <ore:gearSmallAluminium>.firstItem, <logisticspipes:pipe_fluid_supplier>);

// Request Logistics Pipe Mk2
recipes.remove(<logisticspipes:pipe_request_mk2>);
recipes.addShaped(<logisticspipes:pipe_request_mk2> * 1, [[<ore:screwConstructionAlloy>, <ore:ringConstructionAlloy>, <ore:screwConstructionAlloy>], [<ore:plateRedstone>, <logisticspipes:chip_advanced>, <ore:plateRedstone>],[<ore:plateAluminium>, <logisticspipes:pipe_request>, <ore:plateAluminium>]]);

// Bridge Pipe
recipes.remove(<logisticspipes:pipe_lb.bridgepipe>);
recipes.addShaped(<logisticspipes:pipe_lb.bridgepipe> * 1, [[<ore:platePalis>, <ore:platePalisEmpowered>, <ore:platePalis>], [<logisticspipes:chip_fpga>, <logisticspipes:pipe_basic>, <logisticspipes:chip_fpga>],[<ore:plateDiamond>, <logisticspipes:chip_advanced>, <ore:plateDiamond>]]);

// Result Logistics Pipe
recipes.remove(<logisticspipes:pipe_lb.resultpipe>);
recipes.addShaped(<logisticspipes:pipe_lb.resultpipe> * 1, [[<ore:screwConstructionAlloy>, <ore:springSmallConstructionAlloy>, <ore:screwConstructionAlloy>], [<ore:plateRedAlloy>, <logisticspipes:chip_fpga>, <ore:plateRedAlloy>],[<ore:plateAluminium>, <logisticspipes:pipe_basic>, <ore:plateAluminium>]]);

// Crafting Manager
recipes.remove(<logisticspipes:pipe_lb.craftingmanager>);
recipes.addShaped(<logisticspipes:pipe_lb.craftingmanager> * 1, [[<logisticspipes:chip_fpga>, <ore:workbench>, <logisticspipes:chip_fpga>], [<ore:lightPlateGold>, <logisticspipes:pipe_basic>, <ore:lightPlateGold>],[<logisticspipes:chip_fpga>, <ore:chest>, <logisticspipes:chip_fpga>]]);



// Chassis Pipes =======================================

//MKI
recipes.remove(<logisticspipes:pipe_chassis_mk1>);
assembler.recipeBuilder()
    .inputs(<logisticspipes:chip_fpga>*2, <logisticspipes:chip_basic>, <logisticspipes:pipe_basic>, <ore:plateDoubleRedAlloy>)
	.fluidInputs(<liquid:empoweredoil> * 100)
	.circuit(24)
    .outputs(<logisticspipes:pipe_chassis_mk1>)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//MKII
recipes.remove(<logisticspipes:pipe_chassis_mk2>);
assembler.recipeBuilder()
    .inputs(<logisticspipes:pipe_chassis_mk1>, <logisticspipes:chip_basic>*2, <ore:plateLapis>*2, <ore:plateDoubleConstructionAlloy>)
   	.fluidInputs(<liquid:empoweredoil> * 100) 
	.circuit(24)	   
	.outputs(<logisticspipes:pipe_chassis_mk2>)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//MKIII
recipes.remove(<logisticspipes:pipe_chassis_mk3>);
assembler.recipeBuilder()
    .inputs(<logisticspipes:pipe_chassis_mk2>, <logisticspipes:chip_advanced>*2, <ore:plateGlowstone>*2, <ore:plateDoubleConstructionAlloy>)
   	.fluidInputs(<liquid:empoweredoil> * 100) 
	.circuit(24)	   
	.outputs(<logisticspipes:pipe_chassis_mk3>)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//MKIV
recipes.remove(<logisticspipes:pipe_chassis_mk4>);
assembler.recipeBuilder()
    .inputs(<logisticspipes:pipe_chassis_mk3>, <logisticspipes:chip_advanced>, <logisticspipes:chip_basic>*2, <ore:plateDoubleGold>)
   	.fluidInputs(<liquid:empoweredoil> * 100) 
	.circuit(24)	   
	.outputs(<logisticspipes:pipe_chassis_mk4>)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//MKV
recipes.remove(<logisticspipes:pipe_chassis_mk5>);
assembler.recipeBuilder()
    .inputs(<logisticspipes:pipe_chassis_mk4>, <logisticspipes:chip_fpga>*2, <ore:gemExquisiteDiamond>, <ore:plateNetherQuartz>*2)
   	.fluidInputs(<liquid:empoweredoil> * 100) 
	.circuit(24)	   
	.outputs(<logisticspipes:pipe_chassis_mk5>)
    .duration(200)
    .EUt(80)
.buildAndRegister();