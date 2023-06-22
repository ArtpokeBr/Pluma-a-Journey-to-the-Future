
//Removing Chest Recipes
for i in 0 to 5 {
recipes.remove(<ironchest:iron_chest>.withDamage(i));
}

mods.jei.JEI.removeAndHide(<ironchest:copper_iron_chest_upgrade>);

# [Wood to Iron Chest Upgrade] from [Wooden Large Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/wood_iron_chest_upgrade");
craft.make(<ironchest:wood_iron_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateIron>, # Iron Plate
  "п": <actuallyadditions:block_misc:4>, # TreatedWood Frame
});

# [Iron to Gold Chest Upgrade] from [Heavy Iron Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/iron_gold_chest_upgrade");
craft.make(<ironchest:iron_gold_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateGold>,      # Gold Plate
  "п": <ironchest:wood_iron_chest_upgrade>, # Iron Chest Upgrade
});

# [Gold to Diamond Chest Upgrade] from [Heavy Gold Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/gold_diamond_chest_upgrade");
craft.make(<ironchest:gold_diamond_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateDiamond>,   # Diamond Plate
  "п": <ironchest:iron_gold_chest_upgrade> | <ironchest:silver_gold_chest_upgrade>, # Gold Chest Upgrade
});

# [Wood to Copper Chest Upgrade] from [Wooden Large Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/wood_copper_chest_upgrade");
craft.make(<ironchest:wood_copper_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateCopper>, # Copper Plate
  "п": <actuallyadditions:block_misc:4>, # TreatedWood Frame
});

# [Copper to Silver Chest Upgrade] from [Heavy Copper Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/copper_silver_chest_upgrade");
craft.make(<ironchest:copper_silver_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateSilver>,      # Silver Plate
  "п": <ironchest:wood_copper_chest_upgrade>, # Copper Chest
});

# [Silver to Gold Chest Upgrade] from [Heavy Silver Plate][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/silver_gold_chest_upgrade");
craft.make(<ironchest:silver_gold_chest_upgrade>, ["pretty",
  "□ □ □",
  "□ п □",
  "□ □ □"], {
  "□": <ore:plateGold>,        # Gold Plate
  "п": <ironchest:copper_silver_chest_upgrade>, # Silver Chest
});

# [Diamond to Crystal Chest Upgrade] from [Diamond][+1]
recipes.removeByRecipeName("ironchest:upgrade/chest/diamond_crystal_chest_upgrade");
craft.make(<ironchest:diamond_crystal_chest_upgrade>, ["pretty",
  "G G G",
  "G ◊ G",
  "G G G"], {
  "G": <ore:blockGlassHardened>, # Strengthened Glass
  "◊": <ironchest:gold_diamond_chest_upgrade>, # Diamond Chest Upgrade
});

# [Diamond to Obsidian Chest Upgrade] from [Wooden Large Plate][+2]
recipes.removeByRecipeName("ironchest:upgrade/chest/diamond_obsidian_chest_upgrade");
craft.make(<ironchest:diamond_obsidian_chest_upgrade>, ["pretty",
  "o o o",
  "o п o",
  "o o o"], {
  "o": <ore:obsidian>, # Obsidian
  "п": <ironchest:gold_diamond_chest_upgrade>, # Diamond Chest
});

# [Vanilla to Iron Shulker Box Upgrade] from [Shulker Shell][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/vanilla_iron_shulker_upgrade");
craft.make(<ironchest:vanilla_iron_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ S □",
  "□ □ □"], {
  "□": <ore:plateIron>,    # Iron Plate
  "S": <ore:shulkerBox>, # Shulker Shell
});

# [Iron to Gold Shulker Box Upgrade] from [Vanilla to Iron Shulker Box Upgrade][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/silver_gold_shulker_upgrade");
craft.make(<ironchest:iron_gold_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ V □",
  "□ □ □"], {
  "□": <ore:plateGold>,                          # Gold Plate
  "V": <ironchest:vanilla_iron_shulker_upgrade>, # Vanilla to Iron Shulker Box Upgrade
});

# [Gold to Diamond Shulker Box Upgrade] from [Silver to Gold Shulker Box Upgrade][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/gold_diamond_shulker_upgrade");
craft.make(<ironchest:gold_diamond_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ S □",
  "□ □ □"], {
  "□": <ore:plateDiamond>,                      # Diamond Plate
  "S": <ironchest:silver_gold_shulker_upgrade> | <ironchest:iron_gold_shulker_upgrade>, # Silver to Gold Shulker Box Upgrade
});

# [Vanilla to Copper Shulker Box Upgrade] from [Shulker Shell][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/vanilla_copper_shulker_upgrade");
craft.make(<ironchest:vanilla_copper_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ S □",
  "□ □ □"], {
  "□": <ore:plateCopper>,  # Copper Plate
  "S": <ore:shulkerBox>, # Shulker Shell
});

