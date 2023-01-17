// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// //			         																														 //
// //			GregTech Circuit Assembler Script                                                                                                //
// //			         																													 	 //
// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// //Removing Unwanted Diode Recipes ===========================================================================================================

// // Diode * 2
// <recipemap:assembler>.findRecipe(30, [<metaitem:wireFineCopper> * 4, <metaitem:wafer.silicon>], [<liquid:glass> * 288]).remove();
// // Diode * 8
// <recipemap:assembler>.findRecipe(30, [<metaitem:wireFineAnnealedCopper> * 4, <metaitem:wafer.silicon>], [<liquid:plastic> * 144]).remove();
// // Diode * 4
// <recipemap:assembler>.findRecipe(30, [<metaitem:wireFineCopper> * 4, <metaitem:wafer.silicon>], [<liquid:plastic> * 144]).remove();


// //Microprocessor Rebalance ==============================================

// // Microprocessor * 6 (EV Recipe 1)
// <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:tin> * 144]).remove();
// // Microprocessor * 6 (EV Recipe 2)
// <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:soldering_alloy> * 72]).remove();
// // Microprocessor * 3 (MV Recipe 1)
// <recipemap:circuit_assembler>.findRecipe(60, [<metaitem:circuit_board.plastic>, <metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:wireFineCopper> * 2], [<liquid:tin> * 144]).remove();
// // Microprocessor * 3 (MV Recipe 2)
// <recipemap:circuit_assembler>.findRecipe(60, [<metaitem:circuit_board.plastic>, <metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:wireFineCopper> * 2], [<liquid:soldering_alloy> * 72]).remove();


// //Readding the Microprocessor recipe
// circuit_assembler.recipeBuilder()
//     .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2)
//     .fluidInputs(<liquid:tin> * 144)
//     .outputs(<gregtech:meta_item_1:627>*6)
// 	.duration(80)
// 	.EUt(128)
// .buildAndRegister();

// circuit_assembler.recipeBuilder()
//     .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2)
//     .fluidInputs(<liquid:soldering_alloy> * 72)
//     .outputs(<gregtech:meta_item_1:627>*6)
// 	.duration(80)
// 	.EUt(128)
// .buildAndRegister();


// //Integrated Processor Rebalance ==============================================

// // Integrated Processor * 4 (IV Recipe 1)
// <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4], [<liquid:tin> * 144]).remove();
// // Integrated Processor * 4 (IV Recipe 2)
// <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4], [<liquid:soldering_alloy> * 72]).remove();
// // Integrated Processor * 2 (MV Recipe 1)
// <recipemap:circuit_assembler>.findRecipe(60, [<metaitem:circuit_board.plastic>, <metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <metaitem:wireFineRedAlloy> * 4], [<liquid:tin> * 144]).remove();
// // Integrated Processor * 2 (MV Recipe 2)
// <recipemap:circuit_assembler>.findRecipe(60, [<metaitem:circuit_board.plastic>, <metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <metaitem:wireFineRedAlloy> * 4], [<liquid:soldering_alloy> * 72]).remove();


// //Readding the Microprocessor recipe
// circuit_assembler.recipeBuilder()
//     .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4, <gregtech:meta_item_1:627>)
//     .fluidInputs(<liquid:tin> * 144)
//     .outputs(<gregtech:meta_item_1:628>*4)
// 	.duration(160)
// 	.EUt(128)
// .buildAndRegister();

// circuit_assembler.recipeBuilder()
//     .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4, <gregtech:meta_item_1:627>)
//     .fluidInputs(<liquid:soldering_alloy> * 72)
//     .outputs(<gregtech:meta_item_1:628>*4)
// 	.duration(160)
// 	.EUt(128)
// .buildAndRegister();