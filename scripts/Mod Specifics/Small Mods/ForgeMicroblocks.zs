# [Stone Saw] from [Flint Shard][+2]
recipes.removeByRecipeName("microblockcbe:stone_saw");
craft.make(<microblockcbe:saw_stone>, ["pretty",
  "     ",
  "# ╱ ╱",
  "# F ╱"], {
  "#": <ore:stickTreatedWood>, # Treated Wood Stick
  "╱": <ore:stickStone>,       # Stone Rod
  "F": <pyrotech:material:10>, # Flint Shard
});

# [Iron Saw] from [Iron Shard][+2]
recipes.removeByRecipeName("microblockcbe:iron_saw");
craft.make(<microblockcbe:saw_iron>, ["pretty",
  "     ",
  "# ╱ ╱",
  "# I ╱"], {
  "#": <ore:stickTreatedWood>, # Treated Wood Stick
  "╱": <ore:stickStone>,       # Stone Rod
  "I": <pyrotech:material:19>, # Iron Shard
});

# [Diamond Saw] from [Diamond Shard][+2]
recipes.removeByRecipeName("microblockcbe:diamond_saw");
craft.make(<microblockcbe:saw_diamond>, ["pretty",
  "     ",
  "# ╱ ╱",
  "# D ╱"], {
  "#": <ore:stickTreatedWood>, # Treated Wood Stick
  "╱": <ore:stickStone>,       # Stone Rod
  "D": <pyrotech:material:18>, # Diamond Shard
});