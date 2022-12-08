import mods.artisanworktables.builder.RecipeBuilder;

// Lunch Bag
recipes.remove(<spiceoflife:lunchbag>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:paper>, null, <ore:paper>],
    [<ore:dustWood>, <actuallyadditions:item_misc>, <ore:dustWood>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .addTool(<ore:gtceKnife>, 5)
  .addOutput(<spiceoflife:lunchbag>)
.create();

// Lunch Box
recipes.remove(<spiceoflife:lunchbox>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateIron>, <ore:ringIron>, <ore:plateIron>],
    [<quark:iron_button>, <ore:chestWood>, <quark:iron_button>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .addTool(<ore:gtceWrenches>, 5)
  .addOutput(<spiceoflife:lunchbox>)
.create();