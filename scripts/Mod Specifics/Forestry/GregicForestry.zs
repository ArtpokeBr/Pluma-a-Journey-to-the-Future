import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter as Carpenter;
import mods.pyrotech.Barrel as Barrel;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Forestry Compat                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*

// Seed Oil Compat =========================================================================

extractor.findRecipe(2, [<natura:overworld_seeds:1>], [null]).remove();
extractor.findRecipe(2, [<roots:terra_spores>], [null]).remove();
extractor.findRecipe(2, [<roots:wildroot>], [null]).remove();
extractor.findRecipe(2, [<mysticalworld:aubergine_seed>], [null]).remove();
extractor.findRecipe(2, [<minecraft:melon_seeds>], [null]).remove();
extractor.findRecipe(2, [<minecraft:wheat_seeds>], [null]).remove();
extractor.findRecipe(2, [<minecraft:pumpkin_seeds>], [null]).remove();
extractor.findRecipe(2, [<natura:overworld_seeds>], [null]).remove();
extractor.findRecipe(2, [<minecraft:beetroot_seeds>], [null]).remove();

extractor.recipeBuilder()
    .inputs(<ore:listAllseed>)
    .fluidOutputs(<liquid:seed_oil>*10)
    .duration(40)
    .EUt(4)
    .buildAndRegister();

*/
<recipemap:extractor>.findRecipe(2, [<minecraft:beetroot_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:pumpkin_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<natura:overworld_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<natura:overworld_seeds:1>], null).remove();
<recipemap:extractor>.findRecipe(2, [<mysticalworld:aubergine_seed:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:melon_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<roots:terra_spores:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:wheat_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<roots:wildroot:0>], null).remove();

extractor.recipeBuilder()
    .inputs(<ore:listAllseed>)
    .fluidOutputs(<liquid:seed.oil> * 50)
    .duration(20)
    .EUt(2)
.buildAndRegister();

fermenter.recipeBuilder()
    .inputs(<ore:Mulch>)
    .fluidInputs(<liquid:seed.oil> * 10)
    .fluidOutputs(<liquid:seed_oil> * 10)
    .duration(80)
    .EUt(12)
.buildAndRegister();

Barrel.addRecipe(
  "seed.oil -> concentrated seed oil", 
  <liquid:seed_oil>, 
  <liquid:seed.oil>, 
  [<ore:Mulch>],
  12000
);

// Fruit Juice Compat =======================================================================


//Honey-Steel
alloy.recipeBuilder()
    .inputs(<careerbees:ingredients:10>,<ore:ingotSteel>)
    .outputs(<ore:ingotHoneySteel>.firstItem * 2)
    .duration(200)
    .EUt(32)
.buildAndRegister();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Still Compat                                                                                                            //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Binnies Resin
extractor.recipeBuilder()
    .inputs(<ore:logWood>)
    .fluidOutputs([<liquid:binnie.resin> * 250])
    .duration(300)
    .EUt(32)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<minecraft:log:1>)
    .fluidOutputs([<liquid:binnie.resin> * 500])
    .duration(300)
    .EUt(32)
    .buildAndRegister();

//Turpentine
distillery.recipeBuilder()
    .fluidInputs([<liquid:binnie.resin> * 50])
    .circuit(4)
    .fluidOutputs(<liquid:binnie.turpentine> * 30)
    .duration(600)
    .EUt(32)
    .buildAndRegister();


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			GregTech Carpenter Compat                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Simply Removed =================

// Paper
Carpenter.removeRecipe(<minecraft:paper>);

// Creosote Wood
Carpenter.removeRecipe(<railcraft:generic:5>);

// Wood Pulp
Carpenter.removeRecipe(<forestry:wood_pulp>);

// Bronze (from Bronze Tools)
Carpenter.removeRecipe(<forestry:ingot_bronze>);

// Torch
Carpenter.removeRecipe(<minecraft:torch>);

// Ender Pearl
Carpenter.removeRecipe(<minecraft:ender_pearl>);

