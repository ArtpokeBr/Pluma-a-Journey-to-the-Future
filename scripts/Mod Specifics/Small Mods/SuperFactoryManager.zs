#modloaded superfactorymanager

import mods.jei.JEI as JEI;

#player interface
JEI.removeAndHide(<superfactorymanager:cable_relay:8>);
JEI.removeAndHide(<superfactorymanager:cable_relay>);

#Block gate
recipes.remove(<superfactorymanager:cable_breaker>);
assembler.recipeBuilder()
	.inputs(<superfactorymanager:cable>, <actuallyadditions:block_placer>, <actuallyadditions:block_breaker>)
	.outputs(<superfactorymanager:cable_breaker>)
	.duration(500)
	.EUt(48)
.buildAndRegister();

#Item Valve
recipes.remove(<superfactorymanager:cable_intake>);
assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_dropper>, <minecraft:hopper>)
	.outputs(<superfactorymanager:cable_intake>)
	.duration(200)
	.EUt(48)
.buildAndRegister();

#Rapid Item Valve
recipes.remove(<superfactorymanager:cable_intake:8>);
assembler.recipeBuilder()
	.inputs(<superfactorymanager:cable_intake>, <projectred-integration:gate:10>)
	.outputs(<superfactorymanager:cable_intake:8>)
	.duration(300)
	.EUt(48)
.buildAndRegister();

#Cable Cluster
recipes.remove(<superfactorymanager:cable_cluster>);
assembler.recipeBuilder()
	.inputs(<ore:plateEnderPearl>*3, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_cluster>)
	.duration(350)
	.EUt(58)
.buildAndRegister();

#Advanced Cable Cluster
recipes.remove(<superfactorymanager:cable_cluster:8>);
assembler.recipeBuilder()
	.inputs(<ore:gemEnderEye>*3, <superfactorymanager:cable_cluster>)
	.outputs(<superfactorymanager:cable_cluster:8>)
	.duration(352)
	.EUt(58)
.buildAndRegister();

#Inventory Cable
recipes.remove(<superfactorymanager:cable>);
assembler.recipeBuilder()
	.inputs(<ore:cableGtSingleRedAlloy>*4, <ore:plateGold>*8, <ore:plateAluminium>*4)
	.fluidInputs([<liquid:plastic> * 1152])
	.outputs(<superfactorymanager:cable> *8)
	.duration(180)
	.EUt(48)
.buildAndRegister();

#Inventory Manager
recipes.remove(<superfactorymanager:manager>);
assembler.recipeBuilder()
	.inputs(<avaritia:compressed_crafting_table>, <gregtech:machine:987>, <metaitem:sensor	.mv>)
	.fluidInputs([<liquid:plastic> * 288])
	.outputs(<superfactorymanager:manager>)
	.duration(800)
	.EUt(48)
.buildAndRegister();

#Cable Camouflage
recipes.remove(<superfactorymanager:cable_camouflage>);
assembler.recipeBuilder()
	.inputs(<ore:itemConduitBinder>*5, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_camouflage>*4)
	.duration(100)
	.EUt(40)
.buildAndRegister();

#Cable Double-Sided Camouflage
recipes.remove(<superfactorymanager:cable_camouflage:1>);
assembler.recipeBuilder()
	.inputs(<ore:itemConduitBinder>*1, <superfactorymanager:cable_camouflage>)
	.outputs(<superfactorymanager:cable_camouflage:1>)
	.duration(120)
	.EUt(45)
.buildAndRegister();

#Cable Transforming Camouflage
recipes.remove(<superfactorymanager:cable_camouflage:2>);
assembler.recipeBuilder()
	.inputs(<ore:craftingPiston>*1, <superfactorymanager:cable_camouflage>)
	.outputs(<superfactorymanager:cable_camouflage:2>)
	.duration(200)
	.EUt(45)
.buildAndRegister();

#Block Detector
recipes.remove(<superfactorymanager:cable_bud>);
assembler.recipeBuilder()
	.inputs(<railcraft:detector:1>, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_bud>)
	.duration(300)
	.EUt(50)
.buildAndRegister();

#Sign Updater
recipes.remove(<superfactorymanager:cable_sign>);
assembler.recipeBuilder()
	.inputs(<minecraft:sign>, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_sign>)
	.duration(300)
	.EUt(50)
.buildAndRegister();

#Redstone Emitter
recipes.remove(<superfactorymanager:cable_output>);
assembler.recipeBuilder()
	.inputs(<cyclicmagic:wireless_transmitter>, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_output>)
	.duration(245)
	.EUt(80)
.buildAndRegister();

#Redstone Receiver
recipes.remove(<superfactorymanager:cable_input>);
assembler.recipeBuilder()
	.inputs(<cyclicmagic:wireless_receiver>, <superfactorymanager:cable>)
	.outputs(<superfactorymanager:cable_input>)
	.duration(245)
	.EUt(80)
.buildAndRegister();

