#modloaded botania

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;

import mods.botania.ManaInfusion as ManaInfusion;
import mods.botania.ElvenTrade as ElvenTrade;
import mods.botania.Apothecary;
import mods.roots.Fey as Fey;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.embers.Alchemy as Alchemy;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.thaumcraft.ArcaneWorkbench;

import mods.jei.JEI as JEI;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Botania Script                                                                                                                   //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Livingwood Twigs
recipes.remove(<botania:manaresource:3>);
recipes.addShapeless(<botania:manaresource:3>, [<ore:livingwood>, <ore:gtceKnife>]);

//Dreamwood Twigs
recipes.remove(<botania:manaresource:13>);
recipes.addShapeless(<botania:manaresource:13>, [<ore:dreamwood>, <ore:gtceKnife>]);


// Floral Dyes being done in an Macerator ===========================================
mods.jei.JEI.removeAndHide(<botania:pestleandmortar>);

var FloralDyes as IItemStack[IOreDictEntry] = {
	<ore:petalBlack> : <botania:dye:15>,
	<ore:petalOrange> : <botania:dye:1>,
	<ore:petalLime> : <botania:dye:5>,
	<ore:petalLightBlue> : <botania:dye:3>,
	<ore:petalPurple> : <botania:dye:10>,
	<ore:petalPink> : <botania:dye:6>,
	<ore:petalBrown> : <botania:dye:12>,
	<ore:petalMagenta> : <botania:dye:2>,
	<ore:petalBlue> : <botania:dye:11>,
	<ore:petalGreen> : <botania:dye:13>,
	<ore:petalWhite> : <botania:dye>,
	<ore:petalYellow> : <botania:dye:4>,
	<ore:petalLightGray> : <botania:dye:8>,
	<ore:petalGray> : <botania:dye:7>,
    <ore:petalRed> : <botania:dye:14>,
    <ore:petalCyan> : <botania:dye:9>,
};

for petal, IItemStack in FloralDyes {
    recipes.remove(IItemStack);

    recipes.addShapeless(IItemStack, [petal, <ore:gtceMortars>]);

	macerator.recipeBuilder()
    	.inputs(petal)
        .outputs(IItemStack)
    	.chancedOutput(IItemStack, 5000, 1000)
        .chancedOutput(IItemStack, 2000, 500)
        .chancedOutput(IItemStack, 500, 500)
    	.duration(200)
    	.EUt(24)
    .buildAndRegister();
}

//Unstable Mana
mixer.recipeBuilder()
  .inputs(<ore:ingotUnstable>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}))
  .fluidInputs(<liquid:liquid_mana>*1000)
  .fluidOutputs(<liquid:unstable_mana>*1000)
  .duration(200)
  .EUt(24)
.buildAndRegister();

//Livingrock to Fluid
extractor.recipeBuilder()
        .inputs(<ore:livingrock>)
        .fluidOutputs(<liquid:livingrock>*144)
        .duration(86)
        .EUt(7)
.buildAndRegister();

// Botania Quartz Progression ==================================

<botania:quartz:1>.addTooltip(format.green("Tier 1") + (format.aqua(" Botanic Quartz")));
<botania:quartz:2>.addTooltip(format.green("Tier 2") + (format.aqua(" Botanic Quartz")));
<botania:quartz:4>.addTooltip(format.yellow("Tier 3") + (format.aqua(" Botanic Quartz")));
<botania:quartz:6>.addTooltip(format.yellow("Tier 4") + (format.aqua(" Botanic Quartz")));
<botania:quartz:5>.addTooltip(format.red("Tier 5") + (format.aqua(" Botanic Quartz")));
<botania:quartz:3>.addTooltip(format.red("Tier 6") + (format.aqua(" Botanic Quartz")));

//Smokey Quartz is Special (outside main progression)
<botania:quartz>.addTooltip(format.green("Tier 2") + (format.aqua(" Botanic Quartz")));

# Smokey Quartz
recipes.remove(<ore:quartzDark>.firstItem);
furnace.addRecipe(<ore:quartzDark>.firstItem, <ore:quartzMana>.firstItem);

