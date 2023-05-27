//Carbonic Fluix Complex
recipes.remove(<threng:material:1>);
chemreactor.recipeBuilder()
    .inputs([<ore:dustFluix>, <ore:itemSilicon>])
    .fluidInputs([<liquid:carbon_monoxide> * 1000])
    .outputs(<threng:material:1> * 4)
    .duration(128)
    .EUt(32)
.buildAndRegister();

# Fluix Steel =================================
furnace.remove(<threng:material>);
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotSteel>)
    .inputs(<threng:material:1>)
    .outputs(<threng:material>)
    .property("temperature", 3600)
    .duration(1400)
    .EUt(520)
.buildAndRegister();    

  //Speculative Core x1
chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:menril> * 500])
    .inputs(<ore:crystalPureNetherQuartz>)
    .outputs(<threng:material:7>)
    .duration(160)
    .EUt(32)
.buildAndRegister();

//Speculative Core x2
recipes.remove(<threng:material:8>);
forming.recipeBuilder()
    .inputs(<threng:material:7> * 2, <ore:dustRedstone>)
    .outputs(<threng:material:8>)
    .duration(102)
    .EUt(32)
.buildAndRegister();

//Speculative Core x4
recipes.remove(<threng:material:9>);
forming.recipeBuilder()
    .inputs(<threng:material:8> * 2, <ore:dustSilicon>)
    .outputs(<threng:material:9>)
    .duration(104)
    .EUt(32)
.buildAndRegister();

//Speculative Core x8
recipes.remove(<threng:material:10>);
forming.recipeBuilder()
    .inputs(<threng:material:9> * 2, <ore:dustLithium>)
    .outputs(<threng:material:10>)
    .duration(108)
    .EUt(128)
.buildAndRegister();

//Speculative Core x16
recipes.remove(<threng:material:11>);
forming.recipeBuilder()
    .inputs(<threng:material:10> * 2, <ore:dustAluminium>)
    .outputs(<threng:material:11>)
    .duration(116)
    .EUt(128)
.buildAndRegister();

//Speculative Core x32
recipes.remove(<threng:material:12>);
forming.recipeBuilder()
    .inputs(<threng:material:11> * 2, <ore:dustStygian>)
    .outputs(<threng:material:12>)
    .duration(132)
    .EUt(128)
.buildAndRegister();

//Speculative Core x64
recipes.remove(<threng:material:13>);
forming.recipeBuilder()
    .inputs(<threng:material:12> * 2, <threng:material:1>)
    .outputs(<threng:material:13>)
    .duration(164)
    .EUt(128)
.buildAndRegister();

//Fluix Logic Unit
recipes.remove(<threng:material:4>);
circuit_assembler.recipeBuilder()
    .inputs([<threng:material:1>*2, <ore:boltHslaSteel>*6, <ore:lightPlateTitanium>])
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .property("cleanroom", "cleanroom")
    .outputs(<threng:material:4>)
    .duration(300)
    .EUt(500)
.buildAndRegister();

# [Fluix Aggregator] from [Resonant Cell Frame (Full)][+4]
recipes.removeByRecipeName("threng:aggregator");
craft.make(<threng:machine>, ["pretty",
  "□ h □",
  "▬ ◘ ▬",
  "□ F □"], {
  "□": <ore:plateTitaniumIridium>,       # Titanium Iridium Alloy Plate
  "h": <ore:hopper> | <ore:blockHopper>, # Hopper
  "▬": <ore:ingotFluixSteel>,            # Fluix Steel Ingot
  "◘": <thermalexpansion:frame:148>,     # Resonant Cell Frame (Full)
  "F": <threng:material:4>,              # Fluix Logic Unit
});

# [Crystal Energizer] from [Reinforced Cell Frame (Full)][+2]
recipes.remove(<threng:machine:5>);
craft.make(<threng:machine:5>, ["pretty",
  "□ F □",
  "S ◘ S",
  "□ Y □"], {
  "□": <ore:plateTitaniumIridium>,   # Titanium Iridium Alloy Plate
  "S": <ore:springDawnstone>,        # Dawnstone Spring
  "F": <threng:material:4>,          # Fluix Logic Unit
  "Y": <appliedenergistics2:dense_energy_cell>, # Dense Energy Cell
  "◘": <thermalexpansion:frame:146>, # Reinforced Cell Frame (Full)
});

