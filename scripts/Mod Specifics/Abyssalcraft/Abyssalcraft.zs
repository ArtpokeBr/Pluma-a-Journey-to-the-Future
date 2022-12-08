# Original Author: Atricos
# Adapted by : ArtpokeBr


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.bloodmagic.TartaricForge;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mods.mekanism.infuser as MetallurgicInfuser;
import mods.extendedcrafting.TableCrafting;

print("STARTING AbyssalCraft.zs");

// Iron Plate
recipes.removeShaped(<abyssalcraft:ironp>, [[<ore:ingotIron>],[<ore:ingotIron>]]);
recipes.addShapeless(<abyssalcraft:ironp>*2, [<ore:gtceHardHammers>, <ore:lightPlateIron>]);

// Monolith Stone
recipes.addShaped(<abyssalcraft:stone:7> * 32, [[<ore:lightPlateDiabolicCarbide>,<quantumflux:darkstone>,<ore:lightPlateDiabolicCarbide>],[<quantumflux:darkstone>,<fossil:volcanic_rock>,<quantumflux:darkstone>],[<ore:lightPlateDiabolicCarbide>,<quantumflux:darkstone>,<ore:lightPlateDiabolicCarbide>]]);
<abyssalcraft:stone:7>.addTooltip(format.gray("Can be obtained by mining the walls of "));
<abyssalcraft:stone:7>.addTooltip(format.gray("Shoggoth dens, but can also be crafted."));

function add_abyssalcraft_statue_recipe(output as IItemStack, main_input as IItemStack) {
	recipes.addShaped(output, [[main_input,<contenttweaker:abyssal_pearl>,main_input],[main_input,<evilcraft:garmonbozia>,main_input],[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<abyssalcraft:stone:7>]]);
}

# Cthulu Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue>, <mysticalworld:raw_squid>);

# Hastur Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:1>, <contenttweaker:empowered_glod_crystal>);

# J'zahar Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:2>, <enderutilities:enderpart:1>);

# Azathoth Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:3>, <appliedenergistics2:material:9>);

# Nyarlathotep Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:4>, <enderutilities:enderpart:2>);

# Yog-Sothoth Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:5>, <harvestcraft:gooseberryyogurtitem>);

# Shub-Niggurath Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:6>, <actuallyadditions:item_crystal_empowered:3>);

# Necronomicon
recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShapeless(<abyssalcraft:necronomicon>.withTag({PotEnergy: 0.0 as float}), [<abyssalcraft:statue:2>.reuse(),<abyssalcraft:statue:3>.reuse(),<abyssalcraft:statue:4>.reuse(),<abyssalcraft:statue:1>.reuse(),<minecraft:book>,<abyssalcraft:statue:5>.reuse(),<abyssalcraft:statue:0>.reuse(),<abyssalcraft:shadowgem>,<abyssalcraft:statue:6>.reuse()]);
<abyssalcraft:necronomicon>.addTooltip(format.gray("Crafting doesn't consume the input Statues."));

# Ore Tooltips
<abyssalcraft:coraliumore>.addTooltip(format.white("Generates in The Twilight Forest."));
<abyssalcraft:abyore>.addTooltip(format.white("Generates in Darklands biomes."));

# Coralium Gem Cluster itemstack amounts
<abyssalcraft:ccluster2>.maxStackSize = 64;
<abyssalcraft:ccluster3>.maxStackSize = 64;
<abyssalcraft:ccluster4>.maxStackSize = 64;
<abyssalcraft:ccluster5>.maxStackSize = 64;
<abyssalcraft:ccluster6>.maxStackSize = 64;
<abyssalcraft:ccluster7>.maxStackSize = 64;
<abyssalcraft:ccluster8>.maxStackSize = 64;
<abyssalcraft:ccluster9>.maxStackSize = 64;

# Coralium Infused Stone
recipes.remove(<abyssalcraft:coraliumstone>);
recipes.addShaped(<abyssalcraft:coraliumstone> * 4, [[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>],[<abyssalcraft:ccluster9>,<ore:ingot_dark_soularium>,<abyssalcraft:ccluster9>],[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>]]);

MetallurgicInfuser.addRecipe("CORALIUM", 400, <minecraft:stone>, <ore:oreCoraliumStone>.firstItem);

# Coralium Pearl Extra Output
autoclave.recipeBuilder()
    .inputs(<ore:oreCoraliumStone>)
	.fluidInputs(<liquid:nacre>*250)
    .outputs(<ore:materialCoraliumPearl>.firstItem*2)
    .duration(300)
    .EUt(800)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:orePearlescentCoralium>)
	.fluidInputs(<liquid:nacre>*250)
    .outputs(<ore:materialCoraliumPearl>.firstItem*2)
    .duration(300)
    .EUt(800)
