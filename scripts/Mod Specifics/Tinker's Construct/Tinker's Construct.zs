import mods.chisel.Carving;
import mods.tconstruct.Casting as Casting;
import crafttweaker.item.IItemStack;
import mods.tcomplement.highoven.HighOven as HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tconstruct.Melting as Melting;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.enderio.AlloySmelter as AlloySmelter;

import mods.jei.JEI as JEI;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Construct Script                                                                                                        //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Adding Clear Glass to Glass Chisel
mods.chisel.Carving.addVariation("glass", <tconstruct:clear_glass>);

//Grout Recipe and Seared Stone Rework
furnace.remove(<tconstruct:materials>, <tconstruct:soil>);
recipes.remove(<tconstruct:soil>);

recipes.addShapeless("Grout",<tconstruct:soil>*3,[<ore:gravel>, <ore:sand>, <ore:blockClay>, <ore:dustGypsum>]);

// Crafting Station
recipes.remove(<tconstruct:tooltables>);
recipes.addShapeless("CraftingStation",<tconstruct:tooltables>,[<ore:craftingTableWood>, <ore:gtceSaws>]);

// ================================================================================================================

// Blank Pattern
recipes.remove(<tconstruct:pattern:0>);
recipes.addShaped(<tconstruct:pattern:0>, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <ore:paper>, <ore:stickTreatedWood>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

//Reinforced Modifier
recipes.remove(<tconstruct:materials:14>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>],
    [<ore:compressed1xObsidian>, <ore:cast>, <ore:compressed1xObsidian>],
    [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]])
  .setFluid(<liquid:lava> * 750)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<tconstruct:materials:14>)
  .create();

# [Iron Toolkit] from [Block of Pigiron][+1]
recipes.removeByRecipeName("tinkersaddons:iron_toolkit");
craft.make(<tinkersaddons:modifier_item:1>, ["pretty",
  "     ",
  "□ ■ □",
  "□ □ □"], {
  "□": <ore:heavyPlateIron>, # Heavy Iron Plate
  "■": <ore:blockPigiron>,   # Block of Pigiron
});

# [Gold Toolkit] from [Block of Rose Gold][+1]
recipes.removeByRecipeName("tinkersaddons:gold_toolkit");
craft.make(<tinkersaddons:modifier_item:2>, ["pretty",
  "     ",
  "□ ■ □",
  "□ □ □"], {
  "□": <ore:heavyPlateArdite>, # Heavy Ardite Plate
  "■": <ore:blockRoseGold>,    # Block of Rose Gold
});

# [Diamond Toolkit] from [Block of Mana Diamond][+1]
recipes.removeByRecipeName("tinkersaddons:diamond_toolkit");
craft.make(<tinkersaddons:modifier_item:3>, ["pretty",
  "     ",
  "□ ■ □",
  "□ □ □"], {
  "□": <ore:heavyPlateMenril>, # Heavy Menril Plate
  "■": <botania:storage:3>,    # Block of Mana Diamond
});

# [Ender Toolkit] from [Empowered Endor Crystal Block][+1]
recipes.removeByRecipeName("tinkersaddons:ender_toolkit");
craft.make(<tinkersaddons:modifier_item:4>, ["pretty",
  "     ",
  "□ * □",
  "□ □ □"], {
  "□": <ore:heavyPlateCobaltSteel>,      # Heavy Cobalt Steel Plate
  "*": <ore:empoweredBlockEndorCrystal>, # Empowered Endor Crystal Block
});

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Construct Smeltery                                                                                                      //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Smeltery Controller
recipes.remove(<tconstruct:smeltery_controller:0>);
recipes.addShaped(<tconstruct:smeltery_controller:0> * 1, [[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, <ore:gearBronze>, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>]]);

// Seared Tank
recipes.remove(<tconstruct:seared_tank:0>);
recipes.addShaped(<tconstruct:seared_tank:0> * 1, [[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, <ore:blockGlass>, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>]]);

// Casting Basin
recipes.remove(<tconstruct:casting:1>);
recipes.addShaped(<tconstruct:casting:1> * 1, [[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, null, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>]]);

// Casting Table
recipes.remove(<tconstruct:casting:0>);
recipes.addShaped(<tconstruct:casting:0> * 1, [[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, null, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>]]);

// Seared Drain
recipes.remove(<tconstruct:smeltery_io:0>);
recipes.addShaped(<tconstruct:smeltery_io:0> * 2, [[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, <minecraft:bucket>, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>]]);

// Seared Faucet
recipes.remove(<tconstruct:faucet:0>);
recipes.addShaped(<tconstruct:faucet:0> * 2, [[null, null, null], [<contenttweaker:searedplate>, null, <contenttweaker:searedplate>],[null, <contenttweaker:searedplate>, null]]);

// ========================================== //

//Scorched Bricks from Tinker's Complement

