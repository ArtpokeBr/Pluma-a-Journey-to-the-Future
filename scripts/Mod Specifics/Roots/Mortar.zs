import mods.roots.Mortar;
import crafttweaker.item.IItemStack;

//Recipe for the Mortar Itself
recipes.remove(<roots:mortar>);

recipes.addShaped(<roots:mortar> * 1, [[<ore:compressed1xCobblestone>, null, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <ore:gemBlackQuartz>, <ore:compressed1xCobblestone>],[<ore:plateDoubleArdite>, <ore:compressed1xCobblestone>, <ore:plateDoubleArdite>]]);



##### Mortar Recipe Removals #####

var MortaRootsRemovals as IItemStack[] = [
<roots:flour>,
<minecraft:string>,
<minecraft:flint>,
<minecraft:blaze_powder>,
<minecraft:dye:14>,
<minecraft:dye:12>,
<mysticalworld:silk_thread>,
<roots:runic_dust>
];
for i in MortaRootsRemovals {
Mortar.removeRecipe(i);
}



# Spell Dusts Craftings
Mortar.changeSpell("spell_rose_thorns", [<minecraft:double_plant:4>, <minecraft:cactus>, <minecraft:iron_trapdoor>, <roots:stalicripe>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_aqua_bubble", [<minecraft:ice>, <minecraft:snow>, <roots:dewgonia>, <roots:moonglow_leaf>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_sanctuary", [<minecraft:armor_stand>, <roots:moonglow_leaf>, <gregtech:machine:1610>, <minecraft:piston>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_growth_infusion", [<roots:spirit_herb>, <ore:treeSapling>, <minecraft:dye:15>, <minecraft:golden_hoe>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_sky_soarer", [<roots:cloud_berry>, <pyrotech:material:26>, <roots:living_arrow>, <ore:blockSlime>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_saturate", [<minecraft:mushroom_stew>, <actuallyadditions:item_food>, <roots:wildewheet>, <mysticalworld:cooked_aubergine>, <roots:petals>]);
Mortar.changeSpell("spell_wild_fire", [<minecraft:diamond_sword>, <minecraft:tnt>, <roots:infernal_bulb>, <roots:stalicripe>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_natures_scythe", [<roots:wildroot>, <roots:wildroot>, <ore:tallgrass>, <mysticalworld:aubergine>, <roots:diamond_knife>]);
Mortar.changeSpell("spell_acid_cloud", [<minecraft:shield>, <roots:baffle_cap_mushroom>, <minecraft:poisonous_potato>, <minecraft:potion>.withTag({Potion: "cofhcore:poison4"}), <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_radiance", [<minecraft:glowstone>, <roots:stalicripe>, <roots:cloud_berry>, <biomesoplenty:mushroom:3>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_fey_light", [<minecraft:glowstone>, <roots:cloud_berry>, <natura:nether_blue_large_glowshroom>, <minecraft:double_plant>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_desaturate", [<minecraft:bowl>, <minecraft:rotten_flesh>, <roots:baffle_cap_mushroom>, <pyrotech:mushroom_red_roasted>, <roots:petals>]);
Mortar.changeSpell("spell_augment", [<minecraft:iron_block>, <mysticalworld:aubergine>, <roots:cloud_berry>, <roots:wildewheet>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_storm_cloud", [<minecraft:obsidian>, <roots:cloud_berry>, <roots:runic_dust>, <roots:dewgonia>, <chisel:cloud>]);
Mortar.changeSpell("spell_dandelion_winds", [<minecraft:yellow_flower>, <roots:cloud_berry>, <roots:runic_dust>, <minecraft:piston>, <contenttweaker:heart_of_the_woods>]);
Mortar.changeSpell("spell_harvest", [<roots:wildewheet>, <ore:Mulch>, <minecraft:diamond_hoe>, <minecraft:water_bucket>, <contenttweaker:heart_of_the_woods>]);
# Disabled Spell names:
# spell_geas
# spell_disarm
# spell_time_stop
# spell_shatter
# spell_life_drain
# spell_extension
# spell_petal_shell
# spell_chrysopoeia

# Flour
Mortar.addRecipe("flour_dust", <ore:dustWheat>.firstItem, [<ore:cropWheat>]);

# Sand Dust
Mortar.addRecipe("sand_dust", <ore:dustSand>.firstItem, [<ore:sand>]);

# Flint Dust
Mortar.addRecipe("flint_dust", <ore:dustFlint>.firstItem, [<ore:gemFlint>]);

# Brick Dust
Mortar.addRecipe("brick_dust", <ore:dustBrick>.firstItem, [<ore:ingotBrick>]);

# Bee Wax
Mortar.addRecipe("bee_wax", <ore:itemBeeswax>.firstItem, [<ore:beeComb>]);

# Clay Dust
Mortar.addRecipe("clay_dust", <ore:dustClay>.firstItem, [<minecraft:clay_ball>]);

