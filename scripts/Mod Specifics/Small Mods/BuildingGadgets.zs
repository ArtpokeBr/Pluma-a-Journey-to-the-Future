// Building Gadgets Recipes


# [Building Gadget] from [Computer Monitor][+4]
recipes.remove(<buildinggadgets:buildingtool>);
craft.remake(<buildinggadgets:buildingtool>, ["pretty",
  "□ п □",
  "H C H",
  "□ v □"], {
  "□": <ore:lightPlateIron>,       # Light Iron Plate
  "п": <tconstruct:large_plate>.withTag({Material: "pink_metal"}), # Pink Metal Large Plate
  "H": <ore:sheetHDPE>,            # HDPE Sheet
  "C": <gregtech:meta_item_1:307>, # Computer Monitor
  "v": <ore:circuitHv>,            # Advanced Integrated Circuit
});

# [Exchanging Gadget] from [Computer Monitor][+4]
recipes.remove(<buildinggadgets:exchangertool>);
craft.remake(<buildinggadgets:exchangertool>, ["pretty",
  "□ п □",
  "H C H",
  "□ v □"], {
  "□": <ore:lightPlateIron>,       # Light Iron Plate
  "п": <tconstruct:large_plate>.withTag({Material: "meat_metal"}), # Meaty Large Plate
  "H": <ore:sheetHDPE>,            # HDPE Sheet
  "C": <gregtech:meta_item_1:307>, # Computer Monitor
  "v": <ore:circuitHv>,            # Advanced Integrated Circuit
});

# [Copy-Paste Gadget] from [Computer Monitor][+4]
recipes.remove(<buildinggadgets:copypastetool>);
craft.remake(<buildinggadgets:copypastetool>, ["pretty",
  "□ п □",
  "H C H",
  "□ v □"], {
  "□": <ore:lightPlateIron>,       # Light Iron Plate
  "п": <tconstruct:large_plate>.withTag({Material: "essence_metal"}), # Essence-Infused Large Plate
  "H": <ore:sheetHDPE>,            # HDPE Sheet
  "C": <gregtech:meta_item_1:307>, # Computer Monitor
  "v": <ore:circuitHv>,            # Advanced Integrated Circuit
});

# [Construction Block Powder]*9 from [Asbestos Dust][+2]
craft.reshapeless(<buildinggadgets:constructionblockpowder> * 9, "1▲B", {
  "1": <ore:compressed1xSand>,          # 1x Compressed Sand
  "▲": <ore:dustAsbestos>,              # Asbestos Dust
  "B": <ore:dyeBlue> | <ore:dustLapis>, # Lapis Dust
});

# [Destruction Gadget] from [Computer Monitor][+4]
recipes.remove(<buildinggadgets:destructiontool>);
craft.remake(<buildinggadgets:destructiontool>, ["pretty",
  "□ * □",
  "H C H",
  "□ v □"], {
  "□": <ore:lightPlateIron>,       # Light Iron Plate
  "*": <tconstruct:large_plate>.withTag({Material: "void_crystal"}), # Void Crystal Large Plate
  "H": <ore:sheetHDPE>,            # HDPE Sheet
  "C": <gregtech:meta_item_1:307>, # Computer Monitor
  "v": <ore:circuitHv>,            # Advanced Integrated Circuit
});

# [Template Manager] from [Machine Case][+3]
recipes.removeByRecipeName("buildinggadgets:templatemanager");
craft.make(<buildinggadgets:templatemanager>, ["pretty",
  "□ E □",
  "H M H",
  "□ E □"], {
  "□": <ore:lightPlateIron>,        # Light Iron Plate
  "E": <ore:circuitEv>,             # Workstation
  "H": <ore:sheetHDPE>,             # HDPE Sheet
  "M": <teslacorelib:machine_case>, # Machine Case
});

# [Paste Container] from [Construction Paste][+2]
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainer");
craft.make(<buildinggadgets:constructionpastecontainer>, ["pretty",
  "□ I □",
  "□ C □",
  "□ I □"], {
  "□": <ore:lightPlateIron>,                # Light Iron Plate
  "I": <ore:springIron>,                    # Iron Spring
  "C": <buildinggadgets:constructionpaste>, # Construction Paste
});

# [Paste Container T2] from [Paste Container][+2]
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainert2");
craft.make(<buildinggadgets:constructionpastecontainert2>, ["pretty",
  "□ G □",
  "□ P □",
  "□ G □"], {
  "□": <ore:lightPlateGold>, # Light Gold Plate
  "G": <ore:springGold>,     # Gold Spring
  "P": <buildinggadgets:constructionpastecontainer>, # Paste Container
});

# [Paste Container T3] from [Paste Container T2][+3]
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainert3");
craft.make(<buildinggadgets:constructionpastecontainert3>, ["pretty",
  "□ A □",
  "D P D",
  "□ A □"], {
  "□": <ore:plateDiamond>,    # Diamond Plate
  "A": <ore:springAluminium>, # Aluminium Spring
  "D": <ore:manaDiamond>,     # Mana Diamond
  "P": <buildinggadgets:constructionpastecontainert2>, # Paste Container T2
});

# [Creative Paste Container] from [Paste Container T3][+3]
craft.remake(<buildinggadgets:constructionpastecontainercreative>, ["pretty",
  "□ 6 □",
  "1 P 1",
  "□ 6 □"], {
  "□": <ore:lightPlateTitanium>, # Light Titanium Plate
  "6": <ore:compressed16xClay>,  # 16x Compressed Clay
  "1": <ore:compressed16xSand>,  # 16x Compressed Sand
  "P": <buildinggadgets:constructionpastecontainert3>, # Paste Container T3
});

# Construction Paste from Dense Construction Block
macerator.recipeBuilder()
    .inputs(<buildinggadgets:constructionblock_dense>)
    .outputs(<buildinggadgets:constructionpaste>*4)
    .duration(200)
    .EUt(48)
.buildAndRegister();

