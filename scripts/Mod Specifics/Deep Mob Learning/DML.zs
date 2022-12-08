import mods.gregtech.recipe.RecipeMap;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.botania.RuneAltar as RuneAltar;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Deep Mob Learning Script                                                                                                         //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Crazy Nether Star Recipe Removal
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe3_nether_star");

// Removing some Items (to add a custom recipe for them)
mods.jei.JEI.removeAndHide(<deepmoblearning:soot_covered_redstone>);
mods.jei.JEI.removeAndHide(<deepmoblearning:glitch_fragment>);
mods.jei.JEI.removeAndHide(<deepmoblearning:glitch_infused_ingot>);
mods.jei.JEI.removeAndHide(<deepmoblearning:infused_ingot_block>);

//Sooty Redstone ========================================================================================================================
//<contenttweaker:soot_covered_redstone>.addTooltip(format.aqua("It is recommended to use the Chemical Reactor Recipe."));
chemreactor.recipeBuilder()
    .inputs(<ore:dustRedstone>*9, <contenttweaker:sooty_energetic_compound>)
    .outputs(<contenttweaker:soot_covered_redstone>*9, <contenttweaker:sooty_energetic_compound_1>)
    .duration(80)
    .EUt(400)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:blockRedstone>, <contenttweaker:sooty_energetic_compound>)
    .outputs(<contenttweaker:soot_covered_redstone>*9, <contenttweaker:sooty_energetic_compound_1>)
    .duration(80)
    .EUt(400)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:dustRedstone>*9, <contenttweaker:sooty_energetic_compound>)
    .fluidInputs(<liquid:energetic_alloy>*576)
    .outputs(<contenttweaker:soot_covered_redstone>*9)
    .duration(160)
    .EUt(800)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:blockRedstone>, <contenttweaker:sooty_energetic_compound>)
    .fluidInputs(<liquid:energetic_alloy>*576)
    .outputs(<contenttweaker:soot_covered_redstone>*9)
    .duration(160)
    .EUt(800)
.buildAndRegister();

// large_chemical_reactor.recipeBuilder()
//     .inputs(<ore:dustRedstone>)
//     .fluidInputs(<liquid:energetic_alloy>*288)
//     .notConsumable(<contenttweaker:sooty_energetic_compound>) 
//     .outputs(<contenttweaker:soot_covered_redstone>)
//     .duration(80)
//     .EUt(8150)
// .buildAndRegister();

// large_chemical_reactor.recipeBuilder()
//     .inputs(<ore:blockRedstone>)
//     .fluidInputs(<liquid:energetic_alloy>*2592)
//     .notConsumable(<contenttweaker:sooty_energetic_compound>)  
//     .outputs(<contenttweaker:soot_covered_redstone>*9)
//     .duration(80)
//     .EUt(8150)
// .buildAndRegister();

//Soot-Covered Plate ========================================================================================================================
recipes.remove(<deepmoblearning:soot_covered_plate>);

chemreactor.recipeBuilder()
    .inputs(<ore:plateRefinedObsidian>*9, <contenttweaker:sooty_energetic_compound>)
    .outputs(<deepmoblearning:soot_covered_plate>*9, <contenttweaker:sooty_energetic_compound_1>)
    .duration(95)
    .EUt(400)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:plateDenseRefinedObsidian>, <contenttweaker:sooty_energetic_compound>)
    .outputs(<deepmoblearning:soot_covered_plate>*9, <contenttweaker:sooty_energetic_compound_1>)
    .duration(95)
    .EUt(400)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:plateRefinedObsidian>*9, <contenttweaker:sooty_energetic_compound>)
    .fluidInputs(<liquid:energetic_alloy>*576)
    .outputs(<deepmoblearning:soot_covered_plate>*9)
    .duration(190)
    .EUt(800)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:plateDenseRefinedObsidian>, <contenttweaker:sooty_energetic_compound>)
    .fluidInputs(<liquid:energetic_alloy>*576)
    .outputs(<deepmoblearning:soot_covered_plate>*9)
    .duration(190)
    .EUt(800)
.buildAndRegister();

// large_chemical_reactor.recipeBuilder()
//     .inputs(<ore:plateRefinedObsidian>)
//     .fluidInputs(<liquid:energetic_alloy>*288)
//     .notConsumable(<contenttweaker:sooty_energetic_compound>)
//     .outputs(<deepmoblearning:soot_covered_plate>)
//     .duration(95)
//     .EUt(8150)
// .buildAndRegister();

// large_chemical_reactor.recipeBuilder()
//     .inputs(<ore:plateDenseRefinedObsidian>)
//     .fluidInputs(<liquid:energetic_alloy>*2592)
//     .notConsumable(<contenttweaker:sooty_energetic_compound>) 
//     .outputs(<deepmoblearning:soot_covered_plate>*9)
//     .duration(95)
//     .EUt(8150)
// .buildAndRegister();

