import mods.roots.Fey as Fey;

//Salmon of Knowledge
Fey.removeRecipe(<roots:salmon_of_knowledge>);

//Runestone
Fey.removeRecipe(<roots:runestone>);

Fey.addRecipe(
  "runestone",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runestone> * 4,    // the itemstack produced by this recipe
  [<magneticraft:burnt_limestone>, <magneticraft:burnt_limestone>, <magneticraft:burnt_limestone>, <magneticraft:burnt_limestone>, <contenttweaker:taintedsoildust>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Unending Bowl
Fey.addRecipe(
  "unending_bowl",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:unending_bowl>,    // the itemstack produced by this recipe
  [<ore:plateTerrastone>, <ore:plateRunicSteel>, <roots:dewgonia>, <extrabees:propolis>, <roots:terra_moss>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Imbuer
recipes.remove(<roots:imbuer>);

Fey.addRecipe(
  "imbuer",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:imbuer>,    // the itemstack produced by this recipe
  [<roots:runic_dust>, <roots:runic_dust>, <totemic:stripped_cedar_log>, <roots:spirit_herb>, <roots:terra_moss>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Imposer
recipes.remove(<roots:imposer>);

Fey.addRecipe(
  "imposer",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:imposer>,    // the itemstack produced by this recipe
  [<roots:runic_dust>, <roots:runic_dust>, <totemic:stripped_cedar_log>, <roots:wildewheet>, <roots:terra_moss>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Gramary of the Forests
recipes.remove(<roots:gramary>);

Fey.addRecipe(
  "gramary_of_the_forests",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:gramary>,    // the itemstack produced by this recipe
  [<ore:bookEmpty>, <ore:dustRunicSteel>, <ore:rootsBark>, <roots:strange_ooze>, <roots:wildroot>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Component Pouch
Fey.removeRecipe(<roots:component_pouch>);

Fey.addRecipe(
  "component_pouch",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:component_pouch>,    // the itemstack produced by this recipe
  [<ore:dustRunicSteel>, <ore:chest>, <ore:feyFeather>, <ore:materialCloth>, <roots:herb_pouch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Fey Leather Pouch
Fey.removeRecipe(<roots:fey_pouch>);

Fey.addRecipe(
  "fey_pouch",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:fey_pouch>,    // the itemstack produced by this recipe
  [<ore:dustRunicSteel>, <ore:chest>, <ore:feyLeather>, <ore:materialCloth>, <roots:herb_pouch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Apothecary Pouch
Fey.removeRecipe(<roots:apothecary_pouch>);

Fey.addRecipe(
  "apothecary_pouch",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:apothecary_pouch>,    // the itemstack produced by this recipe
  [<ore:dustRunicSteel>, <roots:component_pouch>, <pyrotech:material:41>, <pyrotech:material:41>, <contenttweaker:heart_of_the_woods>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "apothecary_pouchII",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:apothecary_pouch>,    // the itemstack produced by this recipe
  [<ore:dustRunicSteel>, <roots:fey_pouch>, <pyrotech:material:41>, <pyrotech:material:41>, <contenttweaker:heart_of_the_woods>], // an array of IIngredients that make up the recipe; must contain 5 items
  2               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Elemental Soil
Fey.removeRecipe(<roots:elemental_soil>);

Fey.addRecipe(
  "elemental_soil",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:elemental_soil> * 4,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <ore:wildroot>, <ore:compressed1xDirt>, <ore:compressed1xGravel>, <roots:spirit_herb>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Terrastone Tools
Fey.removeRecipe(<roots:terrastone_pickaxe>);
Fey.removeRecipe(<roots:terrastone_sword>);
Fey.removeRecipe(<roots:terrastone_hoe>);
Fey.removeRecipe(<roots:terrastone_axe>);
Fey.removeRecipe(<roots:terrastone_shovel>);

Fey.addRecipe(
  "terrastone_sword",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:terrastone_sword>,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <roots:runic_dust>, <tconstruct:sword_blade>.withTag({Material: "steel"}), <ore:mossyCobblestone>, <ore:plateDoubleTerrastone>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "terrastone_pickaxe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:terrastone_pickaxe>,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <roots:runic_dust>, <tconstruct:pick_head>.withTag({Material: "steel"}), <ore:mossyCobblestone>, <ore:plateDoubleTerrastone>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "terrastone_axe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:terrastone_axe>,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <roots:runic_dust>, <tconstruct:axe_head>.withTag({Material: "steel"}), <ore:mossyCobblestone>, <ore:plateDoubleTerrastone>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "terrastone_shovel",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:terrastone_shovel>,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <roots:runic_dust>, <tconstruct:shovel_head>.withTag({Material: "steel"}), <ore:mossyCobblestone>, <ore:plateDoubleTerrastone>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "terrastone_hoe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:terrastone_hoe>,    // the itemstack produced by this recipe
  [<roots:terra_moss>, <roots:runic_dust>, <tconstruct:kama_head>.withTag({Material: "steel"}), <ore:mossyCobblestone>, <ore:plateDoubleTerrastone>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Sylvian Armor
Fey.removeRecipe(<roots:sylvan_helmet>);
Fey.removeRecipe(<roots:sylvan_chestplate>);
Fey.removeRecipe(<roots:sylvan_leggings>);
Fey.removeRecipe(<roots:sylvan_boots>);

Fey.addRecipe(
  "sylvan_helmet",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:sylvan_helmet>,    // the itemstack produced by this recipe
  [<actuallyadditions:item_helm_emerald>, <ore:vine>, <ore:plateTerrastone>, <ore:feyLeather>, <roots:bark_birch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "sylvan_chestplate",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:sylvan_chestplate>,    // the itemstack produced by this recipe
  [<actuallyadditions:item_chest_emerald>, <ore:vine>, <ore:plateTerrastone>, <ore:feyLeather>, <roots:bark_birch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "sylvan_leggings",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:sylvan_leggings>,    // the itemstack produced by this recipe
  [<actuallyadditions:item_pants_emerald>, <ore:vine>, <ore:plateTerrastone>, <ore:feyLeather>, <roots:bark_birch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "sylvan_boots",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:sylvan_boots>,    // the itemstack produced by this recipe
  [<actuallyadditions:item_boots_emerald>, <ore:vine>, <ore:plateTerrastone>, <ore:feyLeather>, <roots:bark_birch>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Wildwood Armor
Fey.removeRecipe(<roots:wildwood_helmet>);
Fey.removeRecipe(<roots:wildwood_chestplate>);
Fey.removeRecipe(<roots:wildwood_leggings>);
Fey.removeRecipe(<roots:wildwood_boots>);

Fey.addRecipe(
  "wildwood_helmet",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:wildwood_helmet>,    // the itemstack produced by this recipe
  [<roots:sylvan_helmet>, <roots:bark_wildwood>, <ore:hideBuffalo>, <roots:bark_wildwood>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "wildwood_chestplate",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:wildwood_chestplate>,    // the itemstack produced by this recipe
  [<roots:sylvan_chestplate>, <roots:bark_wildwood>, <ore:hideBuffalo>, <roots:bark_wildwood>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "wildwood_leggings",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:wildwood_leggings>,    // the itemstack produced by this recipe
  [<roots:sylvan_leggings>, <roots:bark_wildwood>, <ore:hideBuffalo>, <roots:bark_wildwood>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "wildwood_boots",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:wildwood_boots>,    // the itemstack produced by this recipe
  [<roots:sylvan_boots>, <roots:bark_wildwood>, <ore:hideBuffalo>, <roots:bark_wildwood>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Runic Tools Armor

Fey.removeRecipe(<roots:runed_sword>);
Fey.removeRecipe(<roots:runed_pickaxe>);
Fey.removeRecipe(<roots:runed_axe>);
Fey.removeRecipe(<roots:runed_shovel>);
Fey.removeRecipe(<roots:runed_hoe>);
Fey.removeRecipe(<roots:runed_dagger>);

Fey.addRecipe(
  "runed_dagger",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_dagger>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <roots:diamond_knife>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "runed_sword",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_sword>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <minecraft:diamond_sword>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "runed_pickaxe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_pickaxe>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <minecraft:diamond_pickaxe>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "runed_axe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_axe>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <minecraft:diamond_axe>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "runed_shovel",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_shovel>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <minecraft:diamond_shovel>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

Fey.addRecipe(
  "runed_hoe",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <roots:runed_hoe>,    // the itemstack produced by this recipe
  [<ore:runedObsidian>, <minecraft:diamond_hoe>, <roots:strange_ooze>, <pyrotech:material:33>, <ore:plateDoubleRunicSteel>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

/*

// The Beneath Portal

Fey.addRecipe(
  "beneath_portal",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <beneath:teleporterbeneath>,    // the itemstack produced by this recipe
  [<ore:plateDenseRunicSteel>, <mysticalworld:pearl>, <contenttweaker:baykoksbloodiedstone>, <contenttweaker:heart_of_the_woods>, <overloaded:compressed_basalt>], // an array of IIngredients that make up the recipe; must contain 5 items
  1               // the amount of xp (in levels) to reward the player for crafting this recipe
);

*/