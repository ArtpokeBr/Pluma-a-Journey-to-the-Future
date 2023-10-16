# [Little Hammer] from [Light Iron Plate][+5]
recipes.removeByRecipeName("littletiles:hammer");
craft.make(<littletiles:hammer>.withTag({}), ["pretty",
  "п □ □",
  "I ╱ I",
  "S ╱ H"], {
  "п": <ore:lightPlateIron>, # Light Iron Plate
  "□": <ore:plateIron>,      # Iron Plate
  "I": <ore:screwIron>,      # Iron Screw
  "╱": <ore:stickLapis>,     # Lapis Rod
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
  "H": <ore:gtceHardHammers>, # Iron Hammer
});

# [Little Blueprint]*4 from [Lapis Dust][+2]
recipes.removeByRecipeName("littletiles:blueprint");
craft.make(<littletiles:recipeadvanced> * 4, ["pretty",
  "p p p",
  "p B p",
  "p ♥ p"], {
  "p": <ore:paper> | <ore:platePaper> | <ore:paperEmpty>, # Paper
  "B": <ore:dustLapis>,       # Lapis Dust
  "♥": <ore:dustRedstone>, # Redstone
});

# [Little Saw] from [Iron Hammer][+4]
recipes.removeByRecipeName("littletiles:saw");
craft.make(<littletiles:saw>, ["pretty",
  "╱ □ I",
  "╱ □ S",
  "╱ I H"], {
  "╱": <ore:stickLapis>, # Lapis Rod
  "□": <ore:plateIron>,  # Iron Plate
  "I": <ore:screwIron>,  # Iron Screw
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
  "H": <ore:gtceHardHammers>, # Iron Hammer
});

# [Little Bag] from [Lapis Dust][+5]
recipes.removeByRecipeName("littletiles:bag");
craft.make(<littletiles:container>, ["pretty",
  "K s N",
  "L B L",
  "C L C"], {
  "K": <ore:gtceKnife>, # Iron Knife
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "N": <ore:artisansNeedle>.reuse().transformDamage(5), # Artisan's Osmium Needle
  "L": <quark:quilted_wool:3>,                      # Light Blue Quilted Wool
  "B": <ore:dustLapis>,             # Lapis Dust
  "C": <ore:materialCloth>,                         # Woven Cotton
});

# [Little Wrench] from [Iron Hammer][+4]
recipes.removeByRecipeName("littletiles:wrench");
craft.make(<littletiles:wrench>, ["pretty",
  "□ H □",
  "I ╱ I",
  "  ╱ S"], {
  "□": <ore:plateIron>,  # Iron Plate
  "H": <ore:gtceHardHammers>, # Iron Hammer
  "I": <ore:screwIron>,  # Iron Screw
  "╱": <ore:stickLapis>, # Lapis Rod
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
});

# [Little Workbench] from [Little Wrench][+3]
recipes.removeByRecipeName("littletiles:workbench");
craft.make(<littletiles:premade>.withTag({structure: {id: "workbench"}}), ["pretty",
  "E w E",
  "# L #",
  "#   #"], {
  "E": <gregtech:meta_item_1:347>,                # Empty Wooden Form
  "w": <ore:workbench>, # Crafting Table
  "#": <forestry:wood_pile>,                      # Wood Pile
  "L": <littletiles:wrench>.reuse(),                      # Little Wrench
});

# [Little Chisel] from [Iron Hammer][+4]
recipes.removeByRecipeName("littletiles:chisel");
craft.make(<littletiles:chisel>.withTag({preview: {bBox: [0, 0, 0, 1, 1, 1] as int[], tile: {block: "minecraft:stone"}}}), ["pretty",
  "  □  ",
  "I □ I",
  "H ╱ S"], {
  "□": <ore:lightPlateIron>, # Light Iron Plate
  "I": <ore:screwIron>,      # Iron Screw
  "H": <ore:gtceHardHammers>, # Iron Hammer
  "╱": <ore:stickLapis>,     # Lapis Rod
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
});

# [Little Paint Brush] from [Artisan's Osmium Needle][+4]
recipes.removeByRecipeName("littletiles:paintbrush");
craft.make(<littletiles:colortube>.withTag({color: -1}), ["pretty",
  "W W W",
  "I ╱ I",
  "N ╱ S"], {
  "W": <quark:quilted_wool>, # White Quilted Wool
  "I": <ore:screwIron>,      # Iron Screw
  "╱": <ore:stickLapis>,     # Lapis Rod
  "N": <ore:artisansNeedle>.reuse().transformDamage(5), # Artisan's Osmium Needle
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
});

