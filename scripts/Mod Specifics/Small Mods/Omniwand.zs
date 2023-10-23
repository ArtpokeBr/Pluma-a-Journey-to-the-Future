# [Omniwand] from [Iron Hammer][+5]
recipes.removeByRecipeName("omniwand:wand");
craft.make(<omniwand:wand>, ["pretty",
  "H □ e",
  "P ╱ □",
  "╱ P S"], {
  "H": <ore:gtceHardHammers>, # Iron Hammer
  "□": <ore:plateSteel>,         # Steel Plate
  "e": <ore:enderpearl> | <ore:gemEnderPearl>, # Ender Pearl
  "P": <ore:screwPulsatingIron>, # Pulsating Iron Screw
  "╱": <ore:stickPulsatingIron>, # Pulsating Iron Rod
  "S": <ore:gtceScrewdrivers>,   # Iron Screwdriver
});