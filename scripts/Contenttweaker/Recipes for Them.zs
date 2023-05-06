import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.formatting.IFormattedText;


import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Squeezer;
import mods.enderio.AlloySmelter as AlloySmelter;
import mods.chisel.Carving;
import mods.roots.Pyre;
import mods.roots.Fey as Fey;
import mods.botania.Apothecary;
import mods.inworldcrafting.ExplosionCrafting as ExplosionCrafting;
import mods.bloodmagic.BloodAltar;
import mods.extendedcrafting.CombinationCrafting as CombinationCrafting;
import mods.extendedcrafting.TableCrafting as TableCrafting;
import mods.thaumcraft.Infusion as Infusion;
import thaumcraft.aspect.CTAspectStack;
import mods.astralsorcery.StarlightInfusion;

import mods.inworldcrafting.FireCrafting as FireCrafting;

//Glod Crystal and Empowered Glod Crystal

<ore:glodCrystal>.add(<contenttweaker:glod_crystal>);
<ore:blockGlodCrystal>.add(<contenttweaker:glod_crystal_block>);
<ore:empoweredGlodCrystal>.add(<contenttweaker:empowered_glod_crystal>);
<ore:empoweredBlockGlodCrystal>.add(<contenttweaker:empowered_glod_crystal_block>);

recipes.addShapeless("GlodCrystalBlocktoCrystal", <ore:glodCrystal>.firstItem * 9, [<ore:blockGlodCrystal>]);

compressor.recipeBuilder()
    .inputs(<ore:glodCrystal> * 9)
    .outputs(<ore:blockGlodCrystal>.firstItem)
    .duration(60)
    .EUt(8)
.buildAndRegister();

recipes.addShapeless("EmpoweredGlodCrystalBlocktoCrystal", <ore:empoweredGlodCrystal>.firstItem * 9, [<ore:empoweredBlockGlodCrystal>]);

compressor.recipeBuilder()
    .inputs(<ore:empoweredGlodCrystal> * 9)
    .outputs(<ore:empoweredBlockGlodCrystal>.firstItem)
    .duration(60)
    .EUt(8)
.buildAndRegister();

//Ender Crystal and its Empowered Version
<ore:endorCrystal>.add(<contenttweaker:endor_crystal>);
<ore:empoweredEndorCrystal>.add(<contenttweaker:empowered_endor_crystal>);

<ore:blockEndorCrystal>.add(<contenttweaker:endor_crystal_block>);
<ore:empoweredBlockEndorCrystal>.add(<contenttweaker:empowered_endor_crystal_block>);

recipes.addShapeless("EndorCrystalBlocktoCrystal", <ore:endorCrystal>.firstItem * 9, [<ore:blockEndorCrystal>]);

compressor.recipeBuilder()
    .inputs(<ore:endorCrystal> * 9)
    .outputs(<ore:blockEndorCrystal>.firstItem)
    .duration(60)
    .EUt(8)
.buildAndRegister();

recipes.addShapeless("EmpoweredEndorCrystalBlocktoCrystal", <ore:empoweredEndorCrystal>.firstItem * 9, [<ore:empoweredBlockEndorCrystal>]);

compressor.recipeBuilder()
    .inputs(<ore:empoweredEndorCrystal> * 9)
    .outputs(<ore:empoweredBlockEndorCrystal>.firstItem)
    .duration(60)
    .EUt(8)
.buildAndRegister();

//Ghastlycerin =========

mods.forestry.Squeezer.addRecipe(<liquid:ghastlycerin> * 700, [<contenttweaker:ghasbladder>], 300, <minecraft:ghast_tear> % 2);
extractor.recipeBuilder()
    .inputs(<contenttweaker:ghasbladder>)
    .fluidOutputs(<liquid:ghastlycerin> * 1000)
    .chancedOutput(<minecraft:ghast_tear>, 500, 1000)
    .duration(120)
    .EUt(40)
    .buildAndRegister();

// Hellish Flesh Essence =========

mixer.recipeBuilder()
    .inputs(<biomesoplenty:fleshchunk> * 4)
    .inputs(<contenttweaker:pigmanflesh> * 2)
    .inputs(<natura:edibles> * 2)
    .fluidInputs([<liquid:blood> * 2000])
    .outputs(<contenttweaker:hellishflesh> * 4)
    .duration(160)
    .EUt(16)
    .buildAndRegister();

// Heart of the Woods =========

mixer.recipeBuilder()
    .inputs(<totemic:cedar_log> * 4)
    .inputs(<totemic:cedar_leaves> * 4)
    .inputs(<contenttweaker:hellishflesh> * 4)
    .inputs(<contenttweaker:maligne_heart>)
    .fluidInputs([<liquid:binnie.turpentine> * 1500])
    .outputs(<contenttweaker:heart_of_the_woods>)
    .duration(160)
    .EUt(32)
    .buildAndRegister();

// Chip Composite ===========

mixer.recipeBuilder()
    .inputs(<ore:itemPlantbrown>*2, <ore:itemPlantgreen>*2, <ore:slimeball>, <ore:dustClay>*2, <ore:dustQuartzSand>*2)
    .notConsumable(<gregtech:meta_item_1:17>)
    .fluidInputs([<liquid:binnie.turpentine> * 50])
    .outputs(<contenttweaker:chip_composite> * 4)
    .duration(160)
    .EUt(32)
.buildAndRegister();

//Obsidian Glass
<mia:armored_glass>.displayName = "Obsidian Glass";
recipes.remove(<mia:armored_glass>);
alloy.recipeBuilder()
    .inputs(<extrautils2:decorativeglass>, <ore:dustObsidian>*4)
    .outputs(<mia:armored_glass>)
    .duration(150)
    .EUt(40)
.buildAndRegister();    

//Sooty Energetic Compound
mixer.recipeBuilder()
    .inputs(<thermalfoundation:material:892>*2, <fossil:tardrop>*2, <ore:dustObscureCompound>*2, <gregtech:meta_item_1:491>*9)
    .fluidInputs(<liquid:oil>*100)
    .outputs(<contenttweaker:sooty_energetic_compound>)
    .duration(400)
    .EUt(280)
.buildAndRegister();

//Sooty Energetic Compound Recharging
chemreactor.recipeBuilder()
    .inputs(<contenttweaker:sooty_energetic_compound_1>)
    .fluidInputs(<liquid:energetic_alloy>*576)
    .outputs(<contenttweaker:sooty_energetic_compound>)
    .duration(200)
    .EUt(300)
