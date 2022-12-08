import crafttweaker.item.IItemStack;

////////////////////////////////////////////////////////////
//			Special OreDicts for Many Scripts             //
////////////////////////////////////////////////////////////

# Wood OreDicts ==============================================

var OakPlanks as IItemStack[] = [
<minecraft:planks>,
<biomesoplenty:planks_0>,
<chisel:planks-oak>,
<chisel:planks-oak:1>,
<chisel:planks-oak:2>,
<chisel:planks-oak:3>,
<chisel:planks-oak:4>,
<chisel:planks-oak:5>,
<chisel:planks-oak:6>,
<chisel:planks-oak:7>,
<chisel:planks-oak:8>,
<chisel:planks-oak:9>,
<chisel:planks-oak:10>,
<chisel:planks-oak:11>,
<chisel:planks-oak:12>,
<chisel:planks-oak:13>,
<chisel:planks-oak:14>,
<forestry:planks.vanilla.fireproof.0>,
<quark:vertical_planks>,
//<advancedrocketry:planks>,
<biomesoplenty:planks_0:1>,
<biomesoplenty:planks_0:2>,
<biomesoplenty:planks_0:3>,
<biomesoplenty:planks_0:4>,
<biomesoplenty:planks_0:5>,
<biomesoplenty:planks_0:6>,
<biomesoplenty:planks_0:7>,
<biomesoplenty:planks_0:8>,
<biomesoplenty:planks_0:9>,
<biomesoplenty:planks_0:10>,
<biomesoplenty:planks_0:11>,
<biomesoplenty:planks_0:12>,
<biomesoplenty:planks_0:13>,
<biomesoplenty:planks_0:14>,
<biomesoplenty:planks_0:15>,
<forestry:planks.0>,
<forestry:planks.0:1>,
<forestry:planks.0:2>,
<forestry:planks.0:3>,
<forestry:planks.0:4>,
<forestry:planks.0:5>,
<forestry:planks.0:6>,
<forestry:planks.0:7>,
<forestry:planks.0:8>,
<forestry:planks.0:9>,
<forestry:planks.0:10>,
<forestry:planks.0:11>,
<forestry:planks.0:12>,
<forestry:planks.0:13>,
<forestry:planks.0:14>,
<forestry:planks.0:15>,
<forestry:planks.1>,
<forestry:planks.1:1>,
<forestry:planks.1:2>,
<forestry:planks.1:3>,
<forestry:planks.1:4>,
<forestry:planks.1:5>,
<forestry:planks.1:6>,
<forestry:planks.1:7>,
<forestry:planks.1:8>,
<forestry:planks.1:9>,
<forestry:planks.1:10>,
<forestry:planks.1:11>,
<forestry:planks.1:12>,
<forestry:planks.fireproof.0>,
<forestry:planks.fireproof.0:1>,
<forestry:planks.fireproof.0:2>,
<forestry:planks.fireproof.0:3>,
<forestry:planks.fireproof.0:4>,
<forestry:planks.fireproof.0:5>,
<forestry:planks.fireproof.0:6>,
<forestry:planks.fireproof.0:7>,
<forestry:planks.fireproof.0:8>,
<forestry:planks.fireproof.0:9>,
<forestry:planks.fireproof.0:10>,
<forestry:planks.fireproof.0:11>,
<forestry:planks.fireproof.0:12>,
<forestry:planks.fireproof.0:13>,
<forestry:planks.fireproof.0:14>,
<forestry:planks.fireproof.0:15>,
<forestry:planks.fireproof.1>,
<forestry:planks.fireproof.1:1>,
<forestry:planks.fireproof.1:2>,
<forestry:planks.fireproof.1:3>,
<forestry:planks.fireproof.1:4>,
<forestry:planks.fireproof.1:5>,
<forestry:planks.fireproof.1:6>,
<forestry:planks.fireproof.1:7>,
<forestry:planks.fireproof.1:8>,
<forestry:planks.fireproof.1:9>,
<forestry:planks.fireproof.1:10>,
<integrateddynamics:menril_planks>,
<mysticalworld:charred_planks>,
<natura:overworld_planks>,
<natura:overworld_planks:1>,
<natura:overworld_planks:2>,
<natura:overworld_planks:3>,
<natura:overworld_planks:4>,
<natura:overworld_planks:5>,
<natura:overworld_planks:6>,
<natura:overworld_planks:7>,
<natura:overworld_planks:8>,
<natura:nether_planks>,
<natura:nether_planks:1>,
<natura:nether_planks:2>,
<natura:nether_planks:3>,
//<plants2:planks>,
//<plants2:planks:1>,
//<plants2:planks:2>,
//<plants2:planks:3>,
//<plants2:planks:4>,
//<plants2:planks:5>,
//<quark:stained_planks>,
//<quark:stained_planks:1>,
//<quark:stained_planks:2>,
//<quark:stained_planks:3>,
//<quark:stained_planks:4>,
//<quark:stained_planks:5>,
//<quark:stained_planks:6>,
//<quark:stained_planks:7>,
//<quark:stained_planks:8>,
//<quark:stained_planks:9>,
//<quark:stained_planks:10>,
//<quark:stained_planks:11>,
//<quark:stained_planks:12>,
//<quark:stained_planks:13>,
//<quark:stained_planks:14>,
<integrateddynamics:menril_planks>,
<mysticalworld:charred_planks>,
<natura:overworld_planks>,
<natura:overworld_planks:1>,
<natura:overworld_planks:2>,
<natura:overworld_planks:3>,
<natura:overworld_planks:4>,
<natura:overworld_planks:5>,
<natura:overworld_planks:6>,
<natura:overworld_planks:7>,
<natura:overworld_planks:8>,
<natura:nether_planks>,
<natura:nether_planks:1>,
<natura:nether_planks:2>,
<natura:nether_planks:3>,
//<plants2:planks>,
//<plants2:planks:1>,
//<plants2:planks:2>,
//<plants2:planks:3>,
//<plants2:planks:4>,
//<plants2:planks:5>
];
for i in OakPlanks {
<ore:GenericPlanks>.add(i);
}

var SprucePlanks as IItemStack[] = [
<minecraft:planks:1>,
<chisel:planks-spruce>,
<chisel:planks-spruce:1>,
<chisel:planks-spruce:2>,
<chisel:planks-spruce:3>,
<chisel:planks-spruce:4>,
<chisel:planks-spruce:5>,
<chisel:planks-spruce:6>,
<chisel:planks-spruce:7>,
<chisel:planks-spruce:8>,
<chisel:planks-spruce:9>,
<chisel:planks-spruce:10>,
<chisel:planks-spruce:11>,
<chisel:planks-spruce:12>,
<chisel:planks-spruce:13>,
<chisel:planks-spruce:14>,
<forestry:planks.vanilla.fireproof.0:1>,
<quark:vertical_planks:1>
];
for i in SprucePlanks {
<ore:SprucePlanks>.add(i);
}

var BirchPlanks as IItemStack[] = [
<minecraft:planks:2>,
<chisel:planks-birch>,
<chisel:planks-birch:1>,
<chisel:planks-birch:2>,
<chisel:planks-birch:3>,
<chisel:planks-birch:4>,
<chisel:planks-birch:5>,
<chisel:planks-birch:6>,
<chisel:planks-birch:7>,
<chisel:planks-birch:8>,
<chisel:planks-birch:9>,
<chisel:planks-birch:10>,
<chisel:planks-birch:11>,
<chisel:planks-birch:12>,
<chisel:planks-birch:13>,
<chisel:planks-birch:14>,
<forestry:planks.vanilla.fireproof.0:2>,
<quark:vertical_planks:2>
];
for i in BirchPlanks {
<ore:BirchPlanks>.add(i);
}

var JunglePlanks as IItemStack[] = [
<minecraft:planks:3>,
<chisel:planks-jungle>,
<chisel:planks-jungle:1>,
<chisel:planks-jungle:2>,
<chisel:planks-jungle:3>,
<chisel:planks-jungle:4>,
<chisel:planks-jungle:5>,
<chisel:planks-jungle:6>,
<chisel:planks-jungle:7>,
<chisel:planks-jungle:8>,
<chisel:planks-jungle:9>,
<chisel:planks-jungle:10>,
<chisel:planks-jungle:11>,
<chisel:planks-jungle:12>,
<chisel:planks-jungle:13>,
<chisel:planks-jungle:14>,
<forestry:planks.vanilla.fireproof.0:3>,
<quark:vertical_planks:3>
];
for i in JunglePlanks {
<ore:JunglePlanks>.add(i);
}

var AcaciaPlanks as IItemStack[] = [
<minecraft:planks:4>,
<chisel:planks-acacia>,
<chisel:planks-acacia:1>,
<chisel:planks-acacia:2>,
<chisel:planks-acacia:3>,
<chisel:planks-acacia:4>,
<chisel:planks-acacia:5>,
<chisel:planks-acacia:6>,
<chisel:planks-acacia:7>,
<chisel:planks-acacia:8>,
<chisel:planks-acacia:9>,
<chisel:planks-acacia:10>,
<chisel:planks-acacia:11>,
<chisel:planks-acacia:12>,
<chisel:planks-acacia:13>,
<chisel:planks-acacia:14>,
<forestry:planks.vanilla.fireproof.0:4>,
<quark:vertical_planks:4>
];
for i in AcaciaPlanks {
<ore:AcaciaPlanks>.add(i);
}

var DarkOakPlanks as IItemStack[] = [
<minecraft:planks:5>,
<chisel:planks-dark-oak>,
<chisel:planks-dark-oak:1>,
<chisel:planks-dark-oak:2>,
<chisel:planks-dark-oak:3>,
<chisel:planks-dark-oak:4>,
<chisel:planks-dark-oak:5>,
<chisel:planks-dark-oak:6>,
<chisel:planks-dark-oak:7>,
<chisel:planks-dark-oak:8>,
<chisel:planks-dark-oak:9>,
<chisel:planks-dark-oak:10>,
<chisel:planks-dark-oak:11>,
<chisel:planks-dark-oak:12>,
<chisel:planks-dark-oak:13>,
<chisel:planks-dark-oak:14>,
<forestry:planks.vanilla.fireproof.0:5>,
<quark:vertical_planks:5>
];
for i in DarkOakPlanks {
<ore:DarkOakPlanks>.add(i);
}

// Creating a Melon OreDict
<ore:foodMelon>.add(<minecraft:melon>);

//Crating a Mulch OreDict
<ore:Mulch>.add(<forestry:mulch>, <pyrotech:mulch>);

//Creating a Strenghtened Glass OreDict
<ore:strengthenedGlass>.add(<railcraft:glass>,<railcraft:glass:1>,<railcraft:glass:2>,<railcraft:glass:3>,<railcraft:glass:4>,<railcraft:glass:5>,<railcraft:glass:6>,<railcraft:glass:7>,<railcraft:glass:8>,<railcraft:glass:15>,<railcraft:glass:14>,<railcraft:glass:13>,<railcraft:glass:12>,<railcraft:glass:11>,<railcraft:glass:10>,<railcraft:glass:9>);

//Creating the Menril Crystal Oredict
<ore:crystalMenril>.add(<contenttweaker:gemmenril>);

