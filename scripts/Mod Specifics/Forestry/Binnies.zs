import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Binnies Script                                                                                                                   //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//The Empty Bottle from Binnies could be used to make Normal Glass Bottles.
recipes.remove(<minecraft:glass_bottle>);

//Growth Medium Rework
<genetics:misc:4>.displayName ="Binnie's Special Growth Medium";
<genetics:misc:4>.addTooltip(format.gray("Not that Efficient, but it works with Forestry!"));

recipes.remove(<genetics:misc:4>);
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustCalcium>*4, <ore:dustSalt>*4, <ore:dustAgar>*4)
    .fluidInputs(<liquid:mutagen>*4000)
    .outputs(<genetics:misc:4>*16)
    .duration(200)
    .EUt(1024)
.buildAndRegister();

//Reinforced Casing
recipes.remove(<genetics:misc:0>);
recipes.addShaped(<genetics:misc:0> * 1, [[<ore:plateStainlessSteel>, <ore:plateDoubleVanadiumSteel>, <ore:plateStainlessSteel>], [<ore:springRunicSteel>, <forestry:flexible_casing>, <ore:springRunicSteel>],[<ore:plateStainlessSteel>, <ore:plateDoubleVanadiumSteel>, <ore:plateStainlessSteel>]]);

// Incubator
recipes.remove(<genetics:lab_machine:2>);
recipes.addShaped(<genetics:lab_machine:2> * 1, [[<ore:plateStainlessSteel>, <ore:gearSmallStainlessSteel>, <ore:plateStainlessSteel>], [<forestry:chipsets:1>, <genetics:misc:0>, <forestry:chipsets:1>],[<ore:gearVanadiumSteel>, <ore:batteryHv>, <ore:gearVanadiumSteel>]]);

// Genepool
recipes.remove(<genetics:lab_machine:3>);
recipes.addShaped(<genetics:lab_machine:3> * 1, [[<ore:plateGreenSapphire>, <gendustry:genetics_processor>, <ore:plateGreenSapphire>], [<forestry:chipsets:1>, <genetics:misc:0>, <forestry:chipsets:1>],[<ore:gearVanadiumSteel>, <ore:batteryHv>, <ore:gearVanadiumSteel>]]);

// Fruit Press
recipes.remove(<extratrees:machine:4>);
recipes.addShaped(<extratrees:machine:4> * 1, [[<ore:plateIron>, <pyrotech:refractory_glass>, <ore:plateIron>], [<ore:plateTreatedWood>, <forestry:sturdy_machine>, <ore:plateTreatedWood>],[<ore:plateTin>, <ore:gearBronze>, <ore:plateTin>]]);

// Brewery
recipes.remove(<extratrees:machine:5>);
recipes.addShaped(<extratrees:machine:5> * 1, [[<ore:gearSmallBronze>, <pyrotech:refractory_glass>, <ore:gearSmallBronze>], [<ore:plateDoubleTinAlloy>, <forestry:sturdy_machine>, <ore:plateDoubleTinAlloy>],[<ore:gearSmallBronze>, <ore:gearBronze>, <ore:gearSmallBronze>]]);

// Distillery
recipes.remove(<extratrees:machine:6>);
recipes.addShaped(<extratrees:machine:6> * 1, [[<ore:plateHoneySteel>, <ore:ringBronze>, <ore:plateHoneySteel>], [<ore:plateDoubleTinAlloy>, <forestry:sturdy_machine>, <ore:plateDoubleTinAlloy>],[<ore:plateHoneySteel>, <ore:gearBronze>, <ore:plateHoneySteel>]]);

