import mods.astralsorcery.LightTransmutation as LightTransmutation;

//mods.astralsorcery.LightTransmutation.addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost);
//mods.astralsorcery.LightTransmutation.removeTransmutation(IItemStack stackToRemove, boolean matchMeta);

# Removing Endstone Transmutation
LightTransmutation.removeTransmutation(<minecraft:end_stone>, false);
//LightTransmutation.addTransmutation(<advancedrocketry:moonturf_dark>, <minecraft:end_stone>, 250);
//LightTransmutation.addTransmutation(<advancedrocketry:moonturf>, <minecraft:end_stone>, 250);

# Adding Skystone to the Infusion
LightTransmutation.addTransmutation(<minecraft:stone>, <appliedenergistics2:sky_stone_block>, 250);
LightTransmutation.addTransmutation(<extrautils2:decorativesolid:2>, <appliedenergistics2:smooth_sky_stone_block>, 250);

# Fixing Starmetal
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);
LightTransmutation.addTransmutation(<ore:oreEndstoneAluminium>.firstItem, <ore:oreStarmetal>.firstItem, 250);
LightTransmutation.addTransmutation(<ore:oreStarmetal>.firstItem, <astralsorcery:blockcustomore:1>, 250);