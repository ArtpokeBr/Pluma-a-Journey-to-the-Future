#modloaded enderio

import crafttweaker.item.IItemStack;
import mods.enderio.SagMill as SagMill;

var RemovedFromSagmill as IItemStack[] = [
<minecraft:wheat>,
<railcraft:ore:1>,
<gregtech:ore_opal_0>,
<gregtech:ore_blue_topaz_0>,
<gregtech:ore_pyrope_0>,
<forestry:logs.2:1>,
<biomesoplenty:planks_0:15>,
<forestry:stairs.vanilla.fireproof.spruce>,
<forestry:slabs.fireproof.1:7>,
//<biomesoplenty:plant_1:5>,
<gregtech:ore_platinum_0>,
<gregtech:ore_amethyst_0>,
<gregtech:ore_sapphire_0>,
<gregtech:ore_malachite_0>,
<gregtech:ore_topaz_0>,
<gregtech:ore_ruby_0>,
<gregtech:ore_saltpeter_0>,
<gregtech:ore_sulfur_0>,
<gregtech:ore_apatite_0>,
<forestry:resources>,
<minecraft:quartz_ore>,
<gregtech:ore_lapis_0>,
<gregtech:ore_diamond_0>,
<pyrotech:dense_nether_coal_ore>,
<gregtech:ore_aluminium_0>,
<gregtech:ore_nickel_0>,
<gregtech:ore_silver_0>,
<gregtech:ore_lead_0>,
<gregtech:ore_tin_0>,
<gregtech:ore_copper_0>,
<gregtech:ore_thorium_0>,
<gregtech:ore_lithium_0>,
<gregtech:ore_galena_0>,
<gregtech:ore_pyrite_0>,
<gregtech:ore_sphalerite_0>,
<ore:sand>.firstItem,
<gregtech:ore_iron_0>,
<gregtech:ore_gold_0>,
<gregtech:ore_coal_0>,
<gregtech:ore_redstone_0>,
<gregtech:ore_emerald_0>,
<minecraft:obsidian>,
<ore:ingotCopper>.firstItem,
<ore:blockCopper>.firstItem,
<ore:stickWood>.firstItem,
<enderio:item_material:20>,
<enderio:block_infinity>,
<enderio:block_infinity:1>,
<enderio:block_infinity:2>,
<railcraft:ore_magic>,
<draconicevolution:draconium_ore>,
<draconicevolution:draconium_ore:1>,
<draconicevolution:draconium_ore:2>,
<ore:oreAstralStarmetal>.firstItem,

];
for i in RemovedFromSagmill {
SagMill.removeRecipe(i);
}

// Flour in the Sag Mill =============
SagMill.addRecipe([<ore:dustWheat>.firstItem, <ore:dustWheat>.firstItem, <ore:dustWheat>.firstItem], [1.0, 0.7, 0.5], <ore:cropWheat>, "CHANCE_ONLY");

// Ink Dropplets in the Sag Mill
SagMill.addRecipe([<contenttweaker:ink_dropplet>*2, <contenttweaker:ink_dropplet>, <contenttweaker:ink_dropplet>], [1.0, 0.5, 0.25], <minecraft:dye>, "CHANCE_ONLY");

// Bitumen in the Sag Mill
SagMill.addRecipe([<thermalfoundation:material:892>*2, <thermalfoundation:material:892>*2, <thermalfoundation:material:833>*4, <minecraft:gravel>], [1.0, 0.25, 0.15, 0.75], <ore:oreClathrateOilShale>, "CHANCE_ONLY");
