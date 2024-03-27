// import mods.gregtech.multiblock.Builder;
// import mods.gregtech.multiblock.FactoryBlockPattern;
// import mods.gregtech.multiblock.RelativeDirection;
// import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
// import mods.gregtech.IControllerTile;
// import mods.gregtech.multiblock.CTPredicate;
// import mods.gregtech.multiblock.IBlockPattern;
// import mods.gregtech.recipe.FactoryRecipeMap;
// import mods.gregtech.recipe.RecipeMap;


// var loc = "mbt:fossil_processing_plant";

// val fossil_processing_plant = Builder.start(loc)
//     .withPattern(function(controller as IControllerTile) as IBlockPattern {
//                        return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
//             .aisle(
//                 "III",
//                 "CEC", 
//                 "III"
//             )
//             .aisle(
//                 "ITI",
//                 "TST", 
//                 "ICI"
//             ).setRepeatable(3)
//             .aisle(
//                 "III",
//                 "CCC", 
//                 "III"
//             )


//             .where("E", controller.self())
// 			.where("C", <blockstate:contenttweaker:modular_casing>)
//             .where("T", <blockstate:gregtech:transparent_casing>)
// 			.where("S", CTPredicate.blocks(<metastate:chisel:technical>.block/*<metastate:advancedrocketry:sawblade>.block*/))
//             .where("I", CTPredicate.states(<blockstate:contenttweaker:modular_casing>)

//                                       | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
//                                       | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
//             )              
//             .build();
//     } as IPatternBuilderFunction)
// 	    .withRecipeMap(
// 		FactoryRecipeMap.start("fossil_processing_plant")
//                         .minInputs(1)
// 						.maxInputs(1)
//                         .minFluidInputs(1)
//                         .maxFluidInputs(1)
// 						.minOutputs(1)
//                         .maxOutputs(6)
//                         .build())
// 		.withBaseTexture(<contenttweaker:modular_casing>.asBlock().definition.getStateFromMeta(1))
// 		.buildAndRegister();
// // set optional properties
// fossil_processing_plant.hasMaintenanceMechanics = false;
// fossil_processing_plant.hasMufflerMechanics = false;

// // Controller Recipe
// recipes.addShaped(
//     <metaitem:mbt:fossil_processing_plant>,
//     [
//         [<ore:cableGtSingleEnergeticAlloy>, <ore:circuitHv>, <ore:cableGtSingleEnergeticAlloy>],
//         [<ore:circuitHv>, <contenttweaker:modular_casing:0>, <ore:circuitHv>],
//         [<ore:cableGtSingleEnergeticAlloy>, <ore:circuitHv>, <ore:cableGtSingleEnergeticAlloy>]
//     ]

// );

// // Recipes	

// //Main Recipe
// fossil_processing_plant.recipeMap.recipeBuilder()
//     .duration(300)
//     .EUt(120)
//     .inputs(<ore:oreBasaltFossil>)
//     .fluidInputs(<liquid:distilled_water>*1000)
//     .outputs(<ore:dustFossil>.firstItem*4)
// 	.chancedOutput(<fossil:biofossil>, 5000, 1000)
// 	.chancedOutput(<fossil:plant_fossil>, 5000, 1000)
// 	.chancedOutput(<fossil:skull_block>, 2500, 1500)
// 	.chancedOutput(<fossil:relic_scrap>, 2000, 500)
//     .chancedOutput(<fossil:scarab_gem>, 100, 400)
// .buildAndRegister();