.buildAndRegister();

# Monolith Stone Pillar
recipes.remove(<abyssalcraft:monolithpillar>);
recipes.addShaped(<abyssalcraft:monolithpillar>, [[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>]]);

# Energy Container
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:energycontainer>);
mods.abyssalcraft.InfusionRitual.addRitual("energyContainer", 0, -1, 800, false, <abyssalcraft:energycontainer>, <abyssalcraft:energypedestal>, [<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>], false, ["PotEnergy"]);
game.setLocalization("ac.ritual.energyContainer", "Energy Container");
game.setLocalization("ac.ritual.energyContainer.desc", "Create your first PE Storage multiblock!");

# Transmutation Gem
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:transmutationgem>);
mods.abyssalcraft.InfusionRitual.addRitual("transmutationGem", 0, -1, 1500, false, <abyssalcraft:transmutationgem>, <abyssalcraft:cpearl>, [<ore:empoweredGlodCrystal>,<ore:EmpoweredPalisCrystal>,<ore:empoweredGlodCrystal>,<ore:EmpoweredEnoriCrystal>,<ore:empoweredGlodCrystal>,<ore:EmpoweredPalisCrystal>,<ore:empoweredGlodCrystal>,<ore:EmpoweredEnoriCrystal>]);
game.setLocalization("ac.ritual.transmutationGem", "Transmutation Gem");
game.setLocalization("ac.ritual.transmutationGem.desc", "The Transmutation Gem is an essential ingredient with 10 durability that can transform various materials into more AbyssalCraft items.");

# Chunk of Coralium
recipes.remove(<abyssalcraft:cchunk>);

blast_furnace.recipeBuilder()
    .inputs(<abyssalcraft:stone:1>, <enderutilities:enderpart>*2, <abyssalcraft:ccluster9>)
    .fluidInputs(<liquid:oxygen> * 1000)
    .outputs(<abyssalcraft:cchunk>*4)
    .property("temperature", 3500)
    .duration(350)
    .EUt(120)
.buildAndRegister();

# Refined Coralium Ingot
furnace.remove(<abyssalcraft:cingot>);
large_chemical_reactor.recipeBuilder()
    .inputs(<abyssalcraft:cchunk>, <ore:dustSmallEntropyInfused>*2)
	.notConsumable(<gregtech:meta_item_1:16>)
    .fluidInputs(<liquid:phosphoric_acid> * 500)
    .outputs(<ore:ingotLiquifiedCoralium>.firstItem*7)
    .duration(350)
    .EUt(500)
.buildAndRegister();

// # Refined Coralium Sword
// recipes.remove(<abyssalcraft:corsword>);
// recipes.addShaped(<abyssalcraft:corsword>, [[<abyssalcraft:cingot>],[<abyssalcraft:cingot>],[<ore:toolHeadSwordOlivine>]]);

// # Refined Coralium Pickaxe
// recipes.remove(<abyssalcraft:corpick>);
// recipes.addShaped(<abyssalcraft:corpick>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>],[null,<ore:toolHeadPickaxeOlivine>,null],[null,<enderutilities:enderpart:20>,null]]);

// # Refined Coralium Shovel
// recipes.remove(<abyssalcraft:corshovel>);
// recipes.addShaped(<abyssalcraft:corshovel>, [[<abyssalcraft:cingot>],[<ore:toolHeadShovelOlivine>],[<enderutilities:enderpart:20>]]);

// # Refined Coralium Axe
// recipes.remove(<abyssalcraft:coraxe>);
// recipes.addShapedMirrored(<abyssalcraft:coraxe>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<ore:toolHeadAxeOlivine>],[null,<enderutilities:enderpart:20>]]);

// # Refined Coralium Hoe
// recipes.remove(<abyssalcraft:corhoe>);
// recipes.addShapedMirrored(<abyssalcraft:corhoe>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>],[null,<ore:toolHeadHoeOlivine>],[null,<enderutilities:enderpart:20>]]);

# Coralium Bricks
recipes.removeShaped(<abyssalcraft:cstonebrick>);
recipes.addShaped(<abyssalcraft:cstonebrick>, [[null,<abyssalcraft:cbrick>,null],[<abyssalcraft:cbrick>,<abyssalcraft:stone:7>,<abyssalcraft:cbrick>],[null,<abyssalcraft:cbrick>,null]]);

