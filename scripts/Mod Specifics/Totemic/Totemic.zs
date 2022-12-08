///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Totemic Script                                                                                                                   //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Totem Whittling Knife (Totem Base)
recipes.remove(<totemic:totem_whittling_knife>);
recipes.addShaped(<totemic:totem_whittling_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "iron"})], [null, <ore:stickTreatedWood>, <pyrotech:material:26>],[<ore:stickTreatedWood>, null, null]]);

// Totemist Drum
recipes.remove(<totemic:drum>);
recipes.addShaped(<totemic:drum> * 1, [[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>], [<ore:frameGtTreatedWood>, <pyrotech:wool_tarred>, <ore:frameGtTreatedWood>],[<pyrotech:wool_tarred>, <ore:frameGtTreatedWood>, <pyrotech:wool_tarred>]]);

// Wind Chime
recipes.remove(<totemic:wind_chime>);
recipes.addShaped(<totemic:wind_chime> * 1, [[<ore:plateBronze>, <ore:plateTreatedWood>, <ore:plateBronze>], [<ore:stickTreatedWood>, <pyrotech:material:26>, <ore:stickTreatedWood>],[null, null, <ore:stickTreatedWood>]]);

// Flute
recipes.remove(<totemic:flute>);
recipes.addShaped(<totemic:flute> * 1, [[null, <ore:treeLeaves>, <ore:stickTreatedWood>], [null, <ore:stickTreatedWood>, null],[<ore:stickTreatedWood>, null, null]]);

// Medicine Bag
recipes.remove(<totemic:medicine_bag>);
recipes.addShaped(<totemic:medicine_bag> * 1, [[<totemic:cedar_plank>, <pyrotech:material:26>, <totemic:buffalo_items:1>], [<totemic:buffalo_items:0>, <minecraft:diamond>, <totemic:buffalo_items:0>],[<pyrotech:material:23>, <totemic:buffalo_items:0>, <pyrotech:material:23>]]);

// Rattle
recipes.remove(<totemic:rattle>);
recipes.addShaped(<totemic:rattle> * 1, [[null, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<pyrotech:material:23>, <totemic:buffalo_items:1>, <ore:plateTreatedWood>],[<ore:stickTreatedWood>, <pyrotech:material:23>, null]]);

// Iron Bells
recipes.remove(<totemic:sub_items:1>);
recipes.addShaped(<totemic:sub_items:1> * 1, [[<ore:gtceScrewdrivers>, null, <ore:gtceFiles>], [<ore:ringIron>, <ore:screwIron>, <ore:ringIron>],[<ore:stickIron>, <ore:ringIron>, <ore:stickIron>]]);

// Jingle Dress
recipes.remove(<totemic:jingle_dress>);
recipes.addShaped(<totemic:jingle_dress> * 1, [[<pyrotech:material:26>, <ore:treeLeaves>, <pyrotech:material:26>], [<totemic:sub_items:1>, <totemic:buffalo_items:0>, <totemic:sub_items:1>],[<ore:treeLeaves>, <totemic:sub_items:1>, <ore:treeLeaves>]]);

// Eagle-Bone Whistle
recipes.remove(<totemic:eagle_bone_whistle>);
recipes.addShaped(<totemic:eagle_bone_whistle> * 1, [[null, null, <totemic:eagle_drops:0>], [<pyrotech:material:26>, <totemic:eagle_drops:0>, null],[<totemic:eagle_drops:1>, <pyrotech:material:26>, null]]);

