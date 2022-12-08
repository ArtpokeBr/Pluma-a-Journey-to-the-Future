///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Improved Backpacks Script                                                                                                        //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Backpack
recipes.remove(<improvedbackpacks:backpack>);
recipes.addShaped(<improvedbackpacks:backpack> * 1, [[<pyrotech:material:43>, <pyrotech:material:44>, <pyrotech:material:43>], [<pyrotech:material:42>, <gregtech:machine:1625>, <pyrotech:material:42>],[<pyrotech:material:43>, <pyrotech:material:42>, <pyrotech:material:43>]]);

// Blank Upgrade
recipes.remove(<improvedbackpacks:blank_upgrade>);
recipes.addShaped(<improvedbackpacks:blank_upgrade> * 1, [[<forestry:oak_stick>, <pyrotech:material:41>, <forestry:oak_stick>], [<forestry:oak_stick>, <ore:pattern>, <forestry:oak_stick>],[<forestry:oak_stick>, <pyrotech:material:41>, <forestry:oak_stick>]]);

// Storage Upgrade (Wood)
recipes.remove(<improvedbackpacks:upgrade:0>);
recipes.addShaped(<improvedbackpacks:upgrade:0> * 1, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:plateTreatedWood>, <improvedbackpacks:blank_upgrade>, <ore:plateTreatedWood>],[<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Storage Upgrade (Stone)
recipes.remove(<improvedbackpacks:upgrade:1>);
recipes.addShaped(<improvedbackpacks:upgrade:1> * 1, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:plateStone>, <improvedbackpacks:upgrade:0>, <ore:plateStone>],[<ore:stone>, <ore:stone>, <ore:stone>]]);

// Storage Upgrade (Iron)
recipes.remove(<improvedbackpacks:upgrade:2>);
recipes.addShaped(<improvedbackpacks:upgrade:2> * 1, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:lightPlateIron>, <improvedbackpacks:upgrade:1>, <ore:lightPlateIron>],[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Storage Upgrade (Gold)
recipes.remove(<improvedbackpacks:upgrade:3>);
recipes.addShaped(<improvedbackpacks:upgrade:3> * 1, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:lightPlateGold>, <improvedbackpacks:upgrade:2>, <ore:lightPlateGold>],[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

// Storage Upgrade (Diamond)
recipes.remove(<improvedbackpacks:upgrade:4>);
recipes.addShaped(<improvedbackpacks:upgrade:4> * 1, [[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], [<ore:gemFlawlessDiamond>, <improvedbackpacks:upgrade:3>, <ore:gemFlawlessDiamond>],[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);

