// Terrain Lighter
recipes.remove(<torchmaster:terrain_lighter>);
recipes.addShaped(<torchmaster:terrain_lighter> * 1, [[<randomthings:advancedredstonetorch_on>, <ore:torch>, <randomthings:advancedredstonetorch_on>], [<ore:heavyPlateIron>, <gregtech:machine:1625>, <ore:heavyPlateIron>],[<tconstruct:large_plate>.withTag({Material: "stone"}), <tconstruct:large_plate>.withTag({Material: "stone"}), <tconstruct:large_plate>.withTag({Material: "stone"})]]);

// Dread Lamp
recipes.remove(<torchmaster:dread_lamp>);
recipes.addShaped(<torchmaster:dread_lamp> * 1, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>], [<ore:blockGlassHardened>, <embers:archaic_circuit>, <ore:blockGlassHardened>],[<ore:obsidian>, <projectred-core:resource_item:341>, <ore:obsidian>]]);

// Feral Flare Lantern
recipes.remove(<torchmaster:feral_flare_lantern>);
recipes.addShaped(<torchmaster:feral_flare_lantern> * 1, [[<ore:plateDarkSteel>, <embers:ember_cluster>, <ore:plateDarkSteel>], [<thermalfoundation:glass_alloy:1>, <embers:glimmer_shard>, <thermalfoundation:glass_alloy:1>],[<ore:plateDarkSteel>, <embers:ember_cluster>, <ore:plateDarkSteel>]]);

// Mega Torch
recipes.remove(<torchmaster:mega_torch:0>);
recipes.addShaped(<torchmaster:mega_torch:0> * 1, [[null, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "glowstone", Amount: 20000}, Level: 0 as byte, Lock: 0 as byte}), null], [null, <ore:prehistoricLog>, null],[null, <ore:prehistoricLog>, null]]);

// Frozen Pearl
recipes.remove(<torchmaster:frozen_pearl>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
    .fluidInputs(<liquid:ice> * 576)
    .outputs(<torchmaster:frozen_pearl>)
	.duration(100)
	.EUt(128)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<botania:manaresource:1>)
    .fluidInputs(<liquid:ice> * 576)
    .outputs(<torchmaster:frozen_pearl>*4)
	.duration(120)
	.EUt(128)
.buildAndRegister();