mixer.recipeBuilder()
    .inputs(<contenttweaker:taintedsoildust>, <quark:soul_powder>)
    .fluidInputs([<liquid:blaze> * 1152])
    .fluidInputs([<liquid:stone> * 100])
    .fluidOutputs(<liquid:scorched> * 288)
    .duration(400)
    .EUt(32)
.buildAndRegister();

//Scorched Block
solidifier.recipeBuilder()
    .fluidInputs(<liquid:scorched> * 400)
    .notConsumable(<gregtech:meta_item_1:18>)
    .outputs(<tcomplement:scorched_block>)
    .duration(720)
    .EUt(12)
.buildAndRegister();

//Ingot
solidifier.recipeBuilder()
    .fluidInputs(<liquid:scorched> * 100)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<tcomplement:materials:1>)
    .duration(80)
    .EUt(8)
.buildAndRegister();

//Plate
solidifier.recipeBuilder()
    .fluidInputs(<liquid:scorched> * 100)
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<ore:plateScorched>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

extruder.recipeBuilder()
    .inputs([<tcomplement:materials:1>])
    .notConsumable(<gregtech:meta_item_1:31>)
    .outputs(<ore:plateScorched>.firstItem)
    .duration(40)
    .EUt(48)
.buildAndRegister();

// Scorched Smeltery Controller
recipes.remove(<tcomplement:high_oven_controller>);
recipes.addShaped(<tcomplement:high_oven_controller> * 1, [[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>], [<ore:plateScorched>, <pyrotech:cog_obsidian>, <ore:plateScorched>],[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>]]);

// Scorched Seared Duct
recipes.remove(<tcomplement:high_oven_io:2>);
recipes.addShaped(<tcomplement:high_oven_io:2> * 1, [[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>], [<ore:plateScorched>, <ore:chestWood>, <ore:plateScorched>],[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>]]);

// Scorched Seared Chute
recipes.remove(<tcomplement:high_oven_io:1>);
recipes.addShaped(<tcomplement:high_oven_io:1> * 1, [[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>], [<ore:plateScorched>, <ore:hopper>, <ore:plateScorched>],[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>]]);

// Scorched Casting Basin
recipes.remove(<tcomplement:scorched_casting:1>);
recipes.addShaped(<tcomplement:scorched_casting:1> * 1, [[<ore:plateScorched>, null, <ore:plateScorched>], [<ore:plateScorched>, null, <ore:plateScorched>],[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>]]);

// Scorched Casting Table
recipes.remove(<tcomplement:scorched_casting>);
recipes.addShaped(<tcomplement:scorched_casting> * 1, [[<ore:plateScorched>, <ore:plateScorched>, <ore:plateScorched>], [<ore:plateScorched>, null, <ore:plateScorched>],[<ore:plateScorched>, null, <ore:plateScorched>]]);

// Scorched Seared Drain
recipes.remove(<tcomplement:high_oven_io>);
recipes.addShaped(<tcomplement:high_oven_io> * 2, [[<ore:plateScorched>, null, <ore:plateScorched>], [<ore:plateScorched>, <minecraft:bucket>, <ore:plateScorched>],[<ore:plateScorched>, null, <ore:plateScorched>]]);

// Scorched Seared Faucet
recipes.remove(<tcomplement:scorched_faucet>);
recipes.addShaped(<tcomplement:scorched_faucet> * 2, [[null, null, null], [<ore:plateScorched>, null, <ore:plateScorched>],[null, <ore:plateScorched>, null]]);

