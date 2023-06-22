#modloaded exnihilocreatio

import mods.roots.Pyre;
import crafttweaker.item.IItemStack;

//Removing ExNihilo Hammers
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_iron>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_diamond>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_gold>);

// Removing Nihilo Pebbles from the Game and using Pyrotech Rocks Instead.
recipes.removeByRecipeName("exnihilo:cobblestone");
recipes.removeByRecipeName("exnihilo:stone_1");
recipes.removeByRecipeName("exnihilo:stone_3");
recipes.removeByRecipeName("exnihilo:stone_5");

mods.jei.JEI.removeAndHide(<exnihilocreatio:item_pebble>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_pebble:1>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_pebble:2>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_pebble:3>);

# Recipe for it
recipes.remove(<exnihilocreatio:block_sieve>);
Pyre.addRecipe(
  "ExNihiloSieve",
  <exnihilocreatio:block_sieve>,   // the output of this recipe
  [<ore:screwWroughtIron>, <forestry:oak_stick>, <forestry:oak_stick>, <actuallyadditions:block_misc:4>, <ore:dustArdite>] // a list of five ingredients (no more, no less)
);

# [String Mesh] from [Fabric Mesh][+1]
recipes.removeByRecipeName("exnihilocreatio:item_mesh_1");
craft.make(<exnihilocreatio:item_mesh:1>, ["pretty",
  "t t t",
  "t F t",
  "t t t"], {
  "t": <pyrotech:material:26>,    # Durable Twine
  "F": <magneticraft:crafting:6>, # Fabric Mesh
});

# [Flint Stiffened Mesh] from [String Mesh][+2]
recipes.removeByRecipeName("exnihilocreatio:item_mesh_2");
craft.make(<exnihilocreatio:item_mesh:2>, ["pretty",
  "F ◊ F",
  "◊ S ◊",
  "F ◊ F"], {
  "F": <pyrotech:material:3>,            # Flint Clay
  "◊": <ore:gemFlint>,                   # Flint
  "S": <exnihilocreatio:item_mesh:1>,    # String Mesh
});

# [Iron Stiffened Mesh] from [Flint Stiffened Mesh][+2]
<exnihilocreatio:item_mesh:3>.displayName = "Vanadiumsteel Stiffened Mesh";
recipes.removeByRecipeName("exnihilocreatio:item_mesh_3");
craft.make(<exnihilocreatio:item_mesh:3>, ["pretty",
  "□ I □",
  "I F I",
  "□ I □"], {
  "□": <ore:plateIron>,               # Iron Plate
  "I": <magneticraft:crafting:5>,     # Iron Mesh
  "F": <exnihilocreatio:item_mesh:2>, # Flint Stiffened Mesh
});

# [Diamond Stiffened Mesh] from [Iron Stiffened Mesh][+2]
recipes.removeByRecipeName("exnihilocreatio:item_mesh_4");
craft.make(<exnihilocreatio:item_mesh:4>, ["pretty",
  "C P C",
  "P I P",
  "C P C"], {
  "C": <ore:itemCompressedDiamond>,    # Compressed Diamond
  "P": <forestry:crafting_material:1>, # Pulsating Mesh
  "I": <exnihilocreatio:item_mesh:3>,  # Iron Stiffened Mesh
});

# [Waterwheel] from [Stone Axle][+2]
recipes.removeByRecipeName("exnihilocreatio:whaterwheel");
craft.make(<exnihilocreatio:block_waterwheel>, ["pretty",
  "# ≢ #",
  "≢ S ≢",
  "# ≢ #"], {
  "#": <ore:stickTreatedWood>,             # Treated Wood Stick
  "≢": <ore:plateTreatedWood> | <ore:plankTreatedWood>, # Treated Wood Plank
  "S": <exnihilocreatio:block_axle_stone>, # Stone Axle
});

# [Auto Sifter] from [Stone Axle][+4]
recipes.removeByRecipeName("exnihilocreatio:auto_sifter");
craft.make(<exnihilocreatio:block_auto_sifter>, ["pretty",
  "□ □ □",
  "¤ S ¤",
  "# P #"], {
  "□": <ore:plateStone>,                   # Stone Plate
  "¤": <ore:gearWroughtIron>,              # Wrought Iron Gear
  "S": <exnihilocreatio:block_axle_stone>, # Stone Axle
  "#": <ore:plateTreatedWood> | <ore:plankTreatedWood>, # Treated Wood Plank
  "P": <ore:craftingPiston>,               # Piston
});

# [Wooden Barrel] from [Fir Wood Slab][+2]
craft.remake(<exnihilocreatio:block_barrel0>, ["pretty",
  "B   B",
  "#   #",
  "# ≢ #"], {
  "B": <pyrotech:material:20>,                # Board
  "#": <ore:plankWood> ,                      # Kapok Wood Planks
  "≢": <ore:slabWood>,                        # Fir Wood Slab
});

# [Stone Barrel] from [Wooden Barrel][+2]
recipes.removeByRecipeName("exnihilocreatio:block_barrel1");
craft.make(<exnihilocreatio:block_barrel1>, ["pretty",
  "M   M",
  "M W M",
  "M a M"], {
  "M": <pyrotech:material:16>,          # Masonry Brick
  "W": <exnihilocreatio:block_barrel0>, # Wooden Barrel
  "a": <pyrotech:masonry_brick_block>,  # Masonry Bricks
});

# [End Cake] from [Cake][+4]
recipes.removeByRecipeName("exnihilocreatio:end_cake");
craft.make(<exnihilocreatio:block_end_cake>, ["pretty",
  "E A E",
  "◊ C ◊",
  "□ □ □"], {
  "E": <stygian:endglow>,                       # Enbiotic
  "A": <contenttweaker:abyssal_pearl>,          # Abyssal Pearl
  "◊": <ore:gemEnderEye> | <ore:pearlEnderEye>, # Eye of Ender
  "C": <minecraft:cake>,                        # Cake
  "□": <ore:platePolyenderlyne>,                # Polyenderlyne Plate
});

# [Artificial Hive] from [Bee House][+3]
recipes.removeByRecipeName("exnihilocreatio:artifical_hive");
craft.make(<exnihilocreatio:hive>, ["pretty",
  "t t t",
  "r B r",
  "S S S"], {
  "t": <ore:twine>,           # Twine
  "r": <pyrotech:material:2>, # Straw
  "B": <forestry:bee_house>,  # Bee House
  "S": <pyrotech:thatch>,     # Straw Bale
});

# [Porcelain Doll] from [Crude Steel Grinding Ball][+1]
recipes.removeByRecipeName("exnihilocreatio:item_material_5");
recipes.removeByRecipeName("exnihilocreatio:item_material_5_alt");
craft.make(<exnihilocreatio:item_material:5>, ["pretty",
  "P C P",
  "  P  ",
  "P   P"], {
  "P": <ore:clayPorcelain>,  # Unfired Porcelain
  "C": <ore:ballCrudeSteel>, # Crude Steel Grinding Ball
});

# [Blazing Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_blaze");
craft.make(<exnihilocreatio:item_doll>, ["pretty",
  "▲ ♣ ▲",
  "♠ P ♠",
  "▲ ▬ ▲"], {
  "▲": <ore:dustBlaze> | <ore:powderBlaze> | <ore:itemBlazePowder>, # Blaze Powder
  "♣": <ore:dustNetherrack>,              # Netherrack Dust
  "♠": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "▬": <ore:ingotBrickNetherGlazed>,      # Nethercotta
});

# [Creeping Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_enderman");
craft.make(<exnihilocreatio:item_doll:1>, ["pretty",
  "▲ ♣ ▲",
  "♠ P ♠",
  "▲ E ▲"], {
  "▲": <ore:dustSmallEnderPearl>,         # Small Pile of Enderpearl Dust
  "♣": <ore:dustGreenSapphire>,           # Green Sapphire Dust
  "♠": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "E": <extrautils2:enderlilly>,          # Ender Lilly
});

# [Floating Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_shulker");
craft.make(<exnihilocreatio:item_doll:2>, ["pretty",
  "◊ ♠ ◊",
  "▲ P ▲",
  "◊ e ◊"], {
  "◊": <ore:gemPearl>,                    # Shulker Pearl
  "♠": <ore:dustEndstone>,                # Endstone Dust
  "▲": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "e": <ore:enderpearl> | <ore:materialEnderPearl> | <ore:gemEnderPearl>, # Ender Pearl
});

# [Protecting Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_guardian");
craft.make(<exnihilocreatio:item_doll:3>, ["pretty",
  "◊ B ◊",
  "▲ P ▲",
  "◊ A ◊"], {
  "◊": <ore:gemPrismarine>,               # Prismarine Shard
  "B": <biomesoplenty:coral:2>,           # Blue Coral
  "▲": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "A": <ore:listAllfishraw> | <ore:listAllfishfresh>, # Raw Catfish
});

# [Freezing Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_blizz");
craft.make(<exnihilocreatio:item_doll:4>, ["pretty",
  "H I H",
  "▲ P ▲",
  "H c H"], {
  "H": <biomesoplenty:hard_ice>,          # Hardened Ice
  "I": <forestry:crafting_material:5>,    # Ice Shard
  "▲": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "c": <ore:flowerIcyIris>,               # Icy Iris
});

# [Breezing Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_blitz");
craft.make(<exnihilocreatio:item_doll:5>, ["pretty",
  "▲ B ▲",
  "♠ P ♠",
  "▲ f ▲"], {
  "▲": <ore:dustSaltpeter>,                 # Saltpeter Dust
  "B": <actuallyadditions:item_misc:15>,    # Bat's Wing
  "♠": <ore:dustGlowstone>,                 # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>,   # Porcelain Doll
  "f": <ore:flower> | <ore:allTallFlowers>, # Sunflower
});

# [Crushing Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_basalz");
craft.make(<exnihilocreatio:item_doll:6>, ["pretty",
  "▲ ♣ ▲",
  "♠ P ♠",
  "▲ D ▲"], {
  "▲": <ore:dustBedrock>,                 # Grains of Infinity
  "♣": <ore:dustObsidian>,                # Obsidian Dust
  "♠": <ore:dustGlowstone>,               # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>, # Porcelain Doll
  "D": <ore:flowerDeathbloom>,            # Deathbloom
});

# [Oozing Doll] from [Porcelain Doll][+4]
recipes.removeByRecipeName("exnihilocreatio:item_doll_blueslime");
craft.make(<exnihilocreatio:item_doll:7>, ["pretty",
  "s ◊ s",
  "▲ P ▲",
  "s ◘ s"], {
  "s": <ore:slimeball> | <ore:slimeballGreen>,     # Slimeball
  "◊": <ore:gemLapis> | <ore:dye> | <ore:dyeBlue>, # Lapis Lazuli
  "▲": <ore:dustGlowstone>,                        # Glowstone Dust
  "P": <exnihilocreatio:item_material:5>,          # Porcelain Doll
  "◘": <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "distilled_water", Amount: 1000}}).reuse(), # Distilled Water Cell
});

