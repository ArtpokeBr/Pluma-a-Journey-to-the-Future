#modloaded storagedrawers
#modloaded fluiddrawers

// Currently Storage Drawers is Removed due to a Bug related to Inventory Sync, until is fixed, it is disabled.

//# Currently there is Fluid Drawers, Storage Drawers and Framed Compacting Drawers.

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

###############################################################
#                                                             #
#    Drawer Recipe Removals                                   #
#                                                             #
###############################################################

var DrawerRecipeRemovals as IItemStack[] = [
<storagedrawers:basicdrawers>.withTag({material: "oak"}),
<storagedrawers:basicdrawers>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers>.withTag({material: "birch"}),
<storagedrawers:basicdrawers>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:1>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:1>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:2>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:2>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:3>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:3>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:3>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:4>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:4>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:4>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood:*>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood:*>
];
for i in DrawerRecipeRemovals {
recipes.remove(i);
}


###############################################################
#                                                             #
#    Drawer OreDicts                                          #
#                                                             #
###############################################################

var BasicDrawers as IItemStack[] = [
<storagedrawers:basicdrawers>.withTag({material: "oak"}),
<storagedrawers:basicdrawers>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers>.withTag({material: "birch"}),
<storagedrawers:basicdrawers>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood>
];
for i in BasicDrawers {
<ore:basicDrawer>.add(i);
}

var Basic1x2Drawers as IItemStack[] = [
<storagedrawers:basicdrawers:1>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:1>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood:1>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood:1>
];
for i in Basic1x2Drawers {
<ore:basic1x2Drawer>.add(i);
}

var Basic1x4Drawers as IItemStack[] = [
<storagedrawers:basicdrawers:2>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:2>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood:2>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood:2>
];
for i in Basic1x4Drawers {
<ore:basic1x4Drawer>.add(i);
}


var HalfBasic1x2Drawers as IItemStack[] = [
<storagedrawers:basicdrawers:3>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:3>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:3>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood:3>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood:3>
];
for i in HalfBasic1x2Drawers {
<ore:halfBasic1x2Drawer>.add(i);
}

var HalfBasic1x4Drawers as IItemStack[] = [
<storagedrawers:basicdrawers:4>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:4>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:4>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}),
<gregtechdrawers:basicdrawers_gregtech_rubber_wood:4>,
<gregtechdrawers:basicdrawers_gregtech_treated_wood:4>
];
for i in HalfBasic1x4Drawers {
<ore:halfBasic1x4Drawer>.add(i);
}

###############################################################
#                                                             #
#    Drawer Recipes                                           #
#                                                             #
###############################################################

// Basic Fluid Drawer
<fluiddrawers:tank:0>.displayName = "Basic Fluid Drawer";
recipes.remove(<fluiddrawers:tank:0>);

assembler.recipeBuilder()
    .inputs([<ore:plateDarkSteel> * 8, <mia:armored_glass> * 4])
    .fluidInputs([<liquid:super_glue> * 500]) 
    .circuit(8)
    .outputs(<fluiddrawers:tank:0>)
    .duration(100)
    .EUt(16)
    .buildAndRegister();


//Basic Drawer (All Types)

val basicDrawers as IItemStack[][IItemStack] = {
	   <minecraft:planks>   : [<storagedrawers:basicdrawers>.withTag({material: "oak"})]
  , <minecraft:planks:1>  : [<storagedrawers:basicdrawers>.withTag({material: "spruce"})]
	, <minecraft:planks:2>  : [<storagedrawers:basicdrawers>.withTag({material: "birch"})]
	, <minecraft:planks:3>  : [<storagedrawers:basicdrawers>.withTag({material: "jungle"})]	
	, <minecraft:planks:4>  : [<storagedrawers:basicdrawers>.withTag({material: "acacia"})]
	, <minecraft:planks:5>  : [<storagedrawers:basicdrawers>.withTag({material: "dark_oak"})]
  , <gregtech:planks>     : [<gregtechdrawers:basicdrawers_gregtech_rubber_wood>]
  , <gregtech:planks:1>   : [<gregtechdrawers:basicdrawers_gregtech_treated_wood>]		
};

