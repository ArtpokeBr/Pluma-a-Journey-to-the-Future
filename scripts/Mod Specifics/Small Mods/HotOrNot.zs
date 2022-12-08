import mods.artisanworktables.builder.RecipeBuilder;

// Mitts
recipes.remove(<hotornot:mitts>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:26>, <quark:quilted_wool:12>, <pyrotech:material:26>],
    [<quark:quilted_wool:12>, <ore:leather>, <quark:quilted_wool:12>],
    [<ore:ringBronze>, <quark:quilted_wool:12>, <pyrotech:material:26>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<hotornot:mitts>)
.create();
