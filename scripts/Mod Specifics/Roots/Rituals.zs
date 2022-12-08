import mods.roots.Rituals;
import mods.roots.SummonCreatures;

# Rituals
Rituals.modifyRitual("ritual_healing_aura", [<roots:spirit_herb>, <minecraft:sapling:2>, <roots:bark_birch>, <minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}), <roots:terra_moss>]);
Rituals.modifyRitual("ritual_heavy_storms", [<roots:dewgonia>, <roots:cloud_berry>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:vine>, <minecraft:melon>]);
Rituals.modifyRitual("ritual_divine_protection", [<roots:cloud_berry>, <roots:pereskia>, <minecraft:glowstone>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Rituals.modifyRitual("ritual_fire_storm", [<roots:infernal_bulb>, <minecraft:coal_block>, <minecraft:blaze_powder>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Rituals.modifyRitual("ritual_spreading_forest", [<roots:spirit_herb>, <ore:treeSapling>, <roots:terra_moss>, <minecraft:dye:15>, <roots:wildewheet>]);
Rituals.modifyRitual("ritual_windwall", [<roots:moonglow_leaf>, <roots:cloud_berry>, <minecraft:glass_bottle>, <ore:feather>, <ore:wool>]);
Rituals.modifyRitual("ritual_warding_protection", [<minecraft:speckled_melon>, <roots:stalicripe>, <minecraft:iron_chestplate>, <minecraft:shield>, <minecraft:tripwire_hook>]);
Rituals.modifyRitual("ritual_germination", [<roots:spirit_herb>, <roots:wildewheet>, <roots:dewgonia>, <minecraft:dye:15>, <minecraft:double_plant>]);
Rituals.modifyRitual("ritual_purity", [<roots:baffle_cap_mushroom>, <mysticalworld:aubergine>, <roots:pereskia>, <minecraft:snowball>, <minecraft:milk_bucket>]);
Rituals.modifyRitual("ritual_frost_lands", [<roots:dewgonia>, <minecraft:snowball>, <minecraft:snow>, <minecraft:ice>, <roots:moonglow_leaf>]);
Rituals.modifyRitual("ritual_animal_harvest", [<roots:wildewheet>, <minecraft:shears>, <roots:wildroot>, <ore:wool>, <minecraft:wheat_seeds>]);
Rituals.modifyRitual("ritual_summon_creatures", [<roots:stalicripe>, <minecraft:egg>, <minecraft:rotten_flesh>, <roots:wildroot>, <roots:wildewheet>]);
Rituals.modifyRitual("ritual_wildroot_growth", [<roots:spirit_herb>, <roots:wildroot>, <roots:dewgonia>, <roots:bark_dark_oak>, <minecraft:dye:15>]);
Rituals.modifyRitual("ritual_overgrowth", [<roots:dewgonia>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <roots:terra_moss>, <minecraft:tallgrass:1>, <ore:rootsBark>]);
Rituals.modifyRitual("ritual_flower_growth", [<roots:petals>, <roots:pereskia>, <minecraft:dye:15>, <roots:terra_moss>, <minecraft:tallgrass:1>]);
Rituals.modifyRitual("ritual_transmutation", [<roots:moonglow_leaf>, <roots:fey_leather>, <roots:living_arrow>, <ore:gemAmethyst>, <roots:chiseled_runestone>]);
Rituals.modifyRitual("ritual_gathering", [<roots:wildewheet>, <roots:cloud_berry>, <minecraft:redstone>, <minecraft:wooden_hoe>, <minecraft:bowl>]);

# Summon Creatures Ritual
SummonCreatures.clearLifeEssence();
SummonCreatures.addEntity(<entity:natura:imp>, [<natura:nether_thorn_vines>, <ore:listAllporkraw>, <pyrotech:carrot_roasted>]);
<natura:materials:6>.addTooltip(format.white("Imps can be spawned by the Roots 'Summon Creatures' ritual."));