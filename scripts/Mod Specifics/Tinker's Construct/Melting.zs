import mods.tconstruct.Melting as Melting;
import mods.tcomplement.Overrides;
import mods.tcomplement.Blacklist;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Tinker's Melting Script                                                                                                          //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//Adding Glass dust to Smelt into Glass
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 144,<ore:dustGlass>);

//Adding Aluminium Gravel to smelt into 3 nuggets of Aluminium
mods.tconstruct.Melting.addRecipe(<liquid:aluminium> * 48,<contenttweaker:aluminiumgravel>, 500);

extractor.recipeBuilder()
    .inputs(<contenttweaker:aluminiumgravel>)
    .fluidOutputs(<liquid:aluminium> * 48)
    .duration(150)
    .EUt(16)
    .buildAndRegister();


//Removing Titanium
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <ore:oreTitanium>.firstItem);
mods.tcomplement.Overrides.removeRecipe(<liquid:titanium>);
mods.tcomplement.Blacklist.removeRecipe(<ore:oreTitanium>.firstItem);

//Fixing Gold
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <ore:oreGold>.firstItem);
mods.tcomplement.Overrides.removeRecipe(<liquid:gold>, <ore:oregold>.firstItem);
mods.tcomplement.Blacklist.removeRecipe(<ore:oregold>.firstItem);

mods.tcomplement.Overrides.addRecipe(<liquid:gold> * 16, <ore:ingotPreciousMetal>.firstItem);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 16, <ore:ingotPreciousMetal>.firstItem);
