import mods.rt.RandomThingsTweaker as RandomThingsTweaker;
import mods.artisanworktables.builder.RecipeBuilder;

# [Shulker Pearl]

# Block
recipes.removeByRecipeName("darkutils:compact_pearl");
compressor.recipeBuilder()
    .inputs(<darkutils:shulker_pearl> * 4)
    .outputs(<darkutils:pearl_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

// ================================================================ //

# [Evil Infused Wither Ash]
<darkutils:material>.displayName = "Evil Infused Wither Ash";
recipes.removeByRecipeName("darkutils:skull_to_witherdust");
recipes.removeByRecipeName("darkutils:deconstruct_wither");

autoclave.recipeBuilder()
	.inputs(<quark:black_ash>)
    .fluidInputs(<liquid:liquid_nightmares>*250)
	.outputs(<darkutils:material>)
	.duration(220)
	.EUt(100)
.buildAndRegister();

# Wither Ash Block
recipes.removeByRecipeName("darkutils:compact_wither");
compressor.recipeBuilder()
    .inputs(<darkutils:material> * 4)
    .outputs(<darkutils:wither_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

# [Unstable Ender Pearl]
recipes.remove(<darkutils:material:1>);
RandomThingsTweaker.addImbuingRecipe(
	<extrautils2:unstableingots>,
	<ore:AAVoidCrystal>.firstItem,
	<darkutils:material>,
	<ore:gemEnderEye>.firstItem,
	<darkutils:material:1>
);

RandomThingsTweaker.addImbuingRecipe(
	<extrautils2:unstableingots:2>,
	<ore:AAVoidCrystal>.firstItem,
	<darkutils:material>,
	<ore:gemEnderEye>.firstItem,
	<darkutils:material:1>
);

mixer.recipeBuilder()
	.inputs(<ore:ingotUnstable>, <ore:AAVoidCrystal>, <darkutils:material>, <ore:gemEnderEye>)
	.fluidInputs(<liquid:dark_fluid>*288)
	.outputs(<darkutils:material:1>)
	.duration(300)
	.EUt(1500)
.buildAndRegister();

# [Dwindle Cream]
recipes.remove(<darkutils:material:2>);
RandomThingsTweaker.addImbuingRecipe(
	<ore:dustPetrotheum>.firstItem,
	<contenttweaker:taintedsoildust>,
	<darkutils:material>,
	<tconstruct:edible:1>,
	<darkutils:material:2>
);

mixer.recipeBuilder()
	.inputs(<ore:slimeball>, <ore:dustPetrotheum>, <contenttweaker:taintedsoildust>, <darkutils:material>)
	.fluidInputs(<liquid:dark_fluid>*288)
	.outputs(<darkutils:material:2>)
	.duration(300)
	.EUt(1500)
.buildAndRegister();

# [Dark Sugar]
recipes.remove(<darkutils:material:3>);
mixer.recipeBuilder()
	.inputs(<ore:dustSugar>, <darkutils:material>)
	.fluidInputs(<liquid:dark_fluid>*144)
	.outputs(<darkutils:material:3>*2)
	.duration(300)
	.EUt(120)
.buildAndRegister();

// ======================================= //

//Agression Charm
recipes.remove(<darkutils:charm_agression>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<pyrotech:material:43>, <contenttweaker:pigmanflesh>, <pyrotech:material:43>],
    [<pyrotech:material:34>, <pyrotech:material:34>, <pyrotech:material:34>]])
  .setFluid(<liquid:manasteel> * 576)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<darkutils:charm_agression>)
.create();

//Gluttony Charm
recipes.remove(<darkutils:charm_gluttony>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<pyrotech:material:43>, <ore:foodMeatfeastpizza>, <pyrotech:material:43>],
    [<contenttweaker:condensed_vis_crystal_desiderium>, <ore:ringTerrasteel>, <contenttweaker:condensed_vis_crystal_imperium>]])
  .setFluid(<liquid:manasteel> * 576)
  .addTool(<ore:artisansGrimoire>, 20)
  .addOutput(<darkutils:charm_gluttony>)
.create();

//Null Charm
recipes.remove(<darkutils:charm_null>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<pyrotech:material:43>, <quantumflux:voidbucket>, <pyrotech:material:43>],
    [<danknull:dank_null_panel_1>, <ore:ringDarkSteel>, <danknull:dank_null_panel_1>]])
  .setFluid(<liquid:manasteel> * 576)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<darkutils:charm_null>)
.create();

