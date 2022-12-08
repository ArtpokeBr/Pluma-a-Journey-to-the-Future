import mods.artisanworktables.builder.RecipeBuilder;

//Fixing Draconium =======================================================

<draconicevolution:draconium_dust>.displayName = "Raw Draconium Dust";

chemreactor.recipeBuilder()
    .inputs(<draconicevolution:draconium_dust>, <ore:dustEndstone>)
	.fluidInputs(<liquid:fluoroantimonic_acid> * 550)
    .outputs(<ore:dustDraconium>.firstItem * 3)
    .duration(360)
    .EUt(3000)
.buildAndRegister();

// Potentiometer
recipes.remove(<draconicevolution:potentiometer>);
recipes.addShaped(<draconicevolution:potentiometer> * 1, [[null, <ore:plateTreatedWood>, null], [<ore:ingotRedstoneAlloy>, <extrautils2:redstoneclock>, <ore:ingotRedstoneAlloy>],[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);

//Item Dislocator
recipes.remove(<draconicevolution:magnet>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:heavyPlateNeodymiumMagnetic>, null, <ore:heavyPlateNeodymiumMagnetic>],
    [<ore:dustDraconium>, <botania:magnetringgreater>, <ore:dustDraconium>],
    [<ore:plateDoubleElectricalSteel>, <ore:dustDraconium>, <ore:plateDoubleElectricalSteel>]])
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<draconicevolution:magnet>)
  .create();

// Dislocation Normalization Field Projector
recipes.remove(<draconicevolution:item_dislocation_inhibitor>);
recipes.addShaped(<draconicevolution:item_dislocation_inhibitor> * 1, [[<ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>], [<contenttweaker:titaniumbars>, <draconicevolution:magnet:0>, <contenttweaker:titaniumbars>],[<ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>, <ore:lightPlateStainlessSteel>]]);

// Draconic Core (not yet implemented)
recipes.remove(<draconicevolution:draconic_core>);
