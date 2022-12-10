import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;
import crafttweaker.item.IItemStack;
import mods.roots.Fey as Fey;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Integrated Dynamics Fixes                                                                                                            //
//			         																														                                                                 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Chorus Fixes =================

# Plant to Fluid
extractor.recipeBuilder()
    .inputs(<minecraft:chorus_fruit>)
    .fluidOutputs(<liquid:liquidchorus> * 144)
    .duration(160)
    .EUt(30)
.buildAndRegister();

//Block of Crystallized Chorus
recipes.remove(<integrateddynamics:crystalized_chorus_block>);

compressor.recipeBuilder()
    .inputs(<integrateddynamics:crystalized_chorus_chunk>*9)
    .outputs(<integrateddynamics:crystalized_chorus_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

# Chunk to Crystallized Chorus
autoclave.recipeBuilder()
    	.inputs(<integrateddynamics:crystalized_menril_chunk>)
    	.fluidInputs(<liquid:liquidchorus> * 72)
    	.outputs(<integrateddynamics:crystalized_chorus_chunk>)
    	.duration(100)
    	.EUt(24)
.buildAndRegister();


// ==============================

//Menril Sappling
Fey.addRecipe(
  "menrilSappling",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <integrateddynamics:menril_sapling>,    // the itemstack produced by this recipe
  [<ore:treeSapling>, <ore:dustFossil>, <ore:rootsBarkWildwood>, <ore:dustBlueAlloy>, <ore:EmpoweredDiamantineCrystal>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Menril Resin

# Resin being Crystallized
fermenter.recipeBuilder()
    .fluidInputs(<liquid:menrilresin>*288)
    .fluidOutputs(<liquid:menril>*288)
    .duration(148)
    .EUt(32)
.buildAndRegister();

# Chunks out of the Tree
extractor.recipeBuilder()
    .inputs(<integrateddynamics:menril_log>)
    .outputs(<integrateddynamics:crystalized_menril_chunk> * 4)
    .duration(240)
    .EUt(25)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<integrateddynamics:menril_log_filled>)
    .outputs(<integrateddynamics:crystalized_menril_chunk> * 12)
    .duration(240)
    .EUt(25)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<integrateddynamics:menril_leaves>)
    .outputs(<integrateddynamics:crystalized_menril_chunk> * 1)
    .duration(240)
    .EUt(25)
.buildAndRegister();

# Chunk to Fluid
extractor.recipeBuilder()
    .inputs(<integrateddynamics:crystalized_menril_chunk>)
    .fluidOutputs(<liquid:menril> * 72)
    .duration(160)
    .EUt(30)
.buildAndRegister();

//Block of Crystallized Menril
<integrateddynamics:crystalized_menril_block>.displayName = "Block of Menril Chunks";
recipes.remove(<integrateddynamics:crystalized_menril_block>);

compressor.recipeBuilder()
    .inputs(<integrateddynamics:crystalized_menril_chunk>*9)
    .outputs(<integrateddynamics:crystalized_menril_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

# Chunk to Menril Gem
autoclave.recipeBuilder()
    	.inputs(<integrateddynamics:crystalized_menril_chunk>)
    	.fluidInputs(<liquid:water> * 200)
    	.chancedOutput(<ore:crystalMenril>.firstItem, 7000, 2700)
    	.duration(2000)
    	.EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    	.inputs(<integrateddynamics:crystalized_menril_chunk>)
    	.fluidInputs(<liquid:distilled_water> * 200)
    	.chancedOutput(<ore:crystalMenril>.firstItem, 9000, 3000)
    	.duration(1000)
    	.EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    	.inputs(<integrateddynamics:crystalized_menril_chunk>)
    	.fluidInputs(<liquid:liquid_mana> * 25)
    	.outputs(<ore:crystalMenril>.firstItem)
    	.duration(100)
    	.EUt(24)
.buildAndRegister();

#Gem to Many Subcomponents
centrifuge.recipeBuilder()
	.inputs(<ore:crystalMenril> * 1)
	.fluidOutputs([<liquid:methane> * 50,<liquid:menril> * 72])
	.chancedOutput(<ore:dustCarbon>.firstItem, 2500,500)
	.chancedOutput(<gregtech:meta_item_1:439>/*plantball*/, 3750, 350)
	.outputs(<ore:dustWood>.firstItem, <mekanism:substrate>)
	.duration(200)
	.EUt(18)
.buildAndRegister();

//Variable Card
recipes.remove(<integrateddynamics:variable>);
//mods.forestry.Carpenter.addRecipe(<integrateddynamics:variable> * 9, [[<ore:paper>, <ore:paper>, <ore:paper>], [<ore:paper>, <ore:paper>, <ore:paper>], [<ore:paper>, <ore:paper>, <ore:paper>]], 80, <liquid:menril> * 1000);

chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:menril> * 100])
    .inputs(<ore:paper>)
    .outputs(<integrateddynamics:variable> * 2)
    .duration(200)
    .EUt(250)
    .buildAndRegister();

