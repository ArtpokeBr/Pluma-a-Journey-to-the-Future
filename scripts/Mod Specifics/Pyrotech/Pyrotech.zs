import mods.pyrotech.GraniteAnvil as GraniteAnvil;
import mods.pyrotech.IroncladAnvil as IroncladAnvil;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.pyrotech.PitKiln as PitKiln;
import mods.pyrotech.StoneKiln as StoneKiln;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Casting as Casting;
import crafttweaker.item.IIngredient;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Pyrotech Script                                                                                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Straw Bed Recipe
recipes.addShapeless("StrawBed",<pyrotech:straw_bed>,[<pyrotech:thatch>, <pyrotech:thatch>]);

// Removing Sawdust to tiny charcoal on the Furnace
furnace.remove(<pyrotech:material:15>, <pyrotech:rock:7>);

// Stone torch with multiple Tiny Coals

recipes.remove(<pyrotech:torch_stone>);
recipes.addShapeless("StoneTorch",<pyrotech:torch_stone>*4,[<actuallyadditions:item_misc:11>, <ore:stickStone>]);
recipes.addShapeless("StoneTorch1",<pyrotech:torch_stone>*4,[<actuallyadditions:item_misc:10>, <ore:stickStone>]);

// Flint and Tinder using an Actual Flint
recipes.remove(<pyrotech:flint_and_tinder>);
recipes.addShapeless("FlintAndTinder",<pyrotech:flint_and_tinder>,[<ore:gemFlint>, <pyrotech:material:13>, <ore:rock>]);

//Crushed Limestone
macerator.recipeBuilder()
    .inputs([<ore:stoneLimestone>])
    .outputs(<ore:dustLimestone>.firstItem * 8)
    .duration(80)
    .EUt(4)
    .buildAndRegister();

//Slaked Lime
chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:water> * 125])
    .inputs(<ore:dustLimestone>)
    .outputs(<pyrotech:material:8>)
    .duration(150)
    .EUt(12)
    .buildAndRegister();

# [Glass] from [Glass Shard]
furnace.addRecipe(<pyrotech:material:32>*2, <ore:sand>);
craft.make(<minecraft:glass>, ["pretty",
  "G G",
  "G G"], {
  "G": <pyrotech:material:32>, # Glass Shard
});

// Compacting Bin
recipes.remove(<pyrotech:compacting_bin>);
recipes.addShaped(<pyrotech:compacting_bin> * 1, [[<ore:slabStone>, null, <ore:slabStone>], [<ore:plankWood>, null, <ore:plankWood>],[<ore:slabStone>, <pyrotech:masonry_brick_block>, <ore:slabStone>]]);

// Refractory Clay and Slaked Composite
recipes.remove(<pyrotech:material:4>);

recipes.addShapeless("SlakedComposite",<ore:dustSlakedComposite>.firstItem * 5,[<ore:clayBall>, <pyrotech:material:8>, <ore:dustAsh>, <ore:dustCalcite>]);

Casting.addTableRecipe(<pyrotech:material:4>, <gregtech:meta_dust:32010>, <liquid:stone>, 144, true, 120);

// Unfired Refractory Brick
recipes.remove(<pyrotech:material:9>);
recipes.addShaped(<pyrotech:material:9> * 8, [[<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>], [<pyrotech:material:4>, <gregtech:meta_item_1:348>, <pyrotech:material:4>],[<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>]]);

// Mechanical Hopper
recipes.remove(<pyrotech:mechanical_hopper>);
recipes.addShaped(<pyrotech:mechanical_hopper> * 1, [[<pyrotech:material:16>, null, <pyrotech:material:16>], [<ore:logWood>, <ore:stickStone>, <ore:logWood>],[null, <pyrotech:material:16>, null]]);

// Bellows
recipes.remove(<pyrotech:bellows>);
recipes.addShaped(<pyrotech:bellows> * 1, [[<pyrotech:material:20>, <pyrotech:material:16>, <pyrotech:material:20>], [<ore:leather>, <ore:stickStone>, <ore:leather>],[<pyrotech:masonry_brick_block>, null, <pyrotech:masonry_brick_block>]]);

