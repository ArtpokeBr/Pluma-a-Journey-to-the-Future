import mods.pyrotech.CompactingBin as CompactingBin;
import mods.pyrotech.MechanicalCompactor as MechanicalCompactor;

//Removing Tiny Coal and Charcoal Recipes
CompactingBin.removeRecipes(<pyrotech:charcoal_block>);
CompactingBin.removeRecipes(<minecraft:coal_block>);
CompactingBin.removeRecipes(<pyrotech:charcoal_block>);
CompactingBin.removeRecipes(<minecraft:coal_block>);

MechanicalCompactor.removeRecipes(<pyrotech:charcoal_block>);
MechanicalCompactor.removeRecipes(<minecraft:coal_block>);
MechanicalCompactor.removeRecipes(<pyrotech:charcoal_block>);
MechanicalCompactor.removeRecipes(<minecraft:coal_block>);

MechanicalCompactor.removeRecipes(<pyrotech:coal_coke_block>);

// Reading Coal Compacting Recipe

CompactingBin.addRecipe(
  "compacting coal block",
  <minecraft:coal_block>,
  <actuallyadditions:item_misc:10>,
  72,
  true
);

CompactingBin.addRecipe(
  "compacting coal block 1",
  <minecraft:coal_block>,
  <minecraft:coal>,
  9,
  true
);

CompactingBin.addRecipe(
  "compacting charcoal block",
  <ore:blockCharcoal>.firstItem,
  <actuallyadditions:item_misc:11>,
  72,
  true
);

CompactingBin.addRecipe(
  "compacting charcoal block 1",
  <ore:blockCharcoal>.firstItem,
  <minecraft:coal:1>,
  9,
  true
);

CompactingBin.addRecipe(
  "Compacting Flint Block",
  <ore:blockFlint>.firstItem,
  <ore:gemFlint>,
  9,
  true
);