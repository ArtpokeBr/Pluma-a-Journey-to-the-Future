import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Multiblcked Basic Hatches and Buses Recipes

var MBDInputs as IIngredient[IItemStack] = {
    <multiblocked:item_input>: <ore:chestWood>,
    <multiblocked:fluid_input>: <enderio:block_tank>,
    <multiblocked:energy_input>: <metaitem:voltage_coil.lv>,
};
for IItemStack, IIngredient in MBDInputs {

        # Glue
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:glue> * 500)
            .circuit(1)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

        # Polyethylene
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:plastic> * 288)
            .circuit(1)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

        # Polytetrafluoroethylene
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
            .circuit(1)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

      # Polybenzimidazole (PBI)
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:polybenzimidazole> * 18)
            .circuit(1)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();
             
}

var MBDOutputs as IIngredient[IItemStack] = {
    <multiblocked:item_output>: <ore:chestWood>,
    <multiblocked:fluid_output>: <enderio:block_tank>,
    <multiblocked:energy_output>: <metaitem:voltage_coil.lv>,
};
for IItemStack, IIngredient in MBDOutputs {

        # Glue
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:glue> * 500)
            .circuit(2)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

        # Polyethylene
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:plastic> * 288)
            .circuit(2)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

        # Polytetrafluoroethylene
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
            .circuit(2)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();

      # Polybenzimidazole (PBI)
		<recipemap:assembler>.recipeBuilder()
			.inputs(<gregtech:metal_casing:4>/*Solid Steel Casing*/, IIngredient)
            .fluidInputs(<liquid:polybenzimidazole> * 18)
            .circuit(2)
			.outputs(IItemStack)
			.duration(300)
			.EUt(30)
		.buildAndRegister();
             
}

# Entity Hatch
recipes.addShaped(<multiblocked:entity>, [[null, <enderio:item_soul_vial>, null],[<bloodmagic:monster_soul:*>, <gregtech:machine:1598>, <bloodmagic:monster_soul:*>], [null, <enderio:item_soul_vial>, null]]);