//Recipe to convert Ash Dust
recipes.addShapeless("ConvertingAsh",<ore:dustAsh>.firstItem,[<pyrotech:material>]);

//Clumps Integration ================

var ClumpsCompacting as IItemStack[IIngredient] = {
    <pyrotech:rock:5>: <minecraft:sand>,
    <pyrotech:rock:9>: <minecraft:sand:1>,
    <pyrotech:rock:4>: <minecraft:dirt>,
    <pyrotech:rock:1>: <pyrotech:cobblestone:2>,
    <pyrotech:rock>: <minecraft:cobblestone>,
    <pyrotech:rock:2>: <pyrotech:cobblestone:1>,
    <pyrotech:rock:7>: <pyrotech:pile_wood_chips>,
    <pyrotech:rock:3>: <pyrotech:cobblestone>,
    <pyrotech:rock:8>: <pyrotech:cobblestone:3>,
    <pyrotech:rock:6>: <minecraft:sandstone>,
    <pyrotech:rock:10>: <minecraft:red_sandstone>,
    <pyrotech:rock_grass>: <minecraft:grass>,
    <pyrotech:rock_netherrack>: <minecraft:netherrack>

    };
for IItemStack, IIngredient in ClumpsCompacting {

		compressor.recipeBuilder()
			.inputs(IItemStack*8)
			.outputs(IIngredient)
			.duration(80)
			.EUt(2)
		.buildAndRegister();
}

// Masonry Bricks Integration ==============

saw.recipeBuilder()
	.inputs(<minecraft:stone_slab:5>)
	.outputs(<pyrotech:material:16>*2)
	.duration(80)
	.EUt(16)
.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<pyrotech:material:16>*4)
	.outputs(<pyrotech:masonry_brick_block>)
	.duration(160)
	.EUt(30)
.buildAndRegister();

//Wet Cob Integration
recipes.remove(<pyrotech:cob_wet>);

recipes.addShaped(<pyrotech:cob_wet> * 4, [[<ore:ballMud>, <ore:ballMud>, <ore:ballMud>], [<ore:ballMud>, <pyrotech:material:2>, <ore:ballMud>],[<ore:ballMud>, <ore:ballMud>, <ore:ballMud>]]);
recipes.addShapeless("WetCob",<pyrotech:cob_wet>,[<pyrotech:material:13>, <ore:ballMud>, <ore:ballMud>, <ore:ballMud>]);
recipes.addShapeless("WetCob2",<pyrotech:cob_wet>*16,[<pyrotech:thatch>, <ore:blockMud>, <ore:blockMud>, <ore:blockMud>]);

// Hunting Tools Adjustments

var Butchers as IItemStack[IIngredient] = {
    <pyrotech:material:16>: <pyrotech:stone_butchers_knife>,
    <pyrotech:material:10>: <pyrotech:flint_butchers_knife>,
    <pyrotech:material:11>: <pyrotech:bone_butchers_knife>,
    <pyrotech:material:19>: <pyrotech:iron_butchers_knife>,
    <pyrotech:material:34>: <pyrotech:gold_butchers_knife>,
    <pyrotech:material:18>: <pyrotech:diamond_butchers_knife>,
    <pyrotech:material:33>: <pyrotech:obsidian_butchers_knife>
    };
for IItemStack, IIngredient in Butchers {

        recipes.remove(IIngredient);
        recipes.addShaped(IIngredient, [[null, IItemStack, null], [IItemStack, <ore:stickWood>, null],[<ore:stickWood>, <ore:twine>, null]]);

}

var Hunters as IItemStack[IIngredient] = {
    <pyrotech:material:16>: <pyrotech:stone_hunters_knife>,
    <pyrotech:material:10>: <pyrotech:flint_hunters_knife>,
    <pyrotech:material:11>: <pyrotech:bone_hunters_knife>,
    <pyrotech:material:19>: <pyrotech:iron_hunters_knife>,
    <pyrotech:material:34>: <pyrotech:gold_hunters_knife>,
    <pyrotech:material:18>: <pyrotech:diamond_hunters_knife>,
    <pyrotech:material:33>: <pyrotech:obsidian_hunters_knife>
    };
for IItemStack, IIngredient in Hunters {

        recipes.remove(IIngredient);
        recipes.addShaped(IIngredient, [[null, IItemStack, IItemStack], [<ore:twine>, IItemStack, null],[<ore:stickWood>, <ore:twine>, null]]);

}

// Tanning Rack
recipes.remove(<pyrotech:tanning_rack>);
recipes.addShaped(<pyrotech:tanning_rack> * 1, [[<pyrotech:material:26>, <ore:stickTreatedWood>, <pyrotech:material:26>], [<ore:stickTreatedWood>, <pyrotech:material:26>, <ore:stickTreatedWood>],[<pyrotech:planks_tarred>, <ore:stickTreatedWood>, <pyrotech:planks_tarred>]]);

// Board Recipes

# Normal
saw.recipeBuilder()
    .inputs(<ore:slabWood>)
    .outputs(<pyrotech:material:20>*3)
    .duration(200)
    .EUt(30)
.buildAndRegister();

# Tarred
saw.recipeBuilder()
    .inputs(<pyrotech:planks_tarred>)
    .outputs(<pyrotech:material:23>*3)
    .duration(220)
    .EUt(32)
.buildAndRegister();

// Renaming Pyrotech's Hammers to make more Clear about their uses

var PyrotechHammers as IItemStack[string] = {
	"Crude" : <pyrotech:crude_hammer>,
    "Stone" : <pyrotech:stone_hammer>,
    "Bone"  : <pyrotech:bone_hammer>,
    "Flint" : <pyrotech:flint_hammer>,
    "Iron"  : <pyrotech:iron_hammer>,
    "Gold"  : <pyrotech:gold_hammer>,
    "Diamond" : <pyrotech:diamond_hammer>,
    "Obsidian": <pyrotech:obsidian_hammer>
};

for name, hammer in PyrotechHammers {
    hammer.displayName = " " ~ name ~ " Pyrotechnic Hammer";
}

var DurablePyrotechHammers as IItemStack[string] = {
	"Bone"  : <pyrotech:bone_hammer_durable>,
    "Flint" : <pyrotech:flint_hammer_durable>
};
for name, hammer in DurablePyrotechHammers {
    hammer.displayName = " " ~ " Durable " ~ name ~ " Pyrotechnic Hammer";
}

// ========================================================= //

# [Refractory Kiln] from [Stone Kiln][+2]
recipes.removeByRecipeName("pyrotech:tech/machine/brick_kiln");
craft.make(<pyrotech:brick_kiln>, ["pretty",
  "□ R □",
  "R S R",
  "□ R □"], {
  "□": <ore:plateIron>,       # Iron Plate
  "R": <pyrotech:material:5>, # Refractory Brick
  "S": <pyrotech:stone_kiln>, # Stone Kiln
});

# [Refractory Oven] from [Stone Oven][+2]
recipes.removeByRecipeName("pyrotech:tech/machine/brick_oven");
craft.make(<pyrotech:brick_oven>, ["pretty",
  "□ R □",
  "R S R",
  "□ R □"], {
  "□": <ore:plateIron>,       # Iron Plate
  "R": <pyrotech:material:5>, # Refractory Brick
  "S": <pyrotech:stone_oven>, # Stone Oven
});

# [Refractory Sawmill] from [Stone Sawmill][+2]
recipes.removeByRecipeName("pyrotech:tech/machine/brick_sawmill");
craft.make(<pyrotech:brick_sawmill>, ["pretty",
  "□ R □",
  "R S R",
  "□ R □"], {
  "□": <ore:plateIron>,          # Iron Plate
  "R": <pyrotech:material:5>,    # Refractory Brick
  "S": <pyrotech:stone_sawmill>, # Stone Sawmill
});

//Compostic Bin Tooltip Help
<pyrotech:compost_bin>.addTooltip(format.white("Place ") + format.green("Organic Items/Foods ") + format.white("and ") + format.blue("Water ") + format.white("to make ") + format.yellow("Mulch."));