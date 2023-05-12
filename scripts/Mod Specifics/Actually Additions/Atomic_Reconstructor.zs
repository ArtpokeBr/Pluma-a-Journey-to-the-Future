import mods.actuallyadditions.AtomicReconstructor as AtomicReconstructor;
import crafttweaker.item.IItemStack;

# Atomic Reconstructor Recipe Removals =====================================


var RemovedFromAtomicReconstructor as IItemStack[] = [
<minecraft:leather>
];
for i in RemovedFromAtomicReconstructor {
AtomicReconstructor.removeRecipe(i);
}

//Glowstone trough Redstone
AtomicReconstructor.addRecipe(<ore:dustGlowstone>.firstItem, <ore:dustRedstone>, 5000);
//Nether Quartz trough Black Quartz
AtomicReconstructor.addRecipe(<ore:gemBlackQuartz>.firstItem, <ore:gemNetherQuartz>, 5000);


# Crystal Clusters Recipes =====================================

//Red
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_redstone>, <actuallyadditions:block_crystal>, 15000);
//Blue
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_lapis>, <actuallyadditions:block_crystal:1>, 15000);
//Light Blue
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_diamond>, <actuallyadditions:block_crystal:2>, 15000);
//Black
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_coal>, <actuallyadditions:block_crystal:3>, 15000);
//Green
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_emerald>, <actuallyadditions:block_crystal:4>, 15000);
//White
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal_cluster_iron>, <actuallyadditions:block_crystal:5>, 15000);


//Glod Crystal Recipe
AtomicReconstructor.addRecipe(<contenttweaker:glod_crystal>, <ore:ingotGold>, 10000);
AtomicReconstructor.addRecipe(<contenttweaker:glod_crystal_block>, <ore:blockGold>, 10000);

//Endor Crystal Recipe
AtomicReconstructor.addRecipe(<contenttweaker:endor_crystal>, <ore:gemEnderPearl>, 10000);
AtomicReconstructor.addRecipe(<contenttweaker:endor_crystal_block>, <ore:blockEnderPearl>, 10000);

# Void Stone (Coal -> Black Quartz)
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:3>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <ore:gemBlackQuartz>.firstItem, 100);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:3>, <ore:blockBlackQuartz>.firstItem, 1000);

//Prismarine with Quartzite
AtomicReconstructor.removeRecipe(<minecraft:prismarine_shard>);
AtomicReconstructor.addRecipe(<ore:gemPrismarine>.firstItem, <ore:gemQuartzite>, 30000);
