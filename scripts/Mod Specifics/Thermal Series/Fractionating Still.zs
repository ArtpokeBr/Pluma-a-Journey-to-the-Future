import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Refinery as Refinery;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         															                                                             //
//			Fractionating Still Fixes                                                                                                        //
//			         																                                                         //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Fixing Recipes =================

# Naptha Processing
Refinery.removeRecipe(<liquid:refined_oil>);
Refinery.addRecipe(<liquid:refined_fuel> * 100, <ore:dustSulfur>.firstItem%50, <liquid:refined_oil> * 150, 5000);
