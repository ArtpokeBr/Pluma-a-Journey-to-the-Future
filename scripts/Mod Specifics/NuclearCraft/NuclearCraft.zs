import mods.nuclearcraft.AlloyFurnace as AlloyFurnace;

# Chassis ============================

// Radiation-Proof HSLA Steel Chassis
<nuclearcraft:part:10>.displayName = "Radiation-Proof HSLA Steel Chassis";
recipes.remove(<nuclearcraft:part:10>);

assembler.recipeBuilder()
	.inputs(<thermalexpansion:frame:129>, <ore:springTough>*2, <ore:screwTough>*4)
	.fluidInputs(<liquid:modularium>*1152)
    .circuit(8)
    .outputs(<nuclearcraft:part:10>)
	.duration(280)
	.EUt(256)
.buildAndRegister();

// Radiation-Proof Enderium Chassis
<nuclearcraft:part:12>.displayName = "Radiation-Proof Enderium Chassis";
recipes.remove(<nuclearcraft:part:12>);

assembler.recipeBuilder()
	.inputs(<thermalexpansion:frame:132>, <ore:springHardCarbon>*2, <ore:screwHardCarbon>*4)
	.fluidInputs(<liquid:molten.niobium_titanium>*1152)
    .circuit(8)
    .outputs(<nuclearcraft:part:12>)
	.duration(280)
	.EUt(800)
.buildAndRegister();

// Basic Plating
	recipes.remove(<nuclearcraft:part>);
	recipes.addShapedMirrored("Basic Plating", 
	<nuclearcraft:part> * 4, 
	[[<ore:plateLead>, <ore:casingLead>, <ore:plateLead>],
	[<ore:casingLead>, <ore:blockGraphite>, <ore:casingLead>], 
	[<ore:plateLead>, <ore:casingLead>, <ore:plateLead>]]);

// Copper Solenoid
	recipes.remove(<nuclearcraft:part:4>);
	recipes.addShapedMirrored("Copper Solenoid", 
	<nuclearcraft:part:4> * 4, 
	[[<ore:plateCopper>, <ore:casingCopper>, <ore:plateCopper>],
	[<ore:stickAluminium>, <ore:plateAdvancedAlloy>, <ore:stickAluminium>], 
	[<ore:plateCopper>, <ore:casingCopper>, <ore:plateCopper>]]);

# Alloys =========================

// Tough Alloy
// mixer.recipeBuilder()
// 	.inputs(<thermalexpansion:frame:132>, <ore:springHardCarbon>*2, <ore:screwHardCarbon>*4)
// 	.fluidInputs(<liquid:molten.niobium_titanium>*1152)
//     .circuit(8)
//     .outputs(<nuclearcraft:part:10>)
// 	.duration(280)
// 	.EUt(800)
// .buildAndRegister();


// Hard Carbon
// mixer.recipeBuilder()
// 	.inputs(<thermalexpansion:frame:132>, <ore:springHardCarbon>*2, <ore:screwHardCarbon>*4)
// 	.fluidInputs(<liquid:molten.niobium_titanium>*1152)
//     .circuit(8)
//     .outputs(<nuclearcraft:part:10>)
// 	.duration(280)
// 	.EUt(800)
// .buildAndRegister();