// Shovel Kit
Carpenter.removeRecipe(<forestry:kit_shovel>);

// Pickaxe Kit
Carpenter.removeRecipe(<forestry:kit_pickaxe>);


// ================================

//Stamp 10n
Carpenter.removeRecipe(<forestry:stamps:3>);
assembler.recipeBuilder()
    .inputs(<ore:plateGold>*3,<ore:paper>*3)
    .fluidInputs(<liquid:seed_oil> * 300)
    .outputs(<forestry:stamps:3> * 9)
    .circuit(16)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Stamp 5n
Carpenter.removeRecipe(<forestry:stamps:2>);
assembler.recipeBuilder()
    .inputs(<ore:plateTin>*3,<ore:paper>*3)
    .fluidInputs(<liquid:seed_oil> * 300)
    .outputs(<forestry:stamps:2> * 9)
    .circuit(16)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Stamp 1n
Carpenter.removeRecipe(<forestry:stamps>);
assembler.recipeBuilder()
    .inputs(<ore:gemApatite>*3,<ore:paper>*3)
    .fluidInputs(<liquid:seed_oil> * 300)
    .outputs(<forestry:stamps> * 9)
    .circuit(16)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Stamp 2n
Carpenter.removeRecipe(<forestry:stamps:1>);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper>*3,<ore:paper>*3)
    .fluidInputs(<liquid:seed_oil> * 300)
    .outputs(<forestry:stamps:1> * 9)
    .circuit(16)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Letter
Carpenter.removeRecipe(<forestry:letters>);
assembler.recipeBuilder()
    .inputs(<ore:dustWood>*6)
    .fluidInputs(<liquid:water> * 250)
    .outputs(<forestry:letters>)
    .circuit(16)
    .duration(100)
    .EUt(12)
.buildAndRegister();

//Woven Mining Backpack
Carpenter.removeRecipe(<forestry:miner_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:miner_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:miner_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Iceman's Backpack
Carpenter.removeRecipe(<railcraft:backpack_iceman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}));
assembler.recipeBuilder()
    .inputs(<railcraft:backpack_iceman_t1>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<railcraft:backpack_iceman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}))
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Apothecary's Backpack
Carpenter.removeRecipe(<railcraft:backpack_apothecary_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}));
assembler.recipeBuilder()
    .inputs(<railcraft:backpack_apothecary_t1>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<railcraft:backpack_apothecary_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}))
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Hunting Backpack
Carpenter.removeRecipe(<forestry:hunter_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:hunter_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:hunter_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Adventuring Backpack
Carpenter.removeRecipe(<forestry:adventurer_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:adventurer_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:adventurer_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Signalman Backpack
<railcraft:backpack_signalman_t1>.displayName = "Signalman Backpack";
<railcraft:backpack_signalman_t2>.displayName = "Woven Signalman Backpack";

Carpenter.removeRecipe(<railcraft:backpack_signalman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}));
assembler.recipeBuilder()
    .inputs(<railcraft:backpack_signalman_t1>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<railcraft:backpack_signalman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}))
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Trackman's Backpack
Carpenter.removeRecipe(<railcraft:backpack_trackman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}));
assembler.recipeBuilder()
    .inputs(<railcraft:backpack_trackman_t1>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<railcraft:backpack_trackman_t2>.withTag({display: {Lore: ["§7§oDesigned by Railcraft, Inc."]}}))
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Digging Backpack
Carpenter.removeRecipe(<forestry:digger_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:digger_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:digger_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Building Backpack
Carpenter.removeRecipe(<forestry:builder_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:builder_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:builder_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Woven Foresting Backpack
Carpenter.removeRecipe(<forestry:forester_bag_t2>);
assembler.recipeBuilder()
    .inputs(<forestry:forester_bag>, <forestry:crafting_material:3> * 7, <ore:plateDiamond>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:forester_bag_t2>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Impregnated Stick
Carpenter.removeRecipe(<forestry:oak_stick>);
chemical_bath.recipeBuilder()
    .inputs(<ore:stickTreatedWood>)
    .fluidInputs(<liquid:seed_oil> * 100)
    .outputs(<forestry:oak_stick>)
    .duration(200)
    .EUt(8)
.buildAndRegister();

//Humus
Carpenter.removeRecipe(<forestry:humus>);
mixer.recipeBuilder()
    .inputs(<forestry:mulch>, <ore:dirt> * 8)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:humus> * 9)
    .duration(200)
    .EUt(8)
.buildAndRegister();

//Bog Earth
Carpenter.removeRecipe(<forestry:bog_earth>);
mixer.recipeBuilder()
    .inputs(<forestry:mulch>, <ore:dirt> * 4, <ore:sand> * 4)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:bog_earth> * 8)
    .duration(200)
    .EUt(8)
.buildAndRegister();

//Scented Paneling
Carpenter.removeRecipe(<forestry:crafting_material:6>);
assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood>*3, <ore:itemBeeswax> * 2, <ore:itemPollen>, <ore:dropRoyalJelly>)
    .fluidInputs(<liquid:for.honey> * 500)
    .outputs(<forestry:crafting_material:6>)
    .circuit(16)
    .duration(180)
    .EUt(50)