//Portal Charm
recipes.remove(<darkutils:charm_portal>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<pyrotech:material:43>, <ore:gemEnderEye>, <pyrotech:material:43>],
    [<ore:compressed1xObsidian>, <ore:ringRefinedObsidian>, <ore:compressed1xObsidian>]])
  .setFluid(<liquid:manasteel> * 576)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<darkutils:charm_portal>)
.create();

//Sleep Charm
recipes.remove(<darkutils:charm_sleep>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stickTreatedWood>, <quark:quilted_wool>, <ore:stickTreatedWood>],
    [<quark:quilted_wool:15>, <totemic:tipi>, <quark:quilted_wool:4>],
    [<ore:stickTreatedWood>, <quark:quilted_wool:14>, <ore:stickTreatedWood>]])
  .setFluid(<liquid:tannin> * 1000)
  .addTool(<ore:artisansGrimoire>, 1)
  .addOutput(<darkutils:charm_sleep>)
.create();

# [Mob Filter] from [Creeper Head][+2]
recipes.removeByRecipeName("darkutils:filter_player");
craft.make(<darkutils:filter>, ["pretty",
  "# ■ #",
  "■ S ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "S": <ore:itemSkull> | <ore:head>,         # Head
});

# [Mob Filter] from [Bone][+2]
recipes.removeByRecipeName("darkutils:filter_undead");
craft.make(<darkutils:filter:1>, ["pretty",
  "# ■ #",
  "■ b ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "b": <ore:bone>, 							 # Bone
});

# [Mob Filter] from [Spider Eye][+2]
recipes.removeByRecipeName("darkutils:filter_arthropod");
craft.make(<darkutils:filter:2>, ["pretty",
  "# ■ #",
  "■ E ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "E": <ore:spiderEye>,          			 # Spider Eye
});

# [Mob Filter] from [Rotten Flesh][+2]
recipes.removeByRecipeName("darkutils:filter_monster");
craft.make(<darkutils:filter:3>, ["pretty",
  "# ■ #",
  "■ F ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>,      # Oak Fence Gate
  "■": <ore:blockWither>,                         # Wither Dust Block
  "F": <ore:materialFlesh>, 					  # Rotten Flesh
});

# [Mob Filter] from [Wheat][+2]
recipes.removeByRecipeName("darkutils:filter_animal");
craft.make(<darkutils:filter:4>, ["pretty",
  "# ■ #",
  "■ W ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "W": <ore:cropWheat>, 					 # Wheat
});

# [Mob Filter] from [Water Bucket][+2]
recipes.removeByRecipeName("darkutils:filter_water");
craft.make(<darkutils:filter:5>, ["pretty",
  "# ■ #",
  "■ A ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "A": <ore:listAllwater>,                   # Water Bucket
});

# [Mob Filter] from [Brachiosaurus Egg][+2]
recipes.removeByRecipeName("darkutils:filter_baby");
craft.make(<darkutils:filter:6>, ["pretty",
  "# ■ #",
  "■ e ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "e": <ore:egg>, 							 # Egg
});

# [Mob Filter] from [Milk][+2]
recipes.removeByRecipeName("darkutils:filter_pet");
craft.make(<darkutils:filter:7>, ["pretty",
  "# ■ #",
  "■ A ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "A": <ore:listAllmilk>,                    # Milk
});

# [Mob Filter] from [Green Slime Block][+2]
recipes.removeByRecipeName("darkutils:filter_slime");
craft.make(<darkutils:filter:8>, ["pretty",
  "# ■ #",
  "■ ▄ ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>,     # Oak Fence Gate
  "■": <ore:blockWither>,                        # Wither Dust Block
  "▄": <ore:blockSlime>, 						 # Green Slime Block
});

# [Mob Filter] from [Blaze Powder][+2]
recipes.removeByRecipeName("darkutils:filter_fireres");
craft.make(<darkutils:filter:9>, ["pretty",
  "# ■ #",
  "■ ▲ ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>, # Oak Fence Gate
  "■": <ore:blockWither>,                    # Wither Dust Block
  "▲": <ore:dustBlaze>, 					 # Blaze Powder
});

# [Mob Filter] from [Nether Star][+2]
recipes.removeByRecipeName("darkutils:filter_boss");
craft.make(<darkutils:filter:10>, ["pretty",
  "# ■ #",
  "■ S ■",
  "# ■ #"], {
  "#": <ore:fenceGateWood> | <ore:gateWood>,   # Oak Fence Gate
  "■": <ore:blockWither>,                      # Wither Dust Block
  "S": <ore:netherStar>, 					   # Nether Star
});