# Mana Quartz
ManaInfusion.removeRecipe(<ore:quartzMana>.firstItem);
ManaInfusion.addInfusion(<ore:quartzMana>.firstItem, <minecraft:quartz>, 2500);
ManaInfusion.addInfusion(<ore:blockQuartzMana>.firstItem, <minecraft:quartz_block>, 10000);

# Blaze Quartz
recipes.remove(<ore:quartzBlaze>.firstItem);
chemreactor.recipeBuilder()
    .inputs(<ore:quartzMana>.firstItem)
	.fluidInputs(<liquid:fire_water> * 200, <liquid:blaze> * 200)
    .outputs(<ore:quartzBlaze>.firstItem)
    .duration(300)
    .EUt(600)
.buildAndRegister();

# Red Quartz
recipes.remove(<ore:quartzRed>.firstItem);
autoclave.recipeBuilder()
    .inputs(<ore:quartzBlaze>.firstItem)
	.fluidInputs(<liquid:alchemical_redstone>*200)
    .outputs(<ore:quartzRed>.firstItem)
    .duration(300)
    .EUt(1000)
.buildAndRegister();

# Sunny Quartz
recipes.remove(<ore:quartzSunny>.firstItem);
chemreactor.recipeBuilder()
    .inputs(<ore:quartzRed>.firstItem)
	.fluidInputs(<liquid:liquid_sunshine> * 200, <liquid:binnie.wine.citrus> * 200)
    .outputs(<ore:quartzSunny>.firstItem)
    .duration(350)
    .EUt(600)
.buildAndRegister();

# Elven Quartz
ElvenTrade.removeRecipe(<ore:quartzElven>.firstItem);
ElvenTrade.addRecipe([<ore:quartzElven>.firstItem], [<ore:quartzSunny>.firstItem,<ore:nuggetTerrasteel>]);

# Lavender Quartz
recipes.remove(<ore:quartzLavender>.firstItem);
mixer.recipeBuilder()
    .inputs(<ore:quartzElven>.firstItem, <ore:flowerLavender>, <ore:foodLavendershortbread>)
	.fluidInputs(<liquid:ethane>*200)
    .outputs(<ore:quartzLavender>.firstItem)
    .duration(400)
    .EUt(1000)
.buildAndRegister();

// Floral Fertilizer
recipes.remove(<botania:fertilizer>);
RecipeBuilder.get("basic")
  .setShapeless([<ore:dustBone>, <embers:dust_ember>, <twilightforest:magic_leaves:2>, <twilightforest:liveroot>, <twilightforest:magic_leaves:1>])
  .setFluid(<liquid:fermented_biomass> * 1000)
  .addTool(<ore:artisansBeaker>, 15)
  .addOutput(<botania:fertilizer> * 3)
  .create();

// Mushrooms Removal
<ore:petalWhite>.remove(<botania:mushroom>);
<ore:petalOrange>.remove(<botania:mushroom:1>);
<ore:petalMagenta>.remove(<botania:mushroom:2>);
<ore:petalLightBlue>.remove(<botania:mushroom:3>);
<ore:petalYellow>.remove(<botania:mushroom:4>);
<ore:petalLime>.remove(<botania:mushroom:5>);
<ore:petalPink>.remove(<botania:mushroom:6>);
<ore:petalGray>.remove(<botania:mushroom:7>);
<ore:petalLightGray>.remove(<botania:mushroom:8>);
<ore:petalCyan>.remove(<botania:mushroom:9>);
<ore:petalPurple>.remove(<botania:mushroom:10>);
<ore:petalBlue>.remove(<botania:mushroom:11>);
<ore:petalBrown>.remove(<botania:mushroom:12>);
<ore:petalGreen>.remove(<botania:mushroom:13>);
<ore:petalRed>.remove(<botania:mushroom:14>);
<ore:petalBlack>.remove(<botania:mushroom:15>);

// Mana Flowers =================================================================================

# Pure Daisy
mods.botania.Apothecary.removeRecipe("puredaisy");
Fey.addRecipe("pure_daisy", <botania:specialflower>.withTag({type: "puredaisy"}), [<contenttweaker:petal_of_the_daisy>,<contenttweaker:petal_of_the_daisy>,<embers:seed_silver>,<randomthings:ingredient:12>,<actuallyadditions:item_crystal_empowered:5>]);

