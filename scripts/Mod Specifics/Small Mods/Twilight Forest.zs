import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.twilighttweaks.uncrafting;
import mods.thermalexpansion.Insolator as Insolator;

mods.twilighttweaks.uncrafting.banUncraft(<botanicadds:mana_tesseract>);

//Ironwood Must be found instead of just Crafted.
furnace.remove(<twilightforest:ironwood_ingot>);
recipes.remove(<twilightforest:ironwood_raw>);
recipes.removeByRecipeName("thermalfoundation:ironwood_ingot");

mixer.recipeBuilder()
	.inputs(<twilightforest:liveroot>, <ore:dustIron>, <ore:dustSmallRoseGold>)
    .outputs(<twilightforest:ironwood_raw>)
	.duration(180)
	.EUt(700)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<twilightforest:ironwood_raw>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<ore:ingotIronwood>.firstItem)
    .property("temperature", 3000)
    .duration(600)
    .EUt(200)
.buildAndRegister();


//Tooltips
<twilightforest:borer_essence>.addTooltip(format.gray("Dropped by The Towerwood Borer in the Twilight Forest."));

<twilightforest:fiery_blood>.addTooltip(format.gray("Dropped by The Hydra in the Twilight Forest."));
<twilightforest:fiery_tears>.addTooltip(format.gray("Dropped by The Hydra in the Twilight Forest."));

var MagicalSaplings as IItemStack[] = [
<twilightforest:twilight_sapling:6>,
<twilightforest:twilight_sapling:7>
];
for i in MagicalSaplings {
i.addTooltip(format.white("Dropped by ") + format.darkPurple("The Final Boss ") + format.white("of the Twilight Forest"));
}

var MagicalSaplings2 as IItemStack[] = [
<twilightforest:twilight_sapling:5>,
<twilightforest:twilight_sapling:8>
];
for i in MagicalSaplings2 {
i.addTooltip(format.white("Can only be found inside of ") + format.green("Leaf Dungeons."));
}

//Fiery Essence
mixer.recipeBuilder()
	.fluidInputs(<liquid:fierymetal> * 1296)
    .inputs(<twilightforest:borer_essence>*4, <embers:dust_metallurgic>*2)
    .fluidOutputs(<liquid:fiery_essence> * 2000)   
	.duration(250)
	.EUt(320)
.buildAndRegister();

//More Fiery Blood
extractor.recipeBuilder()
    .inputs(<twilightforest:hydra_chop>)
    .outputs(<twilightforest:fiery_blood> * 4)   
	.duration(250)
	.EUt(320)
.buildAndRegister();

//Fiery Ingot rework
recipes.remove(<twilightforest:fiery_helmet>);
recipes.remove(<twilightforest:fiery_chestplate>);
recipes.remove(<twilightforest:fiery_leggings>);
recipes.remove(<twilightforest:fiery_boots>);
recipes.remove(<twilightforest:fiery_sword>);
recipes.remove(<twilightforest:fiery_pickaxe>);
recipes.remove(<twilightforest:fiery_ingot>);

recipes.addShapeless(<ore:ingotFiery>.firstItem*9, [<ore:blockFiery>]);

chemreactor.recipeBuilder()
    .inputs(<twilightforest:fiery_blood>, <minecraft:glass_bottle>)
    .fluidInputs(<liquid:brine>*250)
    .outputs(<twilightforest:fiery_tears> * 2)   
	.duration(300)
	.EUt(350)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<twilightforest:fiery_tears>, <ore:ingotDawnstone>)
    .fluidInputs(<liquid:lava>*250)
    .outputs(<ore:ingotFiery>.firstItem)   
	.duration(200)
    .property("temperature", 3000)
	.EUt(400)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<twilightforest:fiery_blood>, <ore:ingotDawnstone>)
    .fluidInputs(<liquid:lava>*250)
    .outputs(<ore:ingotFiery>.firstItem)   
	.duration(200)
    .property("temperature", 3000)
	.EUt(400)
.buildAndRegister();

