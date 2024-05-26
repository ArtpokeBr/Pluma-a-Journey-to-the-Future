import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.isotope_separator as Separator;
import mods.nuclearcraft.centrifuge as Centrifuge;
import mods.nuclearcraft.alloy_furnace as AlloyFurnace;

//Removing Incorrect Alloy Recipes

//Steel
AlloyFurnace.removeRecipeWithInput(<ore:ingotIron>, <minecraft:coal>*4);
AlloyFurnace.removeRecipeWithInput(<ore:blockIron>, <ore:blockCoal>*4);
AlloyFurnace.removeRecipeWithInput(<ore:ingotIron>, <nuclearcraft:ingot:8>*4);
AlloyFurnace.removeRecipeWithInput(<ore:blockIron>, <ore:blockGraphite>*4);
AlloyFurnace.removeRecipeWithInput(<ore:blockIron>, <ore:blockFuelCoke>);
AlloyFurnace.removeRecipeWithInput(<ore:ingotIron>, <ore:fuelCoke>);

//Tough
AlloyFurnace.removeRecipeWithInput(<ore:ingotFerroboron>, <ore:ingotLithium>);
AlloyFurnace.removeRecipeWithInput(<ore:blockFerroboron>, <ore:blockLithium>);

//Hard Carbon
AlloyFurnace.removeRecipeWithInput(<nuclearcraft:ingot:8>*2, <minecraft:diamond>);
AlloyFurnace.removeRecipeWithInput(<ore:blockGraphite>*2, <ore:blockDiamond>);

//HSLA Steel
AlloyFurnace.removeRecipeWithInput(<minecraft:iron_ingot>*15, <nuclearcraft:compound:10>);

//Electrical Steel
AlloyFurnace.removeRecipeWithInput(<ore:ingotSteel>, <ore:itemSilicon>);

//Energetic Alloy
AlloyFurnace.removeRecipeWithInput(<ore:ingotGold>, <ore:dustEnergetic>*2);

//Vibrant Alloy
AlloyFurnace.removeRecipeWithInput(<ore:ingotEnergeticAlloy>, <minecraft:ender_pearl>);

//Dark Steel
AlloyFurnace.removeRecipeWithInput(<ore:ingotSteel>, <ore:obsidian>);

//Soularium
AlloyFurnace.removeRecipeWithInput(<ore:soulSand>, <ore:ingotGold>);

//End Steel
AlloyFurnace.removeRecipeWithInput(<ore:ingotDarkSteel>, <ore:dustDimensional>*2);

//Iron Alloy
AlloyFurnace.removeRecipeWithInput(<nuclearcraft:ingot:2>*2, <minecraft:iron_ingot>);

//Titanium Aluminide
//AlloyFurnace.removeRecipeWithInput(<nuclearcraft:ingot:12>*7, <ore:ingotTitanium>*3);
//AlloyFurnace.removeRecipeWithInput(<ore:ingotAluminium>*7, <ore:ingotTitanium>*3);
//AlloyFurnace.removeRecipeWithInput(<nuclearcraft:ingot_block:12>*7, <ore:blockTitanium>*3);
//AlloyFurnace.removeRecipeWithInput(<ore:blockAluminium>*7, <ore:blockTitanium>*3);
// AlloyFurnace.removeRecipeWithInput(<ore:nuggetAluminum>*7, <ore:nuggetTitanium>*3);
// AlloyFurnace.removeRecipeWithInput(<ore:nuggetAluminium>*7, <ore:nuggetTitanium>*3);
AlloyFurnace.removeRecipeWithOutput(<ore:blockTitaniumAluminide>*3);
AlloyFurnace.removeRecipeWithOutput(<ore:ingotTitaniumAluminide>*3);
AlloyFurnace.removeRecipeWithOutput(<ore:nuggetTitaniumAluminide>*3);

//Titanium Iridium Alloy
AlloyFurnace.removeRecipeWithInput(<ore:ingotTitanium>, <ore:ingotIridium>);
AlloyFurnace.removeRecipeWithInput(<ore:blockTitanium>, <ore:blockIridium>);
AlloyFurnace.removeRecipeWithInput(<ore:nuggetTitanium>, <ore:nuggetIridium>);

//Pulsating Iron
AlloyFurnace.removeRecipeWithOutput(<ore:ingotPulsatingIron>);

//Pulsating Crystal
AlloyFurnace.removeRecipeWithOutput(<ore:itemPulsatingCrystal>);

//Vibrant Crystal
AlloyFurnace.removeRecipeWithOutput(<ore:itemVibrantCrystal>);

//Conductive Iron
AlloyFurnace.removeRecipeWithOutput(<ore:ingotConductiveIron>);

//Vivid Alloy
AlloyFurnace.removeRecipeWithOutput(<ore:ingotVividAlloy>);

