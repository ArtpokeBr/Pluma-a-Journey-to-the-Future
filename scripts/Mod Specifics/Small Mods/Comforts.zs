recipes.removeByRecipeName("comforts:sleeping_bag_white");
recipes.removeByRecipeName("comforts:sleeping_bag_orange");
recipes.removeByRecipeName("comforts:sleeping_bag_magenta");
recipes.removeByRecipeName("comforts:sleeping_bag_light_blue");
recipes.removeByRecipeName("comforts:sleeping_bag_yellow");
recipes.removeByRecipeName("comforts:sleeping_bag_lime");
recipes.removeByRecipeName("comforts:sleeping_bag_pink");
recipes.removeByRecipeName("comforts:sleeping_bag_gray");
recipes.removeByRecipeName("comforts:sleeping_bag_lightgray");
recipes.removeByRecipeName("comforts:sleeping_bag_cyan");
recipes.removeByRecipeName("comforts:sleeping_bag_purple");
recipes.removeByRecipeName("comforts:sleeping_bag_blue");
recipes.removeByRecipeName("comforts:sleeping_bag_brown");
recipes.removeByRecipeName("comforts:sleeping_bag_green");
recipes.removeByRecipeName("comforts:sleeping_bag_red");
recipes.removeByRecipeName("comforts:sleeping_bag_black");

// Sleeping Bag White
recipes.addShaped(<comforts:sleeping_bag> * 1, [[null, null, null], [<ore:hideBuffalo>, <ore:hideBuffalo>, <quark:quilted_wool>],[null, null, null]]);

## Hammocks =============

recipes.removeByRecipeName("comforts:hammock_white");
recipes.removeByRecipeName("comforts:hammock_orange");
recipes.removeByRecipeName("comforts:hammock_magenta");
recipes.removeByRecipeName("comforts:hammock_light_blue");
recipes.removeByRecipeName("comforts:hammock_yellow");
recipes.removeByRecipeName("comforts:hammock_lime");
recipes.removeByRecipeName("comforts:hammock_pink");
recipes.removeByRecipeName("comforts:hammock_gray");
recipes.removeByRecipeName("comforts:hammock_lightgray");
recipes.removeByRecipeName("comforts:hammock_cyan");
recipes.removeByRecipeName("comforts:hammock_purple");
recipes.removeByRecipeName("comforts:hammock_blue");
recipes.removeByRecipeName("comforts:hammock_brown");
recipes.removeByRecipeName("comforts:hammock_green");
recipes.removeByRecipeName("comforts:hammock_red");
recipes.removeByRecipeName("comforts:hammock_black");

recipes.addShaped(<comforts:hammock> * 1, [[<ore:twine>, <ore:stickTreatedWood>, <ore:twine>], [<ore:twine>, <quark:quilted_wool>, <ore:twine>],[<ore:twine>, <ore:stickTreatedWood>, <ore:twine>]]);

// Rope and Nail
recipes.remove(<comforts:rope>);
recipes.addShaped(<comforts:rope> * 1, [[<ore:twine>, <ore:twine>, <ore:ringIron>], [<ore:twine>, <ore:boltIron>, <ore:twine>],[null, <ore:twine>, <ore:twine>]]);