for IItemStack, itemStacks in basicDrawers {
	val outputDrawer = itemStacks[0] as IItemStack;

    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 6, <ore:chestWood>, <pyrotech:material:23> * 2])
    .fluidInputs([<liquid:glue> * 500])
    .circuit(8)
    .outputs(outputDrawer)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [IItemStack, IItemStack, IItemStack],
    [<pyrotech:material:23>, <ore:chestWood>, <pyrotech:material:23>],
    [IItemStack, IItemStack, IItemStack]])
    .setFluid(<liquid:glue> * 500)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(outputDrawer)
    .create();
}

//Basic Drawer 1x2 (All Types)

val basic1x2Drawers as IItemStack[][IItemStack] = {
	  <minecraft:planks>   : [<storagedrawers:basicdrawers:1>.withTag({material: "oak"})]
  , <minecraft:planks:1>  : [<storagedrawers:basicdrawers:1>.withTag({material: "spruce"})]
	, <minecraft:planks:2>  : [<storagedrawers:basicdrawers:1>.withTag({material: "birch"})]
	, <minecraft:planks:3>  : [<storagedrawers:basicdrawers:1>.withTag({material: "jungle"})]	
	, <minecraft:planks:4>  : [<storagedrawers:basicdrawers:1>.withTag({material: "acacia"})]
	, <minecraft:planks:5>  : [<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"})]
  , <gregtech:planks>     : [<gregtechdrawers:basicdrawers_gregtech_rubber_wood:1>]
  , <gregtech:planks:1>   : [<gregtechdrawers:basicdrawers_gregtech_treated_wood:1>]			
};

for IItemStack, itemStacks in basic1x2Drawers {
	val output1x2Drawer = itemStacks[0] as IItemStack;

    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 6, <ore:chestWood> * 2, <pyrotech:material:23> * 1])
    .fluidInputs([<liquid:glue> * 500])
    .circuit(9)
    .outputs(output1x2Drawer * 2)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [IItemStack, IItemStack, IItemStack],
    [<ore:chestWood>, <pyrotech:material:23>, <ore:chestWood>],
    [IItemStack, IItemStack, IItemStack]])
    .setFluid(<liquid:glue> * 500)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(output1x2Drawer * 2)
    .create();
}

//Basic Drawer 2x2 (All Types)

val basic2x2Drawers as IItemStack[][IItemStack] = {
	  <minecraft:planks>   : [<storagedrawers:basicdrawers:2>.withTag({material: "oak"})]
  , <minecraft:planks:1>  : [<storagedrawers:basicdrawers:2>.withTag({material: "spruce"})]
	, <minecraft:planks:2>  : [<storagedrawers:basicdrawers:2>.withTag({material: "birch"})]
	, <minecraft:planks:3>  : [<storagedrawers:basicdrawers:2>.withTag({material: "jungle"})]	
	, <minecraft:planks:4>  : [<storagedrawers:basicdrawers:2>.withTag({material: "acacia"})]
	, <minecraft:planks:5>  : [<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"})]
  , <gregtech:planks>     : [<gregtechdrawers:basicdrawers_gregtech_rubber_wood:2>]
  , <gregtech:planks:1>   : [<gregtechdrawers:basicdrawers_gregtech_treated_wood:2>]						
};

for IItemStack, itemStacks in basic2x2Drawers {
	val output2x2Drawer = itemStacks[0] as IItemStack;

    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 6, <ore:chestWood> * 4, <pyrotech:material:23> * 2])
    .fluidInputs([<liquid:glue> * 500]) 
    .circuit(10)
    .outputs(output2x2Drawer * 4)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [<ore:chestWood>, IItemStack, <ore:chestWood>],
    [<pyrotech:material:23>, IItemStack, <pyrotech:material:23>],
    [<ore:chestWood>, IItemStack, <ore:chestWood>]])
    .setFluid(<liquid:glue> * 500)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(output2x2Drawer * 4)
    .create();
}

//Basic Half Drawer 1x2 (All Types)