# Coralium Stone
<abyssalcraft:stone:4>.addTooltip(format.white("Coralium Cobblestone can be found in the Abyssal Wasteland."));
<abyssalcraft:stone:4>.addTooltip(format.white("You can also obtain this by dumping Liquid Antimatter"));
<abyssalcraft:stone:4>.addTooltip(format.white("over ") + format.aqua("Liquid Coralium") + format.white(", and mining up the resulting Stone!"));
<abyssalcraft:stone:4>.addTooltip(format.white("(If you can't find any Liquid Antimatter, use the"));
<abyssalcraft:stone:4>.addTooltip(format.white("Anti Milking Ritual in the Abyssal Wasteland.)"));

# Abyssal Wasteland Necronomicon
recipes.remove(<abyssalcraft:necronomicon_cor>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade1", <abyssalcraft:necronomicon_cor>, [[<abyssalcraft:platec>,<abyssalcraft:cstonebrick>,<abyssalcraft:platec>],[<abyssalcraft:cstonebrick>,<abyssalcraft:necronomicon>.marked("necronomicon"),<abyssalcraft:cstonebrick>],[<abyssalcraft:platec>,<abyssalcraft:skin>,<abyssalcraft:platec>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_cor>, [[<abyssalcraft:platec>,<abyssalcraft:cstonebrick>,<abyssalcraft:platec>],[<abyssalcraft:cstonebrick>,<abyssalcraft:necronomicon>,<abyssalcraft:cstonebrick>],[<abyssalcraft:platec>,<abyssalcraft:skin>,<abyssalcraft:platec>]]);


# Eye of the Abyss
<abyssalcraft:eoa>.addTooltip(format.white("To obtain, summon and defeat Asorah,"));
<abyssalcraft:eoa>.addTooltip(format.white("the Fallen in the ") + format.darkGreen("Abyssal Wasteland") + format.white("."));
<abyssalcraft:eoa>.addTooltip(format.white("(You first need an Abyssal Wasteland  "));
<abyssalcraft:eoa>.addTooltip(format.white("Necronomicon. Open it, and read the "));
<abyssalcraft:eoa>.addTooltip(format.white("Rituals/Abyssal Wasteland/Ritual of "));
<abyssalcraft:eoa>.addTooltip(format.white("The Sleeper section.)"));

# Asorah, the Fallen
mods.abyssalcraft.SummonRitual.removeRitual("abyssalcraft:dragonboss");
mods.abyssalcraft.SummonRitual.addRitual("summonAsorah", 1, 50, 10000 as float, true, "abyssalcraft:dragonboss", [<enderutilities:enderpart:17>,<abyssalcraft:corflesh>,<gregtech:meta_item_1:81>.withTag({Fluid: {FluidName: "liquidcoralium", Amount: 16000}}).reuse(),<abyssalcraft:corflesh>,<abyssalcraft:transmutationgem:*>,<abyssalcraft:corflesh>,<gregtech:meta_item_1:81>.withTag({Fluid: {FluidName: "liquidcoralium", Amount: 16000}}).reuse(),<abyssalcraft:corflesh>] as IIngredient[], true);
game.setLocalization("ac.ritual.summonAsorah", "Ritual of The Sleeper");
game.setLocalization("ac.ritual.summonAsorah.desc", "Summons Asorah, The Fallen, from the Dark Realm. The afterlife is commonly referred to as an eternal slumber, in which a sleeper is an entity beyond life and death. Requires a pristine Transmutation Gem.");

# Coralium Plagued Flesh on a Bone -> Coralium Plagued Flesh and Tooltips
recipes.addShapeless(<abyssalcraft:corflesh>, [<abyssalcraft:corbone>]);
<abyssalcraft:corflesh>.addTooltip(format.white("Drops from Zombies in the Abyssal Wasteland."));
<abyssalcraft:corbone>.addTooltip(format.white("Drops from Skeletal Zombies in the Abyssal Wasteland."));

function add_abyssalcraft_overworld_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 0, -1, 1200 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<ore:compressed3xCobblestone>,<abyssalcraft:ccluster3>,<abyssalcraft:stone>,<abyssalcraft:shadowshard>,<ore:compressed3xCobblestone>,<abyssalcraft:ccluster3>,<abyssalcraft:stone>] as IIngredient[], false, ["PotEnergy"]);
}

# Overworld Energy Collector
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector>, <abyssalcraft:energycollector>, "ecolOWupgrade");

# Overworld Energy Pedestal
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal>, <abyssalcraft:energypedestal>, "epOWupgrade");

# Overworld Energy Relay
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay>, <abyssalcraft:energyrelay>, "erOWupgrade");

