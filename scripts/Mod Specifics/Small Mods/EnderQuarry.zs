# [Ender Quarry] from [Black Iron Chassis][+4]
craft.remake(<enderquarrymod:enderquarry>, ["pretty",
  "□ n □",
  "E B E",
  "□ U □"], {
  "□": <ore:heavyPlateRefinedObsidian>, # Heavy Refined Obsidian Plate
  "n": <enderutilities:enderpart:17>,   # Ender Core (Advanced)
  "E": <ore:springEnderium>,            # Enderium Spring
  "B": <extendedcrafting:frame>,        # Black Iron Chassis
  "U": <darkutils:material:1>,          # Unstable Ender Pearl
});

# [Ender Marker]*4 from [Unstable Ender Pearl][+4]
craft.remake(<enderquarrymod:endermarker> * 4, ["pretty",
  "  U  ",
  "T ╱ T",
  "S ╱ o"], {
  "U": <darkutils:material:1>,     # Unstable Ender Pearl
  "T": <ore:screwTitanium>,        # Titanium Screw
  "╱": <ore:stickRefinedObsidian>, # Refined Obsidian Rod
  "S": <ore:artisansSolderer>.reuse().transformDamage(10), # Artisan's Solderer
  "o": <ore:gtceScrewdrivers>,     # Screwdriver
});

# [Ender Quarry World Hole Upgrade] from [Dense Refined Obsidian Plate][+2]
craft.remake(<enderquarrymod:upgradevoid>, ["pretty",
  "1 □ 1",
  "□ п □",
  "1 □ 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "□": <ore:lightPlateIron>,            # Light Iron Plate
  "п": <ore:plateDenseRefinedObsidian>, # Dense Refined Obsidian Plate
});

# [Ender Quarry Silk Touch Upgrade] from [Dense Refined Obsidian Plate][+2]
craft.remake(<enderquarrymod:upgradesilk>, ["pretty",
  "1 S 1",
  "S □ S",
  "1 S 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "S": <tconstruct:materials:16>,       # Silky Jewel
  "□": <ore:plateDenseRefinedObsidian>, # Dense Refined Obsidian Plate
});

# [Ender Quarry Fortune I Upgrade] from [Dense Refined Obsidian Plate][+2]
craft.remake(<enderquarrymod:upgradefortunei>, ["pretty",
  "1 E 1",
  "E □ E",
  "1 E 1"], {
  "1": <ore:compressed1xObsidian>,               # 1x Compressed Obsidian
  "E": <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35}]}), # Fortune I Book
  "□": <ore:plateDenseRefinedObsidian>,          # Dense Refined Obsidian Plate
});

# [Ender Quarry Fortune II Upgrade] from [Ender Quarry Fortune I Upgrade][+2]
craft.remake(<enderquarrymod:upgradefortuneii>, ["pretty",
  "1 E 1",
  "E n E",
  "1 E 1"], {
  "1": <ore:compressed1xObsidian>,               # 1x Compressed Obsidian
  "E": <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35}]}), # Fortune II Book
  "n": <enderquarrymod:upgradefortunei>,         # Ender Quarry Fortune I Upgrade
});

# [Ender Quarry Fortune III Upgrade] from [Ender Quarry Fortune II Upgrade][+2]
craft.remake(<enderquarrymod:upgradefortuneiii>, ["pretty",
  "1 E 1",
  "E n E",
  "1 E 1"], {
  "1": <ore:compressed1xObsidian>,               # 1x Compressed Obsidian
  "E": <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35}]}), # Fortune III Book
  "n": <enderquarrymod:upgradefortuneii>,        # Ender Quarry Fortune II Upgrade
});

# [Ender Quarry Speed I Upgrade] from [Dense Refined Obsidian Plate][+2]
craft.remake(<enderquarrymod:upgradespeedi>, ["pretty",
  "1 U 1",
  "U □ U",
  "1 U 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "U": <ore:xuUpgradeSpeed>,            # Upgrade Speed
  "□": <ore:plateDenseRefinedObsidian>, # Dense Refined Obsidian Plate
});

# [Ender Quarry Speed II Upgrade] from [Ender Quarry Speed I Upgrade][+2]
craft.remake(<enderquarrymod:upgradespeedii>, ["pretty",
  "1 U 1",
  "U □ U",
  "1 U 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "U": <ore:xuUpgradeSpeedEnchanted>,   # Upgrade Speed (Magical)
  "□": <enderquarrymod:upgradespeedi>, # Ender Quarry Speed I Upgrade
});

# [Ender Quarry Speed III Upgrade] from [Ender Quarry Speed II Upgrade][+2]
craft.remake(<enderquarrymod:upgradespeediii>, ["pretty",
  "1 U 1",
  "U □ U",
  "1 U 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "U": <ore:xuUpgradeSpeedEnchanted>,   # Upgrade Speed (Ultimate)
  "□": <enderquarrymod:upgradespeedii>, # Ender Quarry Speed II Upgrade
});

# [Ender Quarry Pump Upgrade] from [Dense Refined Obsidian Plate][+4]
craft.remake(<enderquarrymod:upgradepump>, ["pretty",
  "1 ≈ 1",
  "~ □ ~",
  "1 E 1"], {
  "1": <ore:compressed1xObsidian>,      # 1x Compressed Obsidian
  "≈": <enderutilities:enderbucket>,    # Ender Bucket
  "~": <minecraft:bucket>,              # Bucket
  "□": <ore:plateDenseRefinedObsidian>, # Dense Refined Obsidian Plate
  "E": <gregtech:meta_item_1:145>,      # EV Electric Pump
});