val halfbasic1x2Drawers as IItemStack[][IItemStack] = {
	  <minecraft:wooden_slab>   : [<storagedrawers:basicdrawers:3>.withTag({material: "oak"})]
  , <minecraft:wooden_slab:1>  : [<storagedrawers:basicdrawers:3>.withTag({material: "spruce"})]
	, <minecraft:wooden_slab:2>  : [<storagedrawers:basicdrawers:3>.withTag({material: "birch"})]
	, <minecraft:wooden_slab:3>  : [<storagedrawers:basicdrawers:3>.withTag({material: "jungle"})]	
	, <minecraft:wooden_slab:4>  : [<storagedrawers:basicdrawers:3>.withTag({material: "acacia"})]
	, <minecraft:wooden_slab:5>  : [<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"})]
  , <gregtech:planks>          : [<gregtechdrawers:basicdrawers_gregtech_rubber_wood:3>]
  , <gregtech:planks:1>        : [<gregtechdrawers:basicdrawers_gregtech_treated_wood:3>]						
};

for IItemStack, itemStacks in halfbasic1x2Drawers {
	val outputhalf1x2Drawer = itemStacks[0] as IItemStack;

    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 6, <ore:chestWood> * 2, <pyrotech:material:23> * 1])
    .fluidInputs([<liquid:glue> * 500]) 
    .circuit(11)
    .outputs(outputhalf1x2Drawer * 2)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [IItemStack, IItemStack, IItemStack],
    [<ore:chestWood>, <pyrotech:material:23>, <ore:chestWood>],
    [IItemStack, IItemStack, IItemStack]])
    .setFluid(<liquid:glue> * 250)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(outputhalf1x2Drawer * 2)
    .create();
}

//Basic Half Drawer 2x2 (All Types)

val halfbasic2x2Drawers as IItemStack[][IItemStack] = {
	  <minecraft:wooden_slab>   : [<storagedrawers:basicdrawers:4>.withTag({material: "oak"})]
  , <minecraft:wooden_slab:1>  : [<storagedrawers:basicdrawers:4>.withTag({material: "spruce"})]
	, <minecraft:wooden_slab:2>  : [<storagedrawers:basicdrawers:4>.withTag({material: "birch"})]
	, <minecraft:wooden_slab:3>  : [<storagedrawers:basicdrawers:4>.withTag({material: "jungle"})]	
	, <minecraft:wooden_slab:4>  : [<storagedrawers:basicdrawers:4>.withTag({material: "acacia"})]
	, <minecraft:wooden_slab:5>  : [<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"})]
  , <gregtech:planks>     : [<gregtechdrawers:basicdrawers_gregtech_rubber_wood:4>]
  , <gregtech:planks:1>     : [<gregtechdrawers:basicdrawers_gregtech_treated_wood:4>]				
};

for IItemStack, itemStacks in halfbasic2x2Drawers {
	val outputhalf2x2Drawer = itemStacks[0] as IItemStack;

    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 6, <ore:chestWood> * 4, <pyrotech:material:23> * 2])
    .fluidInputs([<liquid:glue> * 500]) 
    .circuit(12)
    .outputs(outputhalf2x2Drawer * 4)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [<ore:chestWood>, IItemStack, <ore:chestWood>],
    [<pyrotech:material:23>, IItemStack, <pyrotech:material:23>],
    [<ore:chestWood>, IItemStack, <ore:chestWood>]])
    .setFluid(<liquid:glue> * 250)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(outputhalf2x2Drawer * 2)
    .create();
}

//Basic Trims (All Types)

val basicTrims as IItemStack[][IItemStack] = {
	  <minecraft:planks>   : [<storagedrawers:trim>]
  , <minecraft:planks:1>  : [<storagedrawers:trim:1>]
	, <minecraft:planks:2>  : [<storagedrawers:trim:2>]
	, <minecraft:planks:3>  : [<storagedrawers:trim:3>]	
	, <minecraft:planks:4>  : [<storagedrawers:trim:4>]
	, <minecraft:planks:5>  : [<storagedrawers:trim:5>]
	, <gregtech:planks>  : [<gregtechdrawers:trim_gregtech_rubber_wood>]
	, <gregtech:planks:1>  : [<gregtechdrawers:trim_gregtech_treated_wood>]		
};

for IItemStack, itemStacks in basicTrims {
	val outputTrim = itemStacks[0] as IItemStack;

    recipes.remove(outputTrim);
    //Assembler Recipe
    assembler.recipeBuilder()
    .inputs([IItemStack * 5, <ore:stickTreatedWood> * 4])
    .fluidInputs([<liquid:glue> * 250])
    .circuit(8)
    .outputs(outputTrim * 4)
    .duration(60)
    .EUt(4)
    .buildAndRegister();

    //Artisan's Recipe
    RecipeBuilder.get("basic")
    .setShaped([
    [<ore:stickTreatedWood>, IItemStack, <ore:stickTreatedWood>],
    [IItemStack, IItemStack, IItemStack],
    [<ore:stickTreatedWood>, IItemStack, <ore:stickTreatedWood>]])
    .setFluid(<liquid:glue> * 250)
    .addTool(<ore:gtceSaws>, 5)
    .addOutput(outputTrim * 2)
    .create();
}

//Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:craftingPiston>, <ore:basic1x2Drawer>, <ore:craftingPiston>],
    [<ore:plateStone>, <ore:gearBronze>, <ore:plateStone>]])
  .setFluid(<liquid:refined_glue> * 200)  
  .addTool(<ore:gtceHardHammers>, 5)
  .addOutput(<storagedrawers:compdrawers>)
  .create();

assembler.recipeBuilder()
    .inputs([<ore:craftingPiston> * 2, <ore:gearBronze>, <ore:basic1x2Drawer>, <ore:plateStone> * 5])
    .fluidInputs([<liquid:refined_glue> * 200]) 
    .circuit(8)
    .outputs(<storagedrawers:compdrawers>)
    .duration(80)
    .EUt(16)
.buildAndRegister();

//Drawer Controller
recipes.remove(<storagedrawers:controller>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:lightPlateConstructionAlloy>, <ore:basicDrawer>, <ore:lightPlateConstructionAlloy>],
    [<ore:plateStone>, <ore:circuitMv>, <ore:plateStone>]])
  .setFluid(<liquid:refined_glue> * 400)   
  .addTool(<ore:gtceHardHammers>, 5)
  .addOutput(<storagedrawers:controller>)
  .create();

assembler.recipeBuilder()
    .inputs([<ore:lightPlateConstructionAlloy> * 2, <ore:plateStone> * 5, <ore:circuitMv>, <ore:basicDrawer>])
    .fluidInputs([<liquid:refined_glue> * 400])
    .circuit(8)
    .outputs(<storagedrawers:controller>)
    .duration(100)
    .EUt(32)
.buildAndRegister();

//Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<minecraft:comparator>, <ore:basicDrawer>, <minecraft:comparator>],
    [<ore:plateStone>, <ore:circuitMv>, <ore:plateStone>]])
  .setFluid(<liquid:refined_glue> * 300)   
  .addTool(<ore:gtceHardHammers>, 5)
  .addOutput(<storagedrawers:controllerslave>)
  .create();

assembler.recipeBuilder()
    .inputs([<minecraft:comparator> * 2, <ore:plateStone> * 5, <ore:circuitMv>, <ore:basicDrawer>])
    .fluidInputs([<liquid:refined_glue> * 300])  
    .circuit(8)
    .outputs(<storagedrawers:controllerslave>)
    .duration(100)
    .EUt(32)
.buildAndRegister();

//Framing Table
recipes.remove(<storagedrawers:framingtable>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:drawerTrim>, <ore:drawerTrim>, <ore:drawerTrim>],
    [<ore:stickLongSteel>, <ore:frameGtTreatedWood>, <ore:stickLongSteel>]])
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<storagedrawers:framingtable>)
  .create();

//Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <ore:paper>, <pyrotech:material:20>],
    [<ore:paper>, <ore:drawerTrim>, <ore:paper>],
    [<pyrotech:material:20>, <ore:paper>, <pyrotech:material:20>]])
  .addTool(<ore:artisansFramingHammer>, 5)
  .addOutput(<storagedrawers:upgrade_template> * 2)
  .create();

assembler.recipeBuilder()
    .inputs([<pyrotech:material:20> * 4, <ore:paper> * 4, <ore:drawerTrim>])
    .outputs(<storagedrawers:upgrade_template> * 4)
    .duration(80)
    .EUt(8)
.buildAndRegister();

