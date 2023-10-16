# [Scaffolding] from [Iron Screwdriver][+3]
recipes.removeByRecipeName("openglider:glider_scaffolding");
craft.make(<openglider:hang_glider_part:2>, ["pretty",
  "I ╱ I",
  "╱ S ╱",
  "╱ □ ╱"], {
  "I": <ore:screwIron>, # Iron Screw
  "╱": <ore:stickIron>, # Iron Rod
  "S": <ore:gtceScrewdrivers>, # Iron Screwdriver
  "□": <ore:plateIron>, # Iron Plate
});

# [Glider Wing (Left)] from [Tarred Board][+1]
recipes.removeByRecipeName("openglider:glider_wing_left");
craft.make(<openglider:hang_glider_part>, ["pretty",
  "  T D",
  "T D D",
  "D D D"], {
  "T": <pyrotech:material:23>, # Tarred Board
  "D": <pyrotech:material:42>, # Durable Leather Sheet
});

# [Glider Wing (Right)] from [Tarred Board][+1]
recipes.removeByRecipeName("openglider:glider_wing_right");
craft.make(<openglider:hang_glider_part:1>, ["pretty",
  "D T  ",
  "D D T",
  "D D D"], {
  "D": <pyrotech:material:42>, # Durable Leather Sheet
  "T": <pyrotech:material:23>, # Tarred Board
});