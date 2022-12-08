import mods.chisel.Carving;
import mods.tconstruct.Casting as Casting;
import crafttweaker.item.IItemStack;
import mods.tcomplement.highoven.HighOven as HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tconstruct.Melting as Melting;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.enderio.AlloySmelter as AlloySmelter;

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

// Weird Costs in this Casts ===================================================================================

// <tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:chest_core"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:boots_core"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}).clearTooltip();
// <tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}).clearTooltip();

<tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}).displayName = "Arcane Focus Cast";
<tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}).displayName = "Pipe Piece Cast";
<tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}).displayName = "Battery Cell Cast";
<tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}).displayName = "Polishing Kit Cast";
<tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}).displayName = "Helmet Core Cast";
<tconstruct:cast>.withTag({PartType: "conarm:chest_core"}).displayName = "Chest Core Cast";
<tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}).displayName = "Leggings Core Cast";
<tconstruct:cast>.withTag({PartType: "conarm:boots_core"}).displayName = "Boots Core Cast";
<tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}).displayName = "Armor Trim Cast";
<tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}).displayName = "Armor Plate Cast";

<tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 12")));
<tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 8")));
<tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 8")));
<tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 2")));
<tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 4")));
<tconstruct:cast>.withTag({PartType: "conarm:chest_core"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 6")));
<tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 5")));
<tconstruct:cast>.withTag({PartType: "conarm:boots_core"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 4")));
<tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 1")));
<tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}).addTooltip(format.gray(format.italic("Corrected Material Cost: 3")));

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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Construct Smeltery                                                                                                      //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Smeltery Controller
recipes.remove(<tconstruct:smeltery_controller:0>);
recipes.addShaped(<tconstruct:smeltery_controller:0> * 1, [[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>], [<contenttweaker:searedplate>, <pyrotech:cog_obsidian>, <contenttweaker:searedplate>],[<contenttweaker:searedplate>, <contenttweaker:searedplate>, <contenttweaker:searedplate>]]);

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
    .fluidInputs(<liquid:scorched> * 200)
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