# Endoflame
mods.botania.Apothecary.removeRecipe("endoflame");
Fey.addRecipe("endoflame", <botania:specialflower>.withTag({type: "endoflame"}), [<contenttweaker:petal_of_the_inner_flame>,<contenttweaker:petal_of_the_inner_flame>,<contenttweaker:strength_reagent>,<contenttweaker:dirty_reagent>,<contenttweaker:virtus>]);

# Hydroangeas
mods.botania.Apothecary.removeRecipe("hydroangeas");
Fey.addRecipe("hydroangeas", <botania:specialflower>.withTag({type: "hydroangeas"}), [<contenttweaker:hydrating_petal>,<contenttweaker:hydrating_petal>,<bloodmagic:component>,<contenttweaker:tempest_reagent>,<contenttweaker:aquasalus>]);

# Rain Flower
mods.botania.Apothecary.removeRecipe("ba_rain_flower");
<botania:specialflower>.withTag({type: "ba_rain_flower"}).addTooltip(format.lightPurple("Can be bought in the Shop!"));
//mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "ba_rain_flower"}));

# Snow Flower
mods.botania.Apothecary.removeRecipe("ba_snow_flower");
<botania:specialflower>.withTag({type: "ba_snow_flower"}).addTooltip(format.lightPurple("Can be bought in the Shop!"));
//mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "ba_snow_flower"}));

# Lightning Flower
mods.botania.Apothecary.removeRecipe("ba_lightning_flower");
<botania:specialflower>.withTag({type: "ba_lightning_flower"}).addTooltip(format.lightPurple("Can be bought in the Shop!"));
//mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "ba_lightning_flower"}));

# Wither Flower
mods.botania.Apothecary.removeRecipe("ba_wither_flower");
<botania:specialflower>.withTag({type: "ba_wither_flower"}).addTooltip(format.lightPurple("Can be bought in the Shop!"));
//mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "ba_wither_flower"}));

# Petro Petunia
mods.botania.Apothecary.removeRecipe("petro_petunia");
Fey.addRecipe("petro_petunia", <botania:specialflower>.withTag({type: "petro_petunia"}), [<contenttweaker:petrolic_petal>,<contenttweaker:petrolic_petal>,<mekanism:basicblock:9>,<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "oil", Amount: 1000}}),<botania:manaresource:6>]);

# Manastar
mods.botania.Apothecary.removeRecipe("manastar");
Fey.addRecipe("manastar", <botania:specialflower>.withTag({type: "manastar"}), [<contenttweaker:manastar_petal>,<contenttweaker:manastar_petal>,<botania:manaresource>,<botania:manaresource>,<botania:manaresource:2>]);

# Thermalily
mods.botania.Apothecary.removeRecipe("thermalily");
Fey.addRecipe("thermalily", <botania:specialflower>.withTag({type: "thermalily"}), [<contenttweaker:thermal_petal>,<contenttweaker:thermal_petal>,<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_earth>,<contenttweaker:strength_reagent>]);

# Rosa Arcana
mods.botania.Apothecary.removeRecipe("arcanerose");
Fey.addRecipe("arcanerose", <botania:specialflower>.withTag({type: "arcanerose"}), [<contenttweaker:petal_of_the_arcane_rose>,<contenttweaker:petal_of_the_arcane_rose>,<contenttweaker:rune_of_mana>,<actuallyadditions:block_xp_solidifier>,<enderio:item_material:18>]);

# Gourmaryllis
mods.botania.Apothecary.removeRecipe("gourmaryllis");
Fey.addRecipe("gourmaryllis", <botania:specialflower>.withTag({type: "gourmaryllis"}), [<contenttweaker:petal_of_the_gourmaryllis>,<contenttweaker:petal_of_the_gourmaryllis>,<contenttweaker:rune_of_gluttony>,<abyssalcraft:mre>,<botania:manaresource:9>]);

