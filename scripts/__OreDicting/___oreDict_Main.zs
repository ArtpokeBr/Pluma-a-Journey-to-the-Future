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

//Mirion
<ore:gearMirion>.add(<contenttweaker:miriongear>);
<ore:plateMirion>.add(<contenttweaker:mirionplate>);

//Alumite
<ore:gearAlumite>.add(<contenttweaker:alumitegear>);
<ore:plateAlumite>.add(<contenttweaker:alumiteplate>);

//Osgloglas
<ore:gearOsgloglas>.add(<contenttweaker:osgloglasgear>);
<ore:plateOsgloglas>.add(<contenttweaker:osgloglasplate>);

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

// ======================================================================================================================================

static mods as string[] = ["contenttweaker", "astraladditions", "astralsorcery", "gregtech", "devtech", "minecraft", "thermalfoundation", "enderio", "tconstruct", "tcomplement", "botania", "mekanism", "magneticraft", "embers", "thaumcraft", "abyssalcraft", "bloodmagic", "projectred-core", "actuallyadditions", "forestry", "careebees", "biomesoplenty", "libvulpes"];
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
