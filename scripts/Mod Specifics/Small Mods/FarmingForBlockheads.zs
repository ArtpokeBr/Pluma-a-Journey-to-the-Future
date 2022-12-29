# [Market] from [Impregnated Chassis][+3]
recipes.removeByRecipeName("farmingforblockheads:market");
craft.make(<farmingforblockheads:market>, ["pretty",
  "T R T",
  "# I #",
  "# # #"], {
  "T": <pyrotech:planks_tarred>,      # Tarred Planks
  "R": <quark:quilted_wool:14>,       # Red Quilted Wool
  "#": <ore:logWood>,                 # Charred Log
  "I": <ore:chestWood>,               # Chest
});

# [Chicken Nest] from [Straw Bale][+1]
recipes.removeByRecipeName("farmingforblockheads:chicken_nest");
craft.make(<farmingforblockheads:chicken_nest>, ["pretty",
  "     ",
  "     ",
  "B S B"], {
  "B": <pyrotech:material:20>, # Board
  "S": <pyrotech:thatch>,      # Straw Bale
});

# [Red Fertilizer]*16 from [Bone Meal Bag][+3]
recipes.removeByRecipeName("farmingforblockheads:fertilizer_red");
craft.make(<farmingforblockheads:fertilizer> * 16, ["pretty",
  "p M p",
  "P B P",
  "p M p"], {
  "p": <ore:paper> | <ore:platePaper> | <ore:paperEmpty>, # Paper
  "M": <ore:Mulch>,            # Mulch
  "P": <pyrotech:pyroberries>, # Pyroberries
  "B": <natura:bonemeal_bag>,  # Bone Meal Bag
});

# [Green Fertilizer]*16 from [Bone Meal Bag][+3]
recipes.removeByRecipeName("farmingforblockheads:fertilizer_green");
craft.make(<farmingforblockheads:fertilizer:1> * 16, ["pretty",
  "p M p",
  "G B G",
  "p M p"], {
  "p": <ore:paper> | <ore:platePaper> | <ore:paperEmpty>, # Paper
  "M": <ore:Mulch>,             # Mulch
  "G": <pyrotech:gloamberries>, # Gloamberries
  "B": <natura:bonemeal_bag>,   # Bone Meal Bag
});

# [Yellow Fertilizer]*16 from [Bone Meal Bag][+3]
recipes.removeByRecipeName("farmingforblockheads:fertilizer_yellow");
craft.make(<farmingforblockheads:fertilizer:2> * 16, ["pretty",
  "p M p",
  "F B F",
  "p M p"], {
  "p": <ore:paper> | <ore:platePaper> | <ore:paperEmpty>, # Paper
  "M": <ore:Mulch>,               # Mulch
  "F": <pyrotech:freckleberries>, # Freckleberries
  "B": <natura:bonemeal_bag>,     # Bone Meal Bag
});