// Storage Upgrade (I)
recipes.remove(<storagedrawers:upgrade_storage:0>);
recipes.addShaped(<storagedrawers:upgrade_storage:0> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:plateObsidian>, <storagedrawers:upgrade_template>, <ore:plateObsidian>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Storage Upgrade (II)
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:plateIron>, <storagedrawers:upgrade_storage:0>, <ore:plateIron>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Storage Upgrade (III)
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:plateGold>, <storagedrawers:upgrade_storage:1>, <ore:plateGold>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Storage Upgrade (IV)
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:plateDiamond>, <storagedrawers:upgrade_storage:2>, <ore:plateDiamond>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Storage Upgrade (V)
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:plateEmerald>, <storagedrawers:upgrade_storage:3>, <ore:plateEmerald>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Storage Downgrade
recipes.remove(<storagedrawers:upgrade_one_stack>);
recipes.addShaped(<storagedrawers:upgrade_one_stack> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:gemFlint>, <storagedrawers:upgrade_template>, <ore:gemFlint>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Redstone Upgrade
recipes.remove(<storagedrawers:upgrade_redstone:0>);
recipes.addShaped(<storagedrawers:upgrade_redstone:0> * 1, [[<ore:plateRedstone>, <ore:stickTreatedWood>, <ore:plateRedstone>], [<ore:stickTreatedWood>, <storagedrawers:upgrade_template>, <ore:stickTreatedWood>],[<ore:plateRedstone>, <ore:stickTreatedWood>, <ore:plateRedstone>]]);

// Redstone Max Upgrade
recipes.remove(<storagedrawers:upgrade_redstone:1>);
recipes.addShaped(<storagedrawers:upgrade_redstone:1> * 1, [[<ore:plateRedstone>, <ore:plateRedstone>, <ore:plateRedstone>], [<ore:stickTreatedWood>, <storagedrawers:upgrade_template>, <ore:stickTreatedWood>],[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Redstone Min Upgrade
recipes.remove(<storagedrawers:upgrade_redstone:2>);
recipes.addShaped(<storagedrawers:upgrade_redstone:2> * 1, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <storagedrawers:upgrade_template>, <ore:stickTreatedWood>],[<ore:plateRedstone>, <ore:plateRedstone>, <ore:plateRedstone>]]);

// Status Upgrade (I)
recipes.remove(<storagedrawers:upgrade_status:0>);
recipes.addShaped(<storagedrawers:upgrade_status:0> * 1, [[<ore:craftingRedstoneTorch>, <ore:stickTreatedWood>, <ore:craftingRedstoneTorch>], [<ore:stickTreatedWood>, <storagedrawers:upgrade_template>, <ore:stickTreatedWood>],[<ore:plateRedstone>, <ore:stickTreatedWood>, <ore:plateRedstone>]]);

// Status Upgrade (II)
recipes.remove(<storagedrawers:upgrade_status:1>);
recipes.addShaped(<storagedrawers:upgrade_status:1> * 1, [[<minecraft:comparator>, <ore:stickTreatedWood>, <minecraft:comparator>], [<ore:stickTreatedWood>, <storagedrawers:upgrade_template>, <ore:stickTreatedWood>],[<ore:plateRedstone>, <ore:stickTreatedWood>, <ore:plateRedstone>]]);

// Void Upgrade
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShapeless("DrawerVoidUpgrade", <storagedrawers:upgrade_void>, [<storagedrawers:upgrade_storage>, <ore:plateAAVoid>]);

// // Conversion Upgrade
// recipes.remove(<storagedrawers:upgrade_conversion>);
// recipes.addShapeless("DrawerConversionUpgrade", <storagedrawers:upgrade_conversion>, [<storagedrawers:upgrade_storage>, <ore:dustCobalt>, <ore:dustLapis>]);

#### Framed Drawers Fixes ####

// Framed Drawer
recipes.remove(<storagedrawers:customdrawers:0>);
recipes.addShaped(<storagedrawers:customdrawers:0> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:basicDrawer>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Framed Drawers 1x2
recipes.remove(<storagedrawers:customdrawers:1>);
recipes.addShaped(<storagedrawers:customdrawers:1> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:basic1x2Drawer>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Framed Drawers 2x2
recipes.remove(<storagedrawers:customdrawers:2>);
recipes.addShaped(<storagedrawers:customdrawers:2> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:basic1x4Drawer>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Framed Half Drawers 1x2
recipes.remove(<storagedrawers:customdrawers:3>);
recipes.addShaped(<storagedrawers:customdrawers:3> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:halfBasic1x2Drawer>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Framed Half Drawers 2x2
recipes.remove(<storagedrawers:customdrawers:4>);
recipes.addShaped(<storagedrawers:customdrawers:4> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:halfBasic1x4Drawer>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Framed Trim
recipes.remove(<storagedrawers:customtrim>);
recipes.addShaped(<storagedrawers:customtrim> * 1, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:drawerTrim>, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);