# [Copper to Silver Shulker Box Upgrade] from [Vanilla to Copper Shulker Box Upgrade][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/copper_silver_shulker_upgrade");
craft.make(<ironchest:copper_silver_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ V □",
  "□ □ □"], {
  "□": <ore:plateSilver>,                          # Silver Plate
  "V": <ironchest:vanilla_copper_shulker_upgrade>, # Vanilla to Copper Shulker Box Upgrade
});

# [Silver to Gold Shulker Box Upgrade] from [Vanilla to Copper Shulker Box Upgrade][+1]
recipes.removeByRecipeName("ironchest:upgrade/shulker/silver_gold_shulker_upgrade");
craft.make(<ironchest:silver_gold_shulker_upgrade>, ["pretty",
  "□ □ □",
  "□ V □",
  "□ □ □"], {
  "□": <ore:plateGold>,                          # Gold Plate
  "V": <ironchest:copper_silver_shulker_upgrade>, # Vanilla to Iron Shulker Box Upgrade
});

# [Diamond to Crystal Shulker Box Upgrade] from [Shulker Shell][+2]
recipes.removeByRecipeName("ironchest:upgrade/shulker/diamond_crystal_shulker_upgrade");
craft.make(<ironchest:diamond_crystal_shulker_upgrade>, ["pretty",
  "G G G",
  "G S G",
  "G G G"], {
  "G": <ore:blockGlassHardened>, # Strengthened Glass
  "□": <ore:plateDiamond>,      # Diamond Plate
  "S": <ironchest:gold_diamond_shulker_upgrade>,      # Shulker Shell
});

# [Diamond to Obsidian Shulker Box Upgrade] from [Shulker Shell][+2]
recipes.removeByRecipeName("ironchest:upgrade/shulker/diamond_obsidian_shulker_upgrade");
craft.make(<ironchest:diamond_obsidian_shulker_upgrade>, ["pretty",
  "o o o",
  "o S o",
  "o o o"], {
  "o": <ore:obsidian>, # Obsidian
  "S": <ironchest:gold_diamond_shulker_upgrade>, # Shulker Shell
});

# [Copper Chest] from [Chest][+1]
craft.make(<ironchest:iron_chest:3>, ["pretty",
  "□ □ □",
  "□ c □",
  "□ □ □"], {
  "□": <ore:plateCopper>,             # Copper Plate
  "c": <ore:chestWood>, # Chest
});

# [Silver Chest] from [Copper Chest][+1]
craft.make(<ironchest:iron_chest:4>, ["pretty",
  "□ □ □",
  "□ C □",
  "□ □ □"], {
  "□": <ore:plateSilver>,        # Silver Plate
  "C": <ironchest:iron_chest:3>, # Copper Chest
});

# [Iron Chest] from [Chest][+1]
craft.make(<ironchest:iron_chest>, ["pretty",
  "□ □ □",
  "□ c □",
  "□ □ □"], {
  "□": <ore:plateIron>,               # Iron Plate
  "c": <ore:chestWood>, # Chest
});

# [Gold Chest] from [Iron Chest][+1]
craft.make(<ironchest:iron_chest:1>, ["pretty",
  "□ □ □",
  "□ I □",
  "□ □ □"], {
  "□": <ore:plateGold>,        # Gold Plate
  "I": <ironchest:iron_chest> | <ironchest:iron_chest:4>, # Iron or Silver Chest
});

# [Diamond Chest] from [Gold Chest][+1]
craft.make(<ironchest:iron_chest:2>, ["pretty",
  "□ □ □",
  "□ G □",
  "□ □ □"], {
  "□": <ore:plateDiamond>,       # Diamond Plate
  "G": <ironchest:iron_chest:1>, # Gold Chest
});

# [Obsidian Chest] from [Diamond Chest][+1]
recipes.removeByRecipeName("ironchest:chest/obsidian/diamond_obsidian_chest");
craft.make(<ironchest:iron_chest:6>, ["pretty",
  "o o o",
  "o D o",
  "o o o"], {
  "o": <ore:obsidian> | <ore:blockObsidian> | <ore:stoneObsidian>, # Obsidian
  "D": <ironchest:iron_chest:2>, # Diamond Chest
});

# [Crystal Chest] from [Diamond Chest][+1]
recipes.removeByRecipeName("ironchest:chest/crystal/diamond_crystal_chest");
craft.make(<ironchest:iron_chest:5>, ["pretty",
  "G G G",
  "G D G",
  "G G G"], {
  "G": <ore:blockGlassHardened>,  # Strengthened Glass
  "D": <ironchest:iron_chest:2>, # Diamond Chest
});