# [Preemptive Assembly Unit] from [Reinforced Cell Frame (Full)][+4]
recipes.remove(<threng:machine:3>);
craft.make(<threng:machine:3>, ["pretty",
  "□ F □",
  "C ◘ C",
  "□ M □"], {
  "□": <ore:plateTitaniumIridium>,                 # Titanium Iridium Alloy Plate
  "F": <threng:material:4>,                        # Fluix Logic Unit
  "C": <appliedenergistics2:crafting_accelerator>, # Crafting Co-Processing Unit
  "◘": <thermalexpansion:frame:146>,               # Reinforced Cell Frame (Full)
  "M": <threng:material:6>,                        # Massively Parallel Processor
});

# [ME Level Maintainer] from [Signalum Cell Frame (Full)][+4]
recipes.remove(<threng:machine:4>);
craft.make(<threng:machine:4>, ["pretty",
  "□ F □",
  "C ◘ C",
  "□ E □"], {
  "□": <ore:plateTitaniumIridium>,            # Titanium Iridium Alloy Plate
  "F": <threng:material:4>,                   # Fluix Logic Unit
  "C": <appliedenergistics2:material:53>,     # Crafting Card
  "◘": <thermalexpansion:frame:147>,          # Signalum Cell Frame (Full)
  "E": <contenttweaker:estimation_processor>, # Estimation Processor
});

# [Mass Assembler Controller] from [ME Controller][+4]
recipes.removeByRecipeName("threng:ma_controller");
craft.make(<threng:big_assembler:2>, ["pretty",
  "◙ M ◙",
  "F C F",
  "◙ E ◙"], {
  "◙": <threng:big_assembler>,                    # Mass Assembler Frame
  "M": <appliedenergistics2:molecular_assembler>, # Molecular Assembler
  "F": <threng:material:4>,                       # Fluix Logic Unit
  "C": <appliedenergistics2:controller>,          # ME Controller
  "E": <appliedenergistics2:interface>,           # ME Interface
});

# [Mass Assembler Frame]*3 from [Pure Fluix Crystal Block][+2]
recipes.remove(<threng:big_assembler>);
craft.make(<threng:big_assembler> * 4, ["pretty",
  "□ T □",
  "T * T",
  "□ T □"], {
  "□": <ore:plateHslaSteel>,              # HSLA Steel Plate
  "T": <ore:sheetTitaniumAluminide>,      # Titanium Aluminide Sheet
  "*": <appliedenergistics2:fluix_block>, # Pure Fluix Crystal Block
});

# [Mass Assembler Vent]*4 from [Enderium Rotor][+2]
recipes.remove(<threng:big_assembler:1>);
craft.make(<threng:big_assembler:1> * 4, ["pretty",
  "□ T □",
  "T E T",
  "□ T □"], {
  "□": <ore:plateHslaSteel>,         # HSLA Steel Plate
  "T": <ore:sheetTitaniumAluminide>, # Titanium Aluminide Sheet
  "E": <ore:rotorEnderium>,          # Enderium Rotor
});

# [MA Crafting Coprocessor] from [Methodology Processor][+4]
recipes.removeByRecipeName("threng:ma_mod_cpu");
craft.make(<threng:big_assembler:4>, ["pretty",
  "◙ M ◙",
  "F e F",
  "◙ C ◙"], {
  "◙": <threng:big_assembler>,                     # Mass Assembler Frame
  "M": <appliedenergistics2:molecular_assembler>,  # Molecular Assembler
  "F": <ore:springFluix>,                          # Fluix Spring
  "e": <contenttweaker:methodology_processor>,     # Methodology Processor
  "C": <appliedenergistics2:crafting_accelerator>, # Crafting Co-Processing Unit
});

# [MA Pattern Provider] from [Engineering Processor][+4]
recipes.removeByRecipeName("threng:ma_mod_pattern");
craft.make(<threng:big_assembler:3>, ["pretty",
  "◙ § ◙",
  "F E F",
  "◙ M ◙"], {
  "◙": <threng:big_assembler>,            # Mass Assembler Frame
  "§": <appliedenergistics2:material:35>, # 1k ME Storage Component
  "F": <ore:springFluix>,                 # Fluix Spring
  "E": <appliedenergistics2:material:24>, # Engineering Processor
  "M": <appliedenergistics2:interface>,   # ME Interface
});
