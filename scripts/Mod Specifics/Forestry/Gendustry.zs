import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Gendustry Script                                                                                                                 //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

### /////////// ### =============================================================================

// Bee Receptacle =====================================
recipes.remove(<gendustry:bee_receptacle>);
recipes.addShaped(<gendustry:bee_receptacle> * 1, [[<ore:plateHoneySteel>, <ore:plateHoneySteel>, <ore:plateHoneySteel>], [<ore:plateHoneySteel>, <minecraft:glass_pane>, <ore:plateHoneySteel>],[<ore:plateRedstone>, <minecraft:light_weighted_pressure_plate>, <ore:plateRedstone>]]);

// Industrial Apiary =====================================
recipes.remove(<gendustry:industrial_apiary>);
recipes.addShaped(<gendustry:industrial_apiary> * 1, [[<ore:strengthenedGlass>, <gendustry:bee_receptacle>, <ore:strengthenedGlass>], [<ore:strengthenedGlass>, <forestry:sturdy_machine>, <ore:strengthenedGlass>],[<ore:gearHoneySteel>, <gregtech:meta_item_1:172>, <ore:gearHoneySteel>]]);

//Power Module =====================================
recipes.addShaped(<gendustry:power_module> * 1, [[<ore:gearSmallHoneySteel>, <ore:plateBrass>, <ore:gearSmallHoneySteel>], [<gregtech:meta_item_1:127>, <gregtech:meta_item_1:718>, <gregtech:meta_item_1:127>],[<ore:gearSmallHoneySteel>, <ore:plateBrass>, <ore:gearSmallHoneySteel>]]);

//Upgrade Frame =====================================
recipes.addShaped(<gendustry:upgrade_frame> * 1, [[<ore:plateTinAlloy>, <ore:springSmallGold>, <ore:plateTinAlloy>], [<ore:stickRedAlloy>, <ore:ringGold>, <ore:stickRedAlloy>],[<ore:plateTinAlloy>, <ore:springSmallGold>, <ore:plateTinAlloy>]]);

//Climate Control Module =====================================
recipes.addShaped(<gendustry:climate_module> * 1, [[<ore:plateBrass>, <ore:plateRedAlloy>, <ore:plateBrass>], [<ore:plateBrass>, <ore:springHoneySteel>, <ore:plateBrass>],[<ore:plateBrass>, <ore:plateRedAlloy>, <ore:plateBrass>]]);

//Genetics Labware =====================================
autoclave.recipeBuilder()
    .inputs(<ore:stickSilver>, <minecraft:glass_bottle>*2)
    .fluidInputs([<liquid:water> * 150])
    .outputs(<gendustry:labware>)
    .duration(160)
    .EUt(24)
    .buildAndRegister();

// Mutagen Tank
recipes.addShaped(<gendustry:mutagen_tank> * 1, [[<ore:plateTinAlloy>, <ore:stickTinAlloy>, <ore:plateTinAlloy>], [<ore:plateTinAlloy>, <gregtech:meta_item_1:517>, <ore:plateTinAlloy>],[<ore:plateTinAlloy>, <ore:stickTinAlloy>, <ore:plateTinAlloy>]]);

//Mutagen Producer =====================================
recipes.addShaped(<gendustry:mutagen_producer> * 1, [[<ore:plateBrass>, <ore:hopper>, <ore:plateBrass>], [<gendustry:power_module>, <forestry:sturdy_machine>, <gendustry:power_module>],[<ore:gearBrass>, <gendustry:mutagen_tank>, <ore:gearBrass>]]);

//Mutatron =====================================
recipes.addShaped(<gendustry:mutatron> * 1, [[<gendustry:bee_receptacle>, <gendustry:genetics_processor>, <ore:plateBrass>], [<gendustry:power_module>, <forestry:sturdy_machine>, <gendustry:bee_receptacle>],[<gendustry:bee_receptacle>, <gendustry:mutagen_tank>, <ore:plateBrass>]]);

//Advanced Mutatron =====================================
recipes.addShaped(<gendustry:mutatron_advanced> * 1, [[<ore:gearAluminium>, <ore:plateNetherQuartz>, <ore:gearAluminium>], [<gendustry:genetics_processor>, <gendustry:mutatron>, <gendustry:genetics_processor>],[<ore:gearAluminium>, <gendustry:power_module>, <ore:gearAluminium>]]);

//Genetic Imprinter =====================================
recipes.addShaped(<gendustry:imprinter> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<gendustry:gene_template>, <forestry:flexible_casing>, <gendustry:gene_template>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);

//Genetic Sampler =====================================
recipes.addShaped(<gendustry:sampler> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<gendustry:gene_sample_blank>, <forestry:flexible_casing>, <gendustry:gene_sample_blank>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);

//Protein Liquifier =====================================
recipes.addShaped(<gendustry:liquifier> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<enderio:block_tank:0>, <forestry:flexible_casing>, <enderio:block_tank:0>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);

//DNA Extractor =====================================
recipes.addShaped(<gendustry:extractor> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<gendustry:labware>, <forestry:flexible_casing>, <gendustry:labware>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);

//Genetic Transposer =====================================
recipes.addShaped(<gendustry:transposer> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<gendustry:labware>, <forestry:flexible_casing>, <gregtech:meta_item_1:188>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);

//Genetic Replicator =====================================
recipes.addShaped(<gendustry:replicator> * 1, [[<gendustry:genetics_processor>, <gendustry:bee_receptacle>, <gendustry:genetics_processor>], [<gendustry:labware>, <forestry:flexible_casing>, <gregtech:meta_item_1:218>],[<gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:genetics_processor>]]);


//Blank Gene Sample =====================================
assembler.recipeBuilder()
    .inputs(<ore:plateTin> * 4, <ore:plateRedAlloy>)
    .outputs(<gendustry:gene_sample_blank>)
    .circuit(16)
    .duration(100)
    .EUt(32)
.buildAndRegister();

//Gene Template =====================================
// assembler.recipeBuilder()
//     .inputs(<ore:plateTin> * 4, <ore:plateRedAlloy>, <ore:boltDiamond> * 4)
//     .outputs(<gendustry:gene_template>)
//     .circuit(16)
//     .duration(200)
//     .EUt(32)
// .buildAndRegister();

craft.make(<gendustry:gene_template>, ["pretty",
  "D B D",
  "B □ B",
  "D B D"], {
  "D": <ore:boltDiamond>,             # Diamond Bolt
  "B": <gendustry:gene_sample_blank>, # Blank Gene Sample
  "□": <ore:plateTinAlloy>,           # Tin Alloy Plate
});

//Genetics Processor =====================================
circuit_assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:382>, <ore:plateGreenSapphire>*6, <ore:componentResistor>*2, <ore:componentTransistor>*2, <ore:componentDiode>)
    .outputs(<gendustry:genetics_processor>)
    .duration(200)
    .EUt(30)
.buildAndRegister();

//Enviromental Processor =====================================
circuit_assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:382>, <ore:plateSapphire>*6, <ore:componentResistor>*2, <ore:componentTransistor>*2, <ore:componentDiode>)
    .outputs(<gendustry:env_processor>)
    .duration(200)
    .EUt(30)
.buildAndRegister();