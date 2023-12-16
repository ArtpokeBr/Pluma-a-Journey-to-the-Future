#modloaded ic2

import mods.nuclearcraft.Manufactory as Manufactory;

//Rubber Planks in the Manufactory
Manufactory.addRecipe(<ore:woodRubber>, <gregtech:planks>*6);

// Correcting Rubber Wood (Now Uses Rubber from IC2)
<recipemap:centrifuge>.findRecipe(20, [<gregtech:rubber_log:0>], null).remove();
centrifuge.recipeBuilder()
	.inputs(<ore:woodRubber>)
    .fluidOutputs(<liquid:methane>*60)
    .chancedOutput(<ore:dustCarbon>.firstItem, 2500, 600)
    .chancedOutput(<ore:dustWood>.firstItem, 2500, 700)
    .chancedOutput(<gregtech:meta_item_1:439>, 3705, 900)
    .chancedOutput(<ic2:misc_resource:4>, 5000, 1200)
	.duration(160)
	.EUt(20)
.buildAndRegister();

<recipemap:extractor>.findRecipe(2, [<gregtech:rubber_log:0>], null).remove();
extractor.recipeBuilder()
	.inputs(<ic2:rubber_wood>)
    .outputs(<ore:dustRawRubber>.firstItem)
	.duration(300)
	.EUt(2)
.buildAndRegister();


<recipemap:extractor>.findRecipe(2, [<gregtech:rubber_leaves:0> * 16], null).remove();
extractor.recipeBuilder()
	.inputs(<ic2:leaves>*16)
    .outputs(<ore:dustRawRubber>.firstItem)
	.duration(300)
	.EUt(2)
.buildAndRegister();

<recipemap:extractor>.findRecipe(2, [<gregtech:rubber_sapling:0>], null).remove();
extractor.recipeBuilder()
	.inputs(<ic2:sapling>)
    .outputs(<ore:dustRawRubber>.firstItem)
	.duration(300)
	.EUt(2)
.buildAndRegister();

//Adding Convertions
recipes.addShapeless(<ic2:misc_resource:4>, [<gregtech:meta_item_1:438>]);
recipes.addShapeless(<gregtech:meta_item_1:438>, [<ic2:misc_resource:4>]);

//Adding GT's to IC2's Sticky Resing OreDict
<ore:itemResin>.add(<gregtech:meta_item_1:438>);
<ore:materialResin>.add(<gregtech:meta_item_1:438>);

//Readding Furnace Slime -> Sticky Resin Recipe (Currently Commented, as it makes Sticky Resin Production too trivial)
furnace.remove(<gregtech:meta_item_1:438>);
//furnace.addRecipe(<ic2:misc_resource:4>, <ore:slimeballGreen>.firstItem);

//Adding Rubber Wood log to LogWood OreDict
<ore:logWood>.add(<ic2:rubber_wood>);

//Removing GT's Sticky Resin Torch Recipe
recipes.removeByRecipeName("gregtech:sticky_resin_torch");

// Raw Rubber Pulp * 3
<recipemap:extractor>.findRecipe(2, [<metaitem:rubber_drop>], null).remove();
extractor.recipeBuilder()
	.inputs(<ic2:misc_resource:4>)
    .outputs(<ore:dustRawRubber>.firstItem*3)
	.duration(150)
	.EUt(2)
.buildAndRegister();

// Raw Rubber Pulp * 3
<recipemap:centrifuge>.findRecipe(5, [<metaitem:rubber_drop>], null).remove();
centrifuge.recipeBuilder()
	.inputs(<ore:itemResin>)
    .fluidOutputs(<liquid:glue>*100)
    .outputs(<ore:dustRawRubber>.firstItem*3)
    .chancedOutput(<gregtech:meta_item_1:439>, 1000, 850)
	.duration(400)
	.EUt(5)
.buildAndRegister();