// ===============================================================================================================================================

//Polymer Clay
recipes.remove(<deepmoblearning:polymer_clay>);
chemreactor.recipeBuilder()
    .fluidInputs(<liquid:polyvinyl_chloride>*100, <liquid:phthalic_acid>*50)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<deepmoblearning:polymer_clay>*4)
    .duration(160)
    .EUt(400)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<forestry:crafting_material:1>)
    .fluidInputs(<liquid:polyvinyl_chloride>*100, <liquid:phthalic_acid>*50)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<deepmoblearning:polymer_clay>*8)
    .duration(168)
    .EUt(485)
.buildAndRegister();

//Sooty Machine Frame
recipes.remove(<deepmoblearning:machine_casing>);
assembler.recipeBuilder()
    .inputs(<deepmoblearning:soot_covered_plate>*8, <contenttweaker:soot_covered_redstone>*4)
    .circuit(8)
    .outputs(<deepmoblearning:machine_casing>)
    .duration(160)
    .EUt(400)
.buildAndRegister();

//Unstable Glitch Fragment
implosion.recipeBuilder()
    .inputs(<deepmoblearning:glitch_heart>)
    .property("explosives", 8)
    .outputs(<ore:dustGlitchInfused>.firstItem*4)
    .duration(80)
    .EUt(480)
.buildAndRegister();

//Glitch Infused Ingot
furnace.remove(<ore:ingotGlitchInfused>.firstItem);
autoclave.recipeBuilder()
    	.inputs(<ore:dustGlitchInfused>)
    	.fluidInputs(<liquid:distilled_water> * 250)
    	.outputs(<ore:ingotGlitchInfused>.firstItem)
    	.duration(200)
    	.EUt(120)
.buildAndRegister();

// ===============================================================================================================================================

//Deep Learner
recipes.remove(<deepmoblearning:deep_learner>);
RecipeBuilder.get("basic")
  .setShaped([
    [<deepmoblearning:soot_covered_plate>, <ore:heavyPlateStainlessSteel>, <deepmoblearning:soot_covered_plate>],
    [<ore:circuitHv>, <integrateddynamics:part_display_panel_item>, <ore:circuitHv>],
    [<deepmoblearning:soot_covered_plate>, <contenttweaker:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>]])
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<deepmoblearning:deep_learner>)
.create();

// Trial Keystone
recipes.remove(<deepmoblearning:trial_keystone>);
recipes.addShaped(<deepmoblearning:trial_keystone> * 1, [[<ore:plateVibrantAlloy>, <ore:circuitHv>, <ore:plateVibrantAlloy>], [<ore:lightPlatePolytetrafluoroethylene>, <deepmoblearning:machine_casing>, <ore:lightPlatePolytetrafluoroethylene>],[<ore:lightPlatePolytetrafluoroethylene>, <ore:lightPlatePolytetrafluoroethylene>, <ore:lightPlatePolytetrafluoroethylene>]]);

// Trial Key
recipes.remove(<deepmoblearning:trial_key>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateEnderPearl>, <ore:lightPlateVibrantAlloy>, <ore:lightPlateVibrantAlloy>],
    [null, <ore:boltStainlessSteel>, <ore:boltStainlessSteel>]])
  .addTool(<ore:gtceFiles>, 10)
  .addOutput(<deepmoblearning:trial_key>)
.create();

// Simulation Chamber
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.addShaped(<deepmoblearning:simulation_chamber> * 1, [[<ore:lightPlatePolytetrafluoroethylene>, <ore:circuitEv>, <ore:lightPlatePolytetrafluoroethylene>], [<ore:springGlitchInfused>, <deepmoblearning:machine_casing>, <ore:springGlitchInfused>],[<ore:lightPlatePolytetrafluoroethylene>, <ore:circuitEv>, <ore:lightPlatePolytetrafluoroethylene>]]);

// Loot Fabricator
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.addShaped(<deepmoblearning:extraction_chamber> * 1, [[<ore:lightPlatePolytetrafluoroethylene>, <ore:gearVibrantAlloy>, <ore:lightPlatePolytetrafluoroethylene>], [<ore:springEnergeticAlloy>, <deepmoblearning:machine_casing>, <ore:springEnergeticAlloy>],[<ore:lightPlatePolytetrafluoroethylene>, <ore:circuitEv>, <ore:lightPlatePolytetrafluoroethylene>]]);

