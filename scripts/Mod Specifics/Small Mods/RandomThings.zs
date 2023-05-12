import mods.thaumcraft.Infusion as Infusion;
import mods.rt.RandomThingsTweaker as RandomThingsTweaker;

#modloaded randomthings

//Stable Ender Pearl
recipes.remove(<randomthings:stableenderpearl>);

chemreactor.recipeBuilder()
    .inputs(<ore:gemEnderPearl>, <ore:dustSmallLapis>)
    .fluidInputs(<liquid:refined_obsidian> * 72)
    .outputs(<randomthings:stableenderpearl>)
    .duration(85)
    .EUt(270)
.buildAndRegister();

//Spectre Ingot
recipes.remove(<randomthings:ingredient:3>);

blast_furnace.recipeBuilder()
    .inputs(<randomthings:ingredient:2>, <ore:ingotBlackBronze>, <ore:dustLazurite>)
    .outputs(<randomthings:ingredient:3>*2)
    .property("temperature", 2700)
    .duration(400)
    .EUt(600)
.buildAndRegister();

// blast_furnace.recipeBuilder()
//     .inputs(<randomthings:ingredient:2>, <ore:ingotBlackBronze>, <ore:dustLazurite>)
//     .circuit(13)
//     .fluidInputs(<liquid:nitrogen> * 250)
//     .outputs(<randomthings:ingredient:3>*2)
//     .property("temperature", 2600)
//     .duration(250)
//     .EUt(512)
// .buildAndRegister();

//Spectre String
recipes.remove(<randomthings:ingredient:12>);

mixer.recipeBuilder()
    .inputs(<randomthings:ingredient:2>, <ore:twine>, <ore:dustTinyLazurite>)
    .fluidInputs(<liquid:distilled_water> * 100)
    .outputs(<randomthings:ingredient:12>)
    .duration(120)
    .EUt(350)
.buildAndRegister();

// Spectre Lens
recipes.remove(<randomthings:spectrelens>);
recipes.addShaped(<randomthings:spectrelens> * 1, [[<randomthings:ingredient:3>, <ore:lightPlatePolyvinylChloride>, <randomthings:ingredient:3>], [<ore:lightPlatePolyvinylChloride>, <ore:craftingLensCyan>, <ore:lightPlatePolyvinylChloride>],[<randomthings:ingredient:3>, <ore:lightPlatePolyvinylChloride>, <randomthings:ingredient:3>]]);

// Spectre Energy Injector
recipes.remove(<randomthings:spectreenergyinjector>);
recipes.addShaped(<randomthings:spectreenergyinjector> * 1, [[<ore:heavyPlateDarkSteel>, <randomthings:spectrelens>, <ore:heavyPlateDarkSteel>], [<randomthings:ingredient:3>, <ore:skullSentientEnder>, <randomthings:ingredient:3>],[<ore:heavyPlateDarkSteel>, <ore:circuitEv>, <ore:heavyPlateDarkSteel>]]);

// Spectre Coil
recipes.remove(<randomthings:spectrecoil_normal>);
recipes.addShaped(<randomthings:spectrecoil_normal> * 1, [[<ore:lightPlatePolytetrafluoroethylene>, <randomthings:ingredient:12>, <ore:lightPlatePolytetrafluoroethylene>], [<ore:wireGtHexVibrantAlloy>, <randomthings:ingredient:3>, <ore:wireGtHexVibrantAlloy>],[<ore:lightPlatePolytetrafluoroethylene>, <randomthings:ingredient:12>, <ore:lightPlatePolytetrafluoroethylene>]]);

//Luminous Powder
recipes.remove(<randomthings:ingredient:5>);
mixer.recipeBuilder()
    .inputs(<biomesoplenty:mushroom:3>, <randomthings:glowingmushroom>, <ore:dustGlowstone>, <roots:moonglow_leaf>)
    .outputs(<randomthings:ingredient:5>*4)
    .duration(180)
    .EUt(280)
.buildAndRegister();

