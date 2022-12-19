import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.AlloyFurnace as AlloyFurnace;

// ----==== Removing useless NC:O recipes ====---- //

// Removing Oxide and Nitride fuel smelting //
val fuelsmeltingtoremove =
[
<nuclearcraft:pellet_thorium>,
<nuclearcraft:pellet_uranium>,
<nuclearcraft:pellet_uranium:2>,
<nuclearcraft:pellet_uranium:4>,
<nuclearcraft:pellet_uranium:6>,
<nuclearcraft:pellet_neptunium>,
<nuclearcraft:pellet_neptunium:2>,
<nuclearcraft:pellet_plutonium>,
<nuclearcraft:pellet_plutonium:2>,
<nuclearcraft:pellet_curium:6>,
<nuclearcraft:pellet_curium:8>,
<nuclearcraft:pellet_curium:10>,
<nuclearcraft:pellet_berkelium>,
<nuclearcraft:pellet_berkelium:2>,
<nuclearcraft:pellet_californium>,
<nuclearcraft:pellet_californium:2>,
<nuclearcraft:pellet_californium:4>,
<nuclearcraft:pellet_californium:6>,
<nuclearcraft:pellet_plutonium:4>,
<nuclearcraft:pellet_plutonium:6>,
<nuclearcraft:pellet_mixed>,
<nuclearcraft:pellet_mixed:2>,
<nuclearcraft:pellet_americium>,
<nuclearcraft:pellet_americium:2>,
<nuclearcraft:pellet_curium>,
<nuclearcraft:pellet_curium:2>,
<nuclearcraft:pellet_curium:4>,
// <qmd:fuel_copernicium:2>,
// <qmd:fuel_copernicium:1>,
]
 as IItemStack[];

for fuel in fuelsmeltingtoremove {
	furnace.remove(fuel);
}

