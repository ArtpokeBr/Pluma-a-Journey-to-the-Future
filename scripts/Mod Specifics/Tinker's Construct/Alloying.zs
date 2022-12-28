import mods.tconstruct.Alloy as Alloying;
import mods.enderio.AlloySmelter as AlloySmelter;

//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Alloying Script                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Unwanted Alloying inside of the Smeltery
Alloying.removeRecipe(<liquid:pigiron>);


// Alloying Concrete in the Early Game
Alloying.addRecipe(<liquid:concrete> * 576, [<liquid:water> * 500, <liquid:clay> * 144, <liquid:stone> * 144]);

//Removing and Reading Osgloglas Recipe
Alloying.removeRecipe(<liquid:osgloglas>);

AlloySmelter.addRecipe(<ore:ingotOsgloglas>.firstItem*2, [<ore:ingotRefinedObsidian>, <ore:ingotRefinedGlowstone>, <ore:ingotEnchantedMetal>], 2500, 1.5);

// Fixing Aluminium Brass
Alloying.removeRecipe(<liquid:alubrass>);
Alloying.addRecipe(<liquid:alubrass> * 576, [<liquid:aluminium> * 432, <liquid:copper> * 144]);

AlloySmelter.addRecipe(<ore:ingotAlubrass>.firstItem*4, [<ore:ingotAluminium>*3, <ore:ingotCopper>*1], 2500, 1.5);

