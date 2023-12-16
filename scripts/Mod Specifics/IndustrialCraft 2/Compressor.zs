#modloaded ic2

# Coal Chunk → Industrial Diamond
compressor.recipeBuilder()
	.inputs(<ic2:crafting:18>)
    .outputs(<ic2:crafting:19>)
	.duration(400)
	.EUt(80)
.buildAndRegister();

# Tiny Plutonium → Plutonium
compressor.recipeBuilder()
	.inputs(<ic2:nuclear:7>*9)
    .outputs(<ic2:nuclear:3>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# Coal Ball → Compressed Coal Ball
compressor.recipeBuilder()
	.inputs(<ic2:crafting:16>)
    .outputs(<ic2:crafting:17>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# Iridium Shard → Iridium Ore
compressor.recipeBuilder()
	.inputs(<ic2:misc_resource:2>*9)
    .outputs(<ic2:misc_resource:1>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# Pellets of MOX Nuclear Fuel → Uranium 235
compressor.recipeBuilder()
	.inputs(<ic2:nuclear:9>)
    .outputs(<ic2:nuclear:1>)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# Energium Dust → Energium Crystal
compressor.recipeBuilder()
	.inputs(<ic2:dust:6>*9)
    .outputs(<ic2:energy_crystal:27>)
	.duration(200)
	.EUt(16)
.buildAndRegister();