# Narslimmus
mods.botania.Apothecary.removeRecipe("narslimmus");
Fey.addRecipe("narslimmus", <botania:specialflower>.withTag({type: "narslimmus"}), [<contenttweaker:petal_of_the_narslimmus>,<contenttweaker:petal_of_the_narslimmus>,<contenttweaker:rune_of_summer>,<minecraft:slime>,<minecraft:slime>]);

# Jaded Amaranthus
mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
Fey.addRecipe("jadedAmaranthus", <botania:specialflower>.withTag({type: "jadedAmaranthus"}), [<contenttweaker:jaded_petal>,<contenttweaker:jaded_petal>,<contenttweaker:rune_of_spring>,<botania:fertilizer>,<botania:fertilizer>]);

# Bellethorne
mods.botania.Apothecary.removeRecipe("bellethorn");
Fey.addRecipe("bellethorn", <botania:specialflower>.withTag({type: "bellethorn"}), [<contenttweaker:thorny_belle_petal>,<contenttweaker:thorny_belle_petal>,<contenttweaker:damage_reagent>,<contenttweaker:rune_of_fire>,<extrautils2:spike_iron>]);

# Dreadthorn
mods.botania.Apothecary.removeRecipe("dreadthorn");
Fey.addRecipe("dreadthorn", <botania:specialflower>.withTag({type: "dreadthorn"}), [<contenttweaker:thorny_dread_petal>,<contenttweaker:thorny_dread_petal>,<contenttweaker:damage_reagent>,<abyssalcraft:ingotblock:2>,<extrautils2:spike_iron>]);

# Tigerseye
mods.botania.Apothecary.removeRecipe("tigerseye");
Fey.addRecipe("tigerseye", <botania:specialflower>.withTag({type: "tigerseye"}), [<contenttweaker:tigerseye_petal>,<contenttweaker:tigerseye_petal>,<contenttweaker:rune_of_autumn>,<contenttweaker:sanctus>,<contenttweaker:neutral_reagent>]);

# Exoflame
mods.botania.Apothecary.removeRecipe("exoflame");
Fey.addRecipe("exoflame", <botania:specialflower>.withTag({type: "exoflame"}), [<contenttweaker:petal_of_the_exoflame>,<contenttweaker:petal_of_the_exoflame>,<contenttweaker:rune_of_fire>,<embers:superheater>,<embers:superheater>]);

# Agricarnation
mods.botania.Apothecary.removeRecipe("agricarnation");
Fey.addRecipe("agricarnation", <botania:specialflower>.withTag({type: "agricarnation"}), [<contenttweaker:agricarnatic_petal>,<contenttweaker:agricarnatic_petal>,<contenttweaker:rune_of_spring>,<contenttweaker:rune_of_summer>,/*Fertilizer*/<gregtech:meta_item_1:1001>]);

# Hopperhock
mods.botania.Apothecary.removeRecipe("hopperhock");
Fey.addRecipe("hopperhock", <botania:specialflower>.withTag({type: "hopperhock"}), [<contenttweaker:hopping_petal>,<contenttweaker:hopping_petal>,<contenttweaker:rune_of_air>,<pyrotech:mechanical_hopper>,<bloodmagic:component:31>]);

# Rannuncarpus
mods.botania.Apothecary.removeRecipe("rannuncarpus");
Fey.addRecipe("rannuncarpus", <botania:specialflower>.withTag({type: "rannuncarpus"}), [<contenttweaker:petal_of_the_rannuncarpus>,<contenttweaker:petal_of_the_rannuncarpus>,<contenttweaker:rune_of_earth>,/*High Pressure Steam Rock Breaker*/<gregtech:machine:20>,<contenttweaker:damage_reagent>]);

# Tangleberry
mods.botania.Apothecary.removeRecipe("tangleberrie");
Fey.addRecipe("tangleberrie", <botania:specialflower>.withTag({type: "tangleberrie"}), [<contenttweaker:tangled_petals>,<contenttweaker:tangled_petals>,<contenttweaker:rune_of_earth>,<enderio:item_material:17>,<contenttweaker:crepitous>]);

