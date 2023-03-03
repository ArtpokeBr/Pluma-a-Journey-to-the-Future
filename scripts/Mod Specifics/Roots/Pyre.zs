import mods.roots.Pyre;
import crafttweaker.item.IItemStack;

// Removing Unwanted Pyre Recipes

var PyreRootsRemovals as IItemStack[] = [
<minecraft:cooked_fish:1>,
<minecraft:deadbush>,
<minecraft:cooked_chicken>,
<minecraft:cooked_porkchop>,
<minecraft:cooked_fish>,
<minecraft:baked_potato>,
<mysticalworld:cooked_venison>,
<mysticalworld:cooked_seeds>,
<minecraft:cooked_rabbit>,
<mysticalworld:cooked_squid>,
<minecraft:cooked_mutton>,
<roots:cooked_pereskia>,
<minecraft:cooked_beef>,
<mysticalworld:cooked_aubergine>
];
for i in PyreRootsRemovals {
Pyre.removeRecipe(i);
}


//Baffle Cap
Pyre.removeRecipe(<roots:baffle_cap_mushroom>);
Pyre.addRecipe(
  "Baffle Cap",
  <roots:baffle_cap_mushroom> * 3,   // the output of this recipe
  [<natura:nether_leaves2>, <natura:nether_glowshroom:2>, <roots:terra_moss>, <minecraft:brown_mushroom>, <minecraft:red_mushroom>] // a list of five ingredients (no more, no less)
);

//Stalicripe
Pyre.removeRecipe(<roots:stalicripe>);
Pyre.addRecipe(
  "Stalicripe",
  <roots:stalicripe> * 3,   // the output of this recipe
  [<roots:wildroot>, <ore:dustArdite>, <natura:nether_thorn_vines>, <ore:dustGlowstone>, <ore:logBloodwood>] // a list of five ingredients (no more, no less)
);

//Dewgonia
Pyre.removeRecipe(<roots:dewgonia>);
Pyre.addRecipe(
  "Dewgonia",
  <roots:dewgonia> * 3,   // the output of this recipe
  [<roots:wildroot>, <natura:nether_glowshroom>, <harvestcraft:freshwateritem>, <minecraft:waterlily>, <ore:flowerIcyIris>] // a list of five ingredients (no more, no less)
);

//Infernal Bulb
Pyre.removeRecipe(<roots:infernal_bulb>);
Pyre.addRecipe(
  "infernal bulb",
  <roots:infernal_bulb> * 3,   // the output of this recipe
  [<roots:wildroot>, <tconstruct:firewood>, <natura:nether_heat_sand>, <minecraft:magma_cream>, <ore:flowerBurningBlossom>] // a list of five ingredients (no more, no less)
);

//Cloud Berry
Pyre.removeRecipe(<roots:cloud_berry>);
Pyre.addRecipe(
  "Cloud Berry",
  <roots:cloud_berry> * 3,   // the output of this recipe
  [<natura:overworld_leaves:1>, <biomesoplenty:ivy>, <natura:bluebells_flower>, <ore:flowerLavender>, <chisel:cloud>] // a list of five ingredients (no more, no less)
);

//Pereskia
Pyre.removeRecipe(<roots:pereskia>);
Pyre.addRecipe(
  "Pereskia",
  <roots:pereskia> * 3,   // the output of this recipe
  [<roots:wildroot>, <ore:cropBeet>, <biomesoplenty:bramble_plant>, <natura:nether_leaves:1>, <minecraft:red_mushroom_block>] // a list of five ingredients (no more, no less)
);

//Moon Glow
Pyre.removeRecipe(<roots:moonglow_leaf>);
Pyre.addRecipe(
  "Moonglow",
  <roots:moonglow_leaf> * 3,   // the output of this recipe
  [<roots:wildroot>, <ore:dustCobalt>, <ore:planksDarkwood>, <natura:nether_blue_large_glowshroom>, <ore:flowerViolet>] // a list of five ingredients (no more, no less)
);

//Baykok's Bloodied Stone
Pyre.addRecipe(
  "BaykoksStone",
  <contenttweaker:baykoksbloodiedstone>,   // the output of this recipe
  [<railcraft:brick_bloodstained:2>, <contenttweaker:taintedsoildust>, <quark:soul_powder>, <contenttweaker:fiery_baykoks_essence>, <ore:slimeballBlood>] // a list of five ingredients (no more, no less)
);

//Fey Crafter
recipes.remove(<roots:fey_crafter>);
Pyre.addRecipe(
  "FeyCrafter",
  <roots:fey_crafter>,   // the output of this recipe
  [<contenttweaker:baykoksbloodiedstone>, <forge:bucketfilled>.withTag({FluidName: "ghastlycerin", Amount: 1000}), <roots:terra_moss>, <ore:logWood>, <ore:dustCobaltBrass>] // a list of five ingredients (no more, no less)
);

//Arboreal Essence
Pyre.addRecipe(
  "ArborealEssence",
  <contenttweaker:arboreal_essence>*8,   // the output of this recipe
  [<natura:overworld_sapling>, /*Fertilizer*/<gregtech:meta_item_1:1001>, <natura:overworld_sapling:3>, <totemic:cedar_sapling>, <traverse:fir_sapling>] // a list of five ingredients (no more, no less)
);
