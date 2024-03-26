// import crafttweaker.block.IBlockState;
// import crafttweaker.item.IIngredient;
// import crafttweaker.item.IItemStack;
// import crafttweaker.world.IBlockPos;
// import crafttweaker.world.IFacing;
// import crafttweaker.world.IWorld;
// import mods.contenttweaker.Random;
// import mods.contenttweaker.World;
// import mods.gregtech.IControllerTile;
// import mods.gregtech.multiblock.Builder;
// import mods.gregtech.multiblock.CTPredicate;
// import mods.gregtech.multiblock.FactoryBlockPattern;
// import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
// import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
// import mods.gregtech.multiblock.functions.IUpdateFormedValidFunction;
// import mods.gregtech.multiblock.IBlockPattern;
// import mods.gregtech.multiblock.RelativeDirection;
// import mods.gregtech.recipe.FactoryRecipeMap;
// import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
// import mods.gregtech.recipe.IRecipe;
// import mods.gregtech.recipe.IRecipeLogic;
// import mods.gregtech.recipe.RecipeMap;
// import crafttweaker.command.ICommandSender;
// import crafttweaker.command.ICommandManager;

// var loc = "mbt:improved_coke_oven";

// val improved_coke_oven = Builder.start(loc)
//     .withPattern(function(controller as IControllerTile) as IBlockPattern {
//                        return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            
//             .aisle(
//                 "DDD",
//                 "IEI",
//                 "CCC"
//             )
//             .aisle(
//                 "DMD",
//                 "I I",
//                 "CCC"
//             )
//             .aisle(
//                 "DDD",
//                 "III",
//                 "CCC"
//             )

//             .where("E", controller.self())
// 			.where("C", CTPredicate.states(<metastate:gregtech:steam_casing:3>))
// 			.where("B", CTPredicate.states(<metastate:gregtech:metal_casing:8>))
//             .where("D", CTPredicate.states(<metastate:gregtech:steam_casing:2>))
//             //.where("J", CTPredicate.states(<metastate:quark:charred_nether_bricks>))

//             .where("M", CTPredicate.states(<metastate:gregtech:steam_casing:3>)
//                                       | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setPreviewCount(1)
//             )              
//             .where("I", CTPredicate.states(<metastate:gregtech:metal_casing:8>)
            
//                                       | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
//                                       | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       //| CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       //| CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setPreviewCount(1)
//                                       | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
//             )              
//             .build();
//     } as IPatternBuilderFunction)
// 	    .withRecipeMap(
// 		FactoryRecipeMap.start("improved_coke_oven")
//                         .minFluidOutputs(1)
//                         .maxFluidOutputs(1)
//                         .minInputs(1)
// 						.maxInputs(1)
// 						.minOutputs(1)
//                         .maxOutputs(1)
//                         .build())
// 		.withBaseTexture(<gregtech:metal_casing>.asBlock().definition.getStateFromMeta(8))
// 		.buildAndRegister();
// // set optional properties
// improved_coke_oven.hasMaintenanceMechanics = false;
// improved_coke_oven.hasMufflerMechanics = true;


// // Where Blocks go
// val getSurround = function (pos as IBlockPos, facing as IFacing) as IBlockPos[] {
//     val center as IBlockPos = pos.getOffset(facing.opposite, 1);
//     return [
//         // Layer 1
//         center.getOffset(IFacing.up(), 1).getOffset(IFacing.north(), 1),
//         center.getOffset(IFacing.up(), 1).getOffset(IFacing.south(), 1),
//         center.getOffset(IFacing.up(), 1).getOffset(IFacing.east(), 1),
//         center.getOffset(IFacing.up(), 1).getOffset(IFacing.west(), 1),
        
//         // Layer 2
//         center.getOffset(IFacing.up(), 2).getOffset(IFacing.north(), 1),
//         center.getOffset(IFacing.up(), 2).getOffset(IFacing.south(), 1),
//         center.getOffset(IFacing.up(), 2).getOffset(IFacing.east(), 1),
//         center.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 1),
        
//         // Layer 3
//         //center.getOffset(IFacing.up(), 3)
//     ] as IBlockPos[];
// };

// val getCenter = function (pos as IBlockPos, facing as IFacing) as IBlockPos[] {
//     val center as IBlockPos = pos.getOffset(facing.opposite, 1);
//     return [
//         center.getOffset(IFacing.up(), 1),
//         center.getOffset(IFacing.up(), 2)
//     ] as IBlockPos[];
// };

// // Controller Recipe
// recipes.addShaped(
//     <metaitem:mbt:improved_coke_oven>,
//     [
//         [<ore:cableGtSingleCopper>,         <ore:circuitMv>,         <ore:cableGtSingleCopper>],
//         [<ore:circuitMv>, <gregtech:metal_casing:8>,  <ore:circuitMv>],
//         [<ore:cableGtSingleCopper>,         <ore:circuitMv>,         <ore:cableGtSingleCopper>]
//     ]
// );

// // Recipes	

// //Coal -> Coke + Creosote 500ml	
// improved_coke_oven.recipeMap.recipeBuilder()
//     .inputs(<ore:coal>)
//     .outputs(<ore:fuelCoke>.firstItem)
//     .fluidOutputs(<liquid:creosote> * 500)
//     .duration(85)
//     .EUt(2)
// .buildAndRegister();

// //Charcoal -> Coke + Creosote 500ml	
// improved_coke_oven.recipeMap.recipeBuilder()
//     .inputs(<ore:gemCharcoal>)
//     .outputs(<ore:fuelCoke>.firstItem)
//     .fluidOutputs(<liquid:creosote> * 500)
//     .duration(85)
//     .EUt(2)
// .buildAndRegister();

// //Lignite Coal -> Coke + Creosote 500ml	
// improved_coke_oven.recipeMap.recipeBuilder()
//     .inputs(<ore:gemLigniteCoal>)
//     .outputs(<ore:fuelCoke>.firstItem)
//     .fluidOutputs(<liquid:creosote> * 500)
//     .duration(85)
//     .EUt(2)
// .buildAndRegister();

// //Wood Logs -> Charcoal + Creosote 50ml	
// improved_coke_oven.recipeMap.recipeBuilder()
//     .inputs(<ore:logWood>)
//     .outputs(<ore:gemCharcoal>.firstItem)
//     .fluidOutputs(<liquid:creosote> * 250)
//     .duration(42)
//     .EUt(2)
// .buildAndRegister();