.buildAndRegister();

//Lich Bone Tooltip
<contenttweaker:lich_bones>.addTooltip(format.gray("Dropped by The Lich in the Twilight Forest."));

//Rainbow Fabric
assembler.recipeBuilder()
    .inputs(<embers:ashen_cloth>, <twilightforest:twilight_sapling:9>, <ceramics:clay_hard:6>, <gregtech:meta_item_1:435>, <gregtech:meta_item_1:434>, <gregtech:meta_item_1:432>, <extrautils2:decorativesolid:8>, <twilightforest:aurora_block>)
    .notConsumable(<twilightforest:trophy:8>)
    .outputs(<contenttweaker:rainbow_fabric>)
    .duration(100)
    .EUt(200)
.buildAndRegister();

// Heart of the Magical Woods =========
// assembler.recipeBuilder()
//     .inputs(<contenttweaker:heart_of_the_woods>, <twilightforest:naga_scale>, <twilightforest:ironwood_ingot>, <twilightforest:fiery_ingot>, <twilightforest:steeleaf_ingot>, <twilightforest:carminite>, <twilightforest:knightmetal_ingot>, <contenttweaker:lich_bones>, <contenttweaker:rainbow_fabric>)
//     .fluidInputs(<liquid:fiery_essence>*2000)
//     .outputs(<contenttweaker:heart_of_the_magical_woods>)
//     .duration(230)
//     .EUt(220)
// .buildAndRegister();

//Osglolapis
alloy.recipeBuilder()
    .inputs(<ore:ingotOsgloglas>, <ore:gemLapis>)
    .outputs(<contenttweaker:osglolapis>)
    .duration(150)
    .EUt(60)
.buildAndRegister();

// Imp and Buffalo Leather Scrap
recipes.addShapeless("ImpLeatherScrap", <contenttweaker:imp_leather_scrap> * 4, [<natura:materials:6>, <ore:gtceKnife>]);
recipes.addShapeless("BuffaloLeatherScrap", <contenttweaker:buffalo_leather_scrap> * 4, [<ore:hideBuffalo>, <ore:gtceKnife>]);

saw.recipeBuilder()
    .inputs(<natura:materials:6>)
    .outputs(<contenttweaker:imp_leather_scrap> * 6)
    .duration(200)
    .EUt(30)
.buildAndRegister();

saw.recipeBuilder()
    .inputs(<totemic:buffalo_items>)
    .outputs(<contenttweaker:buffalo_leather_scrap> * 6)
    .duration(200)
    .EUt(30)
.buildAndRegister();

//Industrial Leather ===========================================

mixer.recipeBuilder()
    .inputs(<contenttweaker:imp_leather_scrap>*2, <contenttweaker:buffalo_leather_scrap>*2, <harvestcraft:hardenedleatheritem>, <ore:dustCalcium>, <ore:dustPlastic>)
    .fluidInputs([<liquid:tannin> * 400])
    .outputs(<contenttweaker:industrial_leather>*2)
    .duration(223)
    .EUt(120)
.buildAndRegister();

//Hyper Diamond Block
alloy.recipeBuilder()
    .inputs(<quantumflux:craftingpiece:6> * 9)
    .notConsumable(<gregtech:meta_item_1:18>) 
    .outputs(<contenttweaker:hyper_diamond_block>)
    .duration(5)
    .EUt(28)
.buildAndRegister();

compressor.recipeBuilder()
    .inputs(<quantumflux:craftingpiece:6> * 9)
    .outputs(<contenttweaker:hyper_diamond_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

extruder.recipeBuilder()
    .inputs(<quantumflux:craftingpiece:6> * 9)
    .notConsumable(<gregtech:meta_item_1:43>) 
    .outputs(<contenttweaker:hyper_diamond_block>)
    .duration(10)
    .EUt(56)
.buildAndRegister();

//Nacre ===========
<contenttweaker:nacre_block_weathered>.addTooltip(format.gray("Weathered"));
<contenttweaker:nacre_bricks_weathered>.addTooltip(format.gray("Weathered"));

var Nacre as IItemStack[] = [
<contenttweaker:nacre_block_weathered>,
<contenttweaker:nacre_bricks_weathered>,
<contenttweaker:nacre_block>,
<contenttweaker:nacre_bricks>
];
for i in Nacre {
mods.chisel.Carving.addVariation("nacre", i);
}

mixer.recipeBuilder()
    .inputs(<embers:seed_gold>, <ore:dustTinyRoseGold>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight>*1000)
    .fluidOutputs(<liquid:nacre>*2000)
    .duration(1200)
    .EUt(60)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:nacre> * 1000)
    .notConsumable(<gregtech:meta_item_1:18>) 
    .outputs(<contenttweaker:nacre_block>)
    .duration(56)
    .EUt(7)
.buildAndRegister();

//Livingwood Board and Circuit Board

chemreactor.recipeBuilder()
    .inputs(<botania:livingwood>, <ore:platePolybenzimidazole>)
    .fluidInputs(<liquid:phthalic_acid> * 250)
    .outputs(<contenttweaker:livingwood_board>*8)
    .duration(600)
    .EUt(300)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<botania:livingwood>, <ore:platePolytetrafluoroethylene>)
    .fluidInputs(<liquid:phthalic_acid> * 250)
    .outputs(<contenttweaker:livingwood_board>*4)
    .duration(600)
    .EUt(300)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<botania:livingwood>, <ore:platePolyvinylChloride>)
    .fluidInputs(<liquid:phthalic_acid> * 250)
    .outputs(<contenttweaker:livingwood_board>*2)
    .duration(600)
    .EUt(300)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<botania:livingwood>, <ore:platePlastic>)
    .fluidInputs(<liquid:phthalic_acid> * 250)
    .outputs(<contenttweaker:livingwood_board>)
    .duration(600)
    .EUt(300)
.buildAndRegister();

// --

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:livingwood_board>, <ore:foilDawnstone>*6)
    .fluidInputs(<liquid:iron_iii_chloride> * 500)
    .outputs(<contenttweaker:livingwood_circuit_board>)
    .duration(1500)
    .EUt(240)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:livingwood_board>, <ore:foilDawnstone>*6)
    .fluidInputs(<liquid:sodium_persulfate> * 1000)
    .outputs(<contenttweaker:livingwood_circuit_board>)
    .duration(1500)
    .EUt(240)