# Jiyuulia
mods.botania.Apothecary.removeRecipe("jiyuulia");
Fey.addRecipe("jiyuulia", <botania:specialflower>.withTag({type: "jiyuulia"}), [<contenttweaker:petal_of_the_jiyuulia>,<contenttweaker:petal_of_the_jiyuulia>,<contenttweaker:rune_of_air>,<ore:rotorSilver>.firstItem,<contenttweaker:aether>]);

# Clayconia
mods.botania.Apothecary.removeRecipe("clayconia");
Fey.addRecipe("clayconia", <botania:specialflower>.withTag({type: "clayconia"}), [<contenttweaker:clay_cone_petal>,<contenttweaker:clay_cone_petal>,<contenttweaker:rune_of_earth>,<contenttweaker:neutral_reagent>,<minecraft:clay>]);

# Daffomill
mods.botania.Apothecary.removeRecipe("daffomill");
Fey.addRecipe("daffomill", <botania:specialflower>.withTag({type: "daffomill"}), [<contenttweaker:daffomill_petal>,<contenttweaker:daffomill_petal>,<contenttweaker:rune_of_air>,<ore:rotorTwilightMetal>.firstItem,<contenttweaker:aether>]);

# Solegnolia
mods.botania.Apothecary.removeRecipe("solegnolia");
Fey.addRecipe("solegnolia", <botania:specialflower>.withTag({type: "solegnolia"}), [<contenttweaker:petal_of_the_solegnolia>,<contenttweaker:petal_of_the_solegnolia>,<contenttweaker:rune_of_air>,<enderio:item_material:15>,<enderio:block_alloy:1>]);

# Bergamute
mods.botania.Apothecary.removeRecipe("bergamute");
Fey.addRecipe("bergamute", <botania:specialflower>.withTag({type: "bergamute"}), [<contenttweaker:petal_of_the_bergamute>,<contenttweaker:petal_of_the_bergamute>,<contenttweaker:rune_of_air>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),<randomthings:sounddampener>]);

# Munchdew
mods.botania.Apothecary.removeRecipe("munchdew");
Fey.addRecipe("munchdew", <botania:specialflower>.withTag({type: "munchdew"}), [<contenttweaker:munching_petal>,<contenttweaker:munching_petal>,<contenttweaker:rune_of_gluttony>,<contenttweaker:rune_of_spring>,<botania:grasshorn:1>]);

# Entropinnyum
mods.botania.Apothecary.removeRecipe("entropinnyum");
Fey.addRecipe("entropinnyum", <botania:specialflower>.withTag({type: "entropinnyum"}), [<contenttweaker:petal_of_the_entropinnyum>,<contenttweaker:petal_of_the_entropinnyum>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_fire>,<minecraft:tnt>]);

# Spectrolus
mods.botania.Apothecary.removeRecipe("spectrolus");
Fey.addRecipe("spectrolus", <botania:specialflower>.withTag({type: "spectrolus"}), [<contenttweaker:spectacular_petal>,<contenttweaker:spectacular_petal>,<botania:manaresource:8>,<botania:quartz:3>,<contenttweaker:rune_of_deception>]);

# Rafflowsia
mods.botania.Apothecary.removeRecipe("rafflowsia");
Fey.addRecipe("rafflowsia", <botania:specialflower>.withTag({type: "rafflowsia"}), [<contenttweaker:petal_of_the_rafflowsia>,<contenttweaker:petal_of_the_rafflowsia>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_gluttony>,<botania:quartz:3>]);

# Dandelifeon
mods.botania.Apothecary.removeRecipe("dandelifeon");
Fey.addRecipe("dandelifeon", <botania:specialflower>.withTag({type: "dandelifeon"}), [<contenttweaker:petal_of_the_game_of_life>,<contenttweaker:petal_of_the_game_of_life>,<botania:manaresource:5>,<abyssalcraft:lifecrystal>,<contenttweaker:rune_of_greed>]);

# Kekimurus
mods.botania.Apothecary.removeRecipe("kekimurus");
Fey.addRecipe("kekimurus", <botania:specialflower>.withTag({type: "kekimurus"}), [<contenttweaker:petal_of_a_slice_o_cake>,<contenttweaker:petal_of_a_slice_o_cake>,<minecraft:cake>,<contenttweaker:rune_of_gluttony>,<botania:manaresource:8>]);

