import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.appliedenergistics2.Inscriber;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			AE2 Presses Recipes                                                                                                              //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var Clearing_the_Inscriber as IItemStack[] = [
<appliedenergistics2:material:20>,
<appliedenergistics2:material:16>,
<appliedenergistics2:material:17>,
<appliedenergistics2:material:18>,
<appliedenergistics2:material:19>,
<appliedenergistics2:material:15>,
<appliedenergistics2:material:14>,
<appliedenergistics2:material:13>,
<appliedenergistics2:material:22>,
<appliedenergistics2:material:23>,
<appliedenergistics2:material:24>
];
for i in Clearing_the_Inscriber {
Inscriber.removeRecipe(i);
}

var AE2PressesDupe as IItemStack[] = [
<contenttweaker:inscriber_operation_press>,
<contenttweaker:inscriber_estimation_press>,
<contenttweaker:inscriber_methodology_press>,
<contenttweaker:inscriber_scheduling_press>,
<contenttweaker:inscriber_parallel_press>,
<contenttweaker:inscriber_speculative_press>,
<appliedenergistics2:material:13>,
<appliedenergistics2:material:14>,
<appliedenergistics2:material:15>,
<appliedenergistics2:material:19>,
<appliedenergistics2:material:21>,
<contenttweaker:inscriber_clearance_press>
];
for i in AE2PressesDupe {
mods.chisel.Carving.addVariation("AE2_Presses", i);
forming.recipeBuilder()
    .inputs(<ore:plateDenseSilver>, i)
    .outputs(i * 2)
    .duration(400)
    .EUt(100)
.buildAndRegister();
}

// // Adding the Blank one too
// mods.chisel.Carving.addVariation("AE2_Presses", <contenttweaker:inscriber_blank_press>);

// var AE2BlankPress as IItemStack[] = [
// <ore:dustAbyssalStone>.firstItem,
// <ore:dustDreadStone>.firstItem,
// <ore:dustAbyssalniteStone>.firstItem,
// <ore:dustOmotholStone>.firstItem
// ];
// for i in AE2BlankPress {
// forming.recipeBuilder()
//     .inputs(<ore:plateTitaniumIridium>, i, <ore:foilTerrasteel>*2, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]})*4)
//     .outputs(<contenttweaker:inscriber_blank_press>)
//     .duration(400)
//     .EUt(1200)
// .buildAndRegister();
// }

// Printed Operation Processor
engraver.recipeBuilder()
	.inputs(<ore:ingotMithril>)
    .notConsumable(<contenttweaker:inscriber_operation_press>)
    .outputs(<contenttweaker:printed_operation_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Estimation Processor
engraver.recipeBuilder()
	.inputs(<ore:ingotPolyvinylButyral>)
    .notConsumable(<contenttweaker:inscriber_estimation_press>)
    .outputs(<contenttweaker:printed_estimation_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Methodology Processor
engraver.recipeBuilder()
	.inputs(<ore:ingotTungstenSteel>)
    .notConsumable(<contenttweaker:inscriber_methodology_press>)
    .outputs(<contenttweaker:printed_methodolgy_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Scheduling Processor
engraver.recipeBuilder()
	.inputs(<ore:ingotAwakenedDraconium>)
    .notConsumable(<contenttweaker:inscriber_scheduling_press>)
    .outputs(<contenttweaker:printed_scheduling_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Parallel Processor
engraver.recipeBuilder()
	.inputs(<threng:material>)
    .notConsumable(<contenttweaker:inscriber_parallel_press>)
    .outputs(<contenttweaker:inscriber_parallel_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Speculative Processor
engraver.recipeBuilder()
	.inputs(<threng:material:13>)
    .notConsumable(<contenttweaker:inscriber_speculative_press>)
    .outputs(<contenttweaker:inscriber_speculative_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// Printed Logic Processor
engraver.recipeBuilder()
	.inputs(<ore:ingotGold>)
    .notConsumable(<appliedenergistics2:material:15>)
    .outputs(<appliedenergistics2:material:18>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(512)
.buildAndRegister();

// Printed Engineering Processor
engraver.recipeBuilder()
	.inputs(<ore:gemDiamond>)
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs(<appliedenergistics2:material:17>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(512)
.buildAndRegister();

// Printed Calculation Processor
engraver.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz>)
    .notConsumable(<appliedenergistics2:material:13>)
    .outputs(<appliedenergistics2:material:16>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(512)
.buildAndRegister();

// Printed Silicon
engraver.recipeBuilder()
	.inputs(<ore:ingotSilicon>)
    .notConsumable(<appliedenergistics2:material:19>)
    .outputs(<appliedenergistics2:material:20>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(512)
.buildAndRegister();

// Printed Clearence
engraver.recipeBuilder()
	.inputs(<ore:ingotElementium>)
    .notConsumable(<contenttweaker:inscriber_clearance_press>)
    .outputs(<contenttweaker:printed_clearance_circuit>*2)
	.property("cleanroom", "cleanroom")
	.duration(275)
	.EUt(1100)
.buildAndRegister();

// ================================================================ //

circuit_assembler.recipeBuilder().inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<appliedenergistics2:material:23>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<appliedenergistics2:material:24>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<appliedenergistics2:material:22>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:printed_operation_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<contenttweaker:operation_processor>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:printed_estimation_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<contenttweaker:estimation_processor>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:printed_methodolgy_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<contenttweaker:methodology_processor>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:printed_clearance_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<contenttweaker:clearance_processor>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:printed_scheduling_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<contenttweaker:scheduling_processor>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:inscriber_parallel_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<threng:material:6>).property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
circuit_assembler.recipeBuilder().inputs(<contenttweaker:inscriber_speculative_circuit>, <appliedenergistics2:material:20>, <ore:dustRedstone>).fluidInputs(<liquid:super_glue> * 100).outputs(<threng:material:14>) .property("cleanroom", "cleanroom").duration(100).EUt(512).buildAndRegister();
