import mods.thermalexpansion.Transposer as FluidTransposer;

//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy);
//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy, WeightedItemStack itemOut);
//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);

//mods.thermalexpansion.Transposer.removeExtractRecipe(IItemStack input);
//mods.thermalexpansion.Transposer.removeFillRecipe(IItemStack input, ILiquidStack fluid);

# Removing Incorrect Recipes ========================================= //

# Menril
FluidTransposer.removeExtractRecipe(<integrateddynamics:menril_log>);

# Fixing a few Wrong Recipes ========================================= //

# Blaze Powder
FluidTransposer.removeFillRecipe(<thermalfoundation:material:771>, <liquid:experience>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:771>, <liquid:essence>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:771>, <liquid:xpjuice>);

FluidTransposer.addFillRecipe(<ore:dustBlaze>.firstItem, <ore:dustSulfur>.firstItem*2, <liquid:experience>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBlaze>.firstItem, <ore:dustSulfur>.firstItem*2, <liquid:xpjuice>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBlaze>.firstItem, <ore:dustSulfur>.firstItem*2, <liquid:essence>, 32000);

# Basalz Powder
FluidTransposer.removeFillRecipe(<thermalfoundation:material:770>, <liquid:experience>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:770>, <liquid:essence>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:770>, <liquid:xpjuice>);

FluidTransposer.addFillRecipe(<ore:dustBasalz>.firstItem, <ore:dustObsidian>.firstItem*2, <liquid:experience>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBasalz>.firstItem, <ore:dustObsidian>.firstItem*2, <liquid:xpjuice>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBasalz>.firstItem, <ore:dustObsidian>.firstItem*2, <liquid:essence>, 32000);

# Blitz Powder
FluidTransposer.removeFillRecipe(<thermalfoundation:material:772>, <liquid:experience>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:772>, <liquid:essence>);
FluidTransposer.removeFillRecipe(<thermalfoundation:material:772>, <liquid:xpjuice>);

FluidTransposer.addFillRecipe(<ore:dustBlitz>.firstItem, <ore:dustSaltpeter>.firstItem*2, <liquid:experience>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBlitz>.firstItem, <ore:dustSaltpeter>.firstItem*2, <liquid:xpjuice>, 32000);
FluidTransposer.addFillRecipe(<ore:dustBasalz>.firstItem, <ore:dustObsidian>.firstItem*2, <liquid:essence>, 32000);