// Removing Fuel Separation
val fuelseparationtoremove =
[
<nuclearcraft:pellet_uranium> * 9,
<nuclearcraft:pellet_uranium:2> * 9,
<nuclearcraft:pellet_uranium:4> * 9,
<nuclearcraft:pellet_uranium:6> * 9,
<nuclearcraft:pellet_neptunium> * 9,
<nuclearcraft:pellet_neptunium:2> * 9,
<nuclearcraft:pellet_plutonium> * 9,
<nuclearcraft:pellet_plutonium:2> * 9,
<nuclearcraft:pellet_curium:6> * 9,
<nuclearcraft:pellet_curium:8> * 9,
<nuclearcraft:pellet_curium:10> * 9,
<nuclearcraft:pellet_berkelium> * 9,
<nuclearcraft:pellet_berkelium:2> * 9,
<nuclearcraft:pellet_californium> * 9,
<nuclearcraft:pellet_californium:2> * 9,
<nuclearcraft:pellet_californium:4> * 9,
<nuclearcraft:pellet_californium:6> * 9,
<nuclearcraft:pellet_plutonium:4> * 9,
<nuclearcraft:pellet_plutonium:6> * 9,
<nuclearcraft:pellet_mixed> * 9,
<nuclearcraft:pellet_mixed:2> * 9,
<nuclearcraft:pellet_americium> * 9,
<nuclearcraft:pellet_americium:2> * 9,
<nuclearcraft:pellet_curium> * 9,
<nuclearcraft:pellet_curium:2> * 9,
<nuclearcraft:pellet_curium:4> * 9,
<nuclearcraft:fuel_uranium:1> * 9,
<nuclearcraft:fuel_uranium:5> * 9,
<nuclearcraft:fuel_uranium:9> * 9,
<nuclearcraft:fuel_uranium:13> * 9,
<nuclearcraft:fuel_neptunium:1> * 9,
<nuclearcraft:fuel_neptunium:5> * 9,
<nuclearcraft:fuel_plutonium:1> * 9,
<nuclearcraft:fuel_plutonium:5> * 9,
<nuclearcraft:fuel_curium:13> * 9,
<nuclearcraft:fuel_curium:17> * 9,
<nuclearcraft:fuel_curium:21> * 9,
<nuclearcraft:fuel_berkelium:1> * 9,
<nuclearcraft:fuel_berkelium:5> * 9,
<nuclearcraft:fuel_californium:1> * 9,
<nuclearcraft:fuel_californium:5> * 9,
<nuclearcraft:fuel_californium:9> * 9,
<nuclearcraft:fuel_californium:13> * 9,
<nuclearcraft:fuel_plutonium:9> * 9,
<nuclearcraft:fuel_plutonium:13> * 9,
<nuclearcraft:fuel_mixed:1> * 9,
<nuclearcraft:fuel_mixed:5> * 9,
<nuclearcraft:fuel_americium:1> * 9,
<nuclearcraft:fuel_americium:5> * 9,
<nuclearcraft:fuel_curium:1> * 9,
<nuclearcraft:fuel_curium:5> * 9,
<nuclearcraft:fuel_curium:9> * 9,
<nuclearcraft:fuel_uranium:2> * 9,
<nuclearcraft:fuel_uranium:6> * 9,
<nuclearcraft:fuel_uranium:10> * 9,
<nuclearcraft:fuel_uranium:14> * 9,
<nuclearcraft:fuel_neptunium:2> * 9,
<nuclearcraft:fuel_neptunium:6> * 9,
<nuclearcraft:fuel_plutonium:2> * 9,
<nuclearcraft:fuel_plutonium:6> * 9,
<nuclearcraft:fuel_curium:14> * 9,
<nuclearcraft:fuel_curium:18> * 9,
<nuclearcraft:fuel_curium:22> * 9,
<nuclearcraft:fuel_berkelium:2> * 9,
<nuclearcraft:fuel_berkelium:6> * 9,
<nuclearcraft:fuel_californium:2> * 9,
<nuclearcraft:fuel_californium:6> * 9,
<nuclearcraft:fuel_californium:10> * 9,
<nuclearcraft:fuel_californium:14> * 9,
<nuclearcraft:fuel_plutonium:10> * 9,
<nuclearcraft:fuel_plutonium:14> * 9,
<nuclearcraft:fuel_mixed:2> * 9,
<nuclearcraft:fuel_mixed:6> * 9,
<nuclearcraft:fuel_americium:2> * 9,
<nuclearcraft:fuel_americium:6> * 9,
<nuclearcraft:fuel_curium:2> * 9,
<nuclearcraft:fuel_curium:6> * 9,
<nuclearcraft:fuel_curium:10> * 9,
<nuclearcraft:pellet_mixed:1> * 9,
<nuclearcraft:fuel_mixed:3> * 9,
<nuclearcraft:pellet_mixed:3> * 9,
<nuclearcraft:fuel_mixed:7> * 9,
// <qmd:pellet_copernicium> * 9,
<nuclearcraft:pellet_thorium:1>,
<nuclearcraft:pellet_uranium:1>,
<nuclearcraft:pellet_uranium:3>,
<nuclearcraft:pellet_uranium:5>,
<nuclearcraft:pellet_uranium:7>,
<nuclearcraft:pellet_neptunium:1>,
<nuclearcraft:pellet_neptunium:3>,
<nuclearcraft:pellet_plutonium:1>,
<nuclearcraft:pellet_plutonium:3>,
<nuclearcraft:pellet_curium:7>,
<nuclearcraft:pellet_curium:9>,
<nuclearcraft:pellet_curium:11>,
<nuclearcraft:pellet_berkelium:1>,
<nuclearcraft:pellet_berkelium:3>,
<nuclearcraft:pellet_californium:1>,
<nuclearcraft:pellet_californium:3>,
<nuclearcraft:pellet_californium:5>,
<nuclearcraft:pellet_californium:7>,
<nuclearcraft:pellet_plutonium:5>,
<nuclearcraft:pellet_plutonium:7>,
<nuclearcraft:pellet_americium:1>,
<nuclearcraft:pellet_americium:3>,
<nuclearcraft:pellet_curium:1>,
<nuclearcraft:pellet_curium:3>,
<nuclearcraft:pellet_curium:5>,
<nuclearcraft:fuel_thorium:3>,
<nuclearcraft:fuel_uranium:3>,
<nuclearcraft:fuel_uranium:7>,
<nuclearcraft:fuel_uranium:11>,
<nuclearcraft:fuel_uranium:15>,
<nuclearcraft:fuel_neptunium:3>,
<nuclearcraft:fuel_neptunium:7>,
<nuclearcraft:fuel_plutonium:3>,
<nuclearcraft:fuel_plutonium:7>,
<nuclearcraft:fuel_curium:23>,
<nuclearcraft:fuel_berkelium:3>,
<nuclearcraft:fuel_berkelium:7>,
<nuclearcraft:fuel_californium:3>,
<nuclearcraft:fuel_californium:7>,
<nuclearcraft:fuel_californium:11>,
<nuclearcraft:fuel_californium:15>,
<nuclearcraft:fuel_plutonium:11>,
<nuclearcraft:fuel_plutonium:15>,
<nuclearcraft:fuel_americium:3>,
<nuclearcraft:fuel_americium:7>,
<nuclearcraft:fuel_curium:3>,
<nuclearcraft:fuel_curium:7>,
<nuclearcraft:fuel_curium:11>,
<nuclearcraft:fuel_curium:15>,
<nuclearcraft:fuel_curium:19>,
// <qmd:pellet_copernicium:1>,
// <qmd:fuel_copernicium:3>,
]
 as IItemStack[];