# Overworld Sacrificial Altar
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar>, <abyssalcraft:sacrificialaltar>, "saOWupgrade");

# Overworld Energy Container
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer>, <abyssalcraft:energycontainer>, "econOWupgrade");

function add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 1, 50, 2400 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>,<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>] as IIngredient[], false, ["PotEnergy"]);
}

# Abyssal Wasteland Energy Collector
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:1>, <abyssalcraft:tieredenergycollector>, "ecolAWupgrade");

# Abyssal Wasteland Energy Pedestal
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:1>, <abyssalcraft:tieredenergypedestal>, "epAWupgrade");

# Abyssal Wasteland Energy Relay
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:1>, <abyssalcraft:tieredenergyrelay>, "erAWupgrade");

# Abyssal Wasteland Sacrificial Altar
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:1>, <abyssalcraft:tieredsacrificialaltar>, "saAWupgrade");

# Abyssal Wasteland Energy Container
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:1>, <abyssalcraft:tieredenergycontainer>, "econAWupgrade");

# Dreaded Shard of Abyssalnite
<abyssalcraft:dreadshard>.addTooltip(format.white("Dropped by ") + format.red("Dreadguards") + format.white(" in the Dreadlands."));

# Dread Fragment
<abyssalcraft:dreadfragment>.addTooltip(format.white("Dropped by Zombies in the Dreadlands."));

# Dread Cloth
recipes.remove(<abyssalcraft:dreadcloth>);
recipes.addShaped(<abyssalcraft:dreadcloth>, [[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>],[<abyssalcraft:dreadfragment>,<contenttweaker:industrial_leather>,<abyssalcraft:dreadfragment>],[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>]]);