# [Anti-Slime Block] from [Dwindle Cream][+2]
recipes.removeByRecipeName("darkutils:antislime");
craft.make(<darkutils:anti_slime>, ["pretty",
  "⌃ ■ ⌃",
  "■ D ■",
  "⌃ ■ ⌃"], {
  "⌃": <actuallyadditions:block_quartz_wall> | <actuallyadditions:block_chiseled_quartz_wall> | <actuallyadditions:block_pillar_quartz_wall>, # Black Quartz Wall
  "■": <ore:blockWither>,                     # Wither Dust Block
  "D": <darkutils:material:2>,                # Dwindle Cream
});

# [Ender Tether] from [Unstable Ender Pearl][+4]
craft.remake(<darkutils:ender_tether>, ["pretty",
  "  U  ",
  "D ╱ D",
  "o ╱ T"], {
  "U": <darkutils:material:1>,                 # Unstable Ender Pearl
  "D": <ore:screwDarkSteel>,                   # Dark Steel Screw
  "╱": <ore:stickRefinedObsidian>,             # Refined Obsidian Rod
  "o": <ore:gtceScrewdrivers>, 				   # Screwdriver
  "T": <ore:gtceSaws>, 						   # Saw
});

# [Ender Hopper] from [Unstable Ender Pearl][+3]
recipes.removeByRecipeName("darkutils:ender_hopper");
craft.make(<darkutils:ender_hopper>, ["pretty",
  "     ",
  "D U D",
  "□ h □"], {
  "D": <ore:foilDarkSteel>,              # Dark Steel Foil
  "U": <darkutils:material:1>,           # Unstable Ender Pearl
  "□": <ore:lightPlateRefinedObsidian>,  # Light Refined Obsidian Plate
  "h": <ore:hopper> | <ore:blockHopper>, # Hopper
});

# [Pearled Ender Hopper] from [Unstable Ender Pearl][+3]
recipes.removeByRecipeName("darkutils:ender_hopper_upgrade");
craft.make(<darkutils:ender_pearl_hopper>, ["pretty",
  "     ",
  "P U P",
  "■ h ■"], {
  "P": <ore:foilPlatinum>,               # Platinum Foil
  "U": <darkutils:material:1>,           # Unstable Ender Pearl
  "■": <ore:blockPearl>,                 # Pearl Block
  "h": <ore:hopper> | <ore:blockHopper>, # Hopper
});

# [Focus Sash] from [Ring][+4]
recipes.removeByRecipeName("darkutils:focus_sash");
craft.make(<darkutils:focus_sash>, ["pretty",
  "  B  ",
  "Y i R",
  "  O  "], {
  "B": <quark:blaze_lantern>,           # Blaze Lantern
  "Y": <quark:quilted_wool:4>,          # Yellow Quilted Wool
  "i": <actuallyadditions:item_misc:6>, # Ring
  "R": <quark:quilted_wool:14>,         # Red Quilted Wool
  "O": <quark:quilted_wool:1>,          # Orange Quilted Wool
});

# [Vector Plate]*8 from [Slimeball][+3]
recipes.removeByRecipeName("darkutils:vector_normal");
craft.make(<darkutils:trap_move> * 8, ["pretty",
  "     ",
  "□ s □",
  "W ◊ W"], {
  "□": <ore:lightPlateIron>,                   # Light Iron Plate
  "s": <ore:slimeball>, 					   # Slimeball
  "W": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>,        # White Reinforced Concrete
  "◊": <ore:gemSugar>,                         # Sugar Cube
});

# [Fast Vector Plate]*8 from [Dark Sugar][+1]
recipes.removeByRecipeName("darkutils:vector_fast");
craft.make(<darkutils:trap_move_fast> * 8, ["pretty",
  "□ □ □",
  "□ D □",
  "□ □ □"], {
  "□": <darkutils:trap_move>,  # Vector Plate
  "D": <darkutils:material:3>, # Dark Sugar
});

# [Extreme Vector Plate]*8 from [Power Core][+1]
recipes.removeByRecipeName("darkutils:vector_hyper");
craft.make(<darkutils:trap_move_hyper> * 8, ["pretty",
  "□ □ □",
  "□ Σ □",
  "□ □ □"], {
  "□": <darkutils:trap_move_fast>,  # Fast Vector Plate
  "Σ": <contenttweaker:power_core>, # Power Core
});

# [Poison Trap]*4 from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_poison");
craft.make(<darkutils:trap_tile> * 4, ["pretty",
  "     ",
  "□ B □",
  "W : W"], {
  "□": <ore:lightPlateIron>,            # Light Iron Plate
  "B": <minecraft:carpet:15>,           # Black Carpet
  "W": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # White Reinforced Concrete
  ":": <minecraft:potion>.withTag({Potion: "minecraft:long_poison"}),# Potion of Poison
});

