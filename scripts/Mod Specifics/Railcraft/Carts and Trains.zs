

// Minecart
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart> * 1, [[<ore:screwIron>, null, <ore:screwIron>], [<ore:plateIron>, <ore:quiltedWool>, <ore:plateIron>],[<ore:gtceWrenches>, <ore:plateDoubleIron>, <ore:gtceScrewdrivers>]]);
recipes.addShaped(<minecraft:minecart> * 2, [[<ore:screwBronze>, null, <ore:screwBronze>], [<ore:plateBronze>, <ore:quiltedWool>, <ore:plateBronze>],[<ore:gtceWrenches>, <ore:plateDoubleBronze>, <ore:gtceScrewdrivers>]]);
recipes.addShaped(<minecraft:minecart> * 4, [[<ore:screwSteel>, null, <ore:screwSteel>], [<ore:plateSteel>, <ore:quiltedWool>, <ore:plateSteel>],[<ore:gtceWrenches>, <ore:plateDoubleSteel>, <ore:gtceScrewdrivers>]]);
recipes.addShaped(<minecraft:minecart> * 8, [[<ore:screwStainlessSteel>, null, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <ore:quiltedWool>, <ore:plateStainlessSteel>],[<ore:gtceWrenches>, <ore:plateDoubleStainlessSteel>, <ore:gtceScrewdrivers>]]);


// --- Minecart with Chest
recipes.remove(<minecraft:chest_minecart>);
recipes.addShaped(<minecraft:chest_minecart>, [
[<ore:gtceHardHammers>, <ore:chestWood>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Furnace
recipes.remove(<minecraft:furnace_minecart>);
recipes.addShaped(<minecraft:furnace_minecart>, [
[<ore:gtceHardHammers>, <minecraft:furnace>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Hopper
recipes.remove(<minecraft:hopper_minecart>);
recipes.addShaped(<minecraft:hopper_minecart>, [
[<ore:gtceHardHammers>, <minecraft:hopper>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with TNT
recipes.remove(<minecraft:tnt_minecart>);
recipes.addShaped(<minecraft:tnt_minecart>, [
[<ore:gtceHardHammers>, <minecraft:tnt>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Apiary
recipes.remove(<forestry:cart.beehouse:1>);
recipes.addShaped(<forestry:cart.beehouse:1>, [
[<ore:gtceHardHammers>, <forestry:apiary>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Bee House
recipes.remove(<forestry:cart.beehouse>);
recipes.addShaped(<forestry:cart.beehouse>, [
[<ore:gtceHardHammers>, <forestry:bee_house>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Trade Station
recipes.remove(<railcraft:cart_trade_station>);
recipes.addShaped(<railcraft:cart_trade_station>, [
[<ore:gtceHardHammers>, <railcraft:trade_station>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Crafting Station
recipes.remove(<railcraft:cart_work>);
recipes.addShaped(<railcraft:cart_work>, [
[<ore:gtceHardHammers>, <ore:craftingTableWood>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Jukebox
recipes.remove(<railcraft:cart_jukebox>);
recipes.addShaped(<railcraft:cart_jukebox>, [
[<ore:gtceHardHammers>, <minecraft:jukebox>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Bed
recipes.remove(<railcraft:cart_bed>);
recipes.addShaped(<railcraft:cart_bed>, [
[<ore:gtceHardHammers>, <ore:bed>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with RF Battery
recipes.remove(<railcraft:cart_redstone_flux>);
recipes.addShaped(<railcraft:cart_redstone_flux>, [
[<ore:gtceHardHammers>, <enderio:block_cap_bank:1>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Void
recipes.remove(<railcraft:cart_chest_void>);
recipes.addShaped(<railcraft:cart_chest_void>, [
[<ore:gtceHardHammers>, <railcraft:chest_void>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Crate
recipes.remove(<railcraft:cart_cargo>);
recipes.addShaped(<railcraft:cart_cargo>, [
[<ore:gtceHardHammers>, <magneticraft:box>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart with Tank
recipes.remove(<railcraft:cart_tank>);
recipes.addShaped(<railcraft:cart_tank>, [
[<ore:gtceHardHammers>, <enderio:block_tank>, <ore:gtceWrenches>],
[<ore:screwElectricalSteel>, <minecraft:minecart>, <ore:screwElectricalSteel>],
[null, <ore:gtceScrewdrivers>, null]]);

// --- Minecart Track layer
recipes.remove(<railcraft:mow_track_layer>);
recipes.addShaped(<railcraft:mow_track_layer>, [
[<ore:gtceHardHammers>, <actuallyadditions:block_placer>, <ore:gtceWrenches>],
[<ore:rail>, <minecraft:minecart>, <ore:rail>],
[<ore:screwElectricalSteel>, <ore:gtceScrewdrivers>, <ore:screwElectricalSteel>]]);

// --- Minecart Track Replacer
recipes.remove(<railcraft:mow_track_relayer>);
recipes.addShaped(<railcraft:mow_track_relayer>, [
[<ore:gtceHardHammers>, <actuallyadditions:block_placer>, <ore:gtceWrenches>],
[<ore:rail>, <minecraft:minecart>, <ore:rail>],
[<ore:screwDarkSteel>, <ore:gtceScrewdrivers>, <ore:screwDarkSteel>]]);

// --- Minecart Track Remover
recipes.remove(<railcraft:mow_track_remover>);
recipes.addShaped(<railcraft:mow_track_remover>, [
[<ore:gtceHardHammers>, <actuallyadditions:block_breaker>, <ore:gtceWrenches>],
[<ore:rail>, <minecraft:minecart>, <ore:rail>],
[<ore:screwSteel>, <ore:gtceScrewdrivers>, <ore:screwSteel>]]);

// --- Minecart Under block Swapper
recipes.remove(<railcraft:mow_undercutter>);
recipes.addShaped(<railcraft:mow_undercutter>, [
[<ore:gtceHardHammers>, <actuallyadditions:iron_paxel>, <ore:gtceWrenches>],
[<ore:rail>, <minecraft:minecart>, <ore:rail>],
[<ore:screwSteel>, <ore:gtceScrewdrivers>, <ore:screwSteel>]]);