# Shulk Me Not
mods.botania.Apothecary.removeRecipe("shulk_me_not");
Fey.addRecipe("shulk_me_not", <botania:specialflower>.withTag({type: "shulk_me_not"}), [<contenttweaker:petal_me_not>,<contenttweaker:petal_me_not>,<minecraft:shulker_shell>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_envy>]);

# Heisei Dream
mods.botania.Apothecary.removeRecipe("heiseiDream");
Fey.addRecipe("heiseiDream", <botania:specialflower>.withTag({type: "heiseiDream"}), [<contenttweaker:dreaming_petal>,<contenttweaker:dreaming_petal>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_deception>,<contenttweaker:dreammatter>]);

# Marimorphosis
mods.botania.Apothecary.removeRecipe("marimorphosis");
Fey.addRecipe("marimorphosis", <botania:specialflower>.withTag({type: "marimorphosis"}), [<contenttweaker:morphing_petal>,<contenttweaker:morphing_petal>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_summer>,<botania:quartz:3>]);

# Orechid
mods.botania.Apothecary.removeRecipe("orechid");
<botania:specialflower>.withTag({type: "orechid"}).addTooltip(format.darkRed("Currently Disabled."));
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechid"}));
// Fey.addRecipe("orechid", <botania:specialflower>.withTag({type: "orechid"}), [<contenttweaker:orechid_petallius>,<contenttweaker:orechid_petallius>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Orechid Inglem
mods.botania.Apothecary.removeRecipe("orechidIgnem");
<botania:specialflower>.withTag({type: "orechidIgnem"}).addTooltip(format.darkRed("Currently Disabled."));
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechidIgnem"}));
// Fey.addRecipe("orechidIgnem", <botania:specialflower>.withTag({type: "orechidIgnem"}), [<contenttweaker:orechid_ignem_petallius>,<contenttweaker:orechid_ignem_petallius>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Hyacidus
mods.botania.Apothecary.removeRecipe("hyacidus");
Fey.addRecipe("hyacidus", <botania:specialflower>.withTag({type: "hyacidus"}), [<contenttweaker:petal_of_the_hyacidus>,<contenttweaker:petal_of_the_hyacidus>,<minecraft:splash_potion>.withTag({Potion: "cofhcore:poison4"}),<minecraft:poisonous_potato>,<contenttweaker:rune_of_wrath>]);

# Pollidisiac
mods.botania.Apothecary.removeRecipe("pollidisiac");
Fey.addRecipe("pollidisiac", <botania:specialflower>.withTag({type: "pollidisiac"}), [<contenttweaker:pollinating_petal>,<contenttweaker:pollinating_petal>,<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_fire>,<botania:quartz:4>]);

# Medomune
mods.botania.Apothecary.removeRecipe("medumone");
Fey.addRecipe("medumone", <botania:specialflower>.withTag({type: "medumone"}), [<contenttweaker:medumone_petal>,<contenttweaker:medumone_petal>,<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}),<contenttweaker:rune_of_earth>,<botania:manaresource:6>]);

