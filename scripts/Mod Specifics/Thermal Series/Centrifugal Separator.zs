import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Centrifuge as Centrifuge;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         															                                                             //
//			Centrifugal Separator Fixes                                                                                                      //
//			         																                                                         //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Removing Unwanted Mob Recipes and Readding them

//Centrifuge.addRecipeMob(IEntityDefinition entity, WeightedItemStack[] outputs, @Nullable ILiquidStack fluid, int energy, int xp);
//Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy);

# Blitz
Centrifuge.removeRecipeMob(<entity:thermalfoundation:blitz>);
Centrifuge.addRecipeMob(<entity:thermalfoundation:blitz>, [<thermalfoundation:material:2050>%50, <ore:dustSaltpeter>.firstItem%25], <liquid:experience>*200, 4000, 5);

# Blaze
Centrifuge.removeRecipeMob(<entity:minecraft:blaze>);
Centrifuge.addRecipeMob(<entity:minecraft:blaze>, [<minecraft:blaze_rod>%50, <ore:dustSulfur>.firstItem%25], <liquid:experience>*200, 4000, 5);

# Basalz
Centrifuge.removeRecipeMob(<entity:thermalfoundation:basalz>);
Centrifuge.addRecipeMob(<entity:thermalfoundation:basalz>, [<thermalfoundation:material:2052>%50, <ore:dustObsidian>.firstItem%25], <liquid:experience>*200, 4000, 5);


# Magma Cube
Centrifuge.removeRecipeMob(<entity:minecraft:magma_cube>);
Centrifuge.addRecipeMob(<entity:minecraft:magma_cube>, [<minecraft:magma_cream>%50, <ore:dustSulfur>.firstItem%25], <liquid:experience>*40, 4000, 5);

// ================================== //



//Fixing Centrifugal Separator Recipes

var CentrifugalNormalRemoval as IItemStack[] = [
<thermalfoundation:material:1027>,
<thermalfoundation:material:103>,
<thermalfoundation:material:101>,
<gregtech:meta_dust:259>,
<thermalfoundation:material:100>,
<thermalfoundation:material:98>,
<thermalfoundation:material:102>,
<thermalfoundation:material:1024>,
<thermalfoundation:material:97>,
<gregtech:meta_dust:274>,
<thermalfoundation:material:1026>,
<thermalfoundation:material:99>,
<thermalfoundation:material:1025>,
<harvestcraft:honeycombitem>
];
for i in CentrifugalNormalRemoval {
Centrifuge.removeRecipe(i);
}

//Forestry Compat Fixes =====================================

# Shadow Comb
Centrifuge.removeRecipe(<extrabees:honey_comb:36>);
Centrifuge.addRecipe([<ore:dustObsidian>.firstItem%75, <forestry:honey_drop> % 50], <extrabees:honey_comb:36>, null, 2000);

# Unstable Comb
Centrifuge.removeRecipe(<extrabees:honey_comb:76>);
Centrifuge.addRecipe([<ore:dustSaltpeter>.firstItem, <forestry:honey_drop> % 25], <extrabees:honey_comb:76>, null, 2000);

# Brimstone Comb
Centrifuge.removeRecipe(<extrabees:honey_comb:27>);
Centrifuge.addRecipe([<ore:dustSulfur>.firstItem%75, <extrabees:honey_drop:1> % 50, <forestry:beeswax>%80], <extrabees:honey_comb:27>, null, 2000);

