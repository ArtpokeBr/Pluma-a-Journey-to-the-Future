// Atomic Reconstructor Recipe Removals =====================================

mods.actuallyadditions.atomicReconstructor.removeByOutput(item('minecraft:leather'))

//Nether Quartz trough Black Quartz
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('gemNetherQuartz'))
    .output(ore('gemBlackQuartz').first)
    .energy(5000)
    .register()


// Crystal Clusters Recipes =====================================

//Red
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal'))
    .output(item('actuallyadditions:block_crystal_cluster_redstone'))
    .energy(15000)
    .register()
//Blue
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal:1'))
    .output(item('actuallyadditions:block_crystal_cluster_lapis'))
    .energy(15000)
    .register()
//Light Blue
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal:2'))
    .output(item('actuallyadditions:block_crystal_cluster_diamond'))
    .energy(15000)
    .register()
//Black
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal:3'))
    .output(item('actuallyadditions:block_crystal_cluster_coal'))
    .energy(15000)
    .register()
//Green
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal:4'))
    .output(item('actuallyadditions:block_crystal_cluster_emerald'))
    .energy(15000)
    .register()
//White
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(item('actuallyadditions:block_crystal:5'))
    .output(item('actuallyadditions:block_crystal_cluster_iron'))
    .energy(15000)
    .register()


//Glod Crystal Recipe
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('ingotGold'))
    .output(item('contenttweaker:glod_crystal'))
    .energy(10000)
    .register()
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('blockGold'))
    .output(item('contenttweaker:glod_crystal_block'))
    .energy(10000)
    .register()

//Endor Crystal Recipe
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('gemEnderPearl'))
    .output(item('contenttweaker:endor_crystal'))
    .energy(10000)
    .register()
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('blockEnderPearl'))
    .output(item('contenttweaker:endor_crystal_block'))
    .energy(10000)
    .register()

// Void Stone (Coal -> Black Quartz)
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:block_crystal:3'))
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:item_crystal:3'))
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('gemBlackQuartz').first)
    .output(item('actuallyadditions:item_crystal:3'))
    .energy(100)
    .register()
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('blockBlackQuartz').first)
    .output(item('actuallyadditions:block_crystal:3'))
    .energy(1000)
    .register()

//Prismarine with Quartzite
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('minecraft:prismarine_shard'))
mods.actuallyadditions.atomicReconstructor.recipeBuilder()
    .input(ore('gemQuartzite'))
    .output(ore('gemPrismarine').first)
    .energy(30000)
    .register()
