import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         															                                                             //
//			Thermal Foundation Fixes                                                                                                         //
//			         																                                                         //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Resonant Ender Extracting

extractor.recipeBuilder()
    .inputs(<ore:gemEnderPearl>)
    .fluidOutputs(<liquid:ender>*144)
	.duration(150)
	.EUt(100)
.buildAndRegister();

// Coils ==================================================================================

//Redstone Reception Coil
recipes.remove(<thermalfoundation:material:513>);
chemical_bath.recipeBuilder()
    .inputs(<ore:springGold>)
    .fluidInputs(<liquid:red_alloy>*288)
    .outputs(<thermalfoundation:material:513>)
	.duration(160)
	.EUt(650)
.buildAndRegister();

//Redstone Transmission Coil
recipes.remove(<thermalfoundation:material:514>);
chemical_bath.recipeBuilder()
    .inputs(<ore:springSilver>)
    .fluidInputs(<liquid:red_alloy>*288)
    .outputs(<thermalfoundation:material:514>)
	.duration(160)
	.EUt(650)
.buildAndRegister();


//Redstone Conductance Coil
recipes.remove(<thermalfoundation:material:515>);
chemical_bath.recipeBuilder()
    .inputs(<ore:springElectrum>)
    .fluidInputs(<liquid:red_alloy>*288)
    .outputs(<thermalfoundation:material:515>)
	.duration(160)
	.EUt(650)
.buildAndRegister();

// ========================================================================================

// Fixing Thermal Elemental Dusts

//Cryotheum ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

recipes.remove(<thermalfoundation:material:2049>);//Blizz Powder Recipe
recipes.remove(<thermalfoundation:material:1025>);//Cryotheum Recipe

//Blizz Dust
recipes.addShapeless(<ore:dustBlizz>.firstItem * 3, [<ore:rodBlizz>, <ore:gtceMortars>]);

macerator.recipeBuilder()
    .inputs(<ore:rodBlizz>)
    .outputs(<ore:dustBlizz>.firstItem * 4)
	.duration(80)
	.EUt(4)
.buildAndRegister();

//Cryotheum Dust Recipe 
mixer.recipeBuilder()
    .inputs(<ore:dustBlizz>*2, <ore:dustIce>*4)
    .fluidInputs(<liquid:nitrogen_dioxide>*500)
    .outputs(<ore:dustCryotheum>.firstItem*4)
	.duration(240)
	.EUt(120)
.buildAndRegister();

//Liquid Cryotheum
extractor.recipeBuilder()
    .inputs(<ore:dustCryotheum>)
    .fluidOutputs(<liquid:cryotheum>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();

//Petrotheum ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

recipes.remove(<thermalfoundation:material:2053>);//Basalz Powder Recipe
recipes.remove(<thermalfoundation:material:1027>);//Petrotheum Recipe

//Basalz Dust
recipes.addShapeless(<ore:dustBasalz>.firstItem * 3, [<ore:rodBasalz>, <ore:gtceMortars>]);

macerator.recipeBuilder()
    .inputs(<ore:rodBasalz>)
    .outputs(<ore:dustBasalz>.firstItem * 4)
	.duration(80)
	.EUt(4)
.buildAndRegister();

//Petrotheum Dust Recipe 
mixer.recipeBuilder()
    .inputs(<ore:dustBasalz>*2, <ore:dustObsidian>*4)
    .fluidInputs(<liquid:benzene>*500)
    .outputs(<ore:dustPetrotheum>.firstItem*4)
	.duration(240)
	.EUt(120)
.buildAndRegister();

//Liquid Petrotheum
extractor.recipeBuilder()
    .inputs(<ore:dustPetrotheum>)
    .fluidOutputs(<liquid:petrotheum>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();

//Aerotheum ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

recipes.remove(<thermalfoundation:material:2051>);//Blitz Powder Recipe
recipes.remove(<thermalfoundation:material:1026>);//Aerotheum Recipe

//Blitz Dust
recipes.addShapeless(<ore:dustBlitz>.firstItem * 3, [<ore:rodBlitz>, <ore:gtceMortars>]);

macerator.recipeBuilder()
    .inputs(<ore:rodBlitz>)
    .outputs(<ore:dustBlitz>.firstItem * 4)
	.duration(80)
	.EUt(4)
.buildAndRegister();

//Aerotheum Dust Recipe 
mixer.recipeBuilder()
    .inputs(<ore:dustBlitz>*2, <ore:dustSaltpeter>*4)
    .fluidInputs(<liquid:phosphoric_acid>*500)
    .outputs(<ore:dustAerotheum>.firstItem*4)
	.duration(240)
	.EUt(120)
.buildAndRegister();

//Liquid Aerotheum
extractor.recipeBuilder()
    .inputs(<ore:dustAerotheum>)
    .fluidOutputs(<liquid:aerotheum>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();


//Pyrotheum ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

recipes.removeByRecipeName("minecraft:blaze_powder");//Blaze Powder Recipe from Rod
recipes.remove(<thermalfoundation:material:1024>);//Pyortheum Recipe

//Pyrotheum Dust Recipe 
mixer.recipeBuilder()
    .inputs(<ore:dustBlaze>*2, <ore:dustSulfur>*4)
    .fluidInputs(<liquid:polyvinyl_acetate>*500)
    .outputs(<ore:dustPyrotheum>.firstItem*4)
	.duration(240)
	.EUt(120)
.buildAndRegister();

//Liquid Pyrotheum
extractor.recipeBuilder()
    .inputs(<ore:dustPyrotheum>)
    .fluidOutputs(<liquid:pyrotheum>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();

// Liquifacted Coal (Liquid Coal)

extractor.recipeBuilder()
    .inputs(<ore:gemCoal>)
    .fluidOutputs(<liquid:coal>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:dustCoal>)
    .fluidOutputs(<liquid:coal>*250)
	.duration(150)
	.EUt(100)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:coal>*250)
    .notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<ore:gemCoal>.firstItem)
	.duration(250)
	.EUt(32)
.buildAndRegister();

// Mana ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

mixer.recipeBuilder()
    .inputs(<ore:dustPetrotheum>, <ore:dustAerotheum>, <ore:dustPyrotheum>, <ore:dustCryotheum>)
    .fluidInputs(<liquid:liquid_mana>*200)
    .outputs(<ore:dustMana>.firstItem*4)
	.duration(200)
	.EUt(300)
.buildAndRegister();

// Thermal Glass's ======================================================================================================================================

var HardenedGlassesRecipeRemoval as IItemStack[] = [
<thermalfoundation:glass>,
<thermalfoundation:glass:2>,
<thermalfoundation:glass:1>,
<thermalfoundation:glass:3>,
<thermalfoundation:glass:4>,
<thermalfoundation:glass:5>,
<thermalfoundation:glass:6>,
<thermalfoundation:glass:7>,
<thermalfoundation:glass:8>,
<thermalfoundation:glass_alloy>,
<thermalfoundation:glass_alloy:1>,
<thermalfoundation:glass_alloy:2>,
<thermalfoundation:glass_alloy:3>,
<thermalfoundation:glass_alloy:4>,
<thermalfoundation:glass_alloy:5>,
<thermalfoundation:glass_alloy:6>,
<thermalfoundation:glass_alloy:7>
];
for i in HardenedGlassesRecipeRemoval {
recipes.remove(i);
}

//Standart Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustObsidian>)
    .outputs(<thermalfoundation:glass:3>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Copper Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustCopper>)
    .outputs(<thermalfoundation:glass>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Tin Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustTin>)
    .outputs(<thermalfoundation:glass:1>)
    .duration(80)
    .EUt(20)
    .buildAndRegister(); 

//Silver Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustSilver>)
    .outputs(<thermalfoundation:glass:2>)
    .duration(80)
    .EUt(20)
    .buildAndRegister(); 

//Aluminum Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustAluminum>)
    .outputs(<thermalfoundation:glass:4>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Nickel Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustNickel>)
    .outputs(<thermalfoundation:glass:5>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();


//Platinum Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustPlatinum>)
    .outputs(<thermalfoundation:glass:6>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Iridium Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustIridium>)
    .outputs(<thermalfoundation:glass:7>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Mana Infused Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustMithril>)
    .outputs(<thermalfoundation:glass:8>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Steel Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustSteel>)
    .outputs(<thermalfoundation:glass_alloy>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Electrum Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustElectrum>)
    .outputs(<thermalfoundation:glass_alloy:1>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Invar Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustInvar>)
    .outputs(<thermalfoundation:glass_alloy:2>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Bronze Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustBronze>)
    .outputs(<thermalfoundation:glass_alloy:3>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Constantan Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustConstantan>)
    .outputs(<thermalfoundation:glass_alloy:4>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Signalum Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustSignalum>)
    .outputs(<thermalfoundation:glass_alloy:5>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Lumium Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustLumium>)
    .outputs(<thermalfoundation:glass_alloy:6>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

//Enderium Hardened Glass
alloy.recipeBuilder()
    .inputs(<ore:strengthenedGlass>, <ore:dustEnderium>)
    .outputs(<thermalfoundation:glass_alloy:7>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

// Redstone Servo
recipes.remove(<thermalfoundation:material:512>);
recipes.addShaped(<thermalfoundation:material:512> * 1, [[<ore:foilRedAlloy>, <ore:stickIron>, <ore:foilRedAlloy>], [null, <ore:stickLongWroughtIron>, null],[<ore:foilRedAlloy>, <ore:stickIron>, <ore:foilRedAlloy>]]);

//Lumium ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Dust
mixer.recipeBuilder()
    .inputs(<ore:dustTin>*3, <ore:dustSilver>)
    .fluidInputs(<liquid:glowstone>*576)
    .outputs(<ore:dustLumium>.firstItem*4)
    .duration(180)
    .EUt(2030)
.buildAndRegister();

//Signalum ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Dust
mixer.recipeBuilder()
    .inputs(<ore:dustCopper>*3, <ore:dustSilver>)
    .fluidInputs(<liquid:redstone>*1440)
    .outputs(<ore:dustSignalum>.firstItem*4)
    .duration(200)
    .EUt(2030)
.buildAndRegister();

//Enderium ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Dust
mixer.recipeBuilder()
    .inputs(<ore:dustLead>*3, <ore:dustPlatinum>)
    .fluidInputs(<liquid:ender>*576)
    .outputs(<ore:dustEnderium>.firstItem*4)
    .duration(220)
    .EUt(2030)
.buildAndRegister();