.buildAndRegister();


//Mana-Doped Silicon Boule ===
<contenttweaker:mana_silicon_boule>.addTooltip(format.gray("Raw Botanical Circuit"));

blast_furnace.recipeBuilder()
    .fluidInputs(<liquid:liquid_mana> * 4000)
    .inputs(<ore:dustSilicon>*64, <ore:powderMana>*8)
    .property("temperature", 2500)
    .outputs(<contenttweaker:mana_silicon_boule>)
    .duration(13000)
    .EUt(480)
.buildAndRegister();

//Mana-Doped Wafer ===
<contenttweaker:mana_silicon_wafer>.addTooltip(format.gray("Raw Botanical Circuit"));

saw.recipeBuilder()
    .inputs(<contenttweaker:mana_silicon_boule>)
    .fluidInputs(<liquid:lubricant> * 250)
    .outputs(<contenttweaker:mana_silicon_wafer>*32)
    .duration(800)
    .EUt(480)
.buildAndRegister();

saw.recipeBuilder()
    .inputs(<contenttweaker:mana_silicon_boule>)
    .fluidInputs(<liquid:distilled_water> * 750)
    .outputs(<contenttweaker:mana_silicon_wafer>*32)
    .duration(1200)
    .EUt(480)
.buildAndRegister();

saw.recipeBuilder()
    .inputs(<contenttweaker:mana_silicon_boule>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<contenttweaker:mana_silicon_wafer>*32)
    .duration(1600)
    .EUt(480)
.buildAndRegister();

//Integrated Mana Circuit Wafer ===
<contenttweaker:integrated_botanical_mana_circuit_wafer>.addTooltip(format.gray("Raw Integrated Botanical Circuit"));

engraver.recipeBuilder()
    .inputs(<contenttweaker:mana_silicon_wafer>)
    .notConsumable(<ore:lensVinteum>)
    .outputs(<contenttweaker:integrated_botanical_mana_circuit_wafer>)
    .duration(500)
    .EUt(480)
.buildAndRegister();

//Integrated Mana Circuit Wafer Cutted ===
<contenttweaker:integrated_mana_circuit>.addTooltip(format.gray("Integrated Mana Circuit"));

saw.recipeBuilder()
    .inputs(<contenttweaker:integrated_botanical_mana_circuit_wafer>)
    .fluidInputs(<liquid:lubricant> * 250)
    .outputs(<contenttweaker:integrated_mana_circuit>*8)
    .duration(900)
    .EUt(64)
.buildAndRegister();

saw.recipeBuilder()
    .inputs(<contenttweaker:integrated_botanical_mana_circuit_wafer>)
    .fluidInputs(<liquid:distilled_water> * 750)
    .outputs(<contenttweaker:integrated_mana_circuit>*8)
    .duration(1350)
    .EUt(64)
.buildAndRegister();

saw.recipeBuilder()
    .inputs(<contenttweaker:integrated_botanical_mana_circuit_wafer>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<contenttweaker:integrated_mana_circuit>*8)
    .duration(1800)
    .EUt(64)
.buildAndRegister();

//Integrated Botanical Processor
circuit_assembler.recipeBuilder()
    .inputs(<contenttweaker:livingwood_circuit_board>, <contenttweaker:rune_of_pride>, <contenttweaker:rune_of_lust>, <contenttweaker:integrated_mana_circuit>, <ore:wireFineManasteel>*2, <ore:boltTerrasteel>*2)
    .fluidInputs(<liquid:nacre> * 144)
    .outputs(<contenttweaker:integrated_botanical_processor>)
	.duration(100)
	.EUt(228)
.buildAndRegister();

//Blackened Spirit
Pyre.addRecipe(
  "BlackenedSpirit",
  <contenttweaker:blackened_spirit>,   // the output of this recipe
  [<twilightforest:naga_scale>, <ore:ingotSteeleaf>, <ore:carminite>, <forge:bucketfilled>.withTag({FluidName: "binnie.spirit.neutral", Amount: 1000}), <twilightforest:raven_feather>] // a list of five ingredients (no more, no less)
);

# [Blackened Spirit]*8 from [Condensed Spiritus Vis Crystal][+8]
mods.thaumcraft.Infusion.removeRecipe(<contenttweaker:blackened_spirit>);
mods.thaumcraft.Infusion.registerRecipe(
  "contenttweaker:blackened_spirit", # Name
  "INFUSION", # Research
  <contenttweaker:blackened_spirit> * 8, # Output
  4, # Instability
  [<aspect:spiritus> * 20, <aspect:tenebrae> * 15],
  <contenttweaker:condensed_vis_crystal_spiritus>, # Central Item
  Grid(["pretty",
  "A N A",
  "f   c",
  "A ▬ A"], {
  "A": <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.spirit.neutral", Amount: 1000}}), # Neutral Spirit Bottle
  "N": <twilightforest:naga_scale>, # Naga Scale
  "f": <twilightforest:raven_feather>,# Raven Feather
  "c": <ore:carminite>,             # Carminite
  "▬": <ore:ingotSteeleaf>,         # Steeleaf
}).spiral(1));

//Twilight Alchemical Powder
Fey.addRecipe(
  "twilight_alchemical_powder",          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  <contenttweaker:twilight_powder>,    // the itemstack produced by this recipe
  [<contenttweaker:lich_bones>, <contenttweaker:rainbow_fabric>, <twilightforest:alpha_fur>, <contenttweaker:stone_alchemy_bowl>, <embers:seed_silver>], // an array of IIngredients that make up the recipe; must contain 5 items
  4               // the amount of xp (in levels) to reward the player for crafting this recipe
);

//Stone Bowl
recipes.addShapeless("StoneAlchemyBowl", <contenttweaker:stone_alchemy_bowl>, [<minecraft:stone_slab>, <ore:artisansPunch>.reuse().transformDamage(4), <ore:gtceHardHammers>]);

lathe.recipeBuilder()
    .inputs(<minecraft:stone_slab>)
    .outputs(<contenttweaker:stone_alchemy_bowl>)
	.duration(100)
	.EUt(16)
.buildAndRegister();

//Hyper Pearl
ExplosionCrafting.explodeItemRecipe(<contenttweaker:hyper_pearl>, <randomthings:stableenderpearl>, 80);

//Botania Petals =====================================================

# Petal of the Daisy
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_daisy>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalYellow>]);

# Hydrating Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:hydrating_petal>, [<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalBlue>]);