var scorched as IItemStack[] = [
<tcomplement:scorched_block>,
<tcomplement:scorched_block:1>,
<tcomplement:scorched_block:2>,
<tcomplement:scorched_block:3>,
<tcomplement:scorched_block:4>,
<tcomplement:scorched_block:5>,
<tcomplement:scorched_block:6>,
<tcomplement:scorched_block:7>,
<tcomplement:scorched_block:8>,
<tcomplement:scorched_block:9>,
<tcomplement:scorched_block:10>,
<tcomplement:scorched_block:11>
];
for i in scorched {
mods.chisel.Carving.addVariation("scorched", i);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Construct Dried Bricks Rework                                                                                           //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Renaming to FireBricks
<tconstruct:dried_clay:1>.displayName = "Firebricks";
<tconstruct:dried_clay_slab:1>.displayName = "Firebricks Slab";
<tconstruct:dried_brick_stairs>.displayName = "Firebricks Stairs";

<gregtech:metal_casing:1>.displayName = "Blasty Bricks";

// Fire Bricks (Originally Dried)
recipes.remove(<tconstruct:dried_clay:1>);
recipes.remove(<gregtech:metal_casing:1>);

recipes.addShaped(<tconstruct:dried_clay:1> * 1, [[<gregtech:meta_item_1:352>, <gregtech:meta_item_1:352>, null], [<gregtech:meta_item_1:352>, <gregtech:meta_item_1:352>, null],[null, null, null]]);

Casting.addBasinRecipe(<gregtech:metal_casing:1>, <tconstruct:dried_clay:1>, <liquid:concrete>, 288, true, 120);

chemical_bath.recipeBuilder()
    .inputs(<tconstruct:dried_clay:1>)
    .fluidInputs([<liquid:concrete> * 144])
    .outputs(<gregtech:metal_casing:1>)
    .duration(200)
    .EUt(40)
    .buildAndRegister();

// Rough Brownstone
recipes.remove(<tconstruct:brownstone:1>);

Casting.addBasinRecipe(<tconstruct:brownstone:1>, <ore:stoneLimestone>, <liquid:redstone>, 200, true, 80);

chemical_bath.recipeBuilder()
    .inputs(<ore:stoneLimestone>)
    .fluidInputs([<liquid:redstone> * 288])
    .outputs(<tconstruct:brownstone:1> * 2)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Slimesling and Gadgetery                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Green Slimesling
recipes.remove(<tconstruct:slimesling>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:slime_congealed>, <pyrotech:material:26>, <tconstruct:slime_congealed>],
    [<tconstruct:slime_congealed>, <ore:plateConstantan>, <tconstruct:slime_congealed>],
    [<ore:screwElectrotine>, <tconstruct:slime_congealed>, <ore:screwElectrotine>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<tconstruct:slimesling>)
  .create();

//Blue Slimesling
recipes.remove(<tconstruct:slimesling:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:slime_congealed:1>, <pyrotech:material:26>, <tconstruct:slime_congealed:1>],
    [<tconstruct:slime_congealed:1>, <ore:plateConstantan>, <tconstruct:slime_congealed:1>],
    [<ore:screwElectrotine>, <tconstruct:slime_congealed:1>, <ore:screwElectrotine>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<tconstruct:slimesling:1>)
  .create();

//Purple Slimesling
recipes.remove(<tconstruct:slimesling:2>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:slime_congealed:2>, <pyrotech:material:26>, <tconstruct:slime_congealed:2>],
    [<tconstruct:slime_congealed:2>, <ore:plateConstantan>, <tconstruct:slime_congealed:2>],
    [<ore:screwElectrotine>, <tconstruct:slime_congealed:2>, <ore:screwElectrotine>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<tconstruct:slimesling:2>)
  .create();  

//Red Slimesling
recipes.remove(<tconstruct:slimesling:3>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:slime_congealed:3>, <pyrotech:material:26>, <tconstruct:slime_congealed:3>],
    [<tconstruct:slime_congealed:3>, <ore:plateConstantan>, <tconstruct:slime_congealed:3>],
    [<ore:screwElectrotine>, <tconstruct:slime_congealed:3>, <ore:screwElectrotine>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<tconstruct:slimesling:3>)
  .create();  

//Orange Slimesling
recipes.remove(<tconstruct:slimesling:4>);
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:slime_congealed:4>, <pyrotech:material:26>, <tconstruct:slime_congealed:4>],
    [<tconstruct:slime_congealed:4>, <ore:plateConstantan>, <tconstruct:slime_congealed:4>],
    [<ore:screwElectrotine>, <tconstruct:slime_congealed:4>, <ore:screwElectrotine>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<tconstruct:slimesling:4>)
  .create();

//Green SlimeBoots
recipes.remove(<tconstruct:slime_boots>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:screwElectrotine>, null, <ore:screwElectrotine>],
    [<tconstruct:slime_congealed>, null, <tconstruct:slime_congealed>],
    [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<tconstruct:slime_boots>)
  .create();

//Blue SlimeBoots
recipes.remove(<tconstruct:slime_boots:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:screwElectrotine>, null, <ore:screwElectrotine>],
    [<tconstruct:slime_congealed:1>, null, <tconstruct:slime_congealed:1>],
    [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<tconstruct:slime_boots:1>)
  .create();

//Purple SlimeBoots
recipes.remove(<tconstruct:slime_boots:2>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:screwElectrotine>, null, <ore:screwElectrotine>],
    [<tconstruct:slime_congealed:2>, null, <tconstruct:slime_congealed:2>],
    [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<tconstruct:slime_boots:2>)
  .create();

//Red SlimeBoots
recipes.remove(<tconstruct:slime_boots:3>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:screwElectrotine>, null, <ore:screwElectrotine>],
    [<tconstruct:slime_congealed:3>, null, <tconstruct:slime_congealed:3>],
    [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<tconstruct:slime_boots:3>)
  .create();

//Orange SlimeBoots
recipes.remove(<tconstruct:slime_boots:4>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:screwElectrotine>, null, <ore:screwElectrotine>],
    [<tconstruct:slime_congealed:4>, null, <tconstruct:slime_congealed:4>],
    [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>]])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<tconstruct:slime_boots:4>)
  .create();