# [Little Glove] from [Lapis Dust][+4]
recipes.removeByRecipeName("littletiles:grabber");
craft.make(<littletiles:grabber>.withTag({preview: {bBox: [0, 0, 0, 1, 1, 1] as int[], tile: {block: "minecraft:stone"}}}), ["pretty",
  "C L C",
  "L B L",
  "K L N"], {
  "C": <ore:materialCloth>,             # Woven Cotton
  "L": <quark:quilted_wool:3>,          # Light Blue Quilted Wool
  "B": <ore:dustLapis>, # Lapis Dust
  "K": <ore:gtceKnife>, # Iron Knife
  "N": <ore:artisansNeedle>.reuse().transformDamage(5), # Artisan's Osmium Needle
});

# [Structure Builder] from [LV Electric Motor][+3]
recipes.removeByRecipeName("littletiles:structure_builder");
craft.make(<littletiles:premade>.withTag({structure: {id: "structure_builder"}}), ["pretty",
  "B □ B",
  "B L B",
  "B E B"], {
  "B": <minecraft:concrete:15>,    # Black Concrete
  "□": <ore:plateIron>,            # Iron Plate
  "L": <gregtech:meta_item_1:127>, # LV Electric Motor
  "E": <gregtech:meta_item_1:347>, # Empty Wooden Form
});

# [Little Importer] from [Little Blueprint][+5]
recipes.removeByRecipeName("littletiles:importer");
craft.make(<littletiles:premade>.withTag({structure: {id: "importer"}}), ["pretty",
  "E ■ E",
  "п L п",
  "□ V □"], {
  "E": <gregtech:meta_item_1:347>,   # Empty Wooden Form
  "■": <ore:blockGlass>,             # Glass
  "п": <ore:plateIron>,              # Iron Plate
  "L": <littletiles:recipeadvanced>, # Little Blueprint
  "□": <ore:lightPlateIron>,         # Light Iron Plate
  "V": <gregtech:meta_item_1:127>,   # LV Electric Motor
});

# [Little Exporter] from [Little Blueprint][+5]
recipes.removeByRecipeName("littletiles:exporter");
craft.make(<littletiles:premade>.withTag({structure: {id: "exporter"}}), ["pretty",
  "E I E",
  "п L п",
  "□ V □"], {
  "E": <gregtech:meta_item_1:347>,   # Empty Wooden Form
  "I": <ore:barsIron>,               # Iron Bars
  "п": <ore:plateIron>,              # Iron Plate
  "L": <littletiles:recipeadvanced>, # Little Blueprint
  "□": <ore:lightPlateIron>,         # Light Iron Plate
  "V": <gregtech:meta_item_1:127>,   # LV Electric Motor
});

# [Blank-o-matic] from [Little Paint Brush][+3]
recipes.removeByRecipeName("littletiles:blankomatic");
craft.make(<littletiles:premade>.withTag({structure: {id: "blankomatic"}}), ["pretty",
  "E п E",
  "E L E",
  "E □ E"], {
  "E": <gregtech:meta_item_1:347>, # Empty Wooden Form
  "п": <ore:plateIron>,            # Iron Plate
  "L": <littletiles:colortube>.reuse(), # Little Paint Brush
  "□": <ore:lightPlateIron>,       # Light Iron Plate
});

# [Signal Converter] from [Redstone][+2]
recipes.removeByRecipeName("littletiles:signal_converter");
craft.make(<littletiles:signal_converter>, ["pretty",
  "  ░",
  "  ♥",
  "  S"], {
  "░": <ore:compressed1xCobblestone>,                     # 1x Compressed Cobblestone
  "♥": <ore:dustRedstone>,                                # Redstone
  "S": <ore:artisansSolderer>.reuse().transformDamage(5), # Artisan's Iron Solderer
});

# [Particle Emitter] from [LV Electric Piston][+3]
recipes.removeByRecipeName("littletiles:particle_emitter");
craft.make(<littletiles:premade>.withTag({structure: {id: "particle_emitter"}}), ["pretty",
  "B D B",
  "F L F",
  "B B B"], {
  "B": <minecraft:concrete:15>,     # Black Concrete
  "D": <minecraft:dispenser>,       # Dispenser
  "F": <minecraft:firework_charge>, # Firework Star
  "L": <gregtech:meta_item_1:172>,  # LV Electric Piston
});