// Spectre Illuminator
recipes.remove(<randomthings:spectreilluminator>);
recipes.addShaped(<randomthings:spectreilluminator> * 2, [[<randomthings:ingredient:3>, <ore:plateGlowstone>, <randomthings:ingredient:3>], [<ore:plateGlowstone>, <randomthings:ingredient:5>, <ore:plateGlowstone>],[<randomthings:ingredient:3>, <ore:plateGlowstone>, <randomthings:ingredient:3>]]);

//Fertilized Dirt
recipes.remove(<randomthings:fertilizeddirt>);
mixer.recipeBuilder()
    .inputs(<ore:dirt>, <gregtech:meta_item_1:1001>*8, <ore:materialFlesh>*4)
    .fluidInputs(<liquid:water>*500)
    .outputs(<randomthings:fertilizeddirt>*2)
    .duration(100)
    .EUt(40)
.buildAndRegister();

// Ancient Bricks
<randomthings:ancientbrick>.displayName = "Ancient Bricks";

//Ancient Wood Tooltip
<randomthings:ancientbrick>.addTooltip(format.white("Can only be found in ") + format.red("Anu's Castle"));
<randomthings:ancientbrick>.addTooltip(format.white("Or Crafted with a ") + format.gold("Chemical Reactor"));

chemreactor.recipeBuilder()
    .inputs(<ore:blockBrick>, <roots:runic_dust>*4)
    .fluidInputs(<liquid:ancient_metal>*144)
    .outputs(<randomthings:ancientbrick>*2)
    .duration(200)
    .EUt(150)
.buildAndRegister();

//Player Interface
recipes.remove(<randomthings:playerinterface>);
recipes.addShapeless(<randomthings:playerinterface> * 1, [<actuallyadditions:block_player_interface>, <randomthings:stableenderpearl>, <ore:artisansSolderer>.reuse().transformDamage(8), <ore:gtceWrenches>]);

//Lapis Glass
recipes.remove(<randomthings:lapisglass>);
chemreactor.recipeBuilder()
    .inputs(<ore:blockGlassColorless>*8, <ore:dustLapis>*4)
    .outputs(<randomthings:lapisglass>*8)
    .duration(400)
    .EUt(20)
.buildAndRegister();

//Lapis Redstone Lantern
recipes.remove(<randomthings:lapislamp>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:redstone_lamp>, <ore:dustLapis>*2)
    .outputs(<randomthings:lapislamp>)
    .duration(400)
    .EUt(20)
.buildAndRegister();

// Dyeing Machine
recipes.remove(<randomthings:dyeingmachine>);
recipes.addShaped(<randomthings:dyeingmachine> * 1, [[<ore:plateSteel>, <ore:dyeBlue>, <ore:plateSteel>], [<ore:dyeRed>, <avaritia:compressed_crafting_table>, <ore:dyeGreen>],[<ore:plateSteel>, <quark:quilted_wool:15>, <ore:plateSteel>]]);

// Online Detector
recipes.remove(<randomthings:onlinedetector>);
recipes.addShaped(<randomthings:onlinedetector> * 1, [[<chisel:stonebrick2:9>, <projectred-transmission:wire:*>, <chisel:stonebrick2:9>], [<minecraft:repeater>, <minecraft:skull:3>, <minecraft:repeater>],[<chisel:stonebrick2:9>, <projectred-transmission:wire:*>, <chisel:stonebrick2:9>]]);

// Chat Detector
recipes.remove(<randomthings:chatdetector>);
recipes.addShaped(<randomthings:chatdetector> * 1, [[<chisel:stonebrick2:9>, <minecraft:repeater>, <chisel:stonebrick2:9>], [<projectred-transmission:wire:*>, <ore:bookWritable>, <projectred-transmission:wire:*>],[<chisel:stonebrick2:9>, <minecraft:repeater>, <chisel:stonebrick2:9>]]);

