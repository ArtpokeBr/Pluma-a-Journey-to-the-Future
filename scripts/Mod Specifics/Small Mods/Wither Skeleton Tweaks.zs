import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

// ========================================== //

var ImmolationSwords as IItemStack[] = [
<witherskelefix:blade>,
<witherskelefix:blade2>
];
for i in ImmolationSwords {
recipes.remove(i);
mods.chisel.Carving.addVariation("ImmolationSwords", i);
i.addTooltip(format.gray("Causes instant death and beheading for all skeleton-based creatures."));
i.addTooltip(format.lightPurple("Can be bought in the Shop!"));
}

// Converting Back Skulls
recipes.addShapeless("Wither_Fragments",<witherskelefix:fragment>*9,[<minecraft:skull:1>]);

