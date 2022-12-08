import mods.bloodmagic.AlchemyArray as AlchemyArray;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function addBloodMagicSigilRecipeJustSwap(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack) {
	addBloodMagicSigilRecipe(sigil, origInput1, origInput2, origInput2, origInput1);
}

function addBloodMagicSigilRecipe(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack, newInput1 as IItemStack, newInput2 as IItemStack) {
	AlchemyArray.removeRecipe(origInput1, origInput2);
	AlchemyArray.addRecipe(sigil, newInput1, newInput2, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");
}

# Divination Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_divination>, <minecraft:redstone>, <bloodmagic:slate>, <bloodmagic:slate>, <actuallyadditions:item_engineer_goggles>);

# Air Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_air>, <bloodmagic:component:2>, <bloodmagic:slate:1>);

# Water Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_water>, <bloodmagic:component>, <bloodmagic:slate>);

# Lava Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_lava>, <bloodmagic:component:1>, <bloodmagic:slate>);

# Void Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_void>, <bloodmagic:component:4>, <bloodmagic:slate:1>);

# Sigil of the Green Grove
addBloodMagicSigilRecipe(<bloodmagic:sigil_green_grove>, <bloodmagic:component:5>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:5>);

# Sigil of the Blood Lamp
addBloodMagicSigilRecipe(<bloodmagic:sigil_blood_light>, <bloodmagic:component:11>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:11>);

# Sigil of Elemental Affinity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_elemental_affinity>, <bloodmagic:component:6>, <bloodmagic:slate:2>);

# Sigil of Magnetism
addBloodMagicSigilRecipe(<bloodmagic:sigil_magnetism>, <bloodmagic:component:12>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:12>);

# Sigil of Suppression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_suppression>, <bloodmagic:component:9>, <bloodmagic:slate:3>);

# Sigil of Haste
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_haste>, <bloodmagic:component:13>, <bloodmagic:slate:3>);

# Sigil of the Fast Miner
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_fast_miner>, <bloodmagic:component:3>, <bloodmagic:slate:1>);

# Seer's Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_seer>, <bloodmagic:component:7>, <bloodmagic:slate:1>, <bloodmagic:slate:3>, <bloodmagic:component:7>);

# Sigil of the Phantom Bridge
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_phantom_bridge>, <bloodmagic:component:15>, <bloodmagic:slate:3>);

# Sigil of the Whirlwind
AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:slate:2>, <contenttweaker:tempest_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Sigil of Compression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_compression>, <bloodmagic:component:14>, <bloodmagic:slate:3>);

# Sigil of Ender Severance
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_ender_severance>, <bloodmagic:component:16>, <bloodmagic:slate:3>);

# Sigil of Holding
addBloodMagicSigilRecipe(<bloodmagic:sigil_holding>, <bloodmagic:component:27>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:27>);

# Sigil of the Claw
addBloodMagicSigilRecipe(<bloodmagic:sigil_claw>, <bloodmagic:component:30>, <bloodmagic:slate:2>, <bloodmagic:slate:1>, <bloodmagic:component:30>);

# Sigil of Elasticity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_bounce>, <bloodmagic:component:31>, <bloodmagic:slate:1>);

# Sigil of Winter's Breath
addBloodMagicSigilRecipe(<bloodmagic:sigil_frost>, <bloodmagic:component:32>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:32>);

# Transposition Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_transposition>, <bloodmagic:component:18>, <bloodmagic:slate:3>, <contenttweaker:perfect_slate>, <bloodmagic:component:18>);

# Teleposition Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_teleposition>, <bloodmagic:component:17>, <bloodmagic:slate:3>, <contenttweaker:perfect_slate>, <bloodmagic:component:17>);