# Petal of the Inner Flame
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_inner_flame>, [<ore:petalBrown>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalYellow>]);

# Petrolic Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:petrolic_petal>, [<ore:petalWhite>,<ore:petalLightGray>,<ore:petalLime>,<ore:petalGreen>]);

# Manastar Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:manastar_petal>, [<ore:petalBlue>,<ore:petalBlue>,<ore:petalRed>,<ore:petalWhite>]);

# Thermal Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thermal_petal>, [<ore:petalOrange>,<ore:petalOrange>,<ore:petalRed>,<ore:petalRed>]);

# Petal of the Arcane Rose
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_arcane_rose>, [<ore:petalPink>,<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>]);

# Petal of the Gourmaryllis
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_gourmaryllis>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalLightGray>]);

# Petal of the Narslimmus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_narslimmus>, [<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>,<ore:petalGray>]);

# Jaded Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:jaded_petal>, [<ore:petalRed>,<ore:petalPurple>,<ore:petalLime>,<ore:petalBlack>]);

# Thorny Belle Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_belle_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>]);

# Thorny Dread Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_dread_petal>, [<ore:petalBlack>,<ore:petalBlack>,<ore:petalBlack>,<ore:petalRed>]);

# Tigerseye Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:tigerseye_petal>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBlack>]);

# Petal of the Exoflame
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_exoflame>, [<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>,<ore:petalBlack>]);

# Agricarnatic Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:agricarnatic_petal>, [<ore:petalLime>,<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>]);

# Hopping Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:hopping_petal>, [<ore:petalGray>,<ore:petalGray>,<ore:petalLightGray>,<ore:petalLightGray>]);

# Petal of the Rannuncarpus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rannuncarpus>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalPink>]);

# Tangled Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:tangled_petals>, [<ore:petalGreen>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalGray>]);

# Petal of the Jiyuulia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_jiyuulia>, [<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>,<ore:petalLightGray>]);

# Clay Cone Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:clay_cone_petal>, [<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalGreen>]);

# Daffomill Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:daffomill_petal>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalBrown>]);

# Petal of the Solegnolia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_solegnolia>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>]);

# Petal of the Bergamute
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_bergamute>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalOrange>]);

# Muching Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:munching_petal>, [<ore:petalGreen>,<ore:petalLime>,<ore:petalLime>,<ore:petalRed>]);

# Petal of the Entropinnyum
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_entropinnyum>, [<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>,<ore:petalGray>]);

# Spectacular Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:spectacular_petal>, [<ore:petalWhite>,<ore:petalBlue>,<ore:petalRed>,<ore:petalGreen>]);

# Petal of the Rafflowsia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rafflowsia>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalYellow>,<ore:petalGreen>]);

# Petal of the Game of Life
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_game_of_life>, [<ore:petalYellow>,<ore:petalLime>,<ore:petalLime>,<ore:petalPink>]);

# Petal of a Slice o' Cake
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_a_slice_o_cake>, [<ore:petalWhite>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>]);

# Petal Me Not
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_me_not>, [<ore:petalLightGray>,<ore:petalYellow>,<ore:petalMagenta>,<ore:petalPurple>]);

# Dreaming Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:dreaming_petal>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPink>,<ore:petalMagenta>]);

# Morphing Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:morphing_petal>, [<ore:petalLightGray>,<ore:petalCyan>,<ore:petalGreen>,<ore:petalRed>]);

// # Orechid Petallius
// mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_petallius>, [<ore:petalGray>,<ore:petalGray>,<ore:petalBrown>,<ore:petalLightBlue>]);

// # Orechid Ignem Petallius
// mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_ignem_petallius>, [<ore:petalRed>,<ore:petalLightBlue>,<ore:petalBrown>,<ore:petalRed>]);

# Petal of the Hyacidus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_hyacidus>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPurple>,<ore:petalMagenta>]);

# Pollinating Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:pollinating_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalPink>,<ore:petalYellow>]);

# Medomune Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:medumone_petal>, [<ore:petalBrown>,<ore:petalBrown>,<ore:petalBrown>,<ore:petalGray>]);

# Petal of the Fallen Kanade
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_fallen_kanade>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalLime>]);

# Loonium Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:loonium_petal>, [<ore:petalGreen>,<ore:petalGreen>,<ore:petalBrown>,<ore:petalWhite>]);

# Petal of the Vinculotus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_vinculotus>, [<ore:petalWhite>,<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalGreen>]);

# Spectralight Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:spectralight_petal>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalLightGray>,<ore:petalLime>]);

# Blubbing Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:blubbing_petal>, [<ore:petalLime>,<ore:petalCyan>,<ore:petalLightBlue>,<ore:petalGreen>]);

//Botania runes ================================

//Blank Rune Recipe
solidifier.recipeBuilder()
    .fluidInputs(<liquid:twilight_metal> * 144)
    .notConsumable(<gregtech:meta_item_1:20>) 
    .outputs(<contenttweaker:blank_botania_rune>*4)
    .duration(76)
    .EUt(240)
.buildAndRegister();

//Mass Removal of Old Runes

var OldBotaniaRunesHiding as IItemStack[] = [
<botania:rune:4>,
<botania:rune:13>,
<botania:rune:8>,
<botania:rune:5>,
<botania:rune:6>,
<botania:rune:1>,
<botania:rune:9>,
<botania:rune:7>,
<botania:rune:14>,
<botania:rune:15>,
<botania:rune:11>,
<botania:rune:2>,
<botania:rune:3>,
<botania:rune:10>,
<botania:rune:12>,
<botania:rune>,
<botanicadds:rune_tp>,
<botanicadds:rune_energy>
];
for i in OldBotaniaRunesHiding {
	mods.jei.JEI.hide(i);
}


# Rune of Water
mods.botania.RuneAltar.removeRecipe(<botania:rune>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_water>, [<contenttweaker:aquatic_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:1>,<botania:manaresource:23>, <contenttweaker:blank_botania_rune>], 10000);

# Rune of Fire
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_fire>, [<contenttweaker:fire_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered>,<botania:manaresource:23>, <contenttweaker:blank_botania_rune>], 10000);

# Rune of Earth
mods.botania.RuneAltar.removeRecipe(<botania:rune:2>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_earth>, [<contenttweaker:earthen_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:4>,<botania:manaresource:23>, <contenttweaker:blank_botania_rune>], 10000);

# Rune of Air
mods.botania.RuneAltar.removeRecipe(<botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_air>, [<contenttweaker:gusty_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:2>,<botania:manaresource:23>, <contenttweaker:blank_botania_rune>], 10000);

