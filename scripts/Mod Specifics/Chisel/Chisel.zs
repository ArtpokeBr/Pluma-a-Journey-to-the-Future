import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Chisel Script                                                                                                                    //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var Limestone as IItemStack[] = [
<pyrotech:limestone>
];
for i in Limestone {
mods.chisel.Carving.addVariation("limestone", i);
}

var Marble as IItemStack[] = [
<gregtech:stone_smooth:2>,
<gregtech:stone_polished:2>,
<gregtech:stone_bricks:2>,
<gregtech:stone_bricks_cracked:2>,
<gregtech:stone_bricks_mossy:2>,
<gregtech:stone_chiseled:2>,
<gregtech:stone_tiled:2>,
<gregtech:stone_tiled_small:2>,
<gregtech:stone_bricks_small:2>,
<gregtech:stone_bricks_square:2>,
<gregtech:stone_windmill_b:2>,
<gregtech:stone_windmill_a:2>
];
for i in Marble {
mods.chisel.Carving.addVariation("marble", i);
}

var Basalt as IItemStack[] = [
<gregtech:stone_smooth:3>,
<gregtech:stone_polished:3>,
<gregtech:stone_bricks:3>,
<gregtech:stone_bricks_cracked:3>,
<gregtech:stone_bricks_mossy:3>,
<gregtech:stone_chiseled:3>,
<gregtech:stone_tiled:3>,
<gregtech:stone_tiled_small:3>,
<gregtech:stone_bricks_small:3>,
<gregtech:stone_bricks_square:3>,
<gregtech:stone_windmill_b:3>,
<gregtech:stone_windmill_a:3>,
];
for i in Basalt {
mods.chisel.Carving.addVariation("basalt", i);
}

var StoneBrick as IItemStack[] = [
<contenttweaker:brick_stone_refined>,
<contenttweaker:fancybrick_stone_refined>,
<contenttweaker:road_stone_refined>,
<contenttweaker:squarebrick_stone_refined>,
];
for i in StoneBrick {
mods.chisel.Carving.addVariation("stonebrick", i);
}

var Mason as IItemStack[] = [
<contenttweaker:masonbricksfelsic>,
<contenttweaker:masonbricksmafic>,
<contenttweaker:masonbricksmixed>,
<contenttweaker:masonbricksplain>,
<pyrotech:masonry_brick_block>,
];
for i in Mason {
mods.chisel.Carving.addVariation("mason", i);
}

// Railcraft Integration ===========================================================

### Quarried Stone to Chisel ===============

mods.chisel.Carving.addGroup("Quarried Stone");
var QuarriedStone as IItemStack[] = [
<railcraft:quarried_stone>,
<railcraft:quarried>,
<railcraft:quarried:1>,
<railcraft:quarried:2>,
<railcraft:quarried:3>,
<railcraft:quarried:4>
];
for i in QuarriedStone {
mods.chisel.Carving.addVariation("Quarried Stone", i);
<ore:stoneQuarried>.add(i);
}

### Abyssal Stone to Chisel ===============

mods.chisel.Carving.addGroup("Abyssal Stone");
var AbyssalStone as IItemStack[] = [
<railcraft:abyssal_stone>,
<railcraft:abyssal>,
<railcraft:abyssal:1>,
<railcraft:abyssal:2>,
<railcraft:abyssal:3>,
<railcraft:abyssal:4>
];
for i in AbyssalStone {
mods.chisel.Carving.addVariation("Abyssal Stone", i);
<ore:stoneAbyssal>.add(i);
}

### Jaded Stone to Chisel ===============

mods.chisel.Carving.addGroup("Jaded Stone");
var JadedStone as IItemStack[] = [
<railcraft:jaded_stone>,
<railcraft:jaded>,
<railcraft:jaded:1>,
<railcraft:jaded:2>,
<railcraft:jaded:3>,
<railcraft:jaded:4>
];
for i in JadedStone {
mods.chisel.Carving.addVariation("Jaded Stone", i);
<ore:stoneJaded>.add(i);
}

### Bleached Stone to Chisel ===============

mods.chisel.Carving.addGroup("Bleached Stone");
var BleachedStone as IItemStack[] = [
<railcraft:bleachedbone>,
<railcraft:bleachedbone:1>,
<railcraft:bleachedbone:2>,
<railcraft:bleachedbone:3>,
<railcraft:bleachedbone:4>
];
for i in BleachedStone {
mods.chisel.Carving.addVariation("Bleached Stone", i);
<ore:stoneBleached>.add(i);
}

### Blodstained Stone to Chisel ===============

mods.chisel.Carving.addGroup("Blodstained Stone");
var Blodstained as IItemStack[] = [
<railcraft:bloodstained>,
<railcraft:bloodstained:1>,
<railcraft:bloodstained:2>,
<railcraft:bloodstained:3>,
<railcraft:bloodstained:4>
];
for i in Blodstained {
mods.chisel.Carving.addVariation("Blodstained Stone", i);
<ore:stoneBloodstained>.add(i);
}

### Frost Bound to Chisel ===============

mods.chisel.Carving.addGroup("Frost Bound");
var Frostbound as IItemStack[] = [
<railcraft:frostbound>,
<railcraft:frostbound:1>,
<railcraft:frostbound:2>,
<railcraft:frostbound:3>,
<railcraft:frostbound:4>
];
for i in Frostbound {
mods.chisel.Carving.addVariation("Frost Bound", i);
<ore:stoneFrostbound>.add(i);
}

### Infernal Block to Chisel ===============

mods.chisel.Carving.addGroup("Infernal Block");
var InfernalBlock as IItemStack[] = [
<railcraft:infernal>,
<railcraft:infernal:1>,
<railcraft:infernal:2>,
<railcraft:infernal:3>,
<railcraft:infernal:4>
];
for i in InfernalBlock {
mods.chisel.Carving.addVariation("Infernal Block", i);
<ore:stoneInfernal>.add(i);
}

### Sandy Stone to Chisel ===============

mods.chisel.Carving.addGroup("Sandy Stone");
var SandyStone as IItemStack[] = [
<railcraft:sandy>,
<railcraft:sandy:1>,
<railcraft:sandy:2>,
<railcraft:sandy:3>,
<railcraft:sandy:4>
];
for i in SandyStone {
mods.chisel.Carving.addVariation("Sandy Stone", i);
<ore:stoneSandy>.add(i);
}

### Badlands Stone to Chisel ===============

mods.chisel.Carving.addGroup("Badlands Stone");
var RedSandyStone as IItemStack[] = [
<railcraft:badlands>,
<railcraft:badlands:1>,
<railcraft:badlands:2>,
<railcraft:badlands:3>,
<railcraft:badlands:4>
];
for i in RedSandyStone {
mods.chisel.Carving.addVariation("Badlands Stone", i);
<ore:stoneBadlands>.add(i);
}

### NetherStone to Chisel ===============

mods.chisel.Carving.addGroup("NetherStone");
var NetherStone as IItemStack[] = [
<railcraft:nether:1>,
<railcraft:nether:2>,
<railcraft:nether:3>,
<railcraft:nether:4>
];
for i in NetherStone {
mods.chisel.Carving.addVariation("NetherStone", i);
<ore:stoneNether>.add(i);
}

### RedNetherStone to Chisel ===============

mods.chisel.Carving.addGroup("RedNetherStone");
var RedNetherStone as IItemStack[] = [
<railcraft:red_nether:1>,
<railcraft:red_nether:2>,
<railcraft:red_nether:3>,
<railcraft:red_nether:4>
];
for i in RedNetherStone {
mods.chisel.Carving.addVariation("RedNetherStone", i);
<ore:stoneRedNether>.add(i);
}

### PearlizedBlock to Chisel ===============

mods.chisel.Carving.addGroup("PearlizedBlock");
var PearlizedBlock as IItemStack[] = [
<railcraft:pearlized>,
<railcraft:pearlized:1>,
<railcraft:pearlized:2>,
<railcraft:pearlized:3>,
<railcraft:pearlized:4>
];
for i in PearlizedBlock {
mods.chisel.Carving.addVariation("PearlizedBlock", i);
<ore:stonePearlized>.add(i);
}