# Dreadlands Necronomicon
recipes.remove(<abyssalcraft:necronomicon_dre>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade2", <abyssalcraft:necronomicon_dre>, [[<abyssalcraft:dreadplate>,<abyssalcraft:dreadbrick>,<abyssalcraft:dreadplate>],[<abyssalcraft:dreadbrick>,<abyssalcraft:necronomicon_cor>.marked("necronomicon"),<abyssalcraft:dreadbrick>],[<abyssalcraft:dreadplate>,<abyssalcraft:skin:1>,<abyssalcraft:dreadplate>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_dre>, [[<abyssalcraft:dreadplate>,<abyssalcraft:dreadbrick>,<abyssalcraft:dreadplate>],[<abyssalcraft:dreadbrick>,<abyssalcraft:necronomicon_cor>,<abyssalcraft:dreadbrick>],[<abyssalcraft:dreadplate>,<abyssalcraft:skin:1>,<abyssalcraft:dreadplate>]]);


// # Dreadium Sword
// recipes.remove(<abyssalcraft:dreadiumsword>);
// recipes.addShaped(<abyssalcraft:dreadiumsword>, [[<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>],[<abyssalcraft:corsword>]]);

// # Dreadium Pickaxe
// recipes.remove(<abyssalcraft:dreadiumpickaxe>);
// recipes.addShaped(<abyssalcraft:dreadiumpickaxe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[null,<abyssalcraft:corpick>,null],[null,<ore:stickTungsten>,null]]);

// # Dreadium Axe
// recipes.remove(<abyssalcraft:dreadiumaxe>);
// recipes.addShapedMirrored(<abyssalcraft:dreadiumaxe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:coraxe>],[null,<ore:stickTungsten>]]);

// # Dreadium Shovel
// recipes.remove(<abyssalcraft:dreadiumshovel>);
// recipes.addShaped(<abyssalcraft:dreadiumshovel>, [[<abyssalcraft:dreadiumingot>],[<abyssalcraft:corshovel>],[<ore:stickTungsten>]]);

// # Dreadium Hoe
// recipes.remove(<abyssalcraft:dreadiumhoe>);
// recipes.addShapedMirrored(<abyssalcraft:dreadiumhoe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[null,<abyssalcraft:corhoe>],[null,<ore:stickTungsten>]]);

# Removing Materializer Sapling recipes
val non_materializable_saplings = [<totemic:cedar_sapling>,<traverse:red_autumnal_sapling>,<traverse:brown_autumnal_sapling>,<traverse:orange_autumnal_sapling>,<traverse:yellow_autumnal_sapling>] as IItemStack[];
for sapling in <ore:treeSapling>.items {
	if(!(non_materializable_saplings has sapling)) {
		mods.abyssalcraft.Materializer.removeMaterialization(sapling);
	}
}

# Dreadlands Infused Powerstone tooltip
<abyssalcraft:psdl>.addTooltip(format.white("To obtain, craft a ") + format.darkAqua("Refined Coralium Pickaxe") + format.white(" and about 6"));
<abyssalcraft:psdl>.addTooltip(format.darkAqua("Powerstone Trackers") + format.white(", then enter the ") + format.darkAqua("Abyssal Wasteland") + format.white(", find"));
<abyssalcraft:psdl>.addTooltip(format.white("the ") + format.darkAqua("Abyssal Stronghold") + format.white(" with your ") + format.darkAqua("Powerstone Trackers") + format.white(","));
<abyssalcraft:psdl>.addTooltip(format.white("and in the center mine up your ") + format.red("Dreadlands Infused Powerstone") + format.white("!"));

# Chunk of Abyssalnite
<abyssalcraft:abychunk>.addTooltip(format.white("Dropped by ") + format.red("Abyssalnite Golems") + format.white(" in the Dreadlands."));

# Dreaded Chunk of Abyssalnite
<abyssalcraft:dreadchunk>.addTooltip(format.white("Dropped by ") + format.red("Dreaded Abyssalnite Golems") + format.white(" in the Dreadlands."));

# Dread-plagued Gateway Key
<abyssalcraft:dreadkey>.maxStackSize = 1;
<abyssalcraft:dreadkey>.addTooltip(format.white("Dropped by ") + format.red("Cha'garoth") + format.white(" at the end of the ") + format.red("Dreadlands"));
<abyssalcraft:dreadkey>.addTooltip(format.white("dungeon. You can enter it by placing down the "));
<abyssalcraft:dreadkey>.addTooltip(format.red("Altar of Cha'garoth (bottom & top)") + format.white(" at Y=40 in"));
<abyssalcraft:dreadkey>.addTooltip(format.white("in a Dreadlands Mountains biome."));

# Chemical Injection Chamber output removal
// mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard>, <abyssalcraft:crystal>);
// mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:1>, <abyssalcraft:crystal:1>);
// mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:4>, <abyssalcraft:crystal:16>);
// mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:3>, <abyssalcraft:crystal:17>);

# Materializer
recipes.remove(<abyssalcraft:materializer>);

# Eldritch Scale
<abyssalcraft:eldritchscale>.addTooltip(format.white("Dropped by ") + format.gray("Remnants") + format.white(" and ") + format.gray("Minions of The Gatekeeper") + format.white(" in ") + format.gray("Omothol") + format.white("."));

# Omothol Ghoul Flesh
<abyssalcraft:omotholflesh>.addTooltip(format.white("Dropped by Omothol Ghouls in... Omothol."));
<abyssalcraft:omotholflesh>.addTooltip(format.white(format.italic("Incredible and very Original, I know.")));

# Blank Coin Engraving
recipes.remove(<abyssalcraft:engraving_blank>);
recipes.addShaped(<abyssalcraft:engraving_blank>, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<minecraft:paper>,<contenttweaker:neutral_reagent>,<minecraft:paper>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Engraver
recipes.remove(<abyssalcraft:engraver>);
recipes.addShapedMirrored(<abyssalcraft:engraver>, [[<abyssalcraft:stone:5>,<abyssalcraft:engraving_blank>,null],[<abyssalcraft:stone:5>,<abyssalcraft:engraving_blank>,null],[<enderio:block_dark_steel_anvil>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>]]);

# C'thulu Coin Engraving
recipes.remove(<abyssalcraft:engraving_cthulhu>);
recipes.addShaped(<abyssalcraft:engraving_cthulhu>, [[<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>],[<abyssalcraft:shoggothflesh>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh>],[<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>]]);

# Elder Coin Engraving
recipes.remove(<abyssalcraft:engraving_elder>);
recipes.addShaped(<abyssalcraft:engraving_elder>, [[<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>],[<abyssalcraft:ethaxiumingot>,<abyssalcraft:engraving_blank>,<abyssalcraft:ethaxiumingot>],[<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>]]);

# J'zahar Coin Engraving
recipes.remove(<abyssalcraft:engraving_jzahar>);
recipes.addShaped(<abyssalcraft:engraving_jzahar>, [[<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>],[<abyssalcraft:eldritchscale>,<abyssalcraft:engraving_blank>,<abyssalcraft:eldritchscale>],[<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>]]);

# Hastur Coin Engraving
recipes.remove(<abyssalcraft:engraving_hastur>);
recipes.addShaped(<abyssalcraft:engraving_hastur>, [[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>],[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:1>],[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>]]);

# Azathoth Coin Engraving
recipes.remove(<abyssalcraft:engraving_azathoth>);
recipes.addShaped(<abyssalcraft:engraving_azathoth>, [[<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>],[<abyssalcraft:shadowgem>,<abyssalcraft:engraving_blank>,<abyssalcraft:shadowgem>],[<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>]]);

# Nyralothep Coin Engraving
recipes.remove(<abyssalcraft:engraving_nyarlathotep>);
recipes.addShaped(<abyssalcraft:engraving_nyarlathotep>, [[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>],[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:2>],[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>]]);

# Yog-Sothoth Coin Engraving
recipes.remove(<abyssalcraft:engraving_yogsothoth>);
recipes.addShaped(<abyssalcraft:engraving_yogsothoth>, [[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>],[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:3>],[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>]]);

# Sub-Niggurath Coin Engraving
recipes.remove(<abyssalcraft:engraving_shubniggurath>);
recipes.addShaped(<abyssalcraft:engraving_shubniggurath>, [[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>],[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:4>],[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>]]);

# Coin (uses doge coin)
recipes.remove(<abyssalcraft:coin>);
recipes.addShaped(<abyssalcraft:coin> * 4, [[null,<gregtech:meta_item_1:9>,null],[<gregtech:meta_item_1:9>,<contenttweaker:praesidium>,<gregtech:meta_item_1:9>],[null,<gregtech:meta_item_1:9>,null]]);

# Remove Coin -> Iron in Furnace
furnace.remove(<minecraft:iron_ingot> * 4, <abyssalcraft:coin>);

# Small Crystal bag
recipes.remove(<abyssalcraft:crystalbag_small>);
recipes.addShaped(<abyssalcraft:crystalbag_small>, [[<evilcraft:golden_string>,<contenttweaker:blood_infused_leather>,<evilcraft:golden_string>],[<contenttweaker:blood_infused_leather>,<ore:blockGlodCrystal>,<contenttweaker:blood_infused_leather>],[<contenttweaker:blood_infused_leather>,<contenttweaker:blood_infused_leather>,<contenttweaker:blood_infused_leather>]]);

# Essence of The Gatekeeper
<abyssalcraft:gatekeeperessence>.addTooltip(format.white("Dropped by ") + format.gray("J'zahar") + format.white(", the final boss of Omothol."));

function add_abyssalcraft_dreadlands_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 2, 51, 3600 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<abyssalcraft:dreadiumingot>,<abyssalcraft:ccluster7>,<abyssalcraft:abyingot>,<abyssalcraft:shadowshard>,<abyssalcraft:dreadiumingot>,<abyssalcraft:ccluster7>,<abyssalcraft:abyingot>] as IIngredient[], false, ["PotEnergy"]);
}