.buildAndRegister();

//Gene Database
Carpenter.removeRecipe(<genetics:geneticdatabase>);
assembler.recipeBuilder()
    .inputs(<ore:circuitMv>, <quark:framed_glass_pane>, <ore:gemEnderEye>, <ore:plateRestoniaEmpowered>*2, <ore:plateAluminium>*4)
    .fluidInputs(<liquid:water> * 2000)
    .outputs(<genetics:geneticdatabase>)
    .circuit(16)
    .duration(180)
    .EUt(100)
.buildAndRegister();

//Arborist Database
Carpenter.removeRecipe(<extratrees:databasetree>);
assembler.recipeBuilder()
    .inputs(<ore:circuitMv>, <quark:framed_glass_pane>, <forestry:thermionic_tubes:9>, <contenttweaker:restoniaplate>*2, <ore:plateDoubleBrass>*4)
    .fluidInputs(<liquid:water> * 2000)
    .outputs(<extratrees:databasetree>)
    .circuit(16)
    .duration(180)
    .EUt(32)
.buildAndRegister();

//Apiarist Database
Carpenter.removeRecipe(<extrabees:dictionary>);
assembler.recipeBuilder()
    .inputs(<ore:circuitMv>, <quark:framed_glass_pane>, <forestry:thermionic_tubes:10>, <contenttweaker:restoniaplate>*2, <ore:plateDoubleGold>*4)
    .fluidInputs(<liquid:water> * 2000)
    .outputs(<extrabees:dictionary>)
    .circuit(16)
    .duration(180)
    .EUt(32)
.buildAndRegister();

//Unlit Candle
Carpenter.removeRecipe(<forestry:candle>);
assembler.recipeBuilder()
    .inputs(<ore:itemBeeswax>*6, <ore:string>)
    .fluidInputs(<liquid:water> * 600)
    .outputs(<forestry:candle> * 24)
    .circuit(16)
    .duration(80)
    .EUt(2)
.buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:itemBeeswax>*2, <forestry:crafting_material:2>*2)
    .fluidInputs(<liquid:water> * 200)
    .outputs(<forestry:candle> * 6)
    .circuit(16)
    .duration(80)
    .EUt(2)
.buildAndRegister();

//Portable Analyzer
Carpenter.removeRecipe(<forestry:portable_alyzer>);

recipes.addShaped(<forestry:portable_alyzer> * 1, [[<ore:plateRedstone>, <ore:heavyPlateCopper>, <ore:plateRedstone>], [<ore:lightPlateIron>, <quark:framed_glass_pane>, <ore:lightPlateIron>],[<ore:lightPlateSteel>, <ore:circuitLv>, <ore:lightPlateSteel>]]);


//Iodine Capsule
Carpenter.removeRecipe(<forestry:iodine_capsule>);
assembler.recipeBuilder()
    .inputs(<forestry:pollen:1>*4, <ore:dropHoney>*2, <ore:gunpowder>, <forestry:can>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:iodine_capsule>)
    .circuit(16)
    .duration(180)
    .EUt(40)
