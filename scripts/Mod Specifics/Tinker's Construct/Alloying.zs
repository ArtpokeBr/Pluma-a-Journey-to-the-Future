import mods.tconstruct.Alloy as Alloying;
import mods.enderio.AlloySmelter as AlloySmelter;
import mods.nuclearcraft.IngotFormer as IngotFormer;

//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Alloying Script                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Unwanted Alloying inside of the Smeltery
Alloying.removeRecipe(<liquid:pigiron>);
Alloying.removeRecipe(<liquid:steel>);
Alloying.removeRecipe(<liquid:ferroboron>);
Alloying.removeRecipe(<liquid:tough>);
Alloying.removeRecipe(<liquid:hard_carbon>);
Alloying.removeRecipe(<liquid:magnesium_diboride>);
Alloying.removeRecipe(<liquid:lead_platinum>);
Alloying.removeRecipe(<liquid:enderium>);

Alloying.removeRecipe(<liquid:osgloglas>, [<liquid:refinedglowstone>, <liquid:refinedobsidian>, <liquid:osmium>]);
Alloying.removeRecipe(<liquid:osmiridium>, [<liquid:iridium>, <liquid:osmium>]);

// Alloying Concrete in the Early Game
Alloying.addRecipe(<liquid:concrete> * 576, [<liquid:water> * 500, <liquid:clay> * 144, <liquid:stone> * 144]);

//Reading Osgloglas Recipe
AlloySmelter.addRecipe(<ore:ingotOsgloglas>.firstItem*2, [<ore:ingotRefinedObsidian>, <ore:ingotRefinedGlowstone>, <ore:ingotEnchantedMetal>], 2500, 1.5);

// Fixing Aluminium Brass
Alloying.removeRecipe(<liquid:alubrass>);
Alloying.addRecipe(<liquid:alubrass> * 576, [<liquid:aluminium> * 432, <liquid:copper> * 144]);

AlloySmelter.addRecipe(<ore:ingotAlubrass>.firstItem*4, [<ore:ingotAluminium>*3, <ore:ingotCopper>*1], 2500, 1.5);

# Osmiridium cannot be solifified since I couldn't remove the alloying recipe on the smeltery.

<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.ingot>], [<liquid:osmiridium> * 144]).remove();
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.gear.small>], [<liquid:osmiridium> * 144]).remove();
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.plate>], [<liquid:osmiridium> * 144]).remove();
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.gear>], [<liquid:osmiridium> * 576]).remove();
<recipemap:fluid_solidifier>.findRecipe(20, [<metaitem:shape.mold.rotor>], [<liquid:osmiridium> * 576]).remove();
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.nugget>], [<liquid:osmiridium> * 144]).remove();
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.block>], [<liquid:osmiridium> * 1296]).remove();
IngotFormer.removeRecipeWithOutput(<ore:ingotOsmiridium>);