//Piggyback
recipes.remove(<tconstruct:piggybackpack>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateTreatedWood>, null, <ore:plateTreatedWood>],
    [<ore:stickBronze>, <harvestcraft:hardenedleatheritem>, <ore:stickBronze>],
    [<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]])
  .setFluid(<liquid:canolaoil> * 250)
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<tconstruct:piggybackpack>)
  .create();

//Punji Sticks
recipes.remove(<tconstruct:punji>);
recipes.addShapeless("PunjiSticks", <tconstruct:punji>, [<ore:sugarcane>, <ore:gtceSaws>]);

// EFLN
recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1> * 4, [[<pyrotech:material:3>, <pyrotech:material:3>, <pyrotech:material:3>], [<pyrotech:material:3>, <ore:dustSulfur>, <pyrotech:material:3>],[<pyrotech:material:3>, <pyrotech:material:3>, <pyrotech:material:3>]]);

//Liquid Clay better compat =================
extractor.recipeBuilder()
    .inputs(<minecraft:clay_ball>)
    .fluidOutputs(<liquid:clay>*100)
    .duration(40)
    .EUt(4)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:dustClay>)
    .fluidOutputs(<liquid:clay>*100)
    .duration(40)
    .EUt(4)
.buildAndRegister();


// Coalescence Matrix
recipes.remove(<tconevo:material>);
AlloySmelter.addRecipe(<tconevo:material>*2, [<ore:ingotManyullyn>, <ore:ingotTitanium>, <ore:ingotRedSteel>], 5000, 1.0);

# [Porcelain Heater] from [Pit Kiln][+1]
recipes.removeByRecipeName("tcomplement:melter/porcelain_heater");
craft.make(<tcomplement:porcelain_melter:8>, ["pretty",
  "  P  ",
  "P P P",
  "P i P"], {
  "P": <ceramics:unfired_clay:5>, # Porcelain Brick
  "i": <pyrotech:kiln_pit>,       # Pit Kiln
});

# [Seared Heater] from [Stone Kiln][+1]
recipes.removeByRecipeName("tcomplement:melter/heater");
craft.make(<tcomplement:melter:8>, ["pretty",
  "  ▬  ",
  "▬ ▬ ▬",
  "▬ S ▬"], {
  "▬": <ore:ingotBrickSeared>, # Seared Brick
  "S": <pyrotech:stone_kiln>,  # Stone Kiln
});

# [Tool Forge] and [Armor Forge] =============================================================================================

<tconstruct:toolforge>.addTooltip(format.white("Can Only be made with ") + format.green("Iron Blocks") + format.white("."));
recipes.remove(<tconstruct:toolforge>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <tconstruct:tooltables:3>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconevo:metal_block", Count: 1, Damage: 0 as short}}))
.create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <tconstruct:tooltables:3>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<tconstruct:toolforge>)
.create();

<conarm:armorforge>.addTooltip(format.white("Can Only be made with ") + format.green("Iron Blocks") + format.white("."));
recipes.remove(<conarm:armorforge>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <conarm:armorstation>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<conarm:armorforge>.withTag({textureBlock: {id: "tconevo:metal_block", Count: 1, Damage: 0 as short}}))
.create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:seared_slab>, <contenttweaker:searedplate>, <tconstruct:seared_slab>],
    [<ore:blockIron>, <conarm:armorstation>, <ore:blockIron>],
    [<ore:blockIron>, null, <ore:blockIron>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:gtceHardHammers>, 20)
  .addOutput(<conarm:armorforge>)
.create();

// ============================================================================================================================

# Hiding Tinker's Tables and only showing the correct ones.

//Stencil Table
<tconstruct:tooltables:1>.addTooltip(format.white("Can be made with almost ") + format.green("Any plankWood") + format.white("."));
recipes.remove(<tconstruct:tooltables:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_item_1:347>, <ore:pattern>, <gregtech:meta_item_1:347>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>]])
  .addTool(<ore:gtceSaws>, 10)
  .addOutput(<tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1, Damage: 0 as short}}))
.create();

//Part Builder
<tconstruct:tooltables:2>.addTooltip(format.white("Can be made with almost ") + format.green("Any logWood") + format.white("."));
recipes.remove(<tconstruct:tooltables:2>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_item_1:347>, <ore:pattern>, <gregtech:meta_item_1:347>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>]])
  .addTool(<ore:gtceSaws>, 10)
  .addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1, Damage: 0 as short}}))
.create();

//Stone Dust -> Seared Ingot
alloy.recipeBuilder()
    .inputs(<ore:dustStone>)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<ore:ingotBrickSeared>.firstItem)
    .duration(200)
    .EUt(2)
.buildAndRegister();