# Dreadlands Energy Collector
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:2>, <abyssalcraft:tieredenergycollector:1>, "ecolDLupgrade");

# Dreadlands Energy Pedestal
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:2>, <abyssalcraft:tieredenergypedestal:1>, "epDLupgrade");

# Dreadlands Energy Relay
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:2>, <abyssalcraft:tieredenergyrelay:1>, "erDLupgrade");

# Dreadlands Sacrificial Altar
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:2>, <abyssalcraft:tieredsacrificialaltar:1>, "saDLupgrade");

# Dreadlands Energy Container
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:2>, <abyssalcraft:tieredenergycontainer:1>, "econDLupgrade");

# Omothol Necronomicon
recipes.remove(<abyssalcraft:necronomicon_omt>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade3", <abyssalcraft:necronomicon_omt>, [[<ore:engravedAbyssalCoin>,<abyssalcraft:stone:5>,<ore:engravedAbyssalCoin>],[<abyssalcraft:stone:5>,<abyssalcraft:necronomicon_dre>.marked("necronomicon"),<abyssalcraft:stone:5>],[<ore:engravedAbyssalCoin>,<abyssalcraft:skin:2>,<ore:engravedAbyssalCoin>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_omt>, [[<ore:engravedAbyssalCoin>,<abyssalcraft:stone:5>,<ore:engravedAbyssalCoin>],[<abyssalcraft:stone:5>,<abyssalcraft:necronomicon_dre>,<abyssalcraft:stone:5>],[<ore:engravedAbyssalCoin>,<abyssalcraft:skin:2>,<ore:engravedAbyssalCoin>]]);

function add_abyssalcraft_omothol_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 3, 52, 4800 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowgem>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ccluster9>,<abyssalcraft:darkethaxiumbrick>,<abyssalcraft:shadowgem>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ccluster9>,<abyssalcraft:darkethaxiumbrick>] as IIngredient[], false, ["PotEnergy"]);
}

