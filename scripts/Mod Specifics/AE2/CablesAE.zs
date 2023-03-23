import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			AE2 Recipes for the Cables                                                                                                       //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
    .inputs(<ore:crystalPureNetherQuartz>)
    .outputs(<appliedenergistics2:part:140> * 4)
    .duration(80)
    .EUt(12)
.buildAndRegister();

//ME Glass Cable Fluix
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix");
chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:140>)
    .fluidInputs([<liquid:fluix> * 666])
    .outputs(<appliedenergistics2:part:16>)
    .duration(80)
    .EUt(22)
.buildAndRegister();

//ME Covered Cable Fluix
recipes.removeByRecipeName("appliedenergistics2:network/cables/covered_fluix");
assembler.recipeBuilder()
    .circuit(24)
    .inputs(<appliedenergistics2:part:16>)
    .fluidInputs([<liquid:rubber> * 144])
    .outputs(<appliedenergistics2:part:36>)
    .duration(80)
    .EUt(22)
.buildAndRegister();

//ME Smart Cable Fluix
recipes.removeByRecipeName("appliedenergistics2:network/cables/smart_fluix");
assembler.recipeBuilder()
    .circuit(22)
    .inputs(<appliedenergistics2:part:36>, <ore:dustGlowstone>)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<appliedenergistics2:part:56>)
    .duration(120)
    .EUt(22)
.buildAndRegister();

// //ME Dense Covered Cable Fluix (Direct Recipe using Glass Cable)
// assembler.recipeBuilder()
//     .circuit(24)
//     .inputs(<appliedenergistics2:part:16> * 4)
//     .fluidInputs([<liquid:rubber> * 288])
//     .outputs(<appliedenergistics2:part:516>)
//     .duration(100)
//     .EUt(26)
// .buildAndRegister();

//ME Dense Smart Cable Fluix
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_smart_fluix");
assembler.recipeBuilder()
    .circuit(22)
    .inputs(<appliedenergistics2:part:516>, <ore:dustGlowstone>)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<appliedenergistics2:part:76>)
    .duration(120)
    .EUt(22)
.buildAndRegister();

// Conduits ===
recipes.removeByRecipeName("enderio:conduit_m_e_conduit");
recipes.removeByRecipeName("enderio:conduit_m_e_conduit_pure");
recipes.removeByRecipeName("enderio:conduit_m_e_conduit_alt");

recipes.addShaped(<enderio:item_me_conduit>*3, [[<ore:itemConduitBinder>,<ore:itemConduitBinder>, <ore:itemConduitBinder>], [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>], [<ore:itemConduitBinder>,<ore:itemConduitBinder>, <ore:itemConduitBinder>]]);


// The Dense one still has a its default recipe

// === //

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			AE2 Recipes on Chisel                                                                                                            //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//AE2 Cables Cleanup (Normal)
for i in 0 to 16 {
    chemical_bath.recipeBuilder().fluidInputs([<liquid:water> * 250]).inputs(<appliedenergistics2:part>.withDamage(i)).outputs(<appliedenergistics2:part:16>).duration(100).EUt(8).buildAndRegister();
}

//AE2 Cables Cleanup (Covered)
for i in 20 to 36 {
    chemical_bath.recipeBuilder().fluidInputs([<liquid:water> * 250]).inputs(<appliedenergistics2:part>.withDamage(i)).outputs(<appliedenergistics2:part:36>).duration(100).EUt(8).buildAndRegister();
}

//AE2 Cables Cleanup (Dense Covered)
for i in 500 to 516 {
    chemical_bath.recipeBuilder().fluidInputs([<liquid:water> * 250]).inputs(<appliedenergistics2:part>.withDamage(i)).outputs(<appliedenergistics2:part:516>).duration(100).EUt(8).buildAndRegister();
}

//AE2 Cables Cleanup (Dense Smart)
for i in 60 to 76 {
    chemical_bath.recipeBuilder().fluidInputs([<liquid:water> * 250]).inputs(<appliedenergistics2:part>.withDamage(i)).outputs(<appliedenergistics2:part:76>).duration(100).EUt(8).buildAndRegister();
}

//AE2 Cables Cleanup (Smart)
for i in 40 to 56 {
    chemical_bath.recipeBuilder().fluidInputs([<liquid:water> * 250]).inputs(<appliedenergistics2:part>.withDamage(i)).outputs(<appliedenergistics2:part:56>).duration(100).EUt(8).buildAndRegister();
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			AE2 Special Recipes                                                                                                              //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Covered, Smart, Dense Cable conversion recipes
recipes.addShapeless(<appliedenergistics2:part:36> * 4, [<appliedenergistics2:part:516>]);
recipes.addShapeless(<appliedenergistics2:part:56> * 4, [<appliedenergistics2:part:76>]);
recipes.addShaped(<appliedenergistics2:part:76>, [[<appliedenergistics2:part:56>,<appliedenergistics2:part:56>],[<appliedenergistics2:part:56>,<appliedenergistics2:part:56>]]);

// # Dense Smart Cables directly with Redstone and Glowstone
// recipes.removeShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:glowstone_dust>]);
// recipes.addShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>]);
// recipes.addShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:glowstone>]);
