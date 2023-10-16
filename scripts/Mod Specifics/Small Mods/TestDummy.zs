# [Test Dummy] from [Leather][+5]
recipes.removeByRecipeName("testdummy:dummy");
craft.make(<testdummy:dummy>, ["pretty",
  "L t L",
  "S l S",
  "T #  "], {
  "L": <pyrotech:material:39>,            # Leather Strap
  "t": <pyrotech:thatch>,                 # Straw Bale
  "S": <pyrotech:material:2>,             # Straw
  "l": <ore:leather> | <ore:itemLeather>, # Leather
  "T": <ore:gtceKnife>,                   # Knife
  "#": <forestry:wood_pile>,              # Wood Pile
});

