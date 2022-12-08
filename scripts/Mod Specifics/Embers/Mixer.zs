import mods.embers.Mixer as Mixer;

Mixer.removeAll();

//Reworking Dawstone
//Mixer.remove(<liquid:dawnstone>*8);
Mixer.add(<liquid:dawnstone>*36, [<liquid:alubrass>*18, <liquid:rose_gold>*18, <liquid:bronze>*18]);

//Dwarven Oil
Mixer.add(<liquid:oil_dwarf>*10, [<liquid:steam>*20, <liquid:oil_soul>*5]);
Mixer.add(<liquid:oil_dwarf>*30, [<liquid:gas_dwarf>*5, <liquid:oil_soul>*10]);

mixer.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000, <liquid:oil_soul>*500)
    .circuit(2)
    .fluidOutputs(<liquid:oil_dwarf>*1000)
	.duration(165)
	.EUt(800)
.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:gas_dwarf>*1000, <liquid:oil_soul>*500)
    .circuit(2)
    .fluidOutputs(<liquid:oil_dwarf>*2500)
	.duration(168)
	.EUt(800)
.buildAndRegister();

//Dwarven Solution
chemreactor.recipeBuilder()
    .inputs(<embers:crystal_ember>)
    .fluidInputs(<liquid:oil_dwarf>*500, <liquid:menril>*500, <liquid:sulfuric_acid>*1000)
    .circuit(2)
    .fluidOutputs(<liquid:dwarven_solution>*2000)
    .duration(160)
    .EUt(250)
.buildAndRegister();