# Omothol Energy Collector
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:3>, <abyssalcraft:tieredenergycollector:2>, "ecolOMTupgrade");

# Omothol Energy Pedestal
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:3>, <abyssalcraft:tieredenergypedestal:2>, "epOMTupgrade");

# Omothol Energy Relay
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:3>, <abyssalcraft:tieredenergyrelay:2>, "erOMTupgrade");

# Omothol Sacrificial Altar
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:3>, <abyssalcraft:tieredsacrificialaltar:2>, "saOMTupgrade");

# Omothol Energy Container
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:3>, <abyssalcraft:tieredenergycontainer:2>, "econOMTupgrade");

# Abyssalnomicon
recipes.remove(<abyssalcraft:abyssalnomicon>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade4", <abyssalcraft:abyssalnomicon>, [[<abyssalcraft:ingotblock:3>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:ingotblock:3>],[<abyssalcraft:eldritchscale>,<abyssalcraft:necronomicon_omt>.marked("necronomicon"),<abyssalcraft:eldritchscale>],[<abyssalcraft:ingotblock:3>,<abyssalcraft:eldritchscale>,<abyssalcraft:ingotblock:3>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:abyssalnomicon>, [[<abyssalcraft:ingotblock:3>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:ingotblock:3>],[<abyssalcraft:eldritchscale>,<abyssalcraft:necronomicon_omt>,<abyssalcraft:eldritchscale>],[<abyssalcraft:ingotblock:3>,<abyssalcraft:eldritchscale>,<abyssalcraft:ingotblock:3>]]);

# Sacthoth's Soul Reaper Blade
<abyssalcraft:soulreaper>.addTooltip(format.white("Dropped by ") + format.gray("Sacthoth, Harbinger of Doom") + format.white(", the final boss of AbyssalCraft."));

# Ritual of Shadows
mods.abyssalcraft.SummonRitual.removeRitual("abyssalcraft:shadowboss");
mods.abyssalcraft.SummonRitual.addRitual("summonSacthoth", 4, 53, 100000 as float, false, "abyssalcraft:shadowboss", [<abyssalcraft:oc>,<bloodmagic:item_demon_crystal:1>,<evilcraft:inverted_potentia:1>,<bloodmagic:item_demon_crystal:1>,<contenttweaker:rune_of_winter>,<bloodmagic:item_demon_crystal:1>,<abyssalcraft:ingotblock:3>,<bloodmagic:item_demon_crystal:1>] as IIngredient[], false);
game.setLocalization("ac.ritual.summonSacthoth", "Ritual of Shadows");
game.setLocalization("ac.ritual.summonSacthoth.desc", "Summons Sacthoth, Harbinger of Doom, from the Dark Realm. Offer him your most valuable items and as much PE as you can hold... Maybe he'll appear...");

# Summoning an Anti Cow in the Abyssal Wasteland
mods.abyssalcraft.SummonRitual.addRitual("summonAntiCow", 1, 50, 2500, false, "abyssalcraft:anticow", [<abyssalcraft:ingotblock:1>,<minecraft:beef>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<minecraft:leather>,<abyssalcraft:powerstonetracker>,<minecraft:beef>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<minecraft:leather>]);
game.setLocalization("ac.ritual.summonAntiCow", "Anti Milking");
game.setLocalization("ac.ritual.summonAntiCow.desc", "Summon an Anti Cow in the Abyssal Wasteland. Milking this Cow will yield a bucket of Antimatter.");

# Removing the Mass Enchantment Ritual
mods.abyssalcraft.Rituals.removeRitual("massEnchantment");

# SAG Mill shouldn't produce Crystallized Redstone
<ore:crystalRedstone>.remove(<abyssalcraft:crystal:11>);

// Producing Shadow Fragments With Bee's!
chemreactor.recipeBuilder()
    .inputs(<extrabees:honey_comb:36>)
	.fluidInputs(<liquid:liquid_nightmares>*500, <liquid:phosphoric_acid>*250)
	.circuit(4)
    .outputs(<abyssalcraft:shadowfragment> * 6)
    .duration(200)
    .EUt(80)
.buildAndRegister();

//Energy Pedestal
recipes.remove(<abyssalcraft:energypedestal>);
mods.extendedcrafting.TableCrafting.addShaped(2, <abyssalcraft:energypedestal>, [
	[<abyssalcraft:stone:7>, <ore:materialCoraliumPearl>, <ore:materialCoraliumPearl>, <ore:materialCoraliumPearl>, <abyssalcraft:stone:7>], 
	[null, <abyssalcraft:stone:7>, <ore:plateDoubleDiabolicCarbide>, <abyssalcraft:stone:7>, null], 
	[null, <abyssalcraft:stone:7>, <ore:gemShadow>, <abyssalcraft:stone:7>, null], 
	[null, <abyssalcraft:stone:7>, <ore:springTitanium>, <abyssalcraft:stone:7>, null], 
	[<abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>]
]);

//Energy Collector
recipes.remove(<abyssalcraft:energycollector>);
mods.extendedcrafting.TableCrafting.addShaped(2, <abyssalcraft:energycollector>, [
	[null, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, null], 
	[null, <ore:materialCoraliumPearl>, <ore:materialCoraliumPearl>, <ore:materialCoraliumPearl>, null], 
	[null, <abyssalcraft:stone:7>, <ore:gemShadow>, <abyssalcraft:stone:7>, null], 
	[null, <abyssalcraft:stone:7>, <ore:springTitanium>, <abyssalcraft:stone:7>, null], 
	[null, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, null]
]);

//Energy Relay
recipes.remove(<abyssalcraft:energyrelay>);
mods.extendedcrafting.TableCrafting.addShaped(2, <abyssalcraft:energyrelay>, [
	[<abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:shadowshard>, null], 
	[<abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, null, null], 
	[<abyssalcraft:stone:7>, <ore:springTitanium>, <ore:gemShadow>, <abyssalcraft:stone:7>, <ore:lightPlateDiabolicCarbide>], 
	[<abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, null, null], 
	[<abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <abyssalcraft:shadowshard>, null]
]);

// Shard of Oblivion
recipes.remove(<abyssalcraft:oblivionshard>);
recipes.addShaped(<abyssalcraft:oblivionshard> * 1, [[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]}), <contenttweaker:hellishflesh>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]})], [<contenttweaker:hellishflesh>, <abyssalcraft:transmutationgem>, <contenttweaker:hellishflesh>],[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]}), <contenttweaker:hellishflesh>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]})]]);