// Ender Bridge
recipes.remove(<randomthings:enderbridge>);
recipes.addShaped(<randomthings:enderbridge> * 1, [[<overloaded:compressed_endstone>, <overloaded:compressed_endstone>, <overloaded:compressed_endstone>], [<ore:platePalisEmpowered>, <ore:gearRedstone>, <randomthings:stableenderpearl>],[<overloaded:compressed_endstone>, <overloaded:compressed_endstone>, <overloaded:compressed_endstone>]]);

// Ender Anchor
recipes.remove(<randomthings:enderanchor>);
recipes.addShaped(<randomthings:enderanchor> * 1, [[<overloaded:compressed_obsidian:0>, <randomthings:stableenderpearl>, <overloaded:compressed_obsidian:0>], [<ore:plateObsidian>, <extrautils2:chunkloader>, <ore:plateObsidian>],[<overloaded:compressed_obsidian:0>, <ore:plateObsidian>, <overloaded:compressed_obsidian:0>]]);

// Imbuing Station
recipes.remove(<randomthings:imbuingstation>);
recipes.addShaped(<randomthings:imbuingstation> * 1, [[<ore:foilSteel>, <randomthings:lapisglass>, <ore:foilSteel>], [<ore:vine>, <forestry:hardened_machine>, <ore:vine>],[<ore:lightPlateBismuth>, <ore:lightPlateBismuth>, <ore:lightPlateBismuth>]]);

// Fluid Display
recipes.remove(<randomthings:fluiddisplay>);
recipes.addShaped(<randomthings:fluiddisplay> * 4, [[<ore:strengthenedGlass>, <ore:blockGlass>, <ore:strengthenedGlass>], [<ore:blockGlass>, <minecraft:glass_bottle>, <ore:blockGlass>],[<ore:strengthenedGlass>, <ore:blockGlass>, <ore:strengthenedGlass>]]);

// Entity Detector
recipes.remove(<randomthings:entitydetector>);
recipes.addShaped(<randomthings:entitydetector> * 1, [[<ore:stone>, <randomthings:advancedredstonetorch_on>, <ore:stone>], [<ore:plateEnderPearl>, <minecraft:stone_pressure_plate>, <ore:plateEnderPearl>],[<ore:stone>, <gregtech:meta_item_1:232>, <ore:stone>]]);

//Quartz Redstone Lantern
recipes.remove(<randomthings:quartzlamp>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:redstone_lamp>, <ore:dustNetherQuartz>*2)
    .outputs(<randomthings:quartzlamp>)
    .duration(400)
    .EUt(20)
.buildAndRegister();

//Quartz Glass
recipes.remove(<randomthings:quartzglass>);
chemreactor.recipeBuilder()
    .inputs(<ore:blockGlassColorless>*8, <ore:dustNetherQuartz>*4)
    .outputs(<randomthings:quartzglass>*8)
    .duration(400)
    .EUt(20)
.buildAndRegister();

// Contact Button
recipes.remove(<randomthings:contactbutton>);
recipes.addShaped(<randomthings:contactbutton> * 1, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:barsIron>, <ore:gearRedstone>, <minecraft:stone_button>],[<ore:stone>, <ore:stone>, <ore:stone>]]);

// Contact Lever
recipes.remove(<randomthings:contactlever>);
recipes.addShaped(<randomthings:contactlever> * 1, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:barsIron>, <ore:gearRedstone>, <minecraft:lever>],[<ore:stone>, <ore:stone>, <ore:stone>]]);

//Superlubricent Ice
recipes.remove(<randomthings:superlubricentice>);
chemreactor.recipeBuilder()
    .inputs(<ore:ice>*13, <ore:slimeball>*2)
    .fluidInputs(<liquid:water>*1000, <liquid:ice>*432)
    .outputs(<randomthings:superlubricentice>*16)
    .duration(500)
    .EUt(8)
.buildAndRegister();

