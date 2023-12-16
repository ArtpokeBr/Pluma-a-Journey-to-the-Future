#modloaded ic2

# Hydrated Tin Dust → Iodine
extractor.recipeBuilder()
	.inputs(<ic2:dust:29>)
    .outputs(<ic2:misc_resource:6>)
	.duration(200)
	.EUt(4)
.buildAndRegister();

# Filled Tin Can → Empty Tin Can
extractor.recipeBuilder()
	.inputs(<ic2:filled_tin_can>)
    .outputs(<ic2:crafting:10>)
	.duration(100)
	.EUt(4)
.buildAndRegister();

# Gunpowder → Sulfur Dust
extractor.recipeBuilder()
	.inputs(<minecraft:gunpowder>)
    .outputs(<ore:dustSulfur>.firstItem)
	.duration(150)
	.EUt(500)
.buildAndRegister();