# Rune of Mana
mods.botania.RuneAltar.removeRecipe(<botania:rune:8>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_mana>, [<botania:storage>,<botania:storage>,<botania:storage:3>,<botania:storage:3>, <contenttweaker:blank_botania_rune>], 25000);

# Rune of Spring
mods.botania.RuneAltar.removeRecipe(<botania:rune:4>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_spring>, [<contenttweaker:rune_of_air>,<contenttweaker:rune_of_earth>,<botanicadds:mana_lapis_block>,<contenttweaker:environmental_core>, <contenttweaker:blank_botania_rune>], 15000);

# Rune of Summer
mods.botania.RuneAltar.removeRecipe(<botania:rune:5>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_summer>, [<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_air>,<botanicadds:mana_lapis_block>,<contenttweaker:power_core>, <contenttweaker:blank_botania_rune>], 15000);

# Rune of Autumn
mods.botania.RuneAltar.removeRecipe(<botania:rune:6>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_autumn>, [<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_water>,<botanicadds:mana_lapis_block>,<contenttweaker:tempest_core>, <contenttweaker:blank_botania_rune>], 15000);

# Rune of Winter
mods.botania.RuneAltar.removeRecipe(<botania:rune:7>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_winter>, [<contenttweaker:rune_of_water>,<contenttweaker:rune_of_earth>,<botanicadds:mana_lapis_block>,<contenttweaker:icy_core>, <contenttweaker:blank_botania_rune>], 15000);


# Rune of Deception
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_deception>, [<contenttweaker:rune_of_spring>, <contenttweaker:rune_of_water>, <botania:manaresource:8>, <botanicadds:elven_lapis_block>, <botania:storage:3>, <contenttweaker:blank_botania_rune>], 20000);
#<ore:runeDeceptionB>.add(<contenttweaker:rune_of_deception>);


function addBotaniaTier3RuneRecipe(output as IItemStack, new_rune as IItemStack, input_rune1 as IItemStack, input_rune2 as IItemStack) {
	mods.botania.RuneAltar.removeRecipe(output);
	mods.botania.RuneAltar.addRecipe(new_rune, [input_rune1, input_rune2, <botania:manaresource:8>, <botanicadds:elven_lapis_block>, <botania:storage:3>, <contenttweaker:blank_botania_rune>], 20000);
}

# Rune of Lust
addBotaniaTier3RuneRecipe(<botania:rune:9>,<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_spring>,<contenttweaker:rune_of_fire>);

# Rune of Gluttony
addBotaniaTier3RuneRecipe(<botania:rune:10>,<contenttweaker:rune_of_gluttony>,<contenttweaker:rune_of_autumn>,<contenttweaker:rune_of_earth>);

# Rune of Greed
addBotaniaTier3RuneRecipe(<botania:rune:11>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_winter>,<contenttweaker:rune_of_air>);

# Rune of Sloth
addBotaniaTier3RuneRecipe(<botania:rune:12>,<contenttweaker:rune_of_sloth>,<contenttweaker:rune_of_winter>,<contenttweaker:rune_of_earth>);

# Rune of Wrath
addBotaniaTier3RuneRecipe(<botania:rune:13>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_summer>,<contenttweaker:rune_of_fire>);

# Rune of Envy
addBotaniaTier3RuneRecipe(<botania:rune:14>,<contenttweaker:rune_of_envy>,<contenttweaker:rune_of_summer>,<contenttweaker:rune_of_water>);

# Rune of Pride
addBotaniaTier3RuneRecipe(<botania:rune:15>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_autumn>,<contenttweaker:rune_of_air>);

# Rune of Teleportation
addBotaniaTier3RuneRecipe(<botanicadds:rune_tp>,<contenttweaker:rune_of_teleportation>,<contenttweaker:rune_of_mana>,<contenttweaker:rune_of_sloth>);

# Rune of Energy
addBotaniaTier3RuneRecipe(<botanicadds:rune_energy>,<contenttweaker:rune_of_energy>,<contenttweaker:rune_of_air>,<contenttweaker:rune_of_fire>);

//Blood Magic Catalysts ===========================================================================================================================

# Simple Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:simple_catalyst>, [<minecraft:glass_bottle>,<ore:dustArsenicTrioxide>,<ore:dustCyclohexanoneOxime>,<ore:dustMirabilite>,<ore:dustCalcium>,<ore:dustBronze>], 25, 2, 1);

# Strengthened Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:strengthened_catalyst>, [<contenttweaker:simple_catalyst>,<contenttweaker:simple_catalyst>,<ore:oreClusterIron>,<ore:oreClusterTin>,<thermalfoundation:material:2053>,<thermalfoundation:material:2053>], 100, 5, 2);

# Concentrated Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:concentrated_catalyst>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:strengthened_catalyst>,<ore:oreShardIron>,<ore:oreShardTin>,<ore:dustEnergeticAlloy>.firstItem,<ore:dustEnergeticAlloy>.firstItem], 400, 5, 3);

# Intensive Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:intensive_catalyst>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:concentrated_catalyst>,<ore:oreClumpIron>,<ore:oreClumpTin>,<thermalfoundation:material:1028>,<thermalfoundation:material:1028>], 3000, 5, 4);

//Blood Magic Essences ===========================================================================================================================

# Aether
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aether>, [<contenttweaker:simple_catalyst>,<minecraft:ghast_tear>,<minecraft:glowstone_dust>,/*Steel Air Cell*/<gregtech:meta_item_1:80>.withTag({Fluid: {FluidName: "air", Amount: 8000}}),<roots:cloud_berry>,<minecraft:feather>], 100, 10, 1);

# Aquasalus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aquasalus>, [<contenttweaker:simple_catalyst>,/*Normal Water Cell*/<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),/*Normal Water Cell*/<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),<minecraft:dye>,<roots:dewgonia>,<minecraft:waterlily>], 100, 10, 1);

# Incendium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:incendium>, [<contenttweaker:simple_catalyst>,/*Normal Lava Bucket*/<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}),/*Normal Lava Bucket*/<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}),<thermalfoundation:material:1024>,<roots:infernal_bulb>,<minecraft:netherrack>], 100, 10, 1);

# Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:terrae>, [<contenttweaker:simple_catalyst>,<ore:compressed1xDirt>,<ore:compressed1xSand>,<ore:compressed1xGravel>,<minecraft:obsidian>,<roots:wildroot>], 100, 10, 1);