# Fallen Kanade
mods.botania.Apothecary.removeRecipe("fallenKanade");
Fey.addRecipe("fallenKanade", <botania:specialflower>.withTag({type: "fallenKanade"}), [<contenttweaker:petal_of_the_fallen_kanade>,<contenttweaker:petal_of_the_fallen_kanade>,<minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"}),<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_spring>]);

# Loonium
mods.botania.Apothecary.removeRecipe("loonium");
Fey.addRecipe("loonium", <botania:specialflower>.withTag({type: "loonium"}), [<contenttweaker:loonium_petal>,<contenttweaker:loonium_petal>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_envy>,<botania:manaresource:5>]);

# Vinculotus
mods.botania.Apothecary.removeRecipe("vinculotus");
Fey.addRecipe("vinculotus", <botania:specialflower>.withTag({type: "vinculotus"}), [<contenttweaker:petal_of_the_vinculotus>,<contenttweaker:petal_of_the_vinculotus>,<enderio:item_material:16>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Spectranthemum
mods.botania.Apothecary.removeRecipe("spectranthemum");
Fey.addRecipe("spectranthemum", <botania:specialflower>.withTag({type: "spectranthemum"}), [<contenttweaker:spectralight_petal>,<contenttweaker:spectralight_petal>,<randomthings:ingredient:2>,<contenttweaker:rune_of_envy>,<botania:manaresource:6>]);

# Bubbell
mods.botania.Apothecary.removeRecipe("bubbell");
Fey.addRecipe("bubbell", <botania:specialflower>.withTag({type: "bubbell"}), [<contenttweaker:blubbing_petal>,<contenttweaker:blubbing_petal>,<contenttweaker:suppression_core>,<contenttweaker:rune_of_envy>,<botania:manaresource:8>]);

//Petal Apothecary
recipes.remove(<botania:altar>);
Alchemy.add(<botania:altar>, [<contenttweaker:heart_of_the_magical_woods>,<twilightforest:deadrock>,<ore:petalGray>,<twilightforest:deadrock>,<twilightforest:deadrock>], {"dawnstone":8 to 16, "silver":8 to 16, "copper": 8 to 16});

# [Mana Spreader] from [Honey-Steel Spring][+7]
recipes.remove(<botania:spreader:0>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "botania:spreader", # Name
  "FIRSTSTEPS@2", # Research
  15, # Vis cost
  [<aspect:ignis> * 10, <aspect:perditio> * 5, <aspect:aer> * 15],
  <botania:spreader>, # Output
  Grid(["pretty",
  "l l l",
  "■ H R",
  "l l l"], {
  "l": <ore:livingwood>,       # Livingwood
  "■": <botania:petalblock:5>, # Lime Petal Block
  "H": <ore:springHoneySteel>, # Honey-Steel Spring
  "R": <ore:ringRoseGold>,     # Rose Gold Ring
}).shaped());

// Pulse Mana Spreader
recipes.remove(<botania:spreader:1>);
recipes.addShaped(<botania:spreader:1> * 1, [[<ore:plateRedAlloy>, <ore:ingotRedstoneAlloy>, <ore:plateRedAlloy>], [<ore:ingotRedstoneAlloy>, <botania:spreader:0>, <ore:ingotRedstoneAlloy>],[<ore:plateRedAlloy>, <ore:ingotRedstoneAlloy>, <ore:plateRedAlloy>]]);

# [Diluted Mana Pool] from [Adhesive][+5]
recipes.remove(<botania:pool:2>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "botania:pool", # Name
  "FIRSTSTEPS@2", # Research
  25, # Vis cost
  [<aspect:aqua> * 10, <aspect:terra> * 5, <aspect:ordo> * 5],
  <botania:pool:2>, # Output
  Grid(["pretty",
  "l A l",
  "l l l"], {
  "l": <ore:livingrock>,  # Livingrock
  "A": <embers:adhesive>, # Adhesive
}).shaped());

// Mana Pool
recipes.remove(<botania:pool:0>);
recipes.addShaped(<botania:pool:0> * 1, [[null, null, null], [<ore:livingrock>, <contenttweaker:aquasalus>, <ore:livingrock>],[<ore:livingrock>, <botania:pool:2>, <ore:livingrock>]]);

// Fabulous Mana Pool
recipes.remove(<botania:pool:3>);
recipes.addShaped(<botania:pool:3> * 1, [[null, null, null], [<botania:shimmerrock>, <contenttweaker:aquatic_core>, <botania:shimmerrock>],[<botania:shimmerrock>, <botania:pool:0>, <botania:shimmerrock>]]);

// Dreaming Mana Pool
recipes.remove(<botanicadds:pool_dreaming>);
recipes.addShaped(<botanicadds:pool_dreaming> * 1, [[<botanicadds:dreamrock>, null, <botanicadds:dreamrock>], [<botania:pool:3>, <ore:lightPlateTerrasteel>, <botania:pool:3>],[<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>]]);

//Redstone Root
recipes.remove(<botania:manaresource:6>);
mixer.recipeBuilder()
    .inputs(<ore:wildroot>, <twilightforest:liveroot>, <ore:dustRedstone>)
    .outputs(<ore:redstoneRoot>.firstItem*2)
    .duration(250)
    .EUt(100)
.buildAndRegister();

//Manasteel Magnet
recipes.remove(<botania:magnetring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens:10>, <ore:lightPlateManasteel>, null],
    [<ore:lightPlateManasteel>, <quantumflux:magnet>, <ore:lightPlateManasteel>],
    [null, <ore:lightPlateManasteel>, null]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<botania:magnetring>)
.create();

//Terrasteel Magnet
recipes.remove(<botania:magnetringgreater>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:foilTerrasteel>, <ore:plateTerrasteel>, <ore:foilTerrasteel>],
    [<ore:plateTerrasteel>, <botania:magnetring>, <ore:plateTerrasteel>],
    [<ore:foilTerrasteel>, <ore:plateTerrasteel>, <ore:foilTerrasteel>]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<botania:magnetringgreater>)
.create();

//Terrasteel
Agglomeration.removeDefaultRecipe();
Agglomeration.addRecipe(<ore:ingotTerrasteel>.firstItem, [<ore:manaPearl>, <ore:manaDiamond>, <ore:ingotManasteel>]);

//Elementium
ElvenTrade.removeRecipe(<botania:manaresource:7>);
ElvenTrade.addRecipe([<ore:ingotElementium>.firstItem], [<ore:ingotManasteel>,<ore:ingotManasteel>]);

ElvenTrade.removeRecipe(<botania:storage:2>);
ElvenTrade.addRecipe([<ore:blockElementium>.firstItem], [<ore:blockManasteel>,<ore:blockManasteel>]);

# [Runic Altar] from [Mana Diamond][+7]
recipes.remove(<botania:runealtar>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "botania:runealtar", # Name
  "FIRSTSTEPS@2", # Research
  30, # Vis cost
  [<aspect:aqua> * 15, <aspect:ordo> * 10, <aspect:aer> * 5],
  <botania:runealtar>, # Output
  Grid(["pretty",
  "M D M",
  "l l l",
  "l ◙ l"], {
  "M": <botania:manabottle>.anyDamage(), # Mana in a Bottle
  "D": <ore:manaDiamond>,                # Mana Diamond
  "l": <ore:livingrock>,                 # Livingrock
  "◙": <ore:frameGtManasteel>,           # Manasteel Frame Box
}).shaped());

# [Terrestrial Agglomeration Plate] from [Aquatic Core][+11]
recipes.remove(<botania:terraplate>);
mods.thaumcraft.Infusion.registerRecipe(
  "botania:terraplate", # Name
  "INFUSION", # Research
  <botania:terraplate>, # Output
  4, # Instability
  [<aspect:praecantatio> * 40, <aspect:ventus> * 20, <aspect:metallum> * 30, <aspect:terra> * 50],
  <contenttweaker:gusty_core>, # Central Item
  Grid(["pretty",
  "□ ◙ □",
  "n   e",
  "○ u R"], {
  "□": <ore:plateLapis>,               # Lapis Plate
  "◙": <ore:gemExquisiteLapis>,        # Exquisite Lapis
  "n": <contenttweaker:rune_of_water>, # Rune of Water
  "e": <contenttweaker:rune_of_fire>,  # Rune of Fire
  "○": <contenttweaker:rune_of_earth>, # Rune of Earth
  "u": <contenttweaker:rune_of_mana>,  # Rune of Mana
  "R": <contenttweaker:rune_of_air>,   # Rune of Air
}).spiral(1));

//Mana Bottle
canner.recipeBuilder()
    .fluidInputs(<liquid:liquid_mana>*200)
    .inputs(<minecraft:glass_bottle>)
    .outputs(<botania:manabottle>)
    .duration(90)
    .EUt(400)
.buildAndRegister();

//Terrasteel Orginal and GT Version Conversion
<gregtech:meta_ingot:32036>.addTooltip(format.lightPurple("Convert it in the Crafting Grid first before summoning Gaia!"));
recipes.addShapeless(<botania:manaresource:4>, [<ore:ingotTerrasteel>]);
recipes.addShapeless(<ore:ingotTerrasteel>.firstItem, [<botania:manaresource:4>]);