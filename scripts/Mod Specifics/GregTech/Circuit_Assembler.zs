// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// //			         																														 //
// //			GregTech Circuit Rebalance Script                                                                                                //
// //			         																													 	 //
// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// SOC Best Circuits Rebalance

# Microprocessor with SOC used to be done in an EV Cleanroom Environment

<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:soldering_alloy> * 72]).remove();
<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:tin> * 144]).remove();

circuit_assembler.recipeBuilder()
    .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2)
    .property("cleanroom", "cleanroom")
    .outputs(<gregtech:meta_item_1:627>*6)
    .duration(400)
    .EUt(512)
.buildAndRegister();

// === //

# Integrated Processor with SOC used to be done in an IV Cleanroom Environment

<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4], [<liquid:soldering_alloy> * 72]).remove();
<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4], [<liquid:tin> * 144]).remove();

circuit_assembler.recipeBuilder()
    .inputs(<metaitem:circuit_board.plastic>, <metaitem:plate.system_on_chip>, <metaitem:wireFineRedAlloy> * 4, <metaitem:boltAnnealedCopper> * 4)
    .property("cleanroom", "cleanroom")
    .outputs(<gregtech:meta_item_1:628>*4)
    .duration(400)
    .EUt(512)
.buildAndRegister();

// === //