# Sanctus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:sanctus>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aether>,<ore:glodCrystal>.firstItem,<thermalfoundation:glass_alloy:1>,<minecraft:glowstone>,<randomthings:luminousstainedbrick:4>], 400, 10, 2);

# Crystallos
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crystallos>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aquasalus>,<minecraft:packed_ice>,<minecraft:packed_ice>,<minecraft:snow>,<minecraft:snow>], 400, 10, 2);

# Magicales
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:magicales>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:incendium>,<twilightforest:magic_map_focus>,<thaumcraft:vishroom>,<draconicevolution:draconium_ingot>,<roots:pereskia>], 400, 10, 2);

# Orbis Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:orbis_terrae>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:terrae>,<actuallyadditions:item_crystal:4>,<ore:ingotOsgloglas>,<contenttweaker:arboreal_essence>,<contenttweaker:arboreal_essence>], 400, 10, 2);

# Crepitous
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crepitous>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:terrae>,<contenttweaker:orbis_terrae>,<ore:ingotDiabolicCarbide>.firstItem,<ore:compressed2xCobblestone>,<enderio:item_material:20>], 1600, 10, 3);

# Tempestas
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tempestas>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:aether>,<contenttweaker:crystallos>,<evilcraft:weather_container>,<minecraft:double_plant>,<extrautils2:ingredients:3>], 1600, 10, 3);

# Offensa
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:offensa>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:magicales>,<enderio:item_dark_steel_sword>,/*Dynamite*/<gregtech:meta_item_1:460>,<minecraft:splash_potion>.withTag({Potion: "minecraft:strong_harming"})], 1600, 10, 3);

# Virtus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:virtus>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:sanctus>,<enderio:item_alloy_endergy_ingot:4>,<contenttweaker:soot_covered_redstone>,<actuallyadditions:item_crystal_empowered:5>], 1600, 10, 3);

# Reductus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:reductus>, [<contenttweaker:intensive_catalyst>,<contenttweaker:orbis_terrae>,<contenttweaker:magicales>,<actuallyadditions:item_crystal_empowered:4>,<ore:dustBeryllium>.firstItem,<contenttweaker:livingmatter>], 20000, 10, 4);

# Tenebrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tenebrae>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:magicales>,<embers:shifting_scales>,<ore:blockDarkSteel>,<ore:dyeBlack>], 20000, 10, 4);

# Praesidium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:praesidium>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:sanctus>,<minecraft:splash_potion>.withTag({Potion: "minecraft:long_strength"}),<abyssalcraft:coraliumstone>,<thermalfoundation:glass_alloy:2>], 20000, 10, 4);

# Potentia
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:potentia>, [<contenttweaker:intensive_catalyst>,<contenttweaker:tempestas>,<contenttweaker:magicales>,<minecraft:lapis_block>,<draconicevolution:potentiometer>,<embers:winding_gears>], 20000, 10, 4);

//Blood Magic Reagents ===========================================================================================================================

# Dirty Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:dirty_reagent>, [<minecraft:dirt:1>,<roots:elemental_soil_air>,<roots:elemental_soil_water>,<roots:elemental_soil_fire>], 8, 4);

# Wizard's Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:wizards_reagent>, [<ore:gemAmethyst>.firstItem,<ore:gemGarnetYellow>.firstItem,<ore:gemOpal>.firstItem,<ore:gemAmber>.firstItem], 80, 12);

# Neutral Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:neutral_reagent>, [<minecraft:clay>,<minecraft:quartz_block>,<minecraft:concrete:8>,<minecraft:glass>], 300, 36);

# Tempest Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:tempest_reagent>, [<extrautils2:passivegenerator:4>,<totemic:wind_chime>,<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),<mekanism:speedupgrade>], 300, 36);

# Damage Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:damage_reagent>, [<tconstruct:large_sword_blade>.withTag({Material: "dreadium"}),<twilightforest:knightmetal_shield>,<minecraft:potion>.withTag({Potion: "cofhcore:harming4"}),/*Normal Lava Bucket*/<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}})], 300, 36);

# Strength Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:strength_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}),<harvestcraft:spinachpieitem>,<railcraft:firestone_refined>,<quantumflux:craftingpiece:2>], 300, 36);

# Potent Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:potent_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:absorption4"}),<actuallyadditions:item_crystal_empowered:1>,<appliedenergistics2:material:12>,<thermalfoundation:material:514>], 500, 72);

//Blood Magic Cores ===========================================================================================================================

# Empty Core
recipes.addShaped(<contenttweaker:empty_core>, [[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>],[<contenttweaker:simple_catalyst>,<enderio:item_material:14>,<contenttweaker:simple_catalyst>],[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>]]);

# Function to add custom Blood Magic Cores
function addCustomBloodMagicCore(core as IItemStack, essence as IIngredient, reagent as IIngredient, blood_orb as IIngredient) {
	recipes.addShaped(core, [[essence,reagent,essence],[reagent,<contenttweaker:empty_core>,reagent],[essence,blood_orb,essence]]);
}

# Gusty Core
addCustomBloodMagicCore(<contenttweaker:gusty_core>, <contenttweaker:aether>, <bloodmagic:component:2>, blood_orb_at_least_tier_1);

# Aquatic Core
addCustomBloodMagicCore(<contenttweaker:aquatic_core>, <contenttweaker:aquasalus>, <bloodmagic:component>, blood_orb_at_least_tier_1);

# Fire Core
addCustomBloodMagicCore(<contenttweaker:fire_core>, <contenttweaker:incendium>, <bloodmagic:component:1>, blood_orb_at_least_tier_1);

# Earthen Core
addCustomBloodMagicCore(<contenttweaker:earthen_core>, <contenttweaker:terrae>, <contenttweaker:dirty_reagent>, blood_orb_at_least_tier_1);

# Holy Core
addCustomBloodMagicCore(<contenttweaker:holy_core>, <contenttweaker:sanctus>, <bloodmagic:component:13>, blood_orb_at_least_tier_2);

# Magical Core
addCustomBloodMagicCore(<contenttweaker:magical_core>, <contenttweaker:magicales>, <contenttweaker:wizards_reagent>, blood_orb_at_least_tier_2);

# Icy Core
addCustomBloodMagicCore(<contenttweaker:icy_core>, <contenttweaker:crystallos>, <bloodmagic:component:32>, blood_orb_at_least_tier_2);