// Redstone Observer
recipes.remove(<randomthings:redstoneobserver>);
recipes.addShaped(<randomthings:redstoneobserver> * 1, [[<ore:plateRedstone>, <ore:plateNetherQuartz>, <ore:plateRedstone>], [<ore:plateNetherQuartz>, <minecraft:observer>, <ore:plateNetherQuartz>],[<ore:plateRedstone>, <ore:plateNetherQuartz>, <ore:plateRedstone>]]);

// Iron Dropper
recipes.remove(<randomthings:irondropper>);
recipes.addShaped(<randomthings:irondropper> * 1, [[<ore:plateIron>, <actuallyadditions:item_misc:7>, <ore:plateIron>], [<ore:heavyPlateIron>, <minecraft:dropper>, <ore:circuitLv>],[<ore:plateIron>, <actuallyadditions:item_misc:7>, <ore:plateIron>]]);

// Igniter
recipes.remove(<randomthings:igniter>);
recipes.addShaped(<randomthings:igniter> * 1, [[<ore:cobblestone>, <ore:cobblestone>, <ore:compressed1xNetherrack>], [<tconstruct:large_plate>.withTag({Material: "stone"}), <pyrotech:igniter:0>, <ore:compressed1xNetherrack>],[<ore:cobblestone>, <ore:cobblestone>, <ore:compressed1xNetherrack>]]);

// Inventory Rerouter
recipes.remove(<randomthings:inventoryrerouter>);
recipes.addShaped(<randomthings:inventoryrerouter> * 1, [[<tconstruct:large_plate>.withTag({Material: "stone"}), <ore:barsIron>, <tconstruct:large_plate>.withTag({Material: "stone"})], [<ore:barsIron>, <ore:hopper>, <ore:barsIron>],[<tconstruct:large_plate>.withTag({Material: "stone"}), <ore:barsIron>, <tconstruct:large_plate>.withTag({Material: "stone"})]]);

// Slime Cube
recipes.remove(<randomthings:slimecube>);
recipes.addShaped(<randomthings:slimecube> * 1, [[null, <deepmoblearning:pristine_matter_slime>, null], [<deepmoblearning:pristine_matter_slime>, <contenttweaker:environmental_core>, <deepmoblearning:pristine_matter_slime>],[null, <deepmoblearning:pristine_matter_slime>, null]]);

// peace candle
Infusion.registerRecipe("peacecandle", "INFUSION", <randomthings:peacecandle>, 8, 
	[<aspect:ordo> *12, <aspect:lux> * 16, <aspect:motus> * 8], <thaumcraft:candle_black>, 
	[<randomthings:stableenderpearl>, <contenttweaker:holy_core>, <bloodmagic:component:16>, <bloodmagic:path:6>,<bloodmagic:path:6>,<bloodmagic:path:6>,<bloodmagic:path:6>]);

// Notification Interface
recipes.remove(<randomthings:notificationinterface>);
recipes.addShaped(<randomthings:notificationinterface> * 1, [[<ore:plateSteel>, <gregtech:meta_item_1:232>, <ore:plateSteel>], [<cyclicmagic:carbon_paper>, <ore:circuitMv>, <cyclicmagic:carbon_paper>],[<ore:plateSteel>, <ore:springTin>, <ore:plateSteel>]]);

// Inventory Tester
recipes.remove(<randomthings:inventorytester>);
recipes.addShaped(<randomthings:inventorytester> * 2, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:springSmallIron>, <minecraft:comparator>, <ore:springSmallIron>],[<ore:plateIron>, <ore:chestWood>, <ore:plateIron>]]);

//Superlubricent Tincture
recipes.remove(<randomthings:ingredient:6>);
mixer.recipeBuilder()
    .inputs(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <ore:cropBean>*4, <tconstruct:edible:30>*2)
    .outputs(<randomthings:ingredient:6>*4)
    .duration(300)
    .EUt(32)
.buildAndRegister();

// Super Lubricent Stone
recipes.remove(<randomthings:superlubricentstone>);
recipes.addShaped(<randomthings:superlubricentstone> * 8, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <randomthings:ingredient:6>, <ore:stone>],[<ore:stone>, <ore:stone>, <ore:stone>]]);

