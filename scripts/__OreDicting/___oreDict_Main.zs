#priority 999999

import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting as Casting;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI as JEI;

///////////////////////////////////////
//  Adding OreDicts First            //
///////////////////////////////////////

//Enori
<ore:EnoriCrystal>.add(<actuallyadditions:item_crystal:5>);
<ore:gearEnori>.add(<contenttweaker:enorigear>);
<ore:plateEnori>.add(<contenttweaker:enoriplate>);

<ore:EmpoweredEnoriCrystal>.add(<actuallyadditions:item_crystal_empowered:5>);
<ore:gearEnoriEmpowered>.add(<contenttweaker:empoweredenorigear>);
<ore:plateEnoriEmpowered>.add(<contenttweaker:empoweredenoriplate>);

//Restonia
<ore:RestoniaCrystal>.add(<actuallyadditions:item_crystal>);
<ore:gearRestonia>.add(<contenttweaker:restoniagear>);
<ore:plateRestonia>.add(<contenttweaker:restoniaplate>);

<ore:EmpoweredRestoniaCrystal>.add(<actuallyadditions:item_crystal_empowered>);
<ore:gearRestoniaEmpowered>.add(<contenttweaker:empoweredrestoniagear>);
<ore:plateRestoniaEmpowered>.add(<contenttweaker:empoweredrestoniaplate>);

//Void
<ore:AAVoidCrystal>.add(<actuallyadditions:item_crystal:3>);
<ore:gearAAVoid>.add(<contenttweaker:voidgear>);
<ore:plateAAVoid>.add(<contenttweaker:voidplate>);

// <ore:VoidCrystal>.add(<actuallyadditions:item_crystal:3>);
// <ore:gearVoid>.add(<contenttweaker:voidgear>);
// <ore:plateAAVoid>.add(<contenttweaker:voidplate>);

// <ore:EmpoweredAAVoidCrystal>.add(<actuallyadditions:item_crystal_empowered:3>);
// <ore:gearAAVoidEmpowered>.add(<contenttweaker:empoweredvoidgear>);
// <ore:plateAAVoidEmpowered>.add(<contenttweaker:empoweredvoidplate>);

<ore:EmpoweredAAVoidCrystal>.add(<actuallyadditions:item_crystal_empowered:3>);
<ore:gearAAVoidEmpowered>.add(<contenttweaker:empoweredvoidgear>);
<ore:plateAAVoidEmpowered>.add(<contenttweaker:empoweredvoidplate>);

//Emeradic
<ore:EmeradicCrystal>.add(<actuallyadditions:item_crystal:4>);
<ore:gearEmeradic>.add(<contenttweaker:emeradicgear>);
<ore:plateEmeradic>.add(<contenttweaker:emeradicplate>);

<ore:EmpoweredEmeradicCrystal>.add(<actuallyadditions:item_crystal_empowered:4>);
<ore:gearEmeradicEmpowered>.add(<contenttweaker:empoweredemeradicgear>);
<ore:plateEmeradicEmpowered>.add(<contenttweaker:empoweredemeradicplate>);

//Diamatine
<ore:DiamantineCrystal>.add(<actuallyadditions:item_crystal:2>);
<ore:gearDiamatine>.add(<contenttweaker:diamatinegear>);
<ore:plateDiamatine>.add(<contenttweaker:diamatineplate>);

<ore:EmpoweredDiamantineCrystal>.add(<actuallyadditions:item_crystal_empowered:2>);
<ore:gearDiamatineEmpowered>.add(<contenttweaker:empowereddiamatinegear>);
<ore:plateDiamatineEmpowered>.add(<contenttweaker:empowereddiamatineplate>);

//Palis
<ore:PalisCrystal>.add(<actuallyadditions:item_crystal:1>);
<ore:gearPalis>.add(<contenttweaker:palisgear>);
<ore:platePalis>.add(<contenttweaker:palisplate>);

<ore:EmpoweredPalisCrystal>.add(<actuallyadditions:item_crystal_empowered:1>);
<ore:gearPalisEmpowered>.add(<contenttweaker:empoweredpalisgear>);
<ore:platePalisEmpowered>.add(<contenttweaker:empoweredpalisplate>);

//Fiery
<ore:gearFiery>.add(<contenttweaker:fierygear>);
<ore:plateFiery>.add(<contenttweaker:fieryplate>);

//Ironwood
<ore:gearIronwood>.add(<contenttweaker:ironwoodgear>);
<ore:plateIronwood>.add(<contenttweaker:ironwoodplate>);

//Knightmetal
<ore:gearKnightmetal>.add(<contenttweaker:knightmetalgear>);
<ore:plateKnightmetal>.add(<contenttweaker:knightmetalplate>);

//Energetic Silver
<ore:gearEnergeticSilver>.add(<contenttweaker:energeticsilvergear>);
<ore:plateEnergeticSilver>.add(<contenttweaker:energeticsilverplate>);

//Melodic Alloy
<ore:gearMelodicAlloy>.add(<contenttweaker:melodicalloygear>);
<ore:plateMelodicAlloy>.add(<contenttweaker:melodicalloyplate>);

//Dark Soularium
<ore:gearDarkSoularium>.add(<contenttweaker:darksoulariumgear>);
<ore:plateDarkSoularium>.add(<contenttweaker:darksoulariumplate>);

// //Elementium
<ore:ingotElvenElementium>.remove(<botania:manaresource:7>);
<ore:nuggetElvenElementium>.remove(<botania:manaresource:19>);

<ore:ingotElementium>.add(<botania:manaresource:7>);
<ore:nuggetElementium>.add(<botania:manaresource:19>);
<ore:blockElementium>.add(<botania:storage:2>);

// //Manasteel
<ore:blockManasteel>.add(<botania:storage>);

// //Terrasteel
<ore:blockTerrasteel>.add(<botania:storage:1>);

//Osglolapis
<ore:blockOsglolapis>.add(<contenttweaker:osglolapis_block>);
<ore:gemOsglolapis>.add(<contenttweaker:osglolapis>);

// Ender Pearl Powder Compatability
<ore:nuggetEnderpearl>.add(<ore:dustTinyEnderPearl>.firstItem);

// Botania Quartz ===============================

# Lavender
<ore:plateLavenderQuartz>.add(<contenttweaker:lavender_quartz_plate>);
<ore:gearLavenderQuartz>.add(<contenttweaker:lavender_quartz_gear>);

# Elven
<ore:plateElvenQuartz>.add(<contenttweaker:elven_quartz_plate>);
<ore:gearElvenQuartz>.add(<contenttweaker:elven_quartz_gear>);

# Mana
<ore:plateManaQuartz>.add(<contenttweaker:mana_quartz_plate>);
<ore:gearManaQuartz>.add(<contenttweaker:mana_quartz_gear>);

# Red
<ore:plateRedQuartz>.add(<contenttweaker:red_quartz_plate>);
<ore:gearRedQuartz>.add(<contenttweaker:red_quartz_gear>);

# Blaze
<ore:plateBlazeQuartz>.add(<contenttweaker:blaze_quartz_plate>);
<ore:gearBlazeQuartz>.add(<contenttweaker:blaze_quartz_gear>);

# Sunny
<ore:plateSunnyQuartz>.add(<contenttweaker:sunny_quartz_plate>);
<ore:gearSunnyQuartz>.add(<contenttweaker:sunny_quartz_gear>);

//Removing Adhesive from Slimeball OreDict
<ore:slimeball>.remove(<embers:adhesive>);

//Adding Lard to the Tallow OreDict
<ore:lard>.add(<pyrotech:material:49>);

//Extra Utils Materials ==========================

# Demon

<ore:plateDemonic>.add(<contenttweaker:demon_plate>);
<ore:gearDemonic>.add(<contenttweaker:demon_gear>);

# Evil Infused

<ore:plateEvilInfused>.add(<contenttweaker:evil_infused_plate>);
<ore:gearEvilInfused>.add(<contenttweaker:evil_infused_gear>);

# Enchanted

<ore:plateEnchanted>.add(<contenttweaker:enchanted_plate>);
<ore:gearEnchanted>.add(<contenttweaker:enchanted_gear>);


// Removing Incorrect Stone OreDict from EvilCraft's Bloody Cobble
<ore:blockStone>.remove(<evilcraft:bloody_cobblestone>);

// Adding Fossil's Logs to a Special OreDict
<ore:prehistoricLog>.add(<fossil:palm_log>);
<ore:prehistoricLog>.add(<fossil:calamites_log>);
<ore:prehistoricLog>.add(<fossil:sigillaria_log>);
<ore:prehistoricLog>.add(<fossil:cordaites_log>);

//Greg Additional OreDicts
<ore:LVCasing>.add(<gregtech:machine_casing:1>);
<ore:MVCasing>.add(<gregtech:machine_casing:2>);
<ore:solarBoiler>.add(<gregtech:machine:3>, <gregtech:machine:4>);
<ore:LVCharger>.add(<gregtech:machine:1376>);
<ore:MVTransformer>.add(<gregtech:machine:1272>);
<ore:combustionGenerator>.add(<gregtech:machine:935>, <gregtech:machine:936>, <gregtech:machine:937>);

//Bee OreDicts
<ore:acidicHoneyDrop>.add(<extrabees:honey_drop:1>);

# Crystalline Pink Slime

<ore:plateCrystallinePinkSlime>.add(<contenttweaker:crystalline_pink_slime_plate>);
<ore:gearCrystallinePinkSlime>.add(<contenttweaker:crystalline_pink_slime_gear>);

# Star Metal

<ore:blockAstralStarmetal>.add(<astraladditions:block_starmetal>);
// <ore:ingotAstralStarmetal>.add(<astralsorcery:itemcraftingcomponent:1>);
// <ore:dustAstralStarmetal>.add(<astralsorcery:itemcraftingcomponent:2>);

# Fixing Coralium OreDict for a correct OreGen
<ore:oreAbyssalCoralium>.add(<abyssalcraft:abycorore>);

# NuclearCraft's HSLA Compat
<ore:ingotHSLASteel>.add(<ore:ingotHslaSteel>.firstItem);

# Adding Extra OreDicts to GT Salt
<ore:itemSalt>.add(<gregtech:meta_dust:312>);
<ore:foodSalt>.add(<gregtech:meta_dust:312>);

#Adding Extra OreDicts to NC's Marshmallow
<ore:foodMarshmellows>.add(<nuclearcraft:marshmallow>);

// Adding OreDicts for Overloaded

# Compressed Cobblestone ==========================================================================

<ore:compressed1xCobblestone>.add(<overloaded:compressed_cobblestone>);
<ore:compressed2xCobblestone>.add(<overloaded:compressed_cobblestone:1>);
<ore:compressed3xCobblestone>.add(<overloaded:compressed_cobblestone:2>);
<ore:compressed4xCobblestone>.add(<overloaded:compressed_cobblestone:3>);
<ore:compressed5xCobblestone>.add(<overloaded:compressed_cobblestone:4>);
<ore:compressed6xCobblestone>.add(<overloaded:compressed_cobblestone:5>);
<ore:compressed7xCobblestone>.add(<overloaded:compressed_cobblestone:6>);
<ore:compressed8xCobblestone>.add(<overloaded:compressed_cobblestone:7>);
<ore:compressed9xCobblestone>.add(<overloaded:compressed_cobblestone:8>);
<ore:compressed10xCobblestone>.add(<overloaded:compressed_cobblestone:9>);
<ore:compressed11xCobblestone>.add(<overloaded:compressed_cobblestone:10>);
<ore:compressed12xCobblestone>.add(<overloaded:compressed_cobblestone:11>);
<ore:compressed13xCobblestone>.add(<overloaded:compressed_cobblestone:12>);
<ore:compressed14xCobblestone>.add(<overloaded:compressed_cobblestone:13>);
<ore:compressed15xCobblestone>.add(<overloaded:compressed_cobblestone:14>);
<ore:compressed16xCobblestone>.add(<overloaded:compressed_cobblestone:15>);

# Compressed Dirt ==========================================================================

<ore:compressed1xDirt>.add(<overloaded:compressed_dirt>);
<ore:compressed2xDirt>.add(<overloaded:compressed_dirt:1>);
<ore:compressed3xDirt>.add(<overloaded:compressed_dirt:2>);
<ore:compressed4xDirt>.add(<overloaded:compressed_dirt:3>);
<ore:compressed5xDirt>.add(<overloaded:compressed_dirt:4>);
<ore:compressed6xDirt>.add(<overloaded:compressed_dirt:5>);
<ore:compressed7xDirt>.add(<overloaded:compressed_dirt:6>);
<ore:compressed8xDirt>.add(<overloaded:compressed_dirt:7>);
<ore:compressed9xDirt>.add(<overloaded:compressed_dirt:8>);
<ore:compressed10xDirt>.add(<overloaded:compressed_dirt:9>);
<ore:compressed11xDirt>.add(<overloaded:compressed_dirt:10>);
<ore:compressed12xDirt>.add(<overloaded:compressed_dirt:11>);
<ore:compressed13xDirt>.add(<overloaded:compressed_dirt:12>);
<ore:compressed14xDirt>.add(<overloaded:compressed_dirt:13>);
<ore:compressed15xDirt>.add(<overloaded:compressed_dirt:14>);
<ore:compressed16xDirt>.add(<overloaded:compressed_dirt:15>);

# Compressed Sand ==========================================================================

<ore:compressed1xSand>.add(<overloaded:compressed_sand>);
<ore:compressed2xSand>.add(<overloaded:compressed_sand:1>);
<ore:compressed3xSand>.add(<overloaded:compressed_sand:2>);
<ore:compressed4xSand>.add(<overloaded:compressed_sand:3>);
<ore:compressed5xSand>.add(<overloaded:compressed_sand:4>);
<ore:compressed6xSand>.add(<overloaded:compressed_sand:5>);
<ore:compressed7xSand>.add(<overloaded:compressed_sand:6>);
<ore:compressed8xSand>.add(<overloaded:compressed_sand:7>);
<ore:compressed9xSand>.add(<overloaded:compressed_sand:8>);
<ore:compressed10xSand>.add(<overloaded:compressed_sand:9>);
<ore:compressed11xSand>.add(<overloaded:compressed_sand:10>);
<ore:compressed12xSand>.add(<overloaded:compressed_sand:11>);
<ore:compressed13xSand>.add(<overloaded:compressed_sand:12>);
<ore:compressed14xSand>.add(<overloaded:compressed_sand:13>);
<ore:compressed15xSand>.add(<overloaded:compressed_sand:14>);
<ore:compressed16xSand>.add(<overloaded:compressed_sand:15>);

# Compressed Gravel ==========================================================================

<ore:compressed1xGravel>.add(<overloaded:compressed_gravel>);
<ore:compressed2xGravel>.add(<overloaded:compressed_gravel:1>);
<ore:compressed3xGravel>.add(<overloaded:compressed_gravel:2>);
<ore:compressed4xGravel>.add(<overloaded:compressed_gravel:3>);
<ore:compressed5xGravel>.add(<overloaded:compressed_gravel:4>);
<ore:compressed6xGravel>.add(<overloaded:compressed_gravel:5>);
<ore:compressed7xGravel>.add(<overloaded:compressed_gravel:6>);
<ore:compressed8xGravel>.add(<overloaded:compressed_gravel:7>);
<ore:compressed9xGravel>.add(<overloaded:compressed_gravel:8>);
<ore:compressed10xGravel>.add(<overloaded:compressed_gravel:9>);
<ore:compressed11xGravel>.add(<overloaded:compressed_gravel:10>);
<ore:compressed12xGravel>.add(<overloaded:compressed_gravel:11>);
<ore:compressed13xGravel>.add(<overloaded:compressed_gravel:12>);
<ore:compressed14xGravel>.add(<overloaded:compressed_gravel:13>);
<ore:compressed15xGravel>.add(<overloaded:compressed_gravel:14>);
<ore:compressed16xGravel>.add(<overloaded:compressed_gravel:15>);

# Compressed Netherrack ==========================================================================

<ore:compressed1xNetherrack>.add(<overloaded:compressed_netherrack>);
<ore:compressed2xNetherrack>.add(<overloaded:compressed_netherrack:1>);
<ore:compressed3xNetherrack>.add(<overloaded:compressed_netherrack:2>);
<ore:compressed4xNetherrack>.add(<overloaded:compressed_netherrack:3>);
<ore:compressed5xNetherrack>.add(<overloaded:compressed_netherrack:4>);
<ore:compressed6xNetherrack>.add(<overloaded:compressed_netherrack:5>);
<ore:compressed7xNetherrack>.add(<overloaded:compressed_netherrack:6>);
<ore:compressed8xNetherrack>.add(<overloaded:compressed_netherrack:7>);
<ore:compressed9xNetherrack>.add(<overloaded:compressed_netherrack:8>);
<ore:compressed10xNetherrack>.add(<overloaded:compressed_netherrack:9>);
<ore:compressed11xNetherrack>.add(<overloaded:compressed_netherrack:10>);
<ore:compressed12xNetherrack>.add(<overloaded:compressed_netherrack:11>);
<ore:compressed13xNetherrack>.add(<overloaded:compressed_netherrack:12>);
<ore:compressed14xNetherrack>.add(<overloaded:compressed_netherrack:13>);
<ore:compressed15xNetherrack>.add(<overloaded:compressed_netherrack:14>);
<ore:compressed16xNetherrack>.add(<overloaded:compressed_netherrack:15>);

# Compressed Stone ==========================================================================

<ore:compressed1xStone>.add(<overloaded:compressed_stone>);
<ore:compressed2xStone>.add(<overloaded:compressed_stone:1>);
<ore:compressed3xStone>.add(<overloaded:compressed_stone:2>);
<ore:compressed4xStone>.add(<overloaded:compressed_stone:3>);
<ore:compressed5xStone>.add(<overloaded:compressed_stone:4>);
<ore:compressed6xStone>.add(<overloaded:compressed_stone:5>);
<ore:compressed7xStone>.add(<overloaded:compressed_stone:6>);
<ore:compressed8xStone>.add(<overloaded:compressed_stone:7>);
<ore:compressed9xStone>.add(<overloaded:compressed_stone:8>);
<ore:compressed10xStone>.add(<overloaded:compressed_stone:9>);
<ore:compressed11xStone>.add(<overloaded:compressed_stone:10>);
<ore:compressed12xStone>.add(<overloaded:compressed_stone:11>);
<ore:compressed13xStone>.add(<overloaded:compressed_stone:12>);
<ore:compressed14xStone>.add(<overloaded:compressed_stone:13>);
<ore:compressed15xStone>.add(<overloaded:compressed_stone:14>);
<ore:compressed16xStone>.add(<overloaded:compressed_stone:15>);

# Compressed Obsidian ==========================================================================

<ore:compressed1xObsidian>.add(<overloaded:compressed_obsidian>);
<ore:compressed2xObsidian>.add(<overloaded:compressed_obsidian:1>);
<ore:compressed3xObsidian>.add(<overloaded:compressed_obsidian:2>);
<ore:compressed4xObsidian>.add(<overloaded:compressed_obsidian:3>);
<ore:compressed5xObsidian>.add(<overloaded:compressed_obsidian:4>);
<ore:compressed6xObsidian>.add(<overloaded:compressed_obsidian:5>);
<ore:compressed7xObsidian>.add(<overloaded:compressed_obsidian:6>);
<ore:compressed8xObsidian>.add(<overloaded:compressed_obsidian:7>);
<ore:compressed9xObsidian>.add(<overloaded:compressed_obsidian:8>);
<ore:compressed10xObsidian>.add(<overloaded:compressed_obsidian:9>);
<ore:compressed11xObsidian>.add(<overloaded:compressed_obsidian:10>);
<ore:compressed12xObsidian>.add(<overloaded:compressed_obsidian:11>);
<ore:compressed13xObsidian>.add(<overloaded:compressed_obsidian:12>);
<ore:compressed14xObsidian>.add(<overloaded:compressed_obsidian:13>);
<ore:compressed15xObsidian>.add(<overloaded:compressed_obsidian:14>);
<ore:compressed16xObsidian>.add(<overloaded:compressed_obsidian:15>);

# Compressed Basalt ==========================================================================

<ore:compressed1xBasalt>.add(<overloaded:compressed_basalt>);
<ore:compressed2xBasalt>.add(<overloaded:compressed_basalt:1>);
<ore:compressed3xBasalt>.add(<overloaded:compressed_basalt:2>);
<ore:compressed4xBasalt>.add(<overloaded:compressed_basalt:3>);
<ore:compressed5xBasalt>.add(<overloaded:compressed_basalt:4>);
<ore:compressed6xBasalt>.add(<overloaded:compressed_basalt:5>);
<ore:compressed7xBasalt>.add(<overloaded:compressed_basalt:6>);
<ore:compressed8xBasalt>.add(<overloaded:compressed_basalt:7>);
<ore:compressed9xBasalt>.add(<overloaded:compressed_basalt:8>);
<ore:compressed10xBasalt>.add(<overloaded:compressed_basalt:9>);
<ore:compressed11xBasalt>.add(<overloaded:compressed_basalt:10>);
<ore:compressed12xBasalt>.add(<overloaded:compressed_basalt:11>);
<ore:compressed13xBasalt>.add(<overloaded:compressed_basalt:12>);
<ore:compressed14xBasalt>.add(<overloaded:compressed_basalt:13>);
<ore:compressed15xBasalt>.add(<overloaded:compressed_basalt:14>);
<ore:compressed16xBasalt>.add(<overloaded:compressed_basalt:15>);

# Compressed Clay ==========================================================================

<ore:compressed1xClay>.add(<overloaded:compressed_clay>);
<ore:compressed2xClay>.add(<overloaded:compressed_clay:1>);
<ore:compressed3xClay>.add(<overloaded:compressed_clay:2>);
<ore:compressed4xClay>.add(<overloaded:compressed_clay:3>);
<ore:compressed5xClay>.add(<overloaded:compressed_clay:4>);
<ore:compressed6xClay>.add(<overloaded:compressed_clay:5>);
<ore:compressed7xClay>.add(<overloaded:compressed_clay:6>);
<ore:compressed8xClay>.add(<overloaded:compressed_clay:7>);
<ore:compressed9xClay>.add(<overloaded:compressed_clay:8>);
<ore:compressed10xClay>.add(<overloaded:compressed_clay:9>);
<ore:compressed11xClay>.add(<overloaded:compressed_clay:10>);
<ore:compressed12xClay>.add(<overloaded:compressed_clay:11>);
<ore:compressed13xClay>.add(<overloaded:compressed_clay:12>);
<ore:compressed14xClay>.add(<overloaded:compressed_clay:13>);
<ore:compressed15xClay>.add(<overloaded:compressed_clay:14>);
<ore:compressed16xClay>.add(<overloaded:compressed_clay:15>);

# Compressed Sandstone ==========================================================================

<ore:compressed1xSandstone>.add(<overloaded:compressed_sandstone>);
<ore:compressed2xSandstone>.add(<overloaded:compressed_sandstone:1>);
<ore:compressed3xSandstone>.add(<overloaded:compressed_sandstone:2>);
<ore:compressed4xSandstone>.add(<overloaded:compressed_sandstone:3>);
<ore:compressed5xSandstone>.add(<overloaded:compressed_sandstone:4>);
<ore:compressed6xSandstone>.add(<overloaded:compressed_sandstone:5>);
<ore:compressed7xSandstone>.add(<overloaded:compressed_sandstone:6>);
<ore:compressed8xSandstone>.add(<overloaded:compressed_sandstone:7>);
<ore:compressed9xSandstone>.add(<overloaded:compressed_sandstone:8>);
<ore:compressed10xSandstone>.add(<overloaded:compressed_sandstone:9>);
<ore:compressed11xSandstone>.add(<overloaded:compressed_sandstone:10>);
<ore:compressed12xSandstone>.add(<overloaded:compressed_sandstone:11>);
<ore:compressed13xSandstone>.add(<overloaded:compressed_sandstone:12>);
<ore:compressed14xSandstone>.add(<overloaded:compressed_sandstone:13>);
<ore:compressed15xSandstone>.add(<overloaded:compressed_sandstone:14>);
<ore:compressed16xSandstone>.add(<overloaded:compressed_sandstone:15>);

# Compressed Endstone ==========================================================================

<ore:compressed1xEndstone>.add(<overloaded:compressed_endstone>);
<ore:compressed2xEndstone>.add(<overloaded:compressed_endstone:1>);
<ore:compressed3xEndstone>.add(<overloaded:compressed_endstone:2>);
<ore:compressed4xEndstone>.add(<overloaded:compressed_endstone:3>);
<ore:compressed5xEndstone>.add(<overloaded:compressed_endstone:4>);
<ore:compressed6xEndstone>.add(<overloaded:compressed_endstone:5>);
<ore:compressed7xEndstone>.add(<overloaded:compressed_endstone:6>);
<ore:compressed8xEndstone>.add(<overloaded:compressed_endstone:7>);
<ore:compressed9xEndstone>.add(<overloaded:compressed_endstone:8>);
<ore:compressed10xEndstone>.add(<overloaded:compressed_endstone:9>);
<ore:compressed11xEndstone>.add(<overloaded:compressed_endstone:10>);
<ore:compressed12xEndstone>.add(<overloaded:compressed_endstone:11>);
<ore:compressed13xEndstone>.add(<overloaded:compressed_endstone:12>);
<ore:compressed14xEndstone>.add(<overloaded:compressed_endstone:13>);
<ore:compressed15xEndstone>.add(<overloaded:compressed_endstone:14>);
<ore:compressed16xEndstone>.add(<overloaded:compressed_endstone:15>);

# Compressed Tainted Soil ==========================================================================

<ore:compressed1xTaintedSoil>.add(<overloaded:compressed_tainted_soil>);
<ore:compressed2xTaintedSoil>.add(<overloaded:compressed_tainted_soil:1>);
<ore:compressed3xTaintedSoil>.add(<overloaded:compressed_tainted_soil:2>);
<ore:compressed4xTaintedSoil>.add(<overloaded:compressed_tainted_soil:3>);
<ore:compressed5xTaintedSoil>.add(<overloaded:compressed_tainted_soil:4>);
<ore:compressed6xTaintedSoil>.add(<overloaded:compressed_tainted_soil:5>);
<ore:compressed7xTaintedSoil>.add(<overloaded:compressed_tainted_soil:6>);
<ore:compressed8xTaintedSoil>.add(<overloaded:compressed_tainted_soil:7>);
<ore:compressed9xTaintedSoil>.add(<overloaded:compressed_tainted_soil:8>);
<ore:compressed10xTaintedSoil>.add(<overloaded:compressed_tainted_soil:9>);
<ore:compressed11xTaintedSoil>.add(<overloaded:compressed_tainted_soil:10>);
<ore:compressed12xTaintedSoil>.add(<overloaded:compressed_tainted_soil:11>);
<ore:compressed13xTaintedSoil>.add(<overloaded:compressed_tainted_soil:12>);
<ore:compressed14xTaintedSoil>.add(<overloaded:compressed_tainted_soil:13>);
<ore:compressed15xTaintedSoil>.add(<overloaded:compressed_tainted_soil:14>);
<ore:compressed16xTaintedSoil>.add(<overloaded:compressed_tainted_soil:15>);

// ======================================================================================================================================

static mods as string[] = ["contenttweaker", "gregtech", "astralsorcery", "devtech", "minecraft", "thermalfoundation", "enderio", "tconstruct", "tcomplement", "botania", "mekanism", "magneticraft", "embers", "thaumcraft", "abyssalcraft", "bloodmagic", "projectred-core", "actuallyadditions", "forestry", "careebees", "biomesoplenty", "libvulpes"];
static size as int = mods.length - 1;

function unify_oredicts (oredict as [IOreDictEntry]) {
    for ore in oredict {

        // Checks if Ore Dict is empty, true = stop
        if (ore.empty != true) { 

            // If more than 1 item in ore dict
            if (ore.itemArray.length > 1) { 
                unify(ore, 0);
            }
        }
    }
}

function unify (ore as IOreDictEntry, p as int) {
    var pos = p;
    var foundMod as bool = false;

    // For every item in the ore dict, check if one is from the <mod>
    for item in ore.itemArray { 

        // check any item is from current mod
        if (item.definition.owner == mods[pos]) {
            foundMod = true;
        }
    }
    
    // If it is from <mod>, remove everything except the item from <mod>, else try next mod until all mods are exhausted
    if (foundMod) {
        for item in ore.itemArray {

            if (item.definition.owner != mods[pos]) {
                ore.remove(item);
                JEI.removeAndHide(item);
                
                val actualItem = (item.damage == 0 && item.isDamageable)
                ? item.anyDamage()
                : item;
                furnace.remove(<*>, actualItem);
                furnace.remove(actualItem);
                recipes.remove(actualItem);
            }
        }
    } else if (pos < size) {
        pos += 1;
        unify(ore, pos);
    }
}

unify_oredicts(<ore:ore*>);
unify_oredicts(<ore:ingot*>);
unify_oredicts(<ore:block*>);
unify_oredicts(<ore:nugget*>);
unify_oredicts(<ore:plate*>);
unify_oredicts(<ore:dust*>);
unify_oredicts(<ore:gear*>);
unify_oredicts(<ore:stick*>);
unify_oredicts(<ore:crystal*>);
unify_oredicts(<ore:gem*>);
unify_oredicts(<ore:lightPlate*>);
unify_oredicts(<ore:heavyPlate*>);
unify_oredicts(<ore:food*>);

unify_oredicts(<ore:fuel*>);

for item in <ore:plate*> {
    recipes.remove(item);
}