for fuel in fuelseparationtoremove {
	Separator.removeRecipeWithInput(fuel);
}

// Removing Fluoride Fuel Electrolysis
val fuelelectrolysistoremove =
[
<liquid:tbu_fluoride>,
<liquid:leu_233_fluoride>,
<liquid:heu_233_fluoride>,
<liquid:leu_235_fluoride>,
<liquid:heu_235_fluoride>,
<liquid:len_236_fluoride>,
<liquid:hen_236_fluoride>,
<liquid:lep_239_fluoride>,
<liquid:hep_239_fluoride>,
<liquid:lep_241_fluoride>,
<liquid:hep_241_fluoride>,
<liquid:mix_239_fluoride>,
<liquid:mix_241_fluoride>,
<liquid:lea_242_fluoride>,
<liquid:hea_242_fluoride>,
<liquid:lecm_243_fluoride>,
<liquid:hecm_243_fluoride>,
<liquid:lecm_245_fluoride>,
<liquid:hecm_245_fluoride>,
<liquid:lecm_247_fluoride>,
<liquid:hecm_247_fluoride>,
<liquid:leb_248_fluoride>,
<liquid:heb_248_fluoride>,
<liquid:lecf_249_fluoride>,
<liquid:hecf_249_fluoride>,
<liquid:lecf_251_fluoride>,
<liquid:hecf_251_fluoride>,
]
 as ILiquidStack[];

for fuel in fuelelectrolysistoremove {
  Electrolyzer.removeRecipeWithInput(fuel * 72);
}

// Removing FLiBe Fuel Centrifuging
val flibefuelcentrifugingtoremove =
[
<liquid:tbu_fluoride_flibe>,
<liquid:leu_233_fluoride_flibe>,
<liquid:heu_233_fluoride_flibe>,
<liquid:leu_235_fluoride_flibe>,
<liquid:heu_235_fluoride_flibe>,
<liquid:len_236_fluoride_flibe>,
<liquid:hen_236_fluoride_flibe>,
<liquid:lep_239_fluoride_flibe>,
<liquid:hep_239_fluoride_flibe>,
<liquid:lep_241_fluoride_flibe>,
<liquid:hep_241_fluoride_flibe>,
<liquid:mix_239_fluoride_flibe>,
<liquid:mix_241_fluoride_flibe>,
<liquid:lea_242_fluoride_flibe>,
<liquid:hea_242_fluoride_flibe>,
<liquid:lecm_243_fluoride_flibe>,
<liquid:hecm_243_fluoride_flibe>,
<liquid:lecm_245_fluoride_flibe>,
<liquid:hecm_245_fluoride_flibe>,
<liquid:lecm_247_fluoride_flibe>,
<liquid:hecm_247_fluoride_flibe>,
<liquid:leb_248_fluoride_flibe>,
<liquid:heb_248_fluoride_flibe>,
<liquid:lecf_249_fluoride_flibe>,
<liquid:hecf_249_fluoride_flibe>,
<liquid:lecf_251_fluoride_flibe>,
<liquid:hecf_251_fluoride_flibe>,
]
 as ILiquidStack[];

for fuel in flibefuelcentrifugingtoremove {
  Centrifuge.removeRecipeWithInput(fuel * 72);
}

// Removing Fuel Centrifuging
val fuelcentrifugingtoremove =
[
<liquid:leu_233>,
<liquid:heu_233>,
<liquid:leu_235>,
<liquid:heu_235>,
<liquid:len_236>,
<liquid:hen_236>,
<liquid:lep_239>,
<liquid:hep_239>,
<liquid:lep_241>,
<liquid:hep_241>,
<liquid:mix_239>,
<liquid:mix_241>,
<liquid:lea_242>,
<liquid:hea_242>,
<liquid:lecm_243>,
<liquid:hecm_243>,
<liquid:lecm_245>,
<liquid:hecm_245>,
<liquid:lecm_247>,
<liquid:hecm_247>,
<liquid:leb_248>,
<liquid:heb_248>,
<liquid:lecf_249>,
<liquid:hecf_249>,
<liquid:lecf_251>,
<liquid:hecf_251>,
]
 as ILiquidStack[];

for fuel in fuelcentrifugingtoremove {
  Centrifuge.removeRecipeWithInput(fuel * 144);
}

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

