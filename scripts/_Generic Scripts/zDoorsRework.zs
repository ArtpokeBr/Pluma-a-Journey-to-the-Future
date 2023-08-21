import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Doors Rework                                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Removing Existing ones from the Assembler
assembler.findRecipe(4, [<minecraft:planks> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();
assembler.findRecipe(4, [<minecraft:planks:1> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();
assembler.findRecipe(4, [<minecraft:planks:2> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();
assembler.findRecipe(4, [<minecraft:planks:3> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();
assembler.findRecipe(4, [<minecraft:planks:4> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();
assembler.findRecipe(4, [<minecraft:planks:5> * 4, <minecraft:trapdoor>], [<liquid:iron> * 16]).remove();

var WoodDoors as IItemStack[IIngredient] = {
    <minecraft:planks>: <minecraft:wooden_door>,
    <minecraft:planks:1>: <minecraft:spruce_door>,
    <minecraft:planks:2>: <minecraft:birch_door>,
    <minecraft:planks:3>: <minecraft:jungle_door>,
    <minecraft:planks:4>: <minecraft:acacia_door>,
    <minecraft:planks:5>: <minecraft:dark_oak_door>,

    <biomesoplenty:planks_0>: <biomesoplenty:sacred_oak_door>,
    <biomesoplenty:planks_0:1>: <biomesoplenty:cherry_door>,
    <biomesoplenty:planks_0:2>: <biomesoplenty:umbran_door>,
    <biomesoplenty:planks_0:3>: <biomesoplenty:fir_door>,
    <biomesoplenty:planks_0:4>: <biomesoplenty:ethereal_door>,
    <biomesoplenty:planks_0:5>: <biomesoplenty:magic_door>,
    <biomesoplenty:planks_0:6>: <biomesoplenty:mangrove_door>,
    <biomesoplenty:planks_0:7>: <biomesoplenty:palm_door>,
    <biomesoplenty:planks_0:8>: <biomesoplenty:redwood_door>,
    <biomesoplenty:planks_0:9>: <biomesoplenty:willow_door>,
    <biomesoplenty:planks_0:10>: <biomesoplenty:pine_door>,
    <biomesoplenty:planks_0:11>: <biomesoplenty:hellbark_door>,
    <biomesoplenty:planks_0:12>: <biomesoplenty:jacaranda_door>,
    <biomesoplenty:planks_0:13>: <biomesoplenty:mahogany_door>,
    <biomesoplenty:planks_0:14>: <biomesoplenty:ebony_door>,
    <biomesoplenty:planks_0:15>: <biomesoplenty:eucalyptus_door>,

    <forestry:planks.0>: <forestry:doors.larch>,
    <forestry:planks.0:1>: <forestry:doors.teak>,
    <forestry:planks.0:2>: <forestry:doors.acacia>,
    <forestry:planks.0:3>: <forestry:doors.lime>,
    <forestry:planks.0:4>: <forestry:doors.chestnut>,
    <forestry:planks.0:5>: <forestry:doors.wenge>,
    <forestry:planks.0:6>: <forestry:doors.baobab>,
    <forestry:planks.0:7>: <forestry:doors.sequoia>,
    <forestry:planks.0:8>: <forestry:doors.kapok>,
    <forestry:planks.0:9>: <forestry:doors.ebony>,
    <forestry:planks.0:10>: <forestry:doors.mahogany>,
    <forestry:planks.0:11>: <forestry:doors.balsa>,
    <forestry:planks.0:12>: <forestry:doors.willow>,
    <forestry:planks.0:13>: <forestry:doors.walnut>,
    <forestry:planks.0:14>: <forestry:doors.greenheart>,
    <forestry:planks.0:15>: <forestry:doors.cherry>,
    <forestry:planks.1>: <forestry:doors.mahoe>,
    <forestry:planks.1:1>: <forestry:doors.poplar>,
    <forestry:planks.1:2>: <forestry:doors.palm>,
    <forestry:planks.1:3>: <forestry:doors.papaya>,
    <forestry:planks.1:4>: <forestry:doors.pine>,
    <forestry:planks.1:5>: <forestry:doors.plum>,
    <forestry:planks.1:6>: <forestry:doors.maple>,
    <forestry:planks.1:7>: <forestry:doors.citrus>,
    <forestry:planks.1:8>: <forestry:doors.giganteum>,
    <forestry:planks.1:9>: <forestry:doors.ipe>,
    <forestry:planks.1:10>: <forestry:doors.padauk>,
    <forestry:planks.1:11>: <forestry:doors.cocobolo>,
    <forestry:planks.1:12>: <forestry:doors.zebrawood>,

    <extratrees:planks.0>: <extratrees:doors.apple>,
    <extratrees:planks.0:1>: <extratrees:doors.fig>,
    <extratrees:planks.0:2>: <extratrees:doors.butternut>,
    <extratrees:planks.0:3>: <extratrees:doors.whitebeam>,
    <extratrees:planks.0:15>: <extratrees:doors.hickory>,
    <extratrees:planks.0:14>: <extratrees:doors.hazel>,
    <extratrees:planks.0:13>: <extratrees:doors.fir>,
    <extratrees:planks.0:12>: <extratrees:doors.cypress>,
    <extratrees:planks.0:11>: <extratrees:doors.yew>,
    <extratrees:planks.0:10>: <extratrees:doors.banana>,
    <extratrees:planks.0:9>: <extratrees:doors.hawthorn>,
    <extratrees:planks.0:8>: <extratrees:doors.beech>,
    <extratrees:planks.0:4>: <extratrees:doors.rowan>,
    <extratrees:planks.0:5>: <extratrees:doors.hemlock>,
    <extratrees:planks.0:6>: <extratrees:doors.ash>,
    <extratrees:planks.0:7>: <extratrees:doors.alder>,
    <extratrees:planks.1>: <extratrees:doors.elm>,
    <extratrees:planks.1:1>: <extratrees:doors.elder>,
    <extratrees:planks.1:2>: <extratrees:doors.holly>,
    <extratrees:planks.1:3>: <extratrees:doors.hornbeam>,
    <extratrees:planks.1:15>: <extratrees:doors.gingko>,
    <extratrees:planks.1:14>: <extratrees:doors.iroko>,
    <extratrees:planks.1:13>: <extratrees:doors.purpleheart>,
    <extratrees:planks.1:12>: <extratrees:doors.rosewood>,
    <extratrees:planks.1:11>: <extratrees:doors.logwood>,
    <extratrees:planks.1:10>: <extratrees:doors.brazilwood>,
    <extratrees:planks.1:9>: <extratrees:doors.maclura>,
    <extratrees:planks.1:8>: <extratrees:doors.pear>,
    <extratrees:planks.1:7>: <extratrees:doors.locust>,
    <extratrees:planks.1:6>: <extratrees:doors.sweetgum>,
    <extratrees:planks.1:5>: <extratrees:doors.olive>,
    <extratrees:planks.1:4>: <extratrees:doors.cedar>,
    <extratrees:planks.2>: <extratrees:doors.eucalyptus>,
    <extratrees:planks.2:1>: <extratrees:doors.box>,
    <extratrees:planks.2:2>: <extratrees:doors.syzgium>,
    <extratrees:planks.2:3>: <extratrees:doors.pinkivory>,

    <natura:overworld_planks:5>: <natura:overworld_doors>,
    <natura:overworld_planks:6>: <natura:overworld_doors:1>,
    <natura:overworld_planks:7>: <natura:overworld_doors:2>,
    <natura:overworld_planks:8>: <natura:overworld_doors:3>,
    <natura:redwood_logs>: <natura:overworld_doors:4>,
    <natura:nether_planks>: <natura:nether_doors>,
    <natura:nether_planks:1>: <natura:nether_doors:1>,
    <natura:nether_planks:2>: <natura:nether_doors:2>,

    <roots:wildwood_planks>: <roots:wildwood_door>,

    <traverse:fir_planks>: <traverse:fir_door>,

    <fossil:palm_planks>: <fossil:palm_door_item>,
    <fossil:calamites_planks>: <fossil:calamites_door_item>,
    <fossil:sigillaria_planks>: <fossil:sigillaria_door_item>,
    <fossil:cordaites_planks>: <fossil:cordaites_door_item>,

    <integrateddynamics:menril_planks>: <integrateddynamics:menril_door>,
    
    <abyssalcraft:dltplank>: <abyssalcraft:door_dlt>,
    <abyssalcraft:dreadplanks>: <abyssalcraft:door_drt>

    };
for IItemStack, IIngredient in WoodDoors {
        recipes.remove(IIngredient);

        recipes.addShaped(IIngredient * 1, [[IItemStack, <ore:trapdoorWood>, <ore:gtceScrewdrivers>], [IItemStack, <ore:ringIron>, <ore:screwIron>],[IItemStack, IItemStack, <ore:gtceSaws>]]);
        recipes.addShaped(IIngredient * 2, [[IItemStack, <ore:trapdoorWood>, <ore:gtceScrewdrivers>], [IItemStack, <ore:ringSteel>, <ore:screwSteel>],[IItemStack, IItemStack, <ore:gtceSaws>]]);
        recipes.addShaped(IIngredient * 4, [[IItemStack, <ore:trapdoorWood>, <ore:gtceScrewdrivers>], [IItemStack, <ore:ringStainlessSteel>, <ore:screwStainlessSteel>],[IItemStack, IItemStack, <ore:gtceSaws>]]);

		assembler.recipeBuilder()
			.inputs(IItemStack * 4, <ore:trapdoorWood>)
            .fluidInputs(<liquid:iron> * 16)
			.outputs(IIngredient * 1)   
			.duration(400)
			.EUt(4)
			.buildAndRegister();

        assembler.recipeBuilder()
			.inputs(IItemStack * 4, <ore:trapdoorWood>)
            .fluidInputs(<liquid:steel> * 16)
			.outputs(IIngredient * 2)   
			.duration(400)
			.EUt(4)
			.buildAndRegister();

        assembler.recipeBuilder()
			.inputs(IItemStack * 4, <ore:trapdoorWood>)
            .fluidInputs(<liquid:stainless_steel> * 16)
			.outputs(IIngredient * 4)   
			.duration(400)
			.EUt(4)
			.buildAndRegister();        
}

// Dark Steel Door
    recipes.remove(<enderio:block_dark_steel_door>);
    recipes.addShaped(<enderio:block_dark_steel_door> * 1, [[<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:gtceScrewdrivers>], [<ore:plateDarkSteel>, <ore:ringDarkSteel>, <ore:screwDarkSteel>],[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:gtceSaws>]]);
        
		assembler.recipeBuilder()
			.inputs(<ore:plateDarkSteel> * 4, <enderio:block_dark_iron_bars>)
            .fluidInputs(<liquid:dark_steel> * 16)
			.outputs(<enderio:block_dark_steel_door> * 1)   
			.duration(400)
			.EUt(4)
		.buildAndRegister();

// Iron Door
    recipes.remove(<minecraft:iron_door>);
    recipes.addShaped(<minecraft:iron_door> * 1, [[<ore:plateIron>, <ore:barsIron>, <ore:gtceScrewdrivers>], [<ore:plateIron>, <ore:ringIron>, <ore:screwIron>],[<ore:plateIron>, <ore:plateIron>, <ore:gtceSaws>]]);
    <recipemap:assembler>.findRecipe(16, [<metaitem:plateIron> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 6})], null).remove();

		assembler.recipeBuilder()
			.inputs(<ore:plateIron> * 4, <ore:barsIron>)
            .fluidInputs(<liquid:iron> * 16)
			.outputs(<minecraft:iron_door> * 1)   
			.duration(400)
			.EUt(4)
		.buildAndRegister();

// Pyrotech Doors
    recipes.remove(<pyrotech:stone_door>);
    recipes.remove(<pyrotech:refractory_door>);

    recipes.addShaped(<pyrotech:stone_door> * 1, [[<pyrotech:material:16>, <contenttweaker:searedplate>, <ore:gtceScrewdrivers>], [<pyrotech:material:16>, <ore:ringIron>, <ore:screwIron>],[<pyrotech:material:16>, <pyrotech:material:16>, <ore:gtceSaws>]]);
    recipes.addShaped(<pyrotech:refractory_door> * 1, [[<pyrotech:material:5>, <contenttweaker:searedplate>, <ore:gtceScrewdrivers>], [<pyrotech:material:5>, <ore:ringIron>, <ore:screwIron>],[<pyrotech:material:5>, <pyrotech:material:5>, <ore:gtceSaws>]]);
  
		assembler.recipeBuilder()
			.inputs(<pyrotech:material:16> * 4, <contenttweaker:searedplate>)
            .fluidInputs(<liquid:iron> * 16)
			.outputs(<pyrotech:stone_door> * 1)   
			.duration(400)
			.EUt(4)
			.buildAndRegister();

        assembler.recipeBuilder()
			.inputs(<pyrotech:material:5> * 4, <contenttweaker:searedplate>)
            .fluidInputs(<liquid:iron> * 16)
			.outputs(<pyrotech:refractory_door> * 1)   
			.duration(400)
			.EUt(4)
			.buildAndRegister();    
