import mods.embers.Alchemy as Alchemy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//For the Gold Seed is about 55 Seconds, or aprox: 1100 ticks (Recommended for Automation 1150) to get the amount of ticks, double to amount of seconds and add a 0.

//Wireless Fluid Transmitter from Cyclic
recipes.remove(<cyclicmagic:cable_wireless_fluid>);
Alchemy.add(<cyclicmagic:cable_wireless_fluid>, [<randomthings:spectreilluminator>,<ore:lightPlatePolyvinylChloride>,<ore:lightPlatePolyvinylChloride>,<forestry:thermionic_tubes:11>,<forestry:thermionic_tubes:11>], {"silver":48 to 64,"dawnstone":48 to 64});

//Twilight Crystal
Alchemy.add(<contenttweaker:twilight_crystal>, [<extrautils2:suncrystal>,<embers:isolated_materia>,<embers:glimmer_shard>,<ore:gemScarabBlue>,<contenttweaker:alchemical_nautilus>], {"copper":13 to 26, "lead":13 to 26, "silver":13 to 26, "dawnstone":13 to 26});

//Isolated Materia
Alchemy.remove(<embers:isolated_materia>);
Alchemy.add(<embers:isolated_materia>*4, [<ore:ballCrudeSteel>,<ore:dustClay>,<ore:dustAndesite>,<ore:dustNetherQuartz>,<ore:dustSodalite>], {"iron":4 to 16, "silver":4 to 16});

//Glimmer Crystal
Alchemy.remove(<embers:glimmer_shard>);
Alchemy.add(<embers:glimmer_shard>, [<ore:ingotRefinedGlowstone>,<ore:dustSulfur>,<ore:dustSaltpeter>,<embers:crystal_ember>,<embers:crystal_ember>], {"dawnstone":32 to 64});

var CrystalSeeds as IItemStack[IIngredient] = {
    <ore:ingotIron>.firstItem: <embers:seed_iron>,
    <ore:ingotGold>.firstItem: <embers:seed_gold>,
    <ore:ingotCopper>.firstItem: <embers:seed_copper>,
    <ore:ingotSilver>.firstItem: <embers:seed_silver>,
    <ore:ingotLead>.firstItem: <embers:seed_lead>,
    <ore:ingotDawnstone>.firstItem: <embers:seed_dawnstone>
    };
for IItemStack, IIngredient in CrystalSeeds {
        Alchemy.remove(IIngredient);
        Alchemy.add(IIngredient, [<ore:crystalPureNetherQuartz>,IItemStack,IItemStack,<embers:shard_ember>,<embers:shard_ember>], {"iron":2 to 16});
}

//Adhesive
Alchemy.remove(<embers:adhesive>);
Alchemy.add(<embers:adhesive>*4, [<ore:slimeball>,<ore:dustBone>,<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "glue", Amount: 1000}}),<pyrotech:material:3>,<ore:dustBorax>], {"iron":12 to 18});

//Archaic Brick
Alchemy.remove(<embers:archaic_brick>);
Alchemy.add(<embers:archaic_brick>*4, [<embers:brick_caminite>,<ore:dyeSoulMachine>,<ore:dyeSoulMachine>,<quark:soul_powder>,<embers:seed_lead>], {"iron":2 to 8, "lead":2 to 8});