// Twilight Decorative Blocks Recipes ===================================================================

var DecorativeTFBlocks as IItemStack[IIngredient] = {
    <tconstruct:brownstone>: <twilightforest:maze_stone>,
    <minecraft:stone:5>: <twilightforest:etched_nagastone>,
    <chisel:limestone2:7>: <twilightforest:deadrock>,
    <chisel:marble2:7>: <twilightforest:castle_brick>,
    <minecraft:stained_hardened_clay>: <twilightforest:terrorcotta_circle>,
    <ceramics:rainbow_clay>: <twilightforest:aurora_block>,
    <minecraft:brick_block>: <twilightforest:underbrick>
    };
for IItemStack, IIngredient in DecorativeTFBlocks {
        recipes.remove(IIngredient);

        engraver.recipeBuilder()
            .inputs(IItemStack)
            .notConsumable(<ore:lensVinteum>)
            .outputs(IIngredient)   
            .duration(1000)
            .EUt(200)
        .buildAndRegister();
}

//Castle Runes

#Pink
chemreactor.recipeBuilder()
    .inputs(<ore:runeLustB>, <ore:stoneMarble>)
    .fluidInputs(<liquid:livingrock>*288)
    .outputs(<twilightforest:castle_rune_brick>)   
    .duration(400)
    .EUt(380)
.buildAndRegister();

#Blue
chemreactor.recipeBuilder()
    .inputs(<ore:runeSummerB>, <ore:stoneMarble>)
    .fluidInputs(<liquid:livingrock>*288)    
    .outputs(<twilightforest:castle_rune_brick:1>)   
    .duration(400)
    .EUt(380)
.buildAndRegister();

#Yellow
chemreactor.recipeBuilder()
    .inputs(<ore:runeAutumnB>, <ore:stoneMarble>)
    .fluidInputs(<liquid:livingrock>*288)    
    .outputs(<twilightforest:castle_rune_brick:2>)   
    .duration(400)
    .EUt(380)
.buildAndRegister();

#Violet
chemreactor.recipeBuilder()
    .inputs(<ore:runeEnvyB>, <ore:stoneMarble>)
    .fluidInputs(<liquid:livingrock>*288)   
    .outputs(<twilightforest:castle_rune_brick:3>)   
    .duration(400)
    .EUt(380)
.buildAndRegister();

// Giant's Convertions ==========================

recipes.removeByRecipeName("twilightforest:giant_blocks/giant_leaves");
recipes.addShapeless("Giant_Leaves", <minecraft:leaves>*64, [<twilightforest:giant_leaves>]);
recipes.addShapeless("Giant_Oak_Log", <minecraft:log>*64, [<twilightforest:giant_log>]);
recipes.removeByRecipeName("twilightforest:giant_blocks/giant_cobblestone");
recipes.addShapeless("Giant_Cobblestone", <minecraft:cobblestone>*64, [<twilightforest:giant_cobblestone>]);
recipes.addShapeless("Giant_Obsidian", <minecraft:obsidian>*64, [<twilightforest:giant_obsidian>]);

//Liveroot Automation
Insolator.addRecipe(<twilightforest:liveroot> * 9, <twilightforest:liveroot>, <thermalfoundation:fertilizer:2>, 16000, <twilightforest:liveroot>, 0, 2500);
Insolator.addRecipe(<twilightforest:liveroot> * 6, <twilightforest:liveroot>, <thermalfoundation:fertilizer:1>, 16000, <twilightforest:liveroot>, 0, 2500);
Insolator.addRecipe(<twilightforest:liveroot> * 3, <twilightforest:liveroot>, <thermalfoundation:fertilizer>, 16000, <twilightforest:liveroot>, 0, 2500);

//Uberous Soil Recipe
mixer.recipeBuilder()
    .inputs(<tconstruct:soil:4>*4, <twilightforest:liveroot>*3, <twilightforest:torchberries>*2)
    .outputs(<twilightforest:uberous_soil>*4)   
    .duration(400)
    .EUt(80)
.buildAndRegister();