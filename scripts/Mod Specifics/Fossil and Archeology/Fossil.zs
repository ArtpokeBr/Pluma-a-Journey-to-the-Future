import moretweaker.fossil.Analyzer as Analyzer;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Fossil and Archeology Script                                                                                                     //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Ancient Glass Tooltip
<fossil:ancient_glass>.addTooltip(format.white("Can only be found in ") + format.red("Anu's Castle") + format.white(" or a ") + format.red("Nether Ship"));
<fossil:ancient_glass>.addTooltip(format.white("Or Crafted in a ") + format.aqua("Time Manipulator"));

//Ancient Stone Tooltip
<fossil:ancient_stone>.addTooltip(format.white("Can only be found in ") + format.red("Anu's Castle"));
<fossil:ancient_stone>.addTooltip(format.white("Or Transmuted with a ") + format.aqua("Pure Daisy"));

//Ancient Wood Tooltip
<fossil:ancient_wood>.addTooltip(format.white("Can only be found in ") + format.red("Anu's Castle"));
<fossil:ancient_wood>.addTooltip(format.white("Or Transmuted with a ") + format.aqua("Pure Daisy"));

<fossil:ancient_wood_pillar>.addTooltip(format.white("Can only be found in ") + format.red("Anu's Castle"));
<fossil:ancient_wood_pillar>.addTooltip(format.white("Or Simply ") + format.green("Crafted."));

//Ancient Clock
<fossil:ancient_clock>.addTooltip(format.white("Can only be found after ") + format.red("Killing Anu ") + format.white("in his castle."));

//Removing the Fossil Amber from the Amber OreDict

<ore:gemAmber>.remove(<fossil:amber>);

//Fixing OreDicts in Fossil Ores

<ore:oreAmber>.remove(<fossil:amber_ore>);
<ore:oreFossil>.remove(<fossil:fossil>);

// Distilling Tar into Coal Tar
centrifuge.recipeBuilder()
    .fluidInputs(<liquid:fossil_tar> * 1000)
    .circuit(1)
    .outputs(<fossil:tardrop>*2, <ore:dustTinyVanadiumMagnetite>.firstItem, <ore:dustTinyCalcium>.firstItem)
    .chancedOutput(<fossil:tar_fossil>, 500, 500)
    .fluidOutputs(<liquid:coal_tar> * 500, <liquid:methane> * 200)
    .duration(200)
    .EUt(380)
.buildAndRegister();

//Dominican Amber
sifter.recipeBuilder()
    .inputs(<overloaded:compressed_dirt>)
    .chancedOutput(<fossil:dominican_amber>, 100, 400)
    .chancedOutput(<fossil:pottery_shard> * 2, 1500, 500)
    .chancedOutput(<gregtech:meta_item_1:439>, 1250, 800)
    .chancedOutput(<minecraft:sand>, 5000, 1200)
    .chancedOutput(<ore:dustTinyClay>.firstItem*2, 4000, 900)
    .duration(160)
    .EUt(260)
.buildAndRegister();

// Scarab Sword
recipes.remove(<fossil:scarab_sword>);
recipes.addShaped(<fossil:scarab_sword> * 1, [[null, <ore:gemScarab>, null], [null, <ore:gemScarab>, null],[null, <ore:stickTreatedWood>, null]]);

// Scarab Pickaxe
recipes.remove(<fossil:scarab_pickaxe>);
recipes.addShaped(<fossil:scarab_pickaxe> * 1, [[<ore:gemScarab>, <ore:gemScarab>, <ore:gemScarab>], [null, <ore:stickTreatedWood>, null],[null, <ore:stickTreatedWood>, null]]);

// Scarab Axe
recipes.remove(<fossil:scarab_axe>);
recipes.addShaped(<fossil:scarab_axe> * 1, [[<ore:gemScarab>, <ore:gemScarab>, null], [<ore:gemScarab>, <ore:stickTreatedWood>, null],[null, <ore:stickTreatedWood>, null]]);

// Scarab Hoe
recipes.remove(<fossil:scarab_hoe>);
recipes.addShaped(<fossil:scarab_hoe> * 1, [[<ore:gemScarab>, <ore:gemScarab>, null], [null, <ore:stickTreatedWood>, null],[null, <ore:stickTreatedWood>, null]]);

// Scarab Shovel
recipes.remove(<fossil:scarab_shovel>);
recipes.addShaped(<fossil:scarab_shovel> * 1, [[null, <ore:gemScarab>, null], [null, <ore:stickTreatedWood>, null],[null, <ore:stickTreatedWood>, null]]);



// Analyzer
recipes.remove(<fossil:analyzer>);
recipes.addShaped(<fossil:analyzer> * 1, [[<ore:lightPlateSteel>, <gregtech:meta_item_1:307>, <ore:lightPlateSteel>], [<ore:plateIron>, <fossil:biofossil>, <ore:plateIron>],[<ore:plateIron>, <fossil:relic_scrap>, <ore:plateIron>]]);

// Archeology Workbench
recipes.remove(<fossil:worktable>);
recipes.addShaped(<fossil:worktable> * 1, [[<ore:lightPlateCopper>, <ore:paperEmpty>, <ore:lightPlateCopper>], [<ore:plateTreatedWood>, <ore:workbench>, <ore:plateTreatedWood>],[<ore:plateTreatedWood>, <ore:frameGtTreatedWood>, <ore:plateTreatedWood>]]);

//Removing Mysterious Figurine from the Analyzer
Analyzer.removeByOutput(<fossil:figurine:15>);

//Dense Sand being reworked to require Fossil Dust
recipes.remove(<fossil:dense_sand>);
mixer.recipeBuilder()
    .inputs(<ore:sand>, <ore:dustFossil>*2)
    .circuit(2)
    .outputs(<fossil:dense_sand>)
    .duration(150)
    .EUt(30)
.buildAndRegister();

//Aquatic Scarab Gem
recipes.remove(<fossil:aquatic_scarab_gem>);
chemreactor.recipeBuilder()
    .inputs(<fossil:scarab_gem>, <fossil:dominican_amber>)
    .fluidInputs(<liquid:distilled_water>*260)
    .outputs(<fossil:aquatic_scarab_gem>)
    .duration(150)
    .EUt(300)
.buildAndRegister();

//Making Ancient Metal Fluid

extractor.recipeBuilder()
    .inputs(<fossil:broken_sword>)
    .fluidOutputs(<liquid:ancient_metal>*144)
    .duration(150)
    .EUt(200)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<fossil:broken_helmet>)
    .fluidOutputs(<liquid:ancient_metal>*432)
    .duration(150)
    .EUt(200)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<fossil:ancient_sword>)
    .fluidOutputs(<liquid:ancient_metal>*288)
    .duration(200)
    .EUt(300)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<fossil:ancient_helmet>)
    .fluidOutputs(<liquid:ancient_metal>*864)
    .duration(200)
    .EUt(300)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<fossil:ancient_glass>)
    .fluidOutputs(<liquid:ancient_metal>*72)
    .duration(150)
    .EUt(200)
.buildAndRegister();

// Ancient Wood Pillar
recipes.addShapeless(<fossil:ancient_wood_pillar>*3, [<fossil:ancient_wood>, <fossil:ancient_wood>, <fossil:ancient_wood>, <ore:artisansChisel>.reuse().transformDamage(10)]);  