#modloaded ae2fc

// ME Fluid Discretizer
recipes.remove(<ae2fc:fluid_discretizer>);
recipes.addShaped(<ae2fc:fluid_discretizer> * 1, [[<ore:lightPlateStainlessSteel>, <contenttweaker:operation_processor>, <ore:lightPlateStainlessSteel>], [<appliedenergistics2:part:221>, <appliedenergistics2:condenser>, <appliedenergistics2:part:220>],[<ore:lightPlateStainlessSteel>, <contenttweaker:operation_processor>, <ore:lightPlateStainlessSteel>]]);

// Fluid Pattern Encoder
recipes.remove(<ae2fc:fluid_pattern_encoder>);
recipes.addShaped(<ae2fc:fluid_pattern_encoder> * 1, [[<ore:plateLapis>, <contenttweaker:operation_processor>, <ore:plateLapis>], [<ore:plateStainlessSteel>, <avaritia:compressed_crafting_table>, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

// ME Fluid Packet Decoder
recipes.remove(<ae2fc:fluid_packet_decoder>);
recipes.addShaped(<ae2fc:fluid_packet_decoder> * 1, [[<ore:plateStainlessSteel>, <minecraft:hopper>, <ore:plateStainlessSteel>], [<appliedenergistics2:part:16>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:part:16>],[<ore:plateStainlessSteel>, <contenttweaker:operation_processor>, <ore:plateStainlessSteel>]]);

// Ingredient Buffer
recipes.remove(<ae2fc:ingredient_buffer>);
recipes.addShaped(<ae2fc:ingredient_buffer> * 1, [[<ore:plateStainlessSteel>, <appliedenergistics2:material:35>, <ore:plateStainlessSteel>], [<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>],[<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>]]);

// Large Ingredient Buffer
recipes.remove(<ae2fc:large_ingredient_buffer>);
recipes.addShaped(<ae2fc:large_ingredient_buffer> * 1, [[<ae2fc:ingredient_buffer>, <appliedenergistics2:quartz_vibrant_glass>, <ae2fc:ingredient_buffer>], [<appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:operation_processor>, <appliedenergistics2:quartz_vibrant_glass>],[<ae2fc:ingredient_buffer>, <appliedenergistics2:quartz_vibrant_glass>, <ae2fc:ingredient_buffer>]]);

// Precision Burette
recipes.remove(<ae2fc:burette>);
recipes.addShaped(<ae2fc:burette> * 1, [[<ore:plateStainlessSteel>, <minecraft:hopper>, <ore:plateStainlessSteel>], [<appliedenergistics2:quartz_vibrant_glass>, <forestry:pipette>, <appliedenergistics2:quartz_vibrant_glass>],[<ore:plateStainlessSteel>, <contenttweaker:operation_processor>, <ore:plateStainlessSteel>]]);

// ME Fluid Level Maintainer
recipes.remove(<ae2fc:fluid_level_maintainer>);
recipes.addShaped(<ae2fc:fluid_level_maintainer> * 1, [[<ore:plateMithril>, <appliedenergistics2:part:281>, <ore:plateMithril>], [<contenttweaker:operation_processor>, <appliedenergistics2:crafting_monitor>, <contenttweaker:operation_processor>],[<ore:plateMithril>, <forestry:thermionic_tubes:11>, <ore:plateMithril>]]);

// ME Extended Processing Fluid Pattern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_ex_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal> * 1, [[<contenttweaker:operation_processor>, null, <contenttweaker:operation_processor>], [<ae2fc:part_fluid_pattern_terminal>, <appliedenergistics2:part:16>, <ae2fc:part_fluid_pattern_terminal>],[<contenttweaker:operation_processor>, null, <contenttweaker:operation_processor>]]);
