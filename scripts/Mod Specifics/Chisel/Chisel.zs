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
<contenttweaker:mason_bricks_felsic>,
<contenttweaker:mason_bricks_mafic>,
<contenttweaker:mason_bricks_mixed>,
<contenttweaker:mason_bricks_plain>,
<pyrotech:masonry_brick_block>,
];
for i in Mason {
mods.chisel.Carving.addVariation("mason", i);
}

// Railcraft Integration ===========================================================

### Quarried Stone to Chisel ===============

mods.chisel.Carving.addGroup("Quarried Stone");
var QuarriedStone as IItemStack[] = [
<railcraft:generic:9>,
<railcraft:brick_quarried>,
<railcraft:brick_quarried:1>,
<railcraft:brick_quarried:2>,
<railcraft:brick_quarried:3>,
<railcraft:brick_quarried:4>
];
for i in QuarriedStone {
mods.chisel.Carving.addVariation("Quarried Stone", i);
<ore:stoneQuarried>.add(i);
}

### Abyssal Stone to Chisel ===============

mods.chisel.Carving.addGroup("Abyssal Stone");
var AbyssalStone as IItemStack[] = [
<railcraft:generic:8>,
<railcraft:brick_abyssal>,
<railcraft:brick_abyssal:1>,
<railcraft:brick_abyssal:2>,
<railcraft:brick_abyssal:3>,
<railcraft:brick_abyssal:4>
];
for i in AbyssalStone {
mods.chisel.Carving.addVariation("Abyssal Stone", i);
<ore:stoneAbyssal>.add(i);
}

/*

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

*/

### Bleached Stone to Chisel ===============

mods.chisel.Carving.addGroup("Bleached Stone");
var BleachedStone as IItemStack[] = [
<railcraft:brick_bleachedbone>,
<railcraft:brick_bleachedbone:1>,
<railcraft:brick_bleachedbone:2>,
<railcraft:brick_bleachedbone:3>,
<railcraft:brick_bleachedbone:4>
];
for i in BleachedStone {
mods.chisel.Carving.addVariation("Bleached Stone", i);
<ore:stoneBleached>.add(i);
}

### Blodstained Stone to Chisel ===============

mods.chisel.Carving.addGroup("Blodstained Stone");
var Blodstained as IItemStack[] = [
<railcraft:brick_bloodstained>,
<railcraft:brick_bloodstained:1>,
<railcraft:brick_bloodstained:2>,
<railcraft:brick_bloodstained:3>,
<railcraft:brick_bloodstained:4>
];
for i in Blodstained {
mods.chisel.Carving.addVariation("Blodstained Stone", i);
<ore:stoneBloodstained>.add(i);
}

### Frost Bound to Chisel ===============

mods.chisel.Carving.addGroup("Frost Bound");
var Frostbound as IItemStack[] = [
<railcraft:brick_frostbound>,
<railcraft:brick_frostbound:1>,
<railcraft:brick_frostbound:2>,
<railcraft:brick_frostbound:3>,
<railcraft:brick_frostbound:4>
];
for i in Frostbound {
mods.chisel.Carving.addVariation("Frost Bound", i);
<ore:stoneFrostbound>.add(i);
}

### Infernal Block to Chisel ===============

mods.chisel.Carving.addGroup("Infernal Block");
var InfernalBlock as IItemStack[] = [
<railcraft:brick_infernal>,
<railcraft:brick_infernal:1>,
<railcraft:brick_infernal:2>,
<railcraft:brick_infernal:3>,
<railcraft:brick_infernal:4>
];
for i in InfernalBlock {
mods.chisel.Carving.addVariation("Infernal Block", i);
<ore:stoneInfernal>.add(i);
}

### Sandy Stone to Chisel ===============

mods.chisel.Carving.addGroup("Sandy Stone");
var SandyStone as IItemStack[] = [
<railcraft:brick_sandy>,
<railcraft:brick_sandy:1>,
<railcraft:brick_sandy:2>,
<railcraft:brick_sandy:3>,
<railcraft:brick_sandy:4>
];
for i in SandyStone {
mods.chisel.Carving.addVariation("Sandy Stone", i);
<ore:stoneSandy>.add(i);
}

### Badlands Stone to Chisel ===============

mods.chisel.Carving.addGroup("Badlands Stone");
var RedSandyStone as IItemStack[] = [
<railcraft:brick_red_sandy>,
<railcraft:brick_red_sandy:1>,
<railcraft:brick_red_sandy:2>,
<railcraft:brick_red_sandy:3>,
<railcraft:brick_red_sandy:4>
];
for i in RedSandyStone {
mods.chisel.Carving.addVariation("Badlands Stone", i);
<ore:stoneBadlands>.add(i);
}

### NetherStone to Chisel ===============

mods.chisel.Carving.addGroup("NetherStone");
var NetherStone as IItemStack[] = [
<railcraft:brick_nether:1>,
<railcraft:brick_nether:2>,
<railcraft:brick_nether:3>,
<railcraft:brick_nether:4>
];
for i in NetherStone {
mods.chisel.Carving.addVariation("NetherStone", i);
<ore:stoneNether>.add(i);
}

### RedNetherStone to Chisel ===============

mods.chisel.Carving.addGroup("RedNetherStone");
var RedNetherStone as IItemStack[] = [
<railcraft:brick_red_nether:1>,
<railcraft:brick_red_nether:2>,
<railcraft:brick_red_nether:3>,
<railcraft:brick_red_nether:4>
];
for i in RedNetherStone {
mods.chisel.Carving.addVariation("RedNetherStone", i);
<ore:stoneRedNether>.add(i);
}

### PearlizedBlock to Chisel ===============

mods.chisel.Carving.addGroup("PearlizedBlock");
var PearlizedBlock as IItemStack[] = [
<railcraft:brick_pearlized>,
<railcraft:brick_pearlized:1>,
<railcraft:brick_pearlized:2>,
<railcraft:brick_pearlized:3>,
<railcraft:brick_pearlized:4>
];
for i in PearlizedBlock {
mods.chisel.Carving.addVariation("PearlizedBlock", i);
<ore:stonePearlized>.add(i);
}

# [Cloud]*32 from [Cotton][+2]
recipes.removeByRecipeName("chisel:cloud");
craft.make(<chisel:cloud> * 32, ["pretty",
  "s w s",
  "w C w",
  "s w s"], {
  "s": <ore:string> | <ore:twine> | <ore:cropFlax>, # String
  "w": <ore:wool> | <ore:blockWool>,                # White Wool
  "C": <ore:cropCotton>,                            # Cotton
});