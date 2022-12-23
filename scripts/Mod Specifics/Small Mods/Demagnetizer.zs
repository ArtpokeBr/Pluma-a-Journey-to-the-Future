# [Demagnetizer] from [LV Machine Casing][+4]
recipes.removeByRecipeName("demagnetize:demagnetizer");
craft.make(<demagnetize:demagnetizer>, ["pretty",
  "□ ¤ □",
  "⌂ L ⌂",
  "□ V □"], {
  "□": <ore:lightPlateTin>,        # Light Tin Plate
  "¤": <ore:gearRestonia>,         # Restonia Gear
  "⌂": <ore:casingSteelMagnetic>,          # Steel Casing
  "L": <ore:LVCasing>,             # LV Machine Casing
  "V": <gregtech:meta_item_1:127>, # LV Electric Motor
});

# [Advanced Demagnetizer] from [LV Machine Casing][+4]
recipes.removeByRecipeName("demagnetize:demagnetizer_advanced");
craft.make(<demagnetize:demagnetizer_advanced>, ["pretty",
  "□ * □",
  "⌂ L ⌂",
  "□ V □"], {
  "□": <ore:lightPlateElectricalSteel>, # Light Electrical Steel Plate
  "*": <ore:empoweredEndorCrystal>,     # Empowered Endor Crystal
  "⌂": <ore:casingSteelMagnetic>,               # Steel Casing
  "L": <ore:LVCasing>,                  # LV Machine Casing
  "V": <gregtech:meta_item_1:127>,      # LV Electric Motor
});