// Blank Data Model
recipes.remove(<deepmoblearning:data_model_blank>);
recipes.addShaped(<deepmoblearning:data_model_blank> * 1, [[<ore:plateLapis>, <ore:lightPlateVibrantAlloy>, <ore:plateLapis>], [<contenttweaker:soot_covered_redstone>, <integrateddynamics:variable>, <contenttweaker:soot_covered_redstone>],[<ore:plateLapis>, <ore:lightPlateVibrantAlloy>, <ore:plateLapis>]]);

// Armor ===========================================

// Glitch Infused Helmet
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
RuneAltar.addRecipe(<deepmoblearning:glitch_infused_helmet>,[<botania:elementiumhelm>, <ore:heavyPlateGlitchInfused>, <ore:eternalLifeEssence>, <ore:manaDiamond>, <ore:manaPearl>], 32000);

// Glitch Infused Chestplate
recipes.remove(<deepmoblearning:glitch_infused_chestplate>);
RuneAltar.addRecipe(<deepmoblearning:glitch_infused_chestplate>,[<botania:elementiumchest>, <ore:heavyPlateGlitchInfused>, <ore:eternalLifeEssence>, <ore:manaDiamond>, <ore:manaPearl>], 32000);

// Glitch Infused Leggings
recipes.remove(<deepmoblearning:glitch_infused_leggings>);
RuneAltar.addRecipe(<deepmoblearning:glitch_infused_leggings>,[<botania:elementiumlegs>, <ore:heavyPlateGlitchInfused>, <ore:eternalLifeEssence>, <ore:manaDiamond>, <ore:manaPearl>], 32000);

// Glitch Infused Boots
recipes.remove(<deepmoblearning:glitch_infused_boots>);
RuneAltar.addRecipe(<deepmoblearning:glitch_infused_boots>,[<botania:elementiumboots>, <ore:heavyPlateGlitchInfused>, <ore:eternalLifeEssence>, <ore:manaDiamond>, <ore:manaPearl>], 32000);

// Glitch Infused Sword
recipes.remove(<deepmoblearning:glitch_infused_sword>);
chemical_bath.recipeBuilder()
    	.inputs(<fossil:scarab_sword>)
    	.fluidInputs(<liquid:glitch_infused>*1152)
    	.outputs(<deepmoblearning:glitch_infused_sword>)
    	.duration(200)
    	.EUt(150)
.buildAndRegister();


// Data Models ======================================================

var DMLModels as IItemStack[IIngredient] = {
    <gregtech:meta_block_compressed_26>: <deepmoblearning:data_model_enderman>,
    <gregtech:meta_block_compressed_100:2>: <deepmoblearning:data_model_wither>,
    <minecraft:dragon_egg>: <deepmoblearning:data_model_dragon>,
    <minecraft:shulker_shell> * 9: <deepmoblearning:data_model_shulker>,
    <minecraft:prismarine:1>: <deepmoblearning:data_model_guardian>,
    <thermalfoundation:material:1025> * 9: <deepmoblearning:data_model_thermal_elemental>,
    <contenttweaker:lich_bones> * 9: <deepmoblearning:data_model_twilight_forest>,
    <twilightforest:block_storage:2>: <deepmoblearning:data_model_twilight_swamp>,
    <twilightforest:knightmetal_block>: <deepmoblearning:data_model_twilight_darkwood>,
    <thaumcraft:flesh_block>: <deepmoblearning:data_model_zombie>,
    <minecraft:bone_block>: <deepmoblearning:data_model_skeleton>,
    <minecraft:gunpowder> * 9: <deepmoblearning:data_model_creeper>,
    <minecraft:fermented_spider_eye> * 9: <deepmoblearning:data_model_spider>,
    <minecraft:slime>: <deepmoblearning:data_model_slime>,
    <quark:sugar_block>: <deepmoblearning:data_model_witch>,
    <magneticraft:storage_blocks:4>: <deepmoblearning:data_model_blaze>,
    <minecraft:ghast_tear> * 9: <deepmoblearning:data_model_ghast>,
    <minecraft:skull:1> * 9: <deepmoblearning:data_model_wither_skeleton>,
    <twilightforest:block_storage:3>: <deepmoblearning:data_model_twilight_glacier>,
    <tconstruct:edible:1> * 9: <deepmoblearning:data_model_tinker_slime>

    };
for IItemStack, IIngredient in DMLModels {
        recipes.remove(IIngredient);

		large_chemical_reactor.recipeBuilder()
			.inputs(<deepmoblearning:data_model_blank>, IItemStack)
            .circuit(20)
            .fluidInputs(<liquid:gas_dwarf> * 500, <liquid:sodium_potassium> * 500)
			.outputs(IIngredient * 1)   
			.duration(300)
			.EUt(160)
		.buildAndRegister();
     
}