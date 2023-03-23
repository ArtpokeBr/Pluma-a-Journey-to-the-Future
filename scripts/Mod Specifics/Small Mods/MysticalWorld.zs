import mods.inworldcrafting.FireCrafting as FireCrafting;
import mods.roots.Fey as Fey;

// Charred Stuff =======================================

recipes.remove(<mysticalworld:charred_log>);

FireCrafting.addRecipe(<mysticalworld:charred_log>, <ore:logWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_planks>, <ore:plankWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_slab>, <ore:slabWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_stairs>, <ore:stairWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_wall>, <mysticalworld:thatch_wall>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_button>, <ore:buttonWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_pressure_plate>, <minecraft:wooden_pressure_plate>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_fence>, <ore:fenceWood>, 160);
FireCrafting.addRecipe(<mysticalworld:charred_fence_gate>, <ore:gateWood>, 160);

// ======================================================= //

// Epic Squid
recipes.remove(<mysticalworld:epic_squid>);
Fey.addRecipe(
  "epic_squid",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <mysticalworld:epic_squid>*2,    // the itemstack produced by this recipe
  [<ore:foodCalamaricooked>, <ore:foodCalamaricooked>, <ore:dustEmerald>, <ore:dustAmethyst>, <roots:cooked_pereskia>], // an array of IIngredients that make up the recipe; must contain 5 items
  4               // the amount of xp (in levels) to reward the player for crafting this recipe
);