// Sticky Piston * 1
<recipemap:assembler>.findRecipe(4, [<metaitem:rubber_drop>, <minecraft:piston:0>], null).remove();
assembler.recipeBuilder()
	.inputs(<minecraft:piston>, <ore:itemResin>)
    .outputs(<minecraft:sticky_piston>)
	.duration(100)
	.EUt(4)
.buildAndRegister();

// A Bunch Crafting Table Recipes using GT's Sticky Resin --> IC2's Sticky Resin

# [Resistor]*2 from [Coal Dust][+3]
recipes.removeByRecipeName("gregtech:resistor_wire_fine");
recipes.removeByRecipeName("gregtech:resistor_wire_fine_carbon");
recipes.removeByRecipeName("gregtech:resistor_wire_charcoal");
recipes.removeByRecipeName("gregtech:resistor_wire");
recipes.removeByRecipeName("gregtech:resistor_wire_carbon");
recipes.removeByRecipeName("gregtech:resistor_wire_fine_charcoal");
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "G © G",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "p": <ore:paper>, # Paper
  "G": <ore:wireGtSingleCopper>,              # 1x Copper Wire
  "©": <ore:dustCoal>,                        # Coal Dust
});

# [Resistor]*2 from [Coal Dust][+3]
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "F © F",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "p": <ore:paper>, # Paper
  "F": <ore:wireFineCopper>,                  # Fine Copper Wire
  "©": <ore:dustCoal>,                        # Coal Dust
});

# [Resistor]*2 from [Charcoal Dust][+3]
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "G ▲ G",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "p": <ore:paper>, # Paper
  "G": <ore:wireGtSingleCopper>,              # 1x Copper Wire
  "▲": <ore:dustCharcoal>,                    # Charcoal Dust
});

# [Resistor]*2 from [Charcoal Dust][+3]
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "F ▲ F",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "p": <ore:paper>, # Paper
  "F": <ore:wireFineCopper>,                  # Fine Copper Wire
  "▲": <ore:dustCharcoal>,                    # Charcoal Dust
});

# [Resistor]*2 from [Carbon Dust][+3]
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "G ▲ G",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "p": <ore:paper>, # Paper
  "▲": <ore:dustCarbon>,                      # Carbon Dust
  "G": <ore:wireGtSingleCopper>,              # 1x Copper Wire
});

# [Resistor]*2 from [Carbon Dust][+3]
craft.make(<gregtech:meta_item_1:519> * 2, ["pretty",
  "R p R",
  "F ▲ F",
  "  p  "], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "▲": <ore:dustCarbon>, # Dust Carbon
  "p": <ore:paper>, # Paper
  "F": <ore:wireFineCopper>,                  # Fine Copper Wire
});

# [Coated Circuit Board]*3 from [Wood Plank][+1]
recipes.removeByRecipeName("gregtech:coated_board");
recipes.removeByRecipeName("gregtech:coated_board_1x");
craft.make(<gregtech:meta_item_1:381> * 3, ["pretty",
  "R R R",
  "# # #",
  "R R R"], {
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
  "#": <ore:plateWood>,     # Wood Plank
});

# [Coated Circuit Board] from [Wood Plank][+1]
craft.make(<gregtech:meta_item_1:381>, ["pretty",
  "# R",
  "R  "], {
  "#": <ore:plateWood>,     # Wood Plank
  "R": <ore:materialResin> | <ore:itemResin>, # Sticky Resin
});

# [Book] from [Sticky Resin][+3]
recipes.removeByRecipeName("gregtech:book");
craft.make(<minecraft:book>, ["pretty",
  "s p l",
  "s p R",
  "s p l"], {
  "s": <ore:string>, # String
  "p": <ore:paper>, # Paper
  "l": <ore:leather>,           # Leather
  "R": <ore:materialResin> | <ore:itemResin>,       # Sticky Resin
});

// Rubber Wood Planks * 6
saw.recipeBuilder()
	.inputs(<ore:woodRubber>)
    .outputs(<gregtech:planks>*6, <ore:dustWood>.firstItem*2)
	.duration(400)
	.EUt(7)
.buildAndRegister();