# Environmental Core
addCustomBloodMagicCore(<contenttweaker:environmental_core>, <contenttweaker:orbis_terrae>, <bloodmagic:component:5>, blood_orb_at_least_tier_2);

# Defensive Core
addCustomBloodMagicCore(<contenttweaker:defensive_core>, <contenttweaker:crepitous>, <contenttweaker:neutral_reagent>, blood_orb_at_least_tier_3);

# Tempest Core
addCustomBloodMagicCore(<contenttweaker:tempest_core>, <contenttweaker:tempestas>, <contenttweaker:tempest_reagent>, blood_orb_at_least_tier_3);

# Offensive Core
addCustomBloodMagicCore(<contenttweaker:offensive_core>, <contenttweaker:offensa>, <contenttweaker:damage_reagent>, blood_orb_at_least_tier_3);

# Power Core
addCustomBloodMagicCore(<contenttweaker:power_core>, <contenttweaker:virtus>, <contenttweaker:strength_reagent>, blood_orb_at_least_tier_3);

# Reduction Core
addCustomBloodMagicCore(<contenttweaker:reduction_core>, <contenttweaker:reductus>, <bloodmagic:component:31>, blood_orb_at_least_tier_4);

# Dark Core
addCustomBloodMagicCore(<contenttweaker:dark_core>, <contenttweaker:tenebrae>, <bloodmagic:component:4>, blood_orb_at_least_tier_4);

# Suppression Core
addCustomBloodMagicCore(<contenttweaker:suppression_core>, <contenttweaker:praesidium>, <bloodmagic:component:9>, blood_orb_at_least_tier_4);

# Potency Core
addCustomBloodMagicCore(<contenttweaker:potency_core>, <contenttweaker:potentia>, <contenttweaker:potent_reagent>, blood_orb_at_least_tier_4);

// ================================================================

// Titanium Bars =================

recipes.addShaped(<contenttweaker:titaniumbars> * 8, [[null, <ore:gtceWrenches>, null], [<ore:stickTitanium>, <ore:stickTitanium>, <ore:stickTitanium>],[<ore:stickTitanium>, <ore:stickTitanium>, <ore:stickTitanium>]]);

assembler.recipeBuilder()
    .inputs(<ore:stickTitanium> * 3)
    .circuit(3)
    .outputs(<contenttweaker:titaniumbars> * 4)
    .duration(300)
    .EUt(4)
.buildAndRegister();

# Rainbow Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:rainbow_slate>, <bloodmagic:slate:4>, 5, 120000, 300, 250);
<contenttweaker:rainbow_slate>.addTooltip("Infused stone inside of a Blood Altar.");

# Vibrant Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:vibrant_slate>, <contenttweaker:rainbow_slate>, 5, 300000, 400, 250);
<contenttweaker:vibrant_slate>.addTooltip("Infused stone inside of a Blood Altar.");

# Perfect Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:perfect_slate>, <contenttweaker:vibrant_slate>, 5, 1000000, 500, 250);
<contenttweaker:perfect_slate>.addTooltip("Infused stone inside of a Blood Altar.");

/// Etched Red alloy Wiring
engraver.recipeBuilder()
    .inputs(<ore:foilRedAlloy>)
    .notConsumable(<ore:craftingLensRed>)
    .outputs(<contenttweaker:etchedredalloywiring> * 2)
    .duration(400)
    .EUt(32)
.buildAndRegister();

# [Abyssal Pearl] from [Sanguine Pearl][+9]
mods.thaumcraft.Infusion.registerRecipe(
  "contenttweaker:abyssal_pearl", # Name
  "INFUSION", # Research
  <contenttweaker:abyssal_pearl>, # Output
  16, # Instability
  [<aspect:vitium> * 20, <aspect:infernum> * 20, <aspect:coralos> * 30, <aspect:tenebrae> * 10, ],
  <contenttweaker:sanguine_pearl>, # Central Item
  Grid(["pretty",
  "□ п F",
  "B   B",
  "F п □"], {
  "□": <ore:platePolyenderlyne>,               # Polyenderlyne Plate
  "п": <extendedcrafting:material:2>,          # Black Iron Plate
  "F": <torchmaster:frozen_pearl>.anyDamage(), # Frozen Pearl
  "B": <contenttweaker:blackened_spirit>,      # Blackened Spirit
}).spiral(1));

# Magical Leather
mods.thaumcraft.Crucible.registerRecipe("contenttweaker:magical_leather", "", <contenttweaker:magical_leather>, <contenttweaker:industrial_leather>, [<aspect:praecantatio> * 10, <aspect:bestia> * 5, <aspect:auram> * 5, <aspect:spiritus> * 5]);

# Blood Infused Leather
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_infused_leather>, <contenttweaker:magical_leather>, 2, 8000, 50, 50);
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:magical_leather>, <liquid:evilcraftblood> * 8000, 1, <contenttweaker:blood_infused_leather>, 160, 0);

# Condensed Vis Crystals ============

global allThaumcraftAspects as string[] = ["aer", "terra", "ignis", "aqua", "ordo", "perditio", "vacuos", "lux", "motus", "gelum", "vitreus", "metallum", "victus", "mortuus", "potentia", "permutatio", "praecantatio", "auram", "alkimia", "vitium", "tenebrae", "alienis", "volatus", "herba", "instrumentum", "fabrico", "machina", "vinculum", "spiritus", "cognitio", "sensus", "aversio", "praemunio", "desiderium", "exanimis", "bestia", "humanus", "coralos", "priscus", "chronos", "anteanus", "dreadia", "imperium", "fluctus", "ventus", "exitium", "infernum", "sonus", "draco", "visum", "caeles"];

