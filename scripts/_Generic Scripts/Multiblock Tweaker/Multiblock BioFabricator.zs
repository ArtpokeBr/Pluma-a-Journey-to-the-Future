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

var loc = "mbt:bio_organic_fabricator";

val bio_organic_fabricator = Builder.start(loc)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            
            .aisle(
                "CCC",
                "CGC",
                "CGC",
                "IEI"
            )
            .aisle(
                "CCC",
                "G G",
                "G G",
                "ICI"
            )
            .aisle(
                "CCC",
                "CGC",
                "CGC",
                "III"
            )

            .where("E", controller.self())
			.where("C", <blockstate:contenttweaker:modular_casing>)
            //.where(" ", CTPredicate.getAir()) // Anything
			.where("G", CTPredicate.blocks(<mia:armored_glass>))
            //.where("S", CTPredicate.liquids(<liquid:sludge>))
            .where("I", CTPredicate.states(<blockstate:contenttweaker:modular_casing>)
            
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .build();
    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("bio_organic_fabricator")
                        .minFluidInputs(1)
                        .maxFluidInputs(2)
                        .minInputs(1)
						.maxInputs(1)
						.minOutputs(1)
                        .maxOutputs(4)
                        .build())
		.withBaseTexture(<contenttweaker:modular_casing>.asBlock().definition.getStateFromMeta(1))
		.buildAndRegister();
// set optional properties
bio_organic_fabricator.hasMaintenanceMechanics = false;
bio_organic_fabricator.hasMufflerMechanics = false;


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
    <metaitem:mbt:bio_organic_fabricator>,
    [
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitEv>,         <ore:cableGtSingleVibrantAlloy>],
        [<gendustry:env_processor>, <contenttweaker:modular_casing>,  <gendustry:genetics_processor>],
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitEv>,         <ore:cableGtSingleVibrantAlloy>]
    ]
);

// Recipes	

//Sheep	
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:sheep_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:mutton> * 2,
			 <minecraft:wool> * 4,
            <ore:lard>.firstItem * 2,
	        <pyrotech:hide_sheep_sheared>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Pig	
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:pig_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:porkchop> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:hide_pig>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Cow
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:cow_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:beef> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:pelt_cow>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Horse
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:horse_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Donkey
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:donkey_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Chicken
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:chicken_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:chicken>,
	         <minecraft:feather> * 2,
             <minecraft:egg>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Parrot
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:parrot_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:chicken>,
	         <minecraft:feather> * 4)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Polar Bear
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:polarbear_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:fish> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 3,
             <pyrotech:pelt_polar_bear>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Rabbit
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:rabbit_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:rabbit> * 1,
	         <minecraft:rabbit_foot> * 1,
            <minecraft:bone> * 1,
             <minecraft:rabbit_hide>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Llama
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:llama_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
             <ore:lard>.firstItem * 2,
             <pyrotech:hide_llama>)
    .duration(500)
    .EUt(250)
.buildAndRegister();

//Nautilus
bio_organic_fabricator.recipeMap.recipeBuilder()
    .inputs(<fossil:nautilus_dna>)
    .fluidInputs(<liquid:distilled_water> * 500)
    .fluidInputs(<liquid:mutagen> * 500)
    .outputs(<fossil:shell>*2,
	         <fossil:bio_goo>*2)
    .duration(500)
    .EUt(250)
.buildAndRegister();