# Oblivion Catalyst
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:oc>);
mods.abyssalcraft.InfusionRitual.addRitual("oblivionCatalyst", 0, -1, 5000, true, <abyssalcraft:oc>, <enderutilities:enderpart:17>, [<ore:gemGarnetRed>,<abyssalcraft:oblivionshard>,<ore:gemGarnetRed>,<abyssalcraft:oblivionshard>,<ore:gemGarnetRed>,<abyssalcraft:oblivionshard>,<ore:gemGarnetRed>,<abyssalcraft:oblivionshard>], true);

# Gateway Key
recipes.remove(<abyssalcraft:gatewaykey>);
mods.abyssalcraft.InfusionRitual.addRitual("gatewaykey", 0, -1, 5000, true, <abyssalcraft:gatewaykey>, <randomthings:spectrekey>, [<abyssalcraft:oc>,<ore:materialCoraliumPearl>,<evilcraft:bowl_of_promises:5>,<ore:blockBlaze>,<randomthings:ingredient:1>,<ore:materialCoraliumPearl>, <evilcraft:bowl_of_promises:5>,<ore:blockBlaze>], true);

# Electrolyzing Dirt to get stuff

electrolyzer.recipeBuilder()
    .inputs(<abyssalcraft:abyssalsand>*2)
    .fluidOutputs(<liquid:sodium_potassium>*800)
	.fluidOutputs(<liquid:liquidcoralium>*500)
    .duration(325)
    .EUt(800)
.buildAndRegister();

# Making Abyssal Sand with Coralium
chemical_bath.recipeBuilder()
    .inputs(<ore:sand>)
    .fluidInputs(<liquid:liquidcoralium>*500)
	.outputs(<abyssalcraft:abyssalsand>)
    .duration(400)
    .EUt(300)
.buildAndRegister();

# Making Abyssal Stone with Coralium
chemical_bath.recipeBuilder()
    .inputs(<ore:stone>)
    .fluidInputs(<liquid:liquidcoralium>*1000)
	.outputs(<abyssalcraft:stone:1>)
    .duration(500)
    .EUt(300)
.buildAndRegister();

// Powerstone Tracker's =================================================
recipes.remove(<abyssalcraft:powerstonetracker>);
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:gemEnderEye>*4, <abyssalcraft:cchunk>)
    .fluidInputs(<liquid:nitric_acid>*1000)
    .outputs(<abyssalcraft:powerstonetracker>*4)
    .duration(65)
    .EUt(480)
.buildAndRegister();