// Global Chat Detector
recipes.remove(<randomthings:globalchatdetector>);
recipes.addShaped(<randomthings:globalchatdetector> * 1, [[<tconstruct:large_plate>.withTag({Material: "stone"}), <projectred-core:resource_item:11>, <tconstruct:large_plate>.withTag({Material: "stone"})], [<projectred-core:resource_item:2>, <randomthings:chatdetector>, <projectred-core:resource_item:2>],[<tconstruct:large_plate>.withTag({Material: "stone"}), <projectred-core:resource_item:12>, <tconstruct:large_plate>.withTag({Material: "stone"})]]);

//Trigger Glass
recipes.remove(<randomthings:triggerglass>);
chemreactor.recipeBuilder()
    .inputs(<randomthings:lapisglass>*2, <randomthings:quartzglass>*2)
    .fluidInputs(<liquid:redstone>*288)
    .outputs(<randomthings:triggerglass>*6)
    .duration(400)
    .EUt(20)
.buildAndRegister();

// Block Destabilizer
recipes.remove(<randomthings:blockdestabilizer>);
recipes.addShaped(<randomthings:blockdestabilizer> * 1, [[<ore:compressed1xObsidian>, <ore:plateRedstone>, <ore:compressed1xObsidian>], [<liquid:sand>*1000, <avaritia:resource:0>, <liquid:sand>*1000],[<ore:compressed1xObsidian>, <ore:plateRedstone>, <ore:compressed1xObsidian>]]);

// Sound Box
recipes.remove(<randomthings:soundbox>);
recipes.addShaped(<randomthings:soundbox> * 1, [[<quark:quilted_wool:11>, <tconstruct:large_plate>.withTag({Material: "wood"}), <quark:quilted_wool:11>], [<tconstruct:large_plate>.withTag({Material: "wood"}), <ore:dustLapis>, <tconstruct:large_plate>.withTag({Material: "wood"})],[<quark:quilted_wool:11>, <tconstruct:large_plate>.withTag({Material: "wood"}), <quark:quilted_wool:11>]]);

// Sound Pattern
recipes.remove(<randomthings:soundpattern>);
recipes.addShaped(<randomthings:soundpattern> * 1, [[null, <ore:twine>, null], [null, <ore:pattern>, null],[null, <ore:plateLapis>, null]]);

// Portable Sound Dampener
recipes.remove(<randomthings:portablesounddampener>);
recipes.addShaped(<randomthings:portablesounddampener> * 1, [[<ore:foilConstructionAlloy>, <ore:twine>, <ore:foilConstructionAlloy>], [<ore:twine>, <forestry:thermionic_tubes:11>, <ore:twine>],[<ore:foilConstructionAlloy>, <ore:twine>, <ore:foilConstructionAlloy>]]);

// Plate Base
recipes.remove(<randomthings:ingredient:8>);
recipes.addShaped(<randomthings:ingredient:8> * 16, [[<ore:lightPlateIron>, <ore:stickIronMagnetic>, <ore:lightPlateIron>], [<ore:stickIronMagnetic>, <ore:barsIron>, <ore:stickIronMagnetic>],[<ore:lightPlateIron>, <ore:stickIronMagnetic>, <ore:lightPlateIron>]]);

// Advanced Redstone Repeater
recipes.remove(<randomthings:advancedredstonerepeater>);
recipes.addShaped(<randomthings:advancedredstonerepeater> * 1, [[<ore:screwIron>, null, <ore:screwIron>], [<ore:craftingRedstoneTorch>, <ore:gtceScrewdrivers>, <ore:craftingRedstoneTorch>],[<minecraft:heavy_weighted_pressure_plate>, <ore:stickRedAlloy>, <minecraft:heavy_weighted_pressure_plate>]]);
assembler.recipeBuilder()
    .inputs(<ore:craftingRedstoneTorch>*2, <ore:dustRedAlloy>)
    .fluidInputs(<liquid:iron>*144)
    .outputs(<randomthings:advancedredstonerepeater>)
    .duration(80)
    .EUt(10)
