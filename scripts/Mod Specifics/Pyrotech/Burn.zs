import mods.pyrotech.Burn as Burn;

Burn.removeAllRecipes();

// Burns that require Refractory Bricks ============================================

Burn.createBuilder(
    "CokeBurn", <ore:fuelCoke>.firstItem * 9, "minecraft:coal_block")
    .setTotalBurnTimeTicks(14400)
    .setRequiresRefractoryBlocks(true)
    .setFluidProduced(<liquid:coal_tar> * 500)
    .setFailureChance(0.07)
    .addFailureItem(<ore:dustAsh>.firstItem) // ash
    .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
    .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
    .addFailureItem(<actuallyadditions:item_misc:10> * 6) // Tiny Coal
    .addFailureItem(<actuallyadditions:item_misc:10> * 8) // Tiny Coal
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder(
    "LogPileToCharcoalRefractory", <minecraft:coal:1> * 10, "forestry:wood_pile:*")
    .setTotalBurnTimeTicks(5600)
    .setRequiresRefractoryBlocks(true)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.07)
    .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
    .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
    .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder(
    "WoodChipsToCharcoalRefractory", <actuallyadditions:item_misc:11> * 8, "pyrotech:pile_wood_chips")
    .setTotalBurnTimeTicks(5200)
    .setRequiresRefractoryBlocks(true)
    .setFluidProduced(<liquid:wood_tar> * 200)
    .setFailureChance(0.07)
    .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
    .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
    .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder(
    "TarBaleToCharcoalRefractory", <minecraft:coal:1> * 10, "pyrotech:wood_tar_block")
    .setTotalBurnTimeTicks(5200)
    .setRequiresRefractoryBlocks(true)
    .setFluidProduced(<liquid:wood_tar> * 100)
    .setFailureChance(0.07)
    .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
    .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
    .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
    .setFluidLevelAffectsFailureChance(true)
    .register();

// ============================================ //

// Burns that don't require Refractory Bricks ============================================

// Burn.createBuilder(
//     "LogPileToCharcoalPit", <minecraft:coal:1> * 10, "forestry:wood_pile:*")
//     .setTotalBurnTimeTicks(9600)
//     .setRequiresRefractoryBlocks(false)
//     .setFluidProduced(<liquid:wood_tar> * 500)
//     .setFailureChance(0.33)
//     .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
//     .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
//     .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
//     .setFluidLevelAffectsFailureChance(true)
//     .register();

// Burn.createBuilder(
//     "WoodChipsToCharcoalPit", <actuallyadditions:item_misc:11> * 8, "pyrotech:pile_wood_chips")
//     .setTotalBurnTimeTicks(7200)
//     .setRequiresRefractoryBlocks(false)
//     .setFluidProduced(<liquid:wood_tar> * 200)
//     .setFailureChance(0.33)
//     .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
//     .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
//     .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
//     .setFluidLevelAffectsFailureChance(true)
//     .register();

// Burn.createBuilder(
//     "TarBaleToCharcoalPit", <minecraft:coal:1> * 10, "pyrotech:wood_tar_block")
//     .setTotalBurnTimeTicks(7200)
//     .setRequiresRefractoryBlocks(false)
//     .setFluidProduced(<liquid:wood_tar> * 100)
//     .setFailureChance(0.33)
//     .addFailureItem(<ore:dustAsh>.firstItem * 2) // ash
//     .addFailureItem(<ore:dustAsh>.firstItem * 4) // ash
//     .addFailureItem(<actuallyadditions:item_misc:11> * 4) // Tiny Charcoal
//     .setFluidLevelAffectsFailureChance(true)
//     .register();

// ============================================ //