.buildAndRegister();

//Dissipation Charge
Carpenter.removeRecipe(<forestry:crafting_material:4>);
assembler.recipeBuilder()
    .inputs(<ore:dropRoyalJelly>*4, <ore:dropHoneydew>*2, <ore:gunpowder>, <forestry:can>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:crafting_material:4>)
    .circuit(16)
    .duration(180)
    .EUt(40)
.buildAndRegister();

//Woven Silk
Carpenter.removeRecipe(<forestry:crafting_material:3>);
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:2>*9)
    .fluidInputs(<liquid:water> * 500)
    .outputs(<forestry:crafting_material:3>)
    .circuit(16)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Basic Circuit Board
Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
circuit_assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:381>, <ore:plateRedstone>*6, <ore:componentResistor>*2)
    .outputs(<forestry:chipsets>.withTag({T: 0 as short}))
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Enhanced Circuit Board
Carpenter.removeRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}));
circuit_assembler.recipeBuilder()
    .inputs(<forestry:chipsets>.withTag({T: 0 as short}), <ore:plateBronze>*8)
    .outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Refined Circuit Board
Carpenter.removeRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}));
circuit_assembler.recipeBuilder()
    .inputs(<forestry:chipsets:1>.withTag({T: 1 as short}), <ore:plateIron>*8)
    .outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Intricate Circuit Board
Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));
circuit_assembler.recipeBuilder()
    .inputs(<forestry:chipsets:2>.withTag({T: 2 as short}), <ore:plateGold>*8)
    .outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Wood Polish
Carpenter.removeRecipe(<extratrees:misc:3>);
mixer.recipeBuilder()
    .inputs(<ore:itemBeeswax>)
    .fluidInputs(<liquid:binnie.turpentine> * 10)
    .outputs(<extratrees:misc:3> * 4)
    .duration(180)
    .EUt(12)
.buildAndRegister();

//Stone Tie
recipes.remove(<railcraft:tie:1>);
Carpenter.removeRecipe(<railcraft:tie:1>);

assembler.recipeBuilder()
    .inputs(<railcraft:rebar>)
    .fluidInputs(<liquid:concrete> * 750)
    .outputs(<railcraft:tie:1>)
    .circuit(16)
    .duration(120)
    .EUt(12)
.buildAndRegister();

//Wooden Tie
recipes.remove(<railcraft:tie>);
Carpenter.removeRecipe(<railcraft:tie>);

assembler.recipeBuilder()
    .inputs(<ore:slabWood>)
    .fluidInputs(<liquid:creosote> * 750)
    .outputs(<railcraft:tie>)
    .circuit(16)
    .duration(120)
    .EUt(12)
.buildAndRegister();

// Soldering Iron
Carpenter.removeRecipe(<forestry:soldering_iron>);
recipes.addShaped(<forestry:soldering_iron> * 1, [[<ore:screwIron>, <ore:stickIron>, <ore:screwIron>], [<ore:stickIron>, <ore:gtceScrewdrivers>, <ore:stickIron>],[null, <ore:gtceFiles>, <harvestcraft:hardenedleatheritem>]]);

//Scented Gear
Carpenter.removeRecipe(<extrabees:misc>);
assembler.recipeBuilder()
    .inputs(<extratrees:misc:2>, <ore:itemPollen>, <ore:itemBeeswax>*2, <ore:dropRoyalJelly>)
    .circuit(16)
    .fluidInputs(<liquid:binnie.turpentine> * 100)
    .outputs(<extrabees:misc>)
    .duration(160)
    .EUt(16)
.buildAndRegister();

//Cartoon
Carpenter.removeRecipe(<forestry:carton>);
assembler.recipeBuilder()
    .inputs(<ore:dustWood>*4)
    .circuit(15)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<forestry:carton> * 2)
    .duration(160)
    .EUt(16)
.buildAndRegister();