.buildAndRegister();

// Advanced Redstone Torch
recipes.remove(<randomthings:advancedredstonetorch_on>);
recipes.addShapeless("AdvancedRedstoneTorch", <randomthings:advancedredstonetorch_on>, [<ore:craftingRedstoneTorch>, <ore:dustRedAlloy>, <ore:dustRedAlloy>]);

// Basic Redstone Interface
recipes.remove(<randomthings:basicredstoneinterface>);
recipes.addShaped(<randomthings:basicredstoneinterface> * 1, [[<ore:foilRedAlloy>, <ore:lightPlateIron>, <ore:foilRedAlloy>], [<ore:lightPlateIron>, <ore:gemEnderPearl>, <ore:lightPlateIron>],[<ore:foilRedAlloy>, <ore:lightPlateIron>, <ore:foilRedAlloy>]]);

// Advanced Redstone Interface
recipes.remove(<randomthings:advancedredstoneinterface>);
recipes.addShaped(<randomthings:advancedredstoneinterface> * 1, [[<ore:foilRedAlloy>, <ore:plateRefinedObsidian>, <ore:foilRedAlloy>], [<ore:plateRefinedObsidian>, <randomthings:basicredstoneinterface>, <ore:plateRefinedObsidian>],[<ore:foilRedAlloy>, <ore:plateRefinedObsidian>, <ore:foilRedAlloy>]]);

// Redstone Activator
recipes.remove(<randomthings:redstoneactivator>);
recipes.addShaped(<randomthings:redstoneactivator> * 1, [[<ore:plateIron>, <randomthings:advancedredstonetorch_on>, <ore:plateIron>], [<ore:plateIron>, <contenttweaker:etchedredalloywiring>, <ore:plateIron>],[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Redstone Remote
recipes.remove(<randomthings:redstoneremote>);
recipes.addShaped(<randomthings:redstoneremote> * 1, [[<randomthings:redstoneactivator>, <randomthings:redstoneactivator>, <randomthings:redstoneactivator>], [<ore:obsidian>, <ore:gemEnderEye>, <ore:obsidian>],[<ore:obsidian>, <ore:compressed1xObsidian>, <ore:obsidian>]]);

// Filters =======
recipes.remove(<randomthings:positionfilter>);
recipes.remove(<randomthings:entityfilter>);
recipes.remove(<randomthings:itemfilter>);

# Position
alloy.recipeBuilder()
    .inputs(<cyclicmagic:carbon_paper>, <ore:dyePurple>*4)
    .outputs(<randomthings:positionfilter>)
    .duration(250)
    .EUt(10)
.buildAndRegister();

# Entity
alloy.recipeBuilder()
    .inputs(<cyclicmagic:carbon_paper>, <ore:dyeBlue>*4)
    .outputs(<randomthings:entityfilter>)
    .duration(250)
    .EUt(10)
.buildAndRegister();

# Item
alloy.recipeBuilder()
    .inputs(<cyclicmagic:carbon_paper>, <ore:dyeYellow>*4)
    .outputs(<randomthings:itemfilter>)
    .duration(250)
    .EUt(10)
.buildAndRegister();



// Sound Recorder
recipes.remove(<randomthings:soundrecorder>);
recipes.addShaped(<randomthings:soundrecorder> * 1, [[<ore:barsIron>, <ore:strengthenedGlass>, <ore:strengthenedGlass>], [<ore:plateIron>, <forestry:thermionic_tubes:11>, <ore:plateIron>],[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Escape Rope
recipes.remove(<randomthings:escaperope>);
recipes.addShaped(<randomthings:escaperope> * 1, [[<natura:materials:7>, <ore:foilGold>, <ore:plateEnderPearl>], [<ore:foilGold>, <natura:materials:7>, <ore:foilGold>],[<ore:plateEnderPearl>, <ore:foilGold>, <natura:materials:7>]]);

// Eclipsed Clock
recipes.remove(<randomthings:eclipsedclock>);
recipes.addShaped(<randomthings:eclipsedclock> * 1, [[<ore:compressed1xObsidian>, <ore:plateGold>, <ore:compressed1xObsidian>], [<ore:plateGold>, <randomthings:ingredient:1>, <ore:plateGold>],[<ore:compressed1xObsidian>, <ore:plateGold>, <ore:compressed1xObsidian>]]);

# Remove all default imbue recipes
RandomThingsTweaker.removeAllImbuingRecipes();

# Remake imbues, make them way cheaper

// Fire Imbue
RandomThingsTweaker.addImbuingRecipe(
	<actuallyadditions:item_misc:11>,
	<tconstruct:edible:4>,
	<actuallyadditions:item_misc:10>,
	<minecraft:potion>.withTag({Potion: "minecraft:water"}),
	<randomthings:imbue>
);
// Poison Imbue
RandomThingsTweaker.addImbuingRecipe(
	<minecraft:red_mushroom>,
	<minecraft:potato>,
	<minecraft:brown_mushroom>,
	<minecraft:potion>.withTag({Potion: "minecraft:water"}),
	<randomthings:imbue:1>
);
// Experience Imbue
RandomThingsTweaker.addImbuingRecipe(
	<harvestcraft:beanitem>,
	<cyclicmagic:horse_upgrade_variant>,
	<nuclearcraft:glowing_mushroom>,
	<minecraft:experience_bottle>,
	<randomthings:imbue:2>
);
// Wither Imbue
RandomThingsTweaker.addImbuingRecipe(
	<minecraft:netherbrick>,
	<witherskelefix:fragment>,
	<minecraft:soul_sand>,
	<minecraft:potion>.withTag({Potion: "minecraft:water"}),
	<randomthings:imbue:3>
);

// Evil Tear
recipes.remove(<randomthings:ingredient:1>);
RandomThingsTweaker.addImbuingRecipe(<contenttweaker:hellishflesh>, <ore:dustBlackQuartz>.firstItem, <contenttweaker:blackened_spirit>, <minecraft:ghast_tear>, <randomthings:ingredient:1>);

// Item Collector
recipes.remove(<randomthings:itemcollector>);
recipes.addShaped(<randomthings:itemcollector> * 1, [[null, <ore:endorCrystal>, null], [<ore:plateAAVoid>, <ore:blockHopper>, <ore:plateAAVoid>],[<ore:compressed1xObsidian>, <actuallyadditions:block_misc:9>, <ore:compressed1xObsidian>]]);

// Advanced Item Collector
recipes.remove(<randomthings:advanceditemcollector>);
RandomThingsTweaker.addImbuingRecipe(<ore:glodCrystal>.firstItem, <ore:empoweredEndorCrystal>.firstItem, <ore:plateDoubleStainlessSteel>.firstItem, <randomthings:itemcollector>, <randomthings:advanceditemcollector>);

# [Chunk Analyzer] from [Computer Monitor][+6]
recipes.removeByRecipeName("randomthings:chunkanalyzer");
craft.make(<randomthings:chunkanalyzer>, ["pretty",
  "╳ ⌂ *",
  "H C H",
  "□ п □"], {
  "╳": <contenttweaker:condensed_vis_crystal_terra>, # Condensed Terra Vis Crystal
  "⌂": <ore:casingStainlessSteel>,      # Stainless Steel Casing
  "*": <contenttweaker:condensed_vis_crystal_ignis>, # Condensed Ignis Vis Crystal
  "H": <ore:circuitHv>,                 # Nanoprocessor
  "C": <gregtech:meta_item_1:307>,      # Computer Monitor
  "□": <ore:plateStainlessSteel>,       # Stainless Steel Plate
  "п": <ore:plateDoubleStainlessSteel>, # Double Stainless Steel Plate
});