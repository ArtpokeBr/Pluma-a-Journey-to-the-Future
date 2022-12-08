

// Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4> * 1, [[null, null, null], [<contenttweaker:industrial_leather>, <ore:ringIron>, <contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>, <ore:springSmallIron>, <contenttweaker:industrial_leather>]]);

// Silicon Armor Plating
recipes.remove(<simplyjetpacks:metaitemmods:3>);
recipes.addShaped(<simplyjetpacks:metaitemmods:3> * 1, [[<ore:plateSilicon>, <ore:plateDoubleSteel>, <ore:plateSilicon>], [<ore:plateDoubleSteel>, <ore:plateSilicon>, <ore:plateDoubleSteel>],[<ore:plateSilicon>, <ore:plateDoubleSteel>, <ore:plateSilicon>]]);

// Flight Control Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:14>);
recipes.addShaped(<simplyjetpacks:metaitemmods:14> * 1, [[<ore:plateDiabolicCarbide>, <ore:plateDoubleElectricalSteel>, <ore:plateDiabolicCarbide>], [<ore:plateDoubleElectricalSteel>, <ore:gearDarkSoularium>, <ore:plateDoubleElectricalSteel>],[<ore:plateDiabolicCarbide>, <ore:plateDoubleElectricalSteel>, <ore:plateDiabolicCarbide>]]);


//Thrusters ======================================================================

// Conductive Iron Thruster
recipes.remove(<simplyjetpacks:metaitemmods:7>);
recipes.addShaped(<simplyjetpacks:metaitemmods:7> * 1, [[<ore:lightPlateConductiveIron>, <enderio:item_basic_capacitor:0>, <ore:lightPlateConductiveIron>], [<ore:springConductiveIron>, <enderio:item_basic_capacitor:0>, <ore:springConductiveIron>],[<ore:gearWood>, <gregtech:meta_item_1:776>, <ore:gearWood>]]);

// Electrical Steel Thruster
recipes.remove(<simplyjetpacks:metaitemmods:8>);
recipes.addShaped(<simplyjetpacks:metaitemmods:8> * 1, [[<ore:lightPlateElectricalSteel>, <enderio:item_basic_capacitor:0>, <ore:lightPlateElectricalSteel>], [<ore:springElectricalSteel>, <enderio:item_basic_capacitor:0>, <ore:springElectricalSteel>],[<ore:gearDarkSteel>, <gregtech:meta_item_1:776>, <ore:gearDarkSteel>]]);

// Energetic Thruster
recipes.remove(<simplyjetpacks:metaitemmods:9>);
recipes.addShaped(<simplyjetpacks:metaitemmods:9> * 1, [[<ore:lightPlateEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:lightPlateEnergeticAlloy>], [<ore:springEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:springEnergeticAlloy>],[<ore:gearAmber>, <gregtech:meta_item_1:776>, <ore:gearAmber>]]);

// Vibrant Thruster
recipes.remove(<simplyjetpacks:metaitemmods:10>);
recipes.addShaped(<simplyjetpacks:metaitemmods:10> * 1, [[<ore:lightPlateVibrantAlloy>, <enderio:item_basic_capacitor:2>, <ore:lightPlateVibrantAlloy>], [<ore:springVibrantAlloy>, <enderio:item_basic_capacitor:2>, <ore:springVibrantAlloy>],[<ore:gearOsgloglas>, <gregtech:meta_item_1:777>, <ore:gearOsgloglas>]]);

//Jetpacks =============================================================================

// Conductive Iron Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:7>);
recipes.addShaped(<simplyjetpacks:itemjetpack:7> * 1, [[<ore:plateConductiveIron>, <enderio:item_basic_capacitor:0>, <ore:plateConductiveIron>], [<ore:plateConductiveIron>, <simplyjetpacks:metaitem:4>, <ore:plateConductiveIron>],[<simplyjetpacks:metaitemmods:7>, null, <simplyjetpacks:metaitemmods:7>]]);


// Electrical Steel Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:8>);
recipes.addShaped(<simplyjetpacks:itemjetpack:8> * 1, [[<ore:plateElectricalSteel>, <enderio:item_basic_capacitor:0>, <ore:plateElectricalSteel>], [<ore:plateElectricalSteel>, <simplyjetpacks:metaitem:4>, <ore:plateElectricalSteel>],[<simplyjetpacks:metaitemmods:8>, null, <simplyjetpacks:metaitemmods:8>]]);

// Energetic Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:9>);
recipes.addShaped(<simplyjetpacks:itemjetpack:9> * 1, [[<ore:plateEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:plateEnergeticAlloy>], [<ore:plateEnergeticAlloy>, <simplyjetpacks:metaitem:4>, <ore:plateEnergeticAlloy>],[<simplyjetpacks:metaitemmods:9>, null, <simplyjetpacks:metaitemmods:9>]]);

// Vibrant Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:10>);
recipes.addShaped(<simplyjetpacks:itemjetpack:10> * 1, [[<ore:plateVibrantAlloy>, <enderio:item_basic_capacitor:2>, <ore:plateVibrantAlloy>], [<ore:plateVibrantAlloy>, <simplyjetpacks:metaitem:4>, <ore:plateVibrantAlloy>],[<simplyjetpacks:metaitemmods:10>, null, <simplyjetpacks:metaitemmods:10>]]);

//Fluxpacks ================================================================================

// Basic Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:1>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:1> * 1, [[<enderio:item_basic_capacitor:0>, <enderio:block_cap_bank:1>, <enderio:item_basic_capacitor:0>], [<ore:springConductiveIron>, <simplyjetpacks:metaitem:4>, <ore:springConductiveIron>],[<ore:plateConductiveIron>, <ore:plateConductiveIron>, <ore:plateConductiveIron>]]);

// Double-Layer Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:2>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:2> * 1, [[<enderio:item_basic_capacitor:1>, <enderio:block_cap_bank:2>, <enderio:item_basic_capacitor:1>], [<ore:springEnergeticAlloy>, <simplyjetpacks:metaitem:4>, <ore:springEnergeticAlloy>],[<ore:plateEnergeticAlloy>, <ore:itemPulsatingCrystal>, <ore:plateEnergeticAlloy>]]);

// Octadic Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:3>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:3> * 1, [[<enderio:item_basic_capacitor:2>, <enderio:block_cap_bank:3>, <enderio:item_basic_capacitor:2>], [<ore:springVibrantAlloy>, <simplyjetpacks:metaitem:4>, <ore:springVibrantAlloy>],[<ore:plateVibrantAlloy>, <ore:itemVibrantCrystal>, <ore:plateVibrantAlloy>]]);


