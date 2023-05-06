import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter as Carpenter;
import mods.forestry.ThermionicFabricator as ThermionicFabricator;
import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Forestry Script                                                                                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Scoop
recipes.remove(<forestry:scoop>);
recipes.addShaped(<forestry:scoop> * 1, [[<ore:stickTreatedWood>, <ore:wool>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],[<ore:screwSteel>, <ore:stickTreatedWood>, <ore:gtceScrewdrivers>]]);

// Bee Smoker
recipes.remove(<forestry:smoker>);
recipes.addShaped(<forestry:smoker> * 1, [[<harvestcraft:hardenedleatheritem>, <ore:stickTreatedWood>, <ore:screwSteel>], [<harvestcraft:hardenedleatheritem>, <ore:pyreFireStarters>, <ore:lightPlateSteel>],[<ore:gtceScrewdrivers>, <ore:lightPlateSteel>, <ore:lightPlateSteel>]]);



// Casing's ===============================

// Sturdy Casing -> Sturdy Chassis
<forestry:sturdy_machine>.displayName = "Sturdy Chassis";
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine> * 1, [[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], [<ore:springBrass>, <ore:ringBrass>, <ore:springBrass>],[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]]);
recipes.addShaped(<forestry:sturdy_machine> * 2, [[<ore:plateHoneySteel>, <ore:plateHoneySteel>, <ore:plateHoneySteel>], [<ore:springHoneySteel>, <ore:ringHoneySteel>, <ore:springHoneySteel>],[<ore:plateHoneySteel>, <ore:plateHoneySteel>, <ore:plateHoneySteel>]]);


// Impregnated Casing -> Impregnated Chassis
<forestry:impregnated_casing>.displayName = "Impregnated Chassis";
Carpenter.removeRecipe(<forestry:impregnated_casing>);
recipes.addShaped(<forestry:impregnated_casing> * 1, [[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<forestry:oak_stick>, <extratrees:misc:2>, <forestry:oak_stick>],[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]]);

// Hardened Casing -> Hardened Chassis
<forestry:hardened_machine>.displayName = "Hardened Chassis";
Carpenter.removeRecipe(<forestry:hardened_machine>);
recipes.addShaped(<forestry:hardened_machine> * 1, [[<ore:plateAluminium>, <ore:plateDiamond>, <ore:plateAluminium>], [<ore:springAluminium>, <forestry:sturdy_machine>, <ore:springAluminium>],[<ore:plateAluminium>, <ore:plateDiamond>, <ore:plateAluminium>]]);

// Flexible Casing -> Mutagenic Chassis
<forestry:flexible_casing>.displayName = "Mutagenic Chassis";
ThermionicFabricator.removeCast(<forestry:flexible_casing>);

assembler.recipeBuilder()
    .inputs(<forestry:hardened_machine>, <forestry:thermionic_tubes:9>*2, <ore:plateGreenSapphire>*4, <ore:springTerrastone>*2)
    .fluidInputs(<liquid:mutagen> * 1000)
    .outputs(<forestry:flexible_casing>)
    .circuit(16)
    .duration(250)
    .EUt(128)
.buildAndRegister();

// Thermionic Fabricator
recipes.remove(<forestry:fabricator:0>);
recipes.addShaped(<forestry:fabricator:0> * 1, [[<ore:plateLapis>, <ore:heavyPlateGold>, <ore:plateLapis>], [<ore:plateCobaltBrass>, <actuallyadditions:block_misc:9>, <ore:plateCobaltBrass>],[<ore:plateCobaltBrass>, <magneticraft:crafting:2>, <ore:plateCobaltBrass>]]);



// Squeezer
//recipes.remove(<forestry:squeezer:0>);
//recipes.addShaped(<forestry:squeezer:0> * 1, [[<ore:plateTin>, <ore:circuitLv>, <ore:plateTin>], [<ore:plateTin>, <forestry:sturdy_machine>, <ore:plateTin>],[<ore:plateTin>, <gregtech:meta_item_1:172>, <ore:plateTin>]]);


### HoneComb Fixes ### =============================================================================

<ore:ingotHoneycomb>.add(<careerbees:ingredients:10>);

