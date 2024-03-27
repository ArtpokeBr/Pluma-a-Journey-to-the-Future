#modloaded multiblocked
#modloaded extendedcrafting

import mods.extendedcrafting.TableCrafting as ExtendedCrafting;

// Mana Extrapolator
recipes.remove(<pluma:mana_extrapolator:0>);
recipes.addShaped(<pluma:mana_extrapolator:0> * 1, [[<twilightforest:castle_brick:0>, <ore:circuitEv>, <twilightforest:castle_brick:0>], [<ore:quartzMana>, <genetics:misc:0>, <ore:quartzMana>],[<twilightforest:castle_brick:0>, <ore:circuitEv>, <twilightforest:castle_brick:0>]]);

<pluma:mana_extrapolator>.addTooltip(format.white("Capable of " + (format.aqua(("Extrapolating Mana into a Fluid Form") + (format.white(" and vice versa"))))));

// Dwarven Matrix
recipes.remove(<pluma:dwarven_matrix:0>);
recipes.addShaped(<pluma:dwarven_matrix:0> * 1, [[<contenttweaker:fieryplate>, <embers:archaic_circuit>, <contenttweaker:fieryplate>], [<railcraft:firestone_refined>, <embers:archaic_edge>, <railcraft:firestone_refined>],[<contenttweaker:fieryplate>, <embers:archaic_circuit>, <contenttweaker:fieryplate>]]);

<pluma:dwarven_matrix>.addTooltip(format.white("Capable of " + (format.gold(("Manipulate Ember and Fluids") + (format.white(" to reach desirable results."))))));
<pluma:dwarven_matrix>.addTooltip(format.darkPurple(format.bold("Only Works in The Beneath")));

// Ender Molecular Manipulator

ExtendedCrafting.addShaped(2, <pluma:ender_molecular_manipulator>, [
	[<ore:empoweredEndorCrystal>, <ore:platePolytetrafluoroethylene>, <ore:lightPlateEnderium>, <ore:platePolytetrafluoroethylene>, <ore:empoweredEndorCrystal>], 
	[<ore:platePolytetrafluoroethylene>, <ore:circuitEv>, <quantumflux:craftingpiece:3>, <ore:circuitEv>, <ore:platePolytetrafluoroethylene>], 
	[<ore:lightPlateEnderium>, <quantumflux:craftingpiece:3>, <actuallyadditions:block_misc:8>, <quantumflux:craftingpiece:3>, <ore:lightPlateEnderium>], 
	[<ore:platePolytetrafluoroethylene>, <ore:circuitEv>, <quantumflux:craftingpiece:3>, <ore:circuitEv>, <ore:platePolytetrafluoroethylene>], 
	[<ore:empoweredEndorCrystal>, <ore:platePolytetrafluoroethylene>, <ore:lightPlateEnderium>, <ore:platePolytetrafluoroethylene>, <ore:empoweredEndorCrystal>]
]);

<pluma:ender_molecular_manipulator>.addTooltip(format.white("A Machine that Manipulates " + format.darkAqua("Ender Particles" + format.white(" into usefull " + format.green("Results")))));
<pluma:ender_molecular_manipulator>.addTooltip(format.darkPurple(format.bold("Only Works in The End")));

// Time Manipulator
recipes.remove(<pluma:time_manipulator:0>);
recipes.addShaped(<pluma:time_manipulator:0> * 1, [[<ore:stoneAncient>, <ore:lightPlateAluminium>, <ore:stoneAncient>], [<ore:circuitMv>, <contenttweaker:vanadiumsteel_casing:0>, <ore:circuitMv>],[<ore:stoneAncient>, <ore:lightPlateAluminium>, <ore:stoneAncient>]]);

<pluma:time_manipulator>.addTooltip(format.white("A Machine that Manipulates §6Time Itself§f to convert items into their old §2forms§f"));
<pluma:time_manipulator>.addTooltip(format.darkPurple(format.bold("Only Works in Anu's Castle")));

# Removing some Specific Recipes from it
recipes.remove(<embers:blend_caminite>);

// Coke Oven Controller
<pluma:improved_coke_oven>.addTooltip(format.white("An §eElectric§f Version of a §6Coke Oven§f... but much more §aefficient and fast§f!"));
recipes.addShaped(
    <pluma:improved_coke_oven>,
    [
        [<ore:cableGtSingleCopper>,         <ore:circuitMv>,         <ore:cableGtSingleCopper>],
        [<ore:circuitMv>, <gregtech:metal_casing:8>,  <ore:circuitMv>],
        [<ore:cableGtSingleCopper>,         <ore:circuitMv>,         <ore:cableGtSingleCopper>]
    ]
);

// Bio Fabricator Controller
<pluma:bio_fabricator>.addTooltip("A §eMassive Machine§f capable of §aManipulating and Simulating DNA Structures§f.");
recipes.addShaped(
    <pluma:bio_fabricator>,
    [
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitEv>,         <ore:cableGtSingleVibrantAlloy>],
        [<gendustry:env_processor>, <contenttweaker:modular_casing>,  <gendustry:genetics_processor>],
        [<ore:cableGtSingleVibrantAlloy>,         <ore:circuitEv>,         <ore:cableGtSingleVibrantAlloy>]
    ]
);

// Fossil Ore Processing Plant Controller
<pluma:fossil_processing_plant>.addTooltip("A §eMassive Machine§f capable of §aExtracting Materials§f out of §6Fossilized Ores§f.");
recipes.addShaped(
    <pluma:fossil_processing_plant>,
    [
        [<ore:cableGtSingleEnergeticAlloy>, <ore:circuitHv>, <ore:cableGtSingleEnergeticAlloy>],
        [<ore:circuitHv>, <contenttweaker:modular_casing:0>, <ore:circuitHv>],
        [<ore:cableGtSingleEnergeticAlloy>, <ore:circuitHv>, <ore:cableGtSingleEnergeticAlloy>]
    ]

);