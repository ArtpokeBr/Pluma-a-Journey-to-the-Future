import mods.jei.JEI as JEI;

# There's no reason for this Sawblade to exist
JEI.removeAndHide(<architecturecraft:sawblade>);

// Architect's Sawbench
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench> * 1, [[<ore:lightPlateIron>, <gregtech:meta_tool_head_buzz_saw:51>, <ore:lightPlateIron>], [<forestry:oak_stick>, <architecturecraft:largepulley>, <forestry:oak_stick>],[<forestry:oak_stick>, <ore:frameGtTreatedWood>, <forestry:oak_stick>]]);

// Large Pulley
recipes.remove(<architecturecraft:largepulley>);
recipes.addShaped(<architecturecraft:largepulley> * 1, [[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<ore:plateTreatedWood>, <forestry:oak_stick>, <ore:plateTreatedWood>],[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]]);

// Architect's Hammer
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer> * 1, [[<ore:lightPlateIron>, <ore:plateIron>, <ore:gtceHardHammers>], [<ore:screwIron>, <ore:stickBronze>, <ore:plateIron>],[<ore:gtceScrewdrivers>, <ore:stickBronze>, <ore:gtceFiles>]]);

// Architect's Chisel
recipes.remove(<architecturecraft:chisel>);
recipes.addShaped(<architecturecraft:chisel> * 1, [[null, <ore:lightPlateIron>, null], [<ore:screwIron>, <ore:lightPlateIron>, <ore:screwIron>],[<ore:gtceScrewdrivers>, <ore:stickBronze>, <ore:gtceHardHammers>]]);