var aspect_counter = 0 as int;
val allThaumcraftCTAspectStacks = [<aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:vacuos>, <aspect:lux>, <aspect:motus>, <aspect:gelum>, <aspect:vitreus>, <aspect:metallum>, <aspect:victus>, <aspect:mortuus>, <aspect:potentia>, <aspect:permutatio>, <aspect:praecantatio>, <aspect:auram>, <aspect:alkimia>, <aspect:vitium>, <aspect:tenebrae>, <aspect:alienis>, <aspect:volatus>, <aspect:herba>, <aspect:instrumentum>, <aspect:fabrico>, <aspect:machina>, <aspect:vinculum>, <aspect:spiritus>, <aspect:cognitio>, <aspect:sensus>, <aspect:aversio>, <aspect:praemunio>, <aspect:desiderium>, <aspect:exanimis>, <aspect:bestia>, <aspect:humanus>, <aspect:coralos>, <aspect:priscus>, <aspect:chronos>, <aspect:anteanus>, <aspect:dreadia>, <aspect:imperium>, <aspect:fluctus>, <aspect:ventus>, <aspect:exitium>, <aspect:infernum>, <aspect:sonus>, <aspect:draco>, <aspect:visum>, <aspect:caeles>] as CTAspectStack[];
for aspect in allThaumcraftAspects {
	var cur_vis_crystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: aspect}]});
	Infusion.registerRecipe("condensed_vis_crystal_" + aspect + "_crafting", "", itemUtils.getItem("contenttweaker:condensed_vis_crystal_" + aspect), 2, [allThaumcraftCTAspectStacks[aspect_counter] * 30], <thaumcraft:salis_mundus>, [cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal]);
	aspect_counter += 1;
}

# Star Leather
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:magical_leather>, <contenttweaker:star_leather>, false, 1.0, 30);

# [Mixed Metal] from [Light Brass Plate][+2]
craft.remake(<contenttweaker:mixed_metal>, ["pretty",
  "п п п",
  "□ □ □",
  "P P P"], {
  "п": <ore:lightPlateStainlessSteel>, # Light Stainless Steel Plate
  "□": <ore:lightPlateBrass>,          # Light Brass Plate
  "P": <ore:lightPlateNichrome>,       # Light Nichrome Plate
});

# [Reinforced Stone]
chemical_bath.recipeBuilder()
    .inputs(<ore:frameGtSteel>)
    .fluidInputs(<liquid:concrete>*144)
    .outputs(<contenttweaker:reinforced_stone>)
    .duration(200)
    .EUt(4)
.buildAndRegister();

# [Devil's Dust]
FireCrafting.addRecipe(<contenttweaker:devil_dust>, <contenttweaker:hellishflesh>, 160);

# Baykok's stuff =======================================================================================

# [Baykok's Essence] from [Devil's Dust][+1]
craft.reshapeless(<contenttweaker:baykoks_essence>, "B▲", {
  "B": <totemic:baykok_bow>.anyDamage().reuse().transformDamage(1), # Baykok's Bow
  "▲": <contenttweaker:devil_dust>,      # Devil's Dust
});

# [Fiery Baykok's Essence]
FireCrafting.addRecipe(<contenttweaker:fiery_baykoks_essence>, <contenttweaker:baykoks_essence>, 160);

# [Baykok's Heart Tooltip]
<contenttweaker:maligne_heart>.addTooltip(format.gray("Dropped by the Baykok"));

// ======================================================================================================

# [Purple Print Tooltip]
<contenttweaker:purpleprint>.addTooltip(format.red("This only for Visualization, DO NOT TRY TO MAKE THIS RECIPE!"));

// ======================================================================================================

# Base Focal Sphere
craft.make(<contenttweaker:base_focal_sphere>, ["pretty",
  "□ ⌂ □",
  "S E S",
  "□ ⌂ □"], {
  "□": <ore:lightPlateBorosilicateGlass>, # Light Borosilicate Glass Plate
  "⌂": <ore:casingStainlessSteel>,        # Stainless Steel Casing
  "S": <thaumcraft:salis_mundus>,         # Salis Mundus
  "E": <evilcraft:blood_orb>,             # Empty Orb
});

# Primordial Fragment
recipes.addShapeless(<contenttweaker:primordial_fragment>, [<thaumcraft:primordial_pearl>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<contenttweaker:primordial_fragment>, [<contenttweaker:goddess_pearl>.reuse()]);
<contenttweaker:primordial_fragment>.addTooltip(format.white("Takes 1 durability of a ") + format.gold("Primordial Pearl") + format.white(" to craft."));

# Unwarpification Talisman
mods.astralsorcery.Altar.addConstellationAltarRecipe("pluma:shaped/internal/altar/unwarpification_talisman", <contenttweaker:unwarpification_talisman>, 500, 100,
[<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),<contenttweaker:condensed_vis_crystal_caeles>,<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),
<contenttweaker:condensed_vis_crystal_caeles>,<thaumcraft:sanity_checker>,<contenttweaker:condensed_vis_crystal_caeles>,
<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),<contenttweaker:condensed_vis_crystal_caeles>,<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),
<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),
<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>
]);
<contenttweaker:unwarpification_talisman>.addTooltip(format.white("Right Click to set your Thaumcraft Warp level to 0!"));

# Goddess' Pearl
// mods.alchemistry.Combiner.addRecipe(<contenttweaker:goddess_pearl>, [<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<alchemistry:ingot:42>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>]);
<contenttweaker:goddess_pearl>.addTooltip(format.red("Does not get consumed by regular crafting."));
<contenttweaker:goddess_pearl>.addTooltip(format.gray("<Press Shift for more Info>"));
<contenttweaker:goddess_pearl>.addShiftTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 autocrafting consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

# Impetus Crystal
recipes.addShapeless(<contenttweaker:impetus_crystal>, [<thaumcraft:primordial_pearl>.anyDamage().transformDamage(1),<ore:ingotVoid>.firstItem,<quantumflux:voidbucket>,<contenttweaker:magical_leather>,<embers:shifting_scales>]);
recipes.addShapeless(<contenttweaker:impetus_crystal>, [<contenttweaker:goddess_pearl>.reuse(),<ore:ingotVoid>.firstItem,<quantumflux:voidbucket>,<contenttweaker:magical_leather>,<embers:shifting_scales>]);

# Conducted Impetus
recipes.addShapeless("conducted_impetus", <contenttweaker:conducted_impetus>, [<thaumicaugmentation:augment_caster_rift_energy_storage>.reuse().marked("conductor"),<contenttweaker:impetus_crystal>],
function(out, ins, cInfo) {
	if(ins.conductor.getCapNBT() has "Parent" && ins.conductor.getCapNBT().Parent has "energy" && ins.conductor.getCapNBT().Parent.energy has "energy" && ins.conductor.getCapNBT().Parent.energy.energy == 300) {
		return out;
	} else {
		return null;
	}
}, null);
<contenttweaker:conducted_impetus>.addTooltip(format.white("Requires an ") + format.lightPurple("Impetus Conductor") + format.white(" with"));
<contenttweaker:conducted_impetus>.addTooltip(format.white("Impetus Level: ") + format.darkGreen("Maximum") + format.white("."));