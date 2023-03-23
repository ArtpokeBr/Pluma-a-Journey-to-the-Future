import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

// Chiseling Molds and Shapes =============================================

# Molds
mods.chisel.Carving.addGroup("gt_molds");
var GTMolds as IItemStack[] = [
<gregtech:meta_item_1:12>,
<contenttweaker:casing_mold>,
<gregtech:meta_item_1:13>,
<gregtech:meta_item_1:14>,
<gregtech:meta_item_1:15>,
<gregtech:meta_item_1:16>,
<gregtech:meta_item_1:17>,
<gregtech:meta_item_1:18>,
<gregtech:meta_item_1:24>,
<gregtech:meta_item_1:23>,
<gregtech:meta_item_1:22>,
<gregtech:meta_item_1:21>,
<gregtech:meta_item_1:20>,
<gregtech:meta_item_1:19>,
];
for i in GTMolds {
mods.chisel.Carving.addVariation("gt_molds", i);
i.addTooltip(format.lightPurple("Can be Chiseled into other Molds."));
}

# Shapes
mods.chisel.Carving.addGroup("gt_shapes");
var GTShapes as IItemStack[] = [
<gregtech:meta_item_1:31>,
<contenttweaker:casing_shape>,
<gregtech:meta_item_1:32>,
<gregtech:meta_item_1:33>,
<gregtech:meta_item_1:34>,
<gregtech:meta_item_1:35>,
<gregtech:meta_item_1:36>,
<gregtech:meta_item_1:37>,
<gregtech:meta_item_1:57>,
<gregtech:meta_item_1:56>,
<gregtech:meta_item_1:55>,
<gregtech:meta_item_1:54>,
<gregtech:meta_item_1:53>,
<gregtech:meta_item_1:52>,
// <gregtech:meta_item_1:51>,
// <gregtech:meta_item_1:50>,
// <gregtech:meta_item_1:49>,
// <gregtech:meta_item_1:48>,
// <gregtech:meta_item_1:47>,
// <gregtech:meta_item_1:46>,
// <gregtech:meta_item_1:45>,
// <gregtech:meta_item_1:44>,
<gregtech:meta_item_1:43>,
<gregtech:meta_item_1:42>,
<gregtech:meta_item_1:41>,
<gregtech:meta_item_1:40>,
<gregtech:meta_item_1:39>,
<gregtech:meta_item_1:38>
];
for i in GTShapes {
mods.chisel.Carving.addVariation("gt_shapes", i);
i.addTooltip(format.lightPurple("Can be Chiseled into other Shapes."));
}

