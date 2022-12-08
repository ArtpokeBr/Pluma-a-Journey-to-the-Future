import mods.advancedrocketry.ArcFurnace as ArcFurnace;

//1. Making Gold Alloy ==========

# Dust'Ingot
alloy.recipeBuilder()
	.inputs(<ore:dustCopper> * 3, <ore:ingotPreciousMetal> * 1)
    .outputs(<ore:ingotGoldAlloy>.firstItem * 4)   
	.duration(100)
	.EUt(30)
.buildAndRegister();

alloy.recipeBuilder()
	.inputs(<ore:ingotCopper> * 3, <ore:dustPreciousMetal> * 1)
    .outputs(<ore:ingotGoldAlloy>.firstItem * 4)   
	.duration(100)
	.EUt(30)
.buildAndRegister();

# Ingot'Ingot
alloy.recipeBuilder()
	.inputs(<ore:ingotCopper> * 3, <ore:ingotPreciousMetal> * 1)
    .outputs(<ore:ingotGoldAlloy>.firstItem * 4)   
	.duration(100)
	.EUt(30)
.buildAndRegister();


# Dust'Dust
alloy.recipeBuilder()
	.inputs(<ore:dustCopper> * 3, <ore:dustPreciousMetal> * 1)
    .outputs(<ore:ingotGoldAlloy>.firstItem * 4)   
	.duration(100)
	.EUt(30)
.buildAndRegister();

# Alternate Recipe for the Arc Furnace from Advanced Rocketry making it possible to use directly Gold if the player wish.

ArcFurnace.addRecipe(<ore:ingotGoldAlloy>.firstItem*4, 400/*ticks*/, 300/*rf/t*/, <ore:ingotCopper>.firstItem*3, <ore:dustGold>.firstItem*1);
ArcFurnace.addRecipe(<ore:ingotGoldAlloy>.firstItem*4, 400/*ticks*/, 300/*rf/t*/, <ore:dustCopper>.firstItem*3, <ore:ingotGold>.firstItem*1);
ArcFurnace.addRecipe(<ore:ingotGoldAlloy>.firstItem*4, 400/*ticks*/, 300/*rf/t*/, <ore:ingotCopper>.firstItem*3, <ore:ingotGold>.firstItem*1);
ArcFurnace.addRecipe(<ore:ingotGoldAlloy>.firstItem*4, 400/*ticks*/, 300/*rf/t*/, <ore:dustCopper>.firstItem*3, <ore:dustGold>.firstItem*1);

//2. Gold Alloy --> Gold Leach ==========

chemreactor.recipeBuilder()
	.inputs(<ore:ingotGoldAlloy>*4)
    .fluidInputs(<liquid:nitric_acid>*1000)
    .outputs(<ore:dustGoldLeach>.firstItem * 4)
    .fluidOutputs(<liquid:nitrogen_dioxide>*1000)
	.duration(80)
	.EUt(30)
.buildAndRegister();

//3. Gold Leach --> Leached Copper ==========

electrolyzer.recipeBuilder()
	.inputs(<ore:dustGoldLeach>*4)
    .fluidInputs(<liquid:hydrogen>*1000)
    .outputs(<ore:dustCopper>.firstItem * 3, <ore:dustTinyGold>.firstItem * 8)
    .fluidOutputs(<liquid:water>*1000)
	.duration(300)
	.EUt(30)
.buildAndRegister();

chemreactor.recipeBuilder()
	.inputs(<ore:dustGoldLeach>*4)
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .outputs(<ore:dustCopperLeach>.firstItem * 4)
    .fluidOutputs(<liquid:chloroauric_acid>*1000)
	.duration(80)
	.EUt(30)
.buildAndRegister();

//3.5 Extra Processes, Potassium Metabisulfite, Leached Copper Processing and also Precious Metal Smelting

sifter.recipeBuilder()
	.inputs(<ore:dustCopperLeach>*4)
    .outputs(<ore:dustCopper>.firstItem * 3)
    .chancedOutput(<ore:dustSilver>.firstItem, 800, 200)
	.chancedOutput(<ore:dustNickel>.firstItem, 1000, 300)
	.chancedOutput(<ore:dustIron>.firstItem, 1200, 400)
	.chancedOutput(<ore:dustLead>.firstItem, 1500, 500)
	.duration(80)
	.EUt(30)
.buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustPotassium>*2, <ore:dustSulfur>*2)
	.circuit(1)
    .fluidInputs(<liquid:oxygen>*5000)
    .outputs(<ore:dustPotassiumMetabisulfite>.firstItem * 9)
	.duration(100)
	.EUt(30)
.buildAndRegister();

furnace.addRecipe(<ore:nuggetGold>.firstItem, <ore:ingotPreciousMetal>);

//4. Chloroauric Acid --> Gold

chemreactor.recipeBuilder()
	.notConsumable(<ore:dustPotassiumMetabisulfite>)
    .fluidInputs(<liquid:chloroauric_acid>*1000)
    .outputs(<ore:dustGold>.firstItem * 4)
    .fluidOutputs(<liquid:water>*1000, <liquid:chlorine>*1000)
	.duration(80)
	.EUt(30)
.buildAndRegister();

// Also making it possible to make Nitric Oxide in LV by using directly Oxygen

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000, <liquid:nitrogen>*1000)
    .circuit(3)
    .fluidOutputs(<liquid:nitric_oxide>*1000)
	.duration(400)
	.EUt(32)
.buildAndRegister();

