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