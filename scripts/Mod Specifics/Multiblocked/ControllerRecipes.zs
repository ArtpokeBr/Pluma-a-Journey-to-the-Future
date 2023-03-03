#modloaded multiblocked
#modloaded extendedcrafting

import mods.extendedcrafting.TableCrafting as ExtendedCrafting;

// Mana Extrapolator
recipes.remove(<mbd:mana_extrapolator:0>);
recipes.addShaped(<mbd:mana_extrapolator:0> * 1, [[<twilightforest:castle_brick:0>, <ore:circuitEv>, <twilightforest:castle_brick:0>], [<ore:quartzMana>, <genetics:misc:0>, <ore:quartzMana>],[<twilightforest:castle_brick:0>, <ore:circuitEv>, <twilightforest:castle_brick:0>]]);

<mbd:mana_extrapolator>.addTooltip(format.white("Capable of " + (format.aqua(("Extrapolating Mana into a Fluid Form") + (format.white(" and vice versa"))))));

// Dwarven Matrix
recipes.remove(<mbd:dwarven_matrix:0>);
recipes.addShaped(<mbd:dwarven_matrix:0> * 1, [[<contenttweaker:fieryplate>, <embers:archaic_circuit>, <contenttweaker:fieryplate>], [<railcraft:firestone_refined>, <embers:archaic_edge>, <railcraft:firestone_refined>],[<contenttweaker:fieryplate>, <embers:archaic_circuit>, <contenttweaker:fieryplate>]]);

<mbd:dwarven_matrix>.addTooltip(format.white("Capable of " + (format.gold(("Manipulate Ember and Fluids") + (format.white(" to reach desirable results."))))));
<mbd:dwarven_matrix>.addTooltip(format.darkPurple(format.bold("Only Works in The Beneath")));

// Ender Molecular Manipulator

ExtendedCrafting.addShaped(2, <mbd:ender_molecular_manipulator>, [
	[<ore:empoweredEndorCrystal>, <ore:platePolytetrafluoroethylene>, <ore:lightPlateEnderium>, <ore:platePolytetrafluoroethylene>, <ore:empoweredEndorCrystal>], 
	[<ore:platePolytetrafluoroethylene>, <ore:circuitEv>, <quantumflux:craftingpiece:3>, <ore:circuitEv>, <ore:platePolytetrafluoroethylene>], 
	[<ore:lightPlateEnderium>, <quantumflux:craftingpiece:3>, <actuallyadditions:block_misc:8>, <quantumflux:craftingpiece:3>, <ore:lightPlateEnderium>], 
	[<ore:platePolytetrafluoroethylene>, <ore:circuitEv>, <quantumflux:craftingpiece:3>, <ore:circuitEv>, <ore:platePolytetrafluoroethylene>], 
	[<ore:empoweredEndorCrystal>, <ore:platePolytetrafluoroethylene>, <ore:lightPlateEnderium>, <ore:platePolytetrafluoroethylene>, <ore:empoweredEndorCrystal>]
]);

<mbd:ender_molecular_manipulator>.addTooltip(format.white("A Machine that Manipulates " + format.darkAqua("Ender Particles" + format.white(" into usefull " + format.green("Results")))));
<mbd:ender_molecular_manipulator>.addTooltip(format.darkPurple(format.bold("Only Works in The End")));

// Time Manipulator
recipes.remove(<mbd:time_manipulator:0>);
recipes.addShaped(<mbd:time_manipulator:0> * 1, [[<ore:stoneAncient>, <ore:lightPlateAluminium>, <ore:stoneAncient>], [<opencomputers:material:4>, <contenttweaker:vanadiumsteel_casing:0>, <opencomputers:material:4>],[<ore:stoneAncient>, <ore:lightPlateAluminium>, <ore:stoneAncient>]]);

<mbd:time_manipulator>.addTooltip(format.white("A Machine that Manipulates §6Time Itself§f to convert items into their old §2forms§f"));
<mbd:time_manipulator>.addTooltip(format.darkPurple(format.bold("Only Works in Anu's Castle")));

# Removing some Specific Recipes from it
recipes.remove(<embers:blend_caminite>);