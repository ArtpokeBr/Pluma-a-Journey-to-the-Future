#modloaded ic2

//import mods.ic2.Macerator;

/*
 * Arguments: output, input
 *   - IItemStack output
 *   - IIngredient input
 * Macerator.addRecipe(<gregtech:meta_item_1:440>, <ic2:crop_res:5>*32); 
*/

# Weed -> Bio Chaff
macerator.recipeBuilder()
	.inputs(<ic2:crop_res:5>*32)
    .outputs(<gregtech:meta_item_1:440>)
	.duration(200)
	.EUt(8)
.buildAndRegister();

# Stone -> Cobblestone
macerator.recipeBuilder()
	.inputs(<minecraft:stone>)
    .outputs(<minecraft:cobblestone>)
	.duration(100)
	.EUt(8)
.buildAndRegister();

# Sandstone -> Sand
macerator.recipeBuilder()
	.inputs(<minecraft:sandstone>)
    .outputs(<minecraft:sand>)
	.duration(100)
	.EUt(8)
.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<minecraft:sandstone:1>)
    .outputs(<minecraft:sand>)
	.duration(100)
	.EUt(8)
.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<minecraft:sandstone:2>)
    .outputs(<minecraft:sand>)
	.duration(100)
	.EUt(8)
.buildAndRegister();

# Empty Fuel Rod -> Iron Dust
macerator.recipeBuilder()
	.inputs(<ic2:crafting:9>)
    .outputs(<ore:dustIron>.firstItem)
	.duration(200)
	.EUt(8)
.buildAndRegister();

# Empty Tin Can -> Iron Dust
macerator.recipeBuilder()
	.inputs(<ic2:crafting:10>*2)
    .outputs(<ore:dustTin>.firstItem)
	.duration(200)
	.EUt(8)
.buildAndRegister();

# Energy Crystal -> Energium Dust
macerator.recipeBuilder()
	.inputs(<ic2:energy_crystal:27>)
    .outputs(<ic2:dust:6>*9)
	.duration(200)
	.EUt(16)
.buildAndRegister();

# Coffe Beans -> Coffe Dust
macerator.recipeBuilder()
	.inputs(<ic2:crop_res>)
    .outputs(<ic2:crop_res:1>*3)
	.duration(100)
	.EUt(8)
.buildAndRegister();

# Poisonous Potato -> Grin Dust
macerator.recipeBuilder()
	.inputs(<minecraft:poisonous_potato>)
    .outputs(<ic2:crop_res:3>)
	.duration(100)
	.EUt(16)
.buildAndRegister();

# Spider Eye -> Grin Dust
macerator.recipeBuilder()
	.inputs(<ore:spiderEye>)
    .outputs(<ic2:crop_res:3>*2)
	.duration(100)
	.EUt(16)
.buildAndRegister();