# [Weakness Trap]*4 from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_weakness");
craft.make(<darkutils:trap_tile:1> * 4, ["pretty",
  "     ",
  "□ B □",
  "W : W"], {
  "□": <ore:lightPlateIron>,            # Light Iron Plate
  "B": <minecraft:carpet:15>,           # Black Carpet
  "W": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # White Reinforced Concrete
  ":": <minecraft:potion>.withTag({Potion: "minecraft:long_weakness"}),# Potion of Weakness
});

# [Damage Trap] from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_harming");
craft.make(<darkutils:trap_tile:2> * 4, ["pretty",
  "     ",
  "□ B □",
  "C I C"], {
  "□": <ore:lightPlateIron>,     # Light Iron Plate
  "B": <minecraft:carpet:15>,    # Black Carpet
  "C": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  "I": <extrautils2:spike_iron>, # Iron Spikes
});

# [Slowness Trap] from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_slowness");
craft.make(<darkutils:trap_tile:3> * 4, ["pretty",
  "     ",
  "□ B □",
  "C S C"], {
  "□": <ore:lightPlateIron>,     # Light Iron Plate
  "B": <minecraft:carpet:15>,    # Black Carpet
  "C": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  "S": <ore:soulSand>,           # Soul Sand
});

# [Flame Trap] from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_fire");
craft.make(<darkutils:trap_tile:4> * 4, ["pretty",
  "     ",
  "□ B □",
  "C ■ C"], {
  "□": <ore:lightPlateIron>,     # Light Iron Plate
  "B": <minecraft:carpet:15>,    # Black Carpet
  "C": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  "■": <ore:blockMagma>,         # Magma Block
});

# [Wither Trap] from [Black Carpet][+3]
recipes.removeByRecipeName("darkutils:trap_wither");
craft.make(<darkutils:trap_tile:5> * 4, ["pretty",
  "     ",
  "□ B □",
  "C ■ C"], {
  "□": <ore:lightPlateIron>,     # Light Iron Plate
  "B": <minecraft:carpet:15>,    # Black Carpet
  "C": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  "■": <ore:blockWither>,        # Wither Dust Block
});

# [Maim Trap]*4 from [Light Ardite Plate][+3]
recipes.removeByRecipeName("darkutils:trap_maim");
craft.make(<darkutils:trap_tile:6> * 4, ["pretty",
  "     ",
  "□ п □",
  "R * R"], {
  "□": <ore:lightPlateIron>,              # Light Iron Plate
  "п": <ore:lightPlateArdite>,            # Light Ardite Plate
  "R": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  "*": <contenttweaker:condensed_vis_crystal_victus>, # Condensed Victus Vis Crystal
});

# [Player Trap]*4 from [Light Aluminium Plate][+3]
recipes.removeByRecipeName("darkutils:trap_player");
craft.make(<darkutils:trap_tile:7> * 4, ["pretty",
  "     ",
  "□ п □",
  "R : R"], {
  "□": <ore:lightPlateIron>,              # Light Iron Plate
  "п": <ore:lightPlateAluminium>,         # Light Aluminium Plate
  "R": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  ":": <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),# Potion of Harming
});

# [Anchor Plate]*4 from [Slime Large Plate][+3]
recipes.removeByRecipeName("darkutils:trap_anchor");
craft.make(<darkutils:trap_anchor> * 4, ["pretty",
  "     ",
  "□ п □",
  "R : R"], {
  "□": <ore:lightPlateIron>,              # Light Iron Plate
  "п": <tconstruct:large_plate>.withTag({Material: "slime"}), # Slime Large Plate
  "R": <ore:reinforcedConcrete> | <contenttweaker:reinforced_stone>, # Reinforced Concrete
  ":": <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),# Potion of Slowness
});

# [Sneaky Block]*8 from [Dwindle Cream][+1]
recipes.removeByRecipeName("darkutils:sneaky_block");
craft.make(<darkutils:sneaky> * 8, ["pretty",
  "◙ ◙ ◙",
  "◙ D ◙",
  "◙ ◙ ◙"], {
  "◙": <ore:frameGtSteel>,     # Steel Frame Box
  "D": <darkutils:material:2>, # Dwindle Cream
});

// Fake TNT
recipes.remove(<darkutils:fake_tnt>);
chemical_reactor.recipeBuilder()
    .inputs(<metaitem:gelled_toluene> * 4)
	.notConsumable(<actuallyadditions:block_shock_suppressor>)
    .fluidInputs(<liquid:sulfuric_acid> * 250)
    .outputs(<darkutils:fake_tnt>)
    .duration(200)
    .EUt(24)
.buildAndRegister();