//Logic Cable
recipes.remove(<integrateddynamics:cable>);
wiremill.recipeBuilder()
    .inputs(<ore:ingotMenril>)
    .outputs(<integrateddynamics:cable> * 2)
    .duration(80)
    .EUt(12)
.buildAndRegister();

//Output Variable
recipes.remove(<integrateddynamics:variable_transformer>);
assembler.recipeBuilder()
    .inputs([<minecraft:piston>, <ore:foilPulsatingIron> * 4])
    .fluidInputs([<liquid:menril> * 500])
    .outputs(<integrateddynamics:variable_transformer> * 4)
    .duration(100)
    .EUt(32)
    .buildAndRegister();  

//Input Variable
recipes.remove(<integrateddynamics:variable_transformer:1>);
assembler.recipeBuilder()
    .inputs([<minecraft:sticky_piston>, <ore:foilPulsatingIron> * 4])
    .fluidInputs([<liquid:menril> * 500])
    .outputs(<integrateddynamics:variable_transformer:1> * 4)
    .duration(100)
    .EUt(32)
    .buildAndRegister();  

//Display Panel
recipes.remove(<integrateddynamics:part_display_panel_item>);
 assembler.recipeBuilder()
    .inputs([<ore:plateDoubleDarkSteel>, <ore:foilMenril> * 4, <ore:circuitLv>])
    .fluidInputs([<liquid:menril> * 1000])
    .outputs(<integrateddynamics:part_display_panel_item> * 4)
    .duration(200)
    .EUt(50)
.buildAndRegister();

//Static Light Panel
recipes.remove(<integrateddynamics:part_static_light_panel_item>);
recipes.addShapeless("StaticLightPanel", <integrateddynamics:part_static_light_panel_item>, [<integrateddynamics:part_display_panel_item>]);

//Dynamic Light Panel
recipes.remove(<integrateddynamics:part_dynamic_light_panel_item>);
recipes.addShapeless("DynamicLightPanel", <integrateddynamics:part_dynamic_light_panel_item>, [<integrateddynamics:part_static_light_panel_item>, <integrateddynamics:variable>]); 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Readers and Writers                                                                                                                  //
//			         																														                                                                 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Audio
recipes.remove(<integrateddynamics:part_audio_reader_item>);
recipes.remove(<integrateddynamics:part_audio_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <minecraft:noteblock>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_audio_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <minecraft:noteblock>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_audio_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Block
recipes.remove(<integrateddynamics:part_block_reader_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <overloaded:compressed_cobblestone>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_block_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Entity
recipes.remove(<integrateddynamics:part_entity_reader_item>);
recipes.remove(<integrateddynamics:part_entity_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:mulchNitrogen>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_entity_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <ore:mulchNitrogen>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_entity_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Extra-Dimensional
recipes.remove(<integrateddynamics:part_extradimensional_reader_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:blockEnderEye>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_extradimensional_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Fluid
recipes.remove(<integrateddynamics:part_fluid_reader_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <enderio:block_tank:1>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_fluid_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();


//Inventory
recipes.remove(<integrateddynamics:part_inventory_reader_item>);
recipes.remove(<integrateddynamics:part_inventory_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:chestWood>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_inventory_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <ore:chestWood>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_inventory_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Machine
recipes.remove(<integrateddynamics:part_machine_reader_item>);
recipes.remove(<integrateddynamics:part_machine_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:craftingFurnace>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_machine_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <ore:craftingFurnace>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_machine_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Network
recipes.remove(<integrateddynamics:part_network_reader_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <integrateddynamics:variable>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_network_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Redstone
recipes.remove(<integrateddynamics:part_redstone_reader_item>);
recipes.remove(<integrateddynamics:part_redstone_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:plateRedstone>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_redstone_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <ore:plateRedstone>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_redstone_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//World
recipes.remove(<integrateddynamics:part_world_reader_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer:1>, <ore:plateObsidian>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_world_reader_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

//Effect
recipes.remove(<integrateddynamics:part_effect_writer_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:variable_transformer>, <magneticraft:box>])
    .fluidInputs([<liquid:menril> * 250])
    .outputs(<integrateddynamics:part_effect_writer_item>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Other Blocks                                                                                                                         //
//			         																														                                                                 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Variable Store
recipes.remove(<integrateddynamics:variablestore:0>);
recipes.addShaped(<integrateddynamics:variablestore:0> * 1, [[<ore:plateMenril>, <ore:plateTreatedWood>, <ore:plateMenril>], [<ore:plateTreatedWood>, <ore:chestWood>, <ore:plateTreatedWood>],[<ore:plateMenril>, <ore:plateTreatedWood>, <ore:plateMenril>]]);

//Logic Programmer
recipes.removeByRecipeName("integrateddynamics:logic_programmer");
recipes.addShapeless("LogicProgrammerBlock", <integrateddynamics:logic_programmer>, [<ore:frameGtMenril>, <ore:screwDarkSteel>, <ore:gtceScrewdrivers>]);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Integrated Tunnels                                                                                                                   //
//			         																														                                                                 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Energy
recipes.remove(<integratedtunnels:part_interface_energy_item>);
recipes.remove(<integratedtunnels:part_importer_energy_item>);
recipes.remove(<integratedtunnels:part_exporter_energy_item>);
recipes.remove(<integratedtunnels:part_importer_world_energy_item>);
recipes.remove(<integratedtunnels:part_exporter_world_energy_item>);


assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_cap_bank:3>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_interface_energy_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_cap_bank:3>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_energy_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_cap_bank:3>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_energy_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_cap_bank:3>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_world_energy_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_cap_bank:3>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_world_energy_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

//Item
recipes.remove(<integratedtunnels:part_interface_item_item>);
recipes.remove(<integratedtunnels:part_importer_item_item>);
recipes.remove(<integratedtunnels:part_exporter_item_item>);
recipes.remove(<integratedtunnels:part_importer_world_item_item>);
recipes.remove(<integratedtunnels:part_exporter_world_item_item>);


assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:chestWood>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_interface_item_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:chestWood>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_item_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:chestWood>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_item_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:chestWood>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_world_item_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:chestWood>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_world_item_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();


//Fluid
recipes.remove(<integratedtunnels:part_interface_fluid_item>);
recipes.remove(<integratedtunnels:part_importer_fluid_item>);
recipes.remove(<integratedtunnels:part_exporter_fluid_item>);
recipes.remove(<integratedtunnels:part_importer_world_fluid_item>);
recipes.remove(<integratedtunnels:part_exporter_world_fluid_item>);


assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_tank:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_interface_fluid_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_tank:1>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_fluid_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_tank:1>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_fluid_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_tank:1>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_world_fluid_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <enderio:block_tank:1>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_world_fluid_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

//World
recipes.remove(<integratedtunnels:part_importer_world_block_item>);
recipes.remove(<integratedtunnels:part_exporter_world_block_item>);

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <tconstruct:pick_head>.withTag({Material: "dark_steel"}), <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer:1>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_importer_world_block_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:plateMenril>, <ore:springDarkSteel>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_exporter_world_block_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();

//Player Simulator
recipes.remove(<integratedtunnels:part_player_simulator_item>);

assembler.recipeBuilder()
    .inputs([<integrateddynamics:logic_director>, <ore:plateMenril>, <extrautils2:user>])
    .fluidInputs([<liquid:menril> * 100])
    .outputs(<integratedtunnels:part_player_simulator_item>)
    .duration(100)
    .EUt(50)
    .buildAndRegister();