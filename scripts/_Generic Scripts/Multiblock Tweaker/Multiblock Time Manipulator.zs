/*

import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import mods.contenttweaker.Random;
import mods.contenttweaker.World;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IUpdateFormedValidFunction;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommandManager;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;

var loc = "mbt:time_manipulator";

val ROCKET_ARROW as ITextureArea = ITextureArea.fullImage("multiblocktweaker:textures/gui/progress_bar/rocket.png");

val time_manipulator = Builder.start(loc)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            
            .aisle(
                "CCCCC",
                "IGGGI",
                "IGGGI",
                "IIEII"
            )
            .aisle(
                " CCC ",
                "I   I",
                "I   I",
                "IIIII"
            )
            .aisle(
                " CCC ",
                "I   I",
                "I A I",
                "IIIII"
            )
            .aisle(
                " CCC ",
                "I   I",
                "I   I",
                "IIIII"
            )
            .aisle(
                "CCCCC",
                "IGGGI",
                "IGGGI",
                "IIIII"
            )

            .where("E", controller.self())
			.where("C", <blockstate:contenttweaker:vanadiumsteel_casing>)
            .where("A", <blockstate:fossil:time_machine>)
            //.where(" ", CTPredicate.getAir()) // Anything
			.where("G", CTPredicate.blocks(<fossil:ancient_glass>))
            //.where("S", CTPredicate.liquids(<liquid:redstone>))
            .where("I", CTPredicate.states(<blockstate:contenttweaker:vanadiumsteel_casing>)
            
            | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
            | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .build();
    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("time_manipulator")
                        .minFluidInputs(0)
                        .maxFluidInputs(2)
                        .minFluidOutputs(0)
                        .maxFluidOutputs(2)
                        .minInputs(1)
						.maxInputs(4)
						.minOutputs(1)
                        .maxOutputs(4)
                        .build())
		.withBaseTexture(<contenttweaker:vanadiumsteel_casing>.asBlock().definition.getStateFromMeta(1))
		.buildAndRegister();
// set optional properties
time_manipulator.hasMaintenanceMechanics = false;
time_manipulator.hasMufflerMechanics = false;


// Where Blocks go
val getSurround = function (pos as IBlockPos, facing as IFacing) as IBlockPos[] {
    val center as IBlockPos = pos.getOffset(facing.opposite, 1);
    return [
        // Layer 1
        center.getOffset(IFacing.up(), 1).getOffset(IFacing.north(), 1),
        center.getOffset(IFacing.up(), 1).getOffset(IFacing.south(), 1),
        center.getOffset(IFacing.up(), 1).getOffset(IFacing.east(), 1),
        center.getOffset(IFacing.up(), 1).getOffset(IFacing.west(), 1),
        
        // Layer 2
        center.getOffset(IFacing.up(), 2).getOffset(IFacing.north(), 1),
        center.getOffset(IFacing.up(), 2).getOffset(IFacing.south(), 1),
        center.getOffset(IFacing.up(), 2).getOffset(IFacing.east(), 1),
        center.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 1),
        
        // Layer 3
        //center.getOffset(IFacing.up(), 3)
    ] as IBlockPos[];
};

val getCenter = function (pos as IBlockPos, facing as IFacing) as IBlockPos[] {
    val center as IBlockPos = pos.getOffset(facing.opposite, 1);
    return [
        center.getOffset(IFacing.up(), 1),
        center.getOffset(IFacing.up(), 2)
    ] as IBlockPos[];
};


        //if (!(world.getPickedBlock(pos, null, null) has <mia:armored_glass>))
        //if (<mia:armored_glass> in world.getPickedBlock(pos, null, null))
        //server.commandManager.executeCommand(server, "msg @p Bio-Organic Fabricator needs cleaning!");

// Controller Recipe
recipes.addShaped(
    <metaitem:mbt:time_manipulator>,
    [
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitHv>,         <ore:cableGtSingleVibrantAlloy>],
        [<ore:circuitHv>, <contenttweaker:vanadiumsteel_casing>,  <ore:circuitHv>],
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitHv>,         <ore:cableGtSingleVibrantAlloy>]
    ]
);

// Recipes	

//Caminite Blend
recipes.remove(<embers:blend_caminite>);

time_manipulator.recipeMap.recipeBuilder()
    .inputs(<ore:dustFireclay>)
    .fluidInputs(<liquid:time_vortex_fluid>*1000)
    .notConsumable(<fossil:ancient_clock>)
    .outputs(<embers:blend_caminite> * 4)
    .duration(300)
    .EUt(500)
.buildAndRegister();


//Ancient Glass
time_manipulator.recipeMap.recipeBuilder()
    .inputs(<ore:blockGlassHardened>, <ore:dustQuartzSand>)
    .fluidInputs(<liquid:time_vortex_fluid>*500)
    .notConsumable(<fossil:ancient_clock>)
    .outputs(<fossil:ancient_glass>*3)
    .duration(300)
    .EUt(500)
.buildAndRegister();

//Human Flesh and Blood Conversion
time_manipulator.recipeMap.recipeBuilder()
    .inputs(<thaumcraft:brain>, <thaumcraft:flesh_block>)
    .fluidInputs(<liquid:time_vortex_fluid>*500, <liquid:blood>*1000)
    .notConsumable(<fossil:ancient_clock>)
    .outputs(<evilcraft:werewolf_flesh:1>*9)
    .fluidOutputs(<liquid:evilcraftblood>*1000)
    .duration(300)
    .EUt(500)
.buildAndRegister();

//Ancient Metal Recipe
time_manipulator.recipeMap.recipeBuilder()
    .inputs(<ore:ingotTwilightMetal>)
    .fluidInputs(<liquid:time_vortex_fluid>*500, <liquid:liquid_mana>*200)
    .notConsumable(<fossil:ancient_clock>)
    .outputs(<ore:ingotHotAncientMetal>.firstItem)
    .fluidOutputs(<liquid:fiery_essence>*1000)
    .duration(300)
    .EUt(600)
.buildAndRegister();

*/