<careerbees:ingredients:10>.addTooltip(format.green("Can also be made by a Honey Smeltery Bee!"));
<careerbees:ingredients:10>.addTooltip(format.green("Place an Iron in a Flower Pedestal Close to it!"));

//HoneyComb Ingot
alloy.recipeBuilder()
    .inputs(<ore:dropHoneydew>, <ore:ingotIron>)
    .outputs(<ore:ingotHoneycomb>.firstItem)
    .duration(180)
    .EUt(16)
.buildAndRegister();

// Bee-Bee Gun
recipes.remove(<careerbees:beegun>);
recipes.addShaped(<careerbees:beegun> * 1, [[<ore:screwHoneySteel>, <ore:gtceScrewdrivers>, <ore:screwHoneySteel>], [<careerbees:ingredients:10>, <ore:gearHoneySteel>, <ore:plateHoneySteel>],[<careerbees:ingredients:10>, <ore:gtceWrenches>, <ore:gtceHardHammers>]]);

//Readding the Ash OreDict and adding convertions for it
recipes.addShapeless(<ore:dustAsh>.firstItem, [<forestry:ash>]);
furnace.addRecipe(<ore:dustAsh>.firstItem, <forestry:wood_pile>);

## Backpack's Recipes and Tooltips =============================

# [Apiarist's Backpack] from [Apiarist's Chest][+3]
recipes.removeByRecipeName("forestry:backpack_bee");
craft.make(<forestry:apiarist_bag>, ["pretty",
  "s w s",
  "L A L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "A": <forestry:bee_chest>,                        # Apiarist's Chest
});

# [Lepidopterist's Backpack] from [Lepidopterist's Chest][+3]
recipes.removeByRecipeName("forestry:backpack_butterfly");
craft.make(<forestry:lepidopterist_bag>, ["pretty",
  "s w s",
  "L e L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "e": <forestry:butterfly_chest>,                  # Lepidopterist's Chest
});

# [Mining Backpack] from [Iron Pickaxe Head][+3]
recipes.removeByRecipeName("forestry:backpack_mining");
craft.make(<forestry:miner_bag>, ["pretty",
  "s w s",
  "L P L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "P": <tconstruct:pick_head>.withTag({Material: "iron"}), # Iron Pickaxe Head
});

# [Digging Backpack] from [1x Compressed Clay][+3]
recipes.removeByRecipeName("forestry:backpack_digging");
craft.make(<forestry:digger_bag>, ["pretty",
  "s w s",
  "L 1 L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "1": <ore:compressed1xClay>,                      # 1x Compressed Clay
});

# [Foresting Backpack] from [Wood Pile][+3]
recipes.removeByRecipeName("forestry:backpack_foresting");
craft.make(<forestry:forester_bag>, ["pretty",
  "s w s",
  "L # L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "#": <forestry:wood_pile>,                        # Wood Pile
});

# [Hunting Backpack] from [Iron Bowlimb][+3]
recipes.removeByRecipeName("forestry:backpack_hunting");
craft.make(<forestry:hunter_bag>, ["pretty",
  "s w s",
  "L I L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "I": <tconstruct:bow_limb>.withTag({Material: "iron"}), # Iron Bowlimb
});

# [Engineer's Backpack] from [Wrench][+3]
recipes.removeByRecipeName("forestry:backpack_adventuring");
craft.make(<forestry:adventurer_bag>, ["pretty",
  "s w s",
  "L W L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "W": <forestry:wrench>,                           # Wrench
});

# [Building Backpack] from [Dark Bricks][+3]
recipes.removeByRecipeName("forestry:backpack_building");
craft.make(<forestry:builder_bag>, ["pretty",
  "s w s",
  "L D L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "D": <ceramics:clay_hard:1>,                      # Dark Bricks
});

# [Iceman's Backpack] from [White Wool][+2]
recipes.removeByRecipeName("railcraft:backpack_iceman_t1$1");
craft.make(<railcraft:backpack_iceman_t1>, ["pretty",
  "s w s",
  "L   L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
});

# [Trackman's Backpack] from [Track][+3]
recipes.removeByRecipeName("railcraft:backpack_trackman_t1$1");
craft.make(<railcraft:backpack_trackman_t1>, ["pretty",
  "s w s",
  "L r L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "r": <ore:rail>,                                  # Track
});

# [Signalman Backpack] from [Signal Lamp][+3]
recipes.removeByRecipeName("railcraft:backpack_signalman_t1$1");
craft.make(<railcraft:backpack_signalman_t1>, ["pretty",
  "s w s",
  "L S L",
  "s w s"], {
  "s": <ore:twine>, # String
  "w": <ore:wool>, # White Wool
  "L": <pyrotech:material:39>,                      # Leather Strap
  "S": <railcraft:signal_lamp>,                     # Signal Lamp
});

//Apiarist

var ApiaristBackpack as IItemStack[] = 

[<forestry:apiarist_bag>];

for i in ApiaristBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in ApiaristBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("All varieties of Bees."));}

//Lepidopterist

var LepidopteristBackpack as IItemStack[] = 

[<forestry:lepidopterist_bag>];

for i in LepidopteristBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in LepidopteristBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("All varieties of Butterflies."));}

//Mining

var MiningBackpack as IItemStack[] = 

[<forestry:miner_bag>, <forestry:miner_bag_t2>];

for i in MiningBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in MiningBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("All types of Ore and Gems."));}

//Digging

var DiggingBackpack as IItemStack[] = 

[<forestry:digger_bag>, <forestry:digger_bag_t2>];

for i in DiggingBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in DiggingBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Dirt, Cobblestone, Sand, Gravel, Flint, Clay etc..."));}

//Foresting

var ForestingBackpack as IItemStack[] = 

[<forestry:forester_bag>, <forestry:forester_bag_t2>];

for i in ForestingBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in ForestingBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Wood, Saplings, Flowers, Seeds, Mushrooms etc..."));}

//Hunting

var HuntingBackpack as IItemStack[] = 

[<forestry:hunter_bag>, <forestry:hunter_bag_t2>];

for i in HuntingBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in HuntingBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Any Item Dropped by a Mob."));}

//Adventuring -> Engineering

<forestry:adventurer_bag>.displayName = "Engineer's Backpack";
<forestry:adventurer_bag_t2>.displayName = "Woven Engineer's Backpack";

var EngineeringBackpack as IItemStack[] = 

[<forestry:adventurer_bag>, <forestry:adventurer_bag_t2>];

for i in EngineeringBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in EngineeringBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Wrenches and Common Factory/Crafting Tools."));}

//Building

var BuildingBackpack as IItemStack[] = 

[<forestry:builder_bag>, <forestry:builder_bag_t2>];

for i in BuildingBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in BuildingBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Items used for building such as Glass, Torches, Bricks, Stairs, Fences etc..."));}

//Iceman

var IcemanBackpack as IItemStack[] = 

[<railcraft:backpack_iceman_t1>, <railcraft:backpack_iceman_t2>];

for i in IcemanBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in IcemanBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Snowy and Icy Items/Blocks."));}

//Trackman

var TrackmanBackpack as IItemStack[] = 

[<railcraft:backpack_trackman_t1>, <railcraft:backpack_trackman_t2>];

for i in TrackmanBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in TrackmanBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Items/Blocks used for building railroads such as Tracks, Minecarts, Loaders, Unloaders, Detectors etc..."));}

//Signalman

var SignalmanBackpack as IItemStack[] = 

[<railcraft:backpack_signalman_t1>, <railcraft:backpack_signalman_t2>];

for i in SignalmanBackpack {i.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));}
for i in SignalmanBackpack {i.addShiftTooltip(format.white("Used to store ") + format.yellow("Single Headed Signals and Signal Boxes."));}

//Apothecary (currently removed)
mods.jei.JEI.removeAndHide(<railcraft:backpack_apothecary_t1>);
mods.jei.JEI.removeAndHide(<railcraft:backpack_apothecary_t2>);

# [Analyzer] from [Sturdy Chassis][+5]
recipes.removeByRecipeName("forestry:analyzer");
craft.make(<forestry:analyzer>, ["pretty",
  "□ P □",
  "c S R",
  "□ п □"], {
  "□": <ore:plateTinAlloy>,           # Tin Alloy Plate
  "P": <forestry:portable_alyzer>,    # Portable Analyzer
  "c": <ore:chest> | <ore:chestWood>, # Chest
  "S": <forestry:sturdy_machine>,     # Sturdy Chassis
  "R": <pyrotech:brick_tank>,         # Refractory Tank
  "п": <ore:lightPlateTinAlloy>,      # Light Tin Alloy Plate
});

# [Escritoire] from [Ink Sac][+3]
Carpenter.removeRecipe(<forestry:escritoire>);
craft.make(<forestry:escritoire>, ["pretty",
  "d   f",
  "# # #",
  "≢   ≢"], {
  "d": <ore:dye> | <ore:dyeBlack>,            # Ink Sac
  "f": <ore:feather> | <ore:craftingFeather>, # Feather
  "#": <ore:plankTreatedWood>,                # Treated Wood Planks
  "≢": <ore:frameGtTreatedWood>,              # Treated Wood Frame Box
});

# [Carpenter] from [Sturdy Chassis][+3]
recipes.removeByRecipeName("forestry:carpenter");
craft.make(<forestry:carpenter>, ["pretty",
  "# A #",
  "G S G",
  "# A #"], {
  "#": <ore:plankTreatedWood>,        # Treated Wood Planks
  "A": <ore:listAllwater>,            # Fresh Water
  "G": <forestry:thermionic_tubes:4>, # Golden Electron Tube
  "S": <forestry:sturdy_machine>,     # Sturdy Chassis
});

# [Peat-fired Engine] from [Fine Copper Wire Coil][+4]
recipes.removeByRecipeName("forestry:peat_engine");
craft.make(<forestry:engine_peat>, ["pretty",
  "□ □ □",
  "C F C",
  "¤ P ¤"], {
  "□": <ore:plateCopper>,                      # Copper Plate
  "C": <magneticraft:copper_coil>,             # Copper Coil
  "F": <magneticraft:crafting:3>,              # Fine Copper Wire Coil
  "¤": <ore:gearCopper>,                       # Copper Gear
  "P": <ore:craftingPiston>,                   # Piston
});

# [Biogas Engine] from [Fine Copper Wire Coil][+4]
recipes.removeByRecipeName("forestry:biogas_engine");
craft.make(<forestry:engine_biogas>, ["pretty",
  "□ □ □",
  "C F C",
  "¤ L ¤"], {
  "□": <ore:plateBronze>,                      # Bronze Plate
  "C": <magneticraft:copper_coil>,             # Copper Coil
  "F": <magneticraft:crafting:3>,              # Fine Copper Wire Coil
  "¤": <ore:gearBronze>,                       # Bronze Gear
  "L": <gregtech:meta_item_1:172>,             # LV Electric Piston
});

# [Clockwork Engine] from [Fine Copper Wire Coil][+4]
recipes.removeByRecipeName("forestry:clockwork_engine");
craft.make(<forestry:engine_clockwork>, ["pretty",
  "□ □ □",
  "C F C",
  "¤ L ¤"], {
  "□": <ore:plateBronze>,          # Bronze Plate
  "C": <minecraft:clock>,          # Clock
  "F": <magneticraft:crafting:3>,  # Fine Copper Wire Coil
  "¤": <ore:gearBronze>,           # Bronze Gear
  "L": <gregtech:meta_item_1:172>, # LV Electric Piston
});

# [Habitat Former] from [Hardened Chassis][+5]
recipes.removeByRecipeName("forestry:habitat_former");
craft.make(<forestry:habitat_former>, ["pretty",
  "■ F ■",
  "O H O",
  "¤ B ¤"], {
  "■": <ore:blockGlassHardened>,      # Hardened Steel Glass
  "F": <ore:wireFineRedAlloy>,        # Fine Red Alloy Wire
  "O": <forestry:thermionic_tubes:6>, # Obsidian Electron Tube
  "H": <forestry:hardened_machine>,   # Hardened Chassis
  "¤": <ore:gearBronze>,              # Bronze Gear
  "B": <forestry:chipsets>,           # Basic Circuit Board
});

# [Habitat Screen] from [Diamond Plate][+3]
craft.make(<forestry:habitat_screen>, ["pretty",
  "□ F □",
  "□ F □",
  "¤ п ¤"], {
  "□": <ore:plateBronze>,         # Bronze Plate
  "F": <quark:framed_glass_pane>, # Framed Glass Pane
  "¤": <ore:gearBronze>,          # Bronze Gear
  "п": <ore:plateDiamond>,        # Diamond Plate
});

# [Rainmaker] from [Hardened Chassis][+3]
recipes.removeByRecipeName("forestry:rainmaker");
craft.make(<forestry:rainmaker>, ["pretty",
  "¤ b ¤",
  "O H O",
  "¤ b ¤"], {
  "¤": <ore:gearElectricalSteel>,      # Electrical Steel Gear
  "b": <mia:armored_glass>,            # Obsidian Glass
  "O": <forestry:thermionic_tubes:13>, # Orchid Electron Tube
  "H": <forestry:hardened_machine>,    # Hardened Chassis
});

# [Rain Tank] from [Sturdy Chassis][+3]
recipes.removeByRecipeName("forestry:raintank");
craft.make(<forestry:raintank>, ["pretty",
  "□ ~ □",
  "□ t □",
  "□ S □"], {
  "□": <ore:plateTinAlloy>,       # Tin Alloy Plate
  "~": <minecraft:bucket>,        # Bucket
  "t": <forestry:sturdy_machine>, # Sturdy Chassis
  "S": <pyrotech:stone_tank>,     # Stone Tank
});

# [Moistener] from [Impregnated Chassis][+2]
recipes.removeByRecipeName("forestry:moistener");
craft.make(<forestry:moistener>, ["pretty",
  "# ⌂ #",
  "# I #",
  "# ⌂ #"], {
  "#": <ore:plankTreatedWood>,        # Treated Wood Planks
  "⌂": <ore:casingBronze>,            # Bronze Casing
  "I": <forestry:impregnated_casing>, # Impregnated Chassis
});

# [Fermenter] from [Impregnated Chassis][+3]
recipes.removeByRecipeName("forestry:fermenter");
craft.make(<forestry:fermenter>, ["pretty",
  "¤ ⌂ ¤",
  "■ I ■",
  "¤ ⌂ ¤"], {
  "¤": <ore:gearBronze>,              # Bronze Gear
  "⌂": <ore:casingBronze>,            # Bronze Casing
  "■": <ore:blockGlassHardened>,      # Hardened Steel Glass
  "I": <forestry:impregnated_casing>, # Impregnated Chassis
});

# [Squeezer] from [Impregnated Chassis][+3]
recipes.removeByRecipeName("forestry:squeezer");
craft.make(<forestry:squeezer>, ["pretty",
  "□ ■ □",
  "⌂ I ⌂",
  "□ ■ □"], {
  "□": <ore:plateTinAlloy>,           # Tin Alloy Plate
  "■": <ore:blockGlassHardened>,      # Hardened Steel Glass
  "⌂": <ore:casingTin>,               # Tin Casing
  "I": <forestry:impregnated_casing>, # Impregnated Chassis
});

// Bee Frames Recipes ================================

# [Untreated Frame] from [Fabric Mesh][+2]
recipes.removeByRecipeName("forestry:frame_untreated");
craft.make(<forestry:frame_untreated>, ["pretty",
  "≢ # ≢",
  "# F #",
  "≢ # ≢"], {
  "≢": <ore:boltWood>,            # Short Wood Stick
  "#": <ore:stickWood>,           # Stick
  "F": <magneticraft:crafting:6>, # Fabric Mesh
});

# [Impregnated Frame] from [Fabric Mesh][+2]
recipes.removeByRecipeName("forestry:frame_impregnated");
craft.make(<forestry:frame_impregnated>, ["pretty",
  "# ╱ #",
  "╱ F ╱",
  "# ╱ #"], {
  "#": <ore:boltWood>,            # Short Wood Stick
  "╱": <forestry:oak_stick>,      # Impregnated Stick
  "F": <magneticraft:crafting:6>, # Fabric Mesh
});

# [Proven Frame] from [Woven Silk][+2]
craft.make(<forestry:frame_proven>, ["pretty",
  "# ╱ #",
  "╱ W ╱",
  "# ╱ #"], {
  "#": <ore:boltWood>,                 # Short Wood Stick
  "╱": <forestry:oak_stick>,           # Impregnated Stick
  "W": <forestry:crafting_material:3>, # Woven Silk
});

# [Chocolate Frame] from [Impregnated Frame][+1]
recipes.removeByRecipeName("extrabees:cocoa_frame");
craft.make(<extrabees:hive_frame.cocoa>, ["pretty",
  "  C  ",
  "C ◙ C",
  "  C  "], {
  "C": <ore:ingotChocolate>,                     # Milk Chocolate
  "◙": <forestry:frame_impregnated>.anyDamage(), # Impregnated Frame
});

# [Restraint Frame] from [Impregnated Frame][+2]
recipes.removeByRecipeName("extrabees:cage_frame");
craft.make(<extrabees:hive_frame.cage>, ["pretty",
  "I r I",
  "r ◙ r",
  "I r I"], {
  "I": <ore:ringIron>,                           # Iron Ring
  "r": <ore:boltIron>,                           # Iron Bolt
  "◙": <forestry:frame_impregnated>.anyDamage(), # Impregnated Frame
});

# [Soul Frame] from [Impregnated Frame][+2]
recipes.removeByRecipeName("extrabees:soul_frame");
craft.make(<extrabees:hive_frame.soul>, ["pretty",
  "B S B",
  "S ◙ S",
  "  S B"], {
  "B": <biomesoplenty:bramble_plant>,            # Bramble
  "S": <quark:soul_powder>,                      # Soul Powder
  "◙": <forestry:frame_impregnated>.anyDamage(), # Impregnated Frame
});

# [Healing Frame] from [Impregnated Frame][+2]
recipes.removeByRecipeName("extrabees:clay_frame");
craft.make(<extrabees:hive_frame.clay>, ["pretty",
  "  G  ",
  "A ◙ A",
  "  G  "], {
  "G": <minecraft:speckled_melon>,               # Glistering Melon
  "A": <ore:cropBlightberry>,                    # Blightberry
  "◙": <forestry:frame_impregnated>.anyDamage(), # Impregnated Frame
});

# [Nova Frame] from [Proven Frame][+1]
craft.make(<extrabees:hive_frame.debug>, ["pretty",
  "  R  ",
  "R ◙ R",
  "  R  "], {
  "R": <binniecore:cylinder:1>.withTag({Fluid: {FluidName: "binnie.dna.raw", Amount: 1000}}), # Raw DNA Cylinder
  "◙": <forestry:frame_proven>.anyDamage(), # Proven Frame
});

# [Mutation Frame] from [Proven Frame][+1]
craft.make(<careerbees:mutation_frame>, ["pretty",
  "  B  ",
  "B ◙ B",
  "  B  "], {
  "B": <fossil:bio_goo>,                    # Bio-Goo
  "◙": <forestry:frame_proven>.anyDamage(), # Proven Frame
});

# [Eternal Frame] from [Proven Frame][+3]
recipes.removeByRecipeName("careerbees:eternal_frame");
craft.make(<careerbees:eternalframe>, ["pretty",
  "  *  ",
  "B ◙ e",
  "  *  "], {
  "*": <contenttweaker:condensed_vis_crystal_chronos>, # Condensed Chronos Vis Crystal
  "B": <ore:careerBeesYang>,                # Yang Essence
  "◙": <forestry:frame_proven>.anyDamage(), # Proven Frame
  "e": <ore:careerBeesYing>,                # Ying Essence
});

# [Poison Frame] from [Potion of Poison][+2]
recipes.removeByRecipeName("careerbees:poison_frame");
craft.make(<careerbees:poison_frame>, ["pretty",
  "╱ ╱ ╱",
  "R : R",
  "╱ ╱ ╱"], {
  "╱": <forestry:oak_stick>, # Impregnated Stick
  "R": <natura:edibles>,     # Raw Imphide
  ":": <minecraft:potion>.withTag({Potion: "minecraft:poison"}),    # Potion of Poison
});

# [Pheremone Frame] from [Impregnated Frame][+2]
recipes.removeByRecipeName("careerbees:pheremone_frame");
craft.make(<careerbees:pheremone_frame>, ["pretty",
  "P L P",
  "L ◙ L",
  "P L P"], {
  "P": <ore:flowerPinkDaffodil>,                 # Pink Dafodil
  "L": <ore:flowerLavender>,                     # Lavender
  "◙": <forestry:frame_impregnated>.anyDamage(), # Impregnated Frame
});

# [Centrifuge] from [Sturdy Chassis][+3]
recipes.removeByRecipeName("forestry:centrifuge");
craft.make(<forestry:centrifuge>, ["pretty",
  "□ O □",
  "⌂ S ⌂",
  "□ O □"], {
  "□": <ore:plateBrass>,              # Brass Plate
  "O": <forestry:thermionic_tubes:6>, # Obsidian Electron Tube
  "⌂": <ore:casingBronze>,            # Bronze Casing
  "S": <forestry:sturdy_machine>,     # Sturdy Chassis
});

# [Arboretum (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:arboretum");
craft.make(<forestry:arboretum>, ["pretty",
  "□ G □",
  "G u G",
  "□ M □"], {
  "□": <ore:lightPlateBronze>,        # Light Bronze Plate
  "G": <forestry:thermionic_tubes:4>, # Golden Electron Tube
  "u": <forestry:flexible_casing>,    # Mutagenic Chassis
  "M": <ore:circuitMv>,               # Integrated Processor
});

# [Farm (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:farm_crops");
craft.make(<forestry:farm_crops>, ["pretty",
  "□ I □",
  "I u I",
  "□ M □"], {
  "□": <ore:lightPlateTerrastone>,    # Light Terrastone Plate
  "I": <forestry:thermionic_tubes:3>, # Iron Electron Tube
  "u": <forestry:flexible_casing>,    # Mutagenic Chassis
  "M": <ore:circuitMv>,               # Integrated Processor
});

# [Mushroom Farm (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:farm_mushroom");
craft.make(<forestry:farm_mushroom>, ["pretty",
  "□ A □",
  "A u A",
  "□ M □"], {
  "□": <ore:lightPlateMenril>,         # Light Menril Plate
  "A": <forestry:thermionic_tubes:10>, # Apatine Electron Tube
  "u": <forestry:flexible_casing>,     # Mutagenic Chassis
  "M": <ore:circuitMv>,                # Integrated Processor
});

# [Gourd Farm (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:farm_gourd");
craft.make(<forestry:farm_gourd>, ["pretty",
  "□ B □",
  "B u B",
  "□ M □"], {
  "□": <ore:lightPlateBrass>,         # Light Brass Plate
  "B": <forestry:thermionic_tubes:2>, # Bronze Electron Tube
  "u": <forestry:flexible_casing>,    # Mutagenic Chassis
  "M": <ore:circuitMv>,               # Integrated Processor
});

# [Infernal Farm (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:farm_nether");
craft.make(<forestry:farm_nether>, ["pretty",
  "□ B □",
  "B u B",
  "□ M □"], {
  "□": <ore:lightPlateArdite>,        # Light Ardite Plate
  "B": <forestry:thermionic_tubes:7>, # Blazing Electron Tube
  "u": <forestry:flexible_casing>,    # Mutagenic Chassis
  "M": <ore:circuitMv>,               # Integrated Processor
});

# [Ender Farm (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:farm_ender");
craft.make(<forestry:farm_ender>, ["pretty",
  "□ E □",
  "E u E",
  "□ M □"], {
  "□": <ore:lightPlateBismuth>,        # Light Bismuth Plate
  "E": <forestry:thermionic_tubes:12>, # Ender Electron Tube
  "u": <forestry:flexible_casing>,     # Mutagenic Chassis
  "M": <ore:circuitMv>,                # Integrated Processor
});

# [Peat Bog (Managed)] from [Mutagenic Chassis][+3]
recipes.removeByRecipeName("forestry:peat_bog");
craft.make(<forestry:peat_bog>, ["pretty",
  "□ C □",
  "C u C",
  "□ M □"], {
  "□": <ore:lightPlateSoularium>,   # Light Soularium Plate
  "C": <forestry:thermionic_tubes>, # Copper Electron Tube
  "u": <forestry:flexible_casing>,  # Mutagenic Chassis
  "M": <ore:circuitMv>,             # Integrated Processor
});

// ===================================================