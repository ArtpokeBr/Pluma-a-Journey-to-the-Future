import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

var ForceRecipeRemoval as IItemStack[] = [
<twilightforest:steeleaf_chestplate>,
<twilightforest:steeleaf_leggings>,
<twilightforest:steeleaf_boots>,
<twilightforest:ironwood_chestplate>,
<twilightforest:ironwood_leggings>,
<twilightforest:ironwood_boots>

    ];
for item in ForceRecipeRemoval {
	recipes.remove(item);
}

var Helmets as IItemStack[IIngredient] = {
    <ore:plateFiery>.firstItem: <twilightforest:fiery_helmet>,
    <ore:plateIron>.firstItem: <minecraft:iron_helmet>,
    <ore:plateDiamond>.firstItem: <minecraft:diamond_helmet>,
    <ore:plateGold>.firstItem: <minecraft:golden_helmet>,
    <ore:plateEmerald>.firstItem: <actuallyadditions:item_helm_emerald>,
    <ore:plateObsidian>.firstItem: <actuallyadditions:item_helm_obsidian>,
    <ore:plateManasteel>.firstItem: <botania:manasteelhelm>,
    <ore:plateTerrasteel>.firstItem: <botania:terrasteelhelm>,
    <ore:plateElementium>.firstItem: <botania:elementiumhelm>,
    <ceramics:unfired_clay:9>: <ceramics:clay_helmet>,
    <ore:plateThaumium>.firstItem: <thaumcraft:thaumium_helm>,
    <ore:ingotVoid>.firstItem: <thaumcraft:void_helm>,
    <ore:plateIronwood>.firstItem: <twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6}]}),
    <ore:ingotSteeleaf>.firstItem: <twilightforest:steeleaf_helmet>.withTag({ench: [{lvl: 2 as short, id: 4}]}),
    <ore:plateKnightmetal>.firstItem: <twilightforest:knightmetal_helmet>,
    <twilightforest:alpha_fur>: <twilightforest:yeti_helmet>.withTag({ench: [{lvl: 2 as short, id: 0}]}),
    <ore:plateCopper>.firstItem: <thermalfoundation:armor.helmet_copper>,
    <ore:plateTin>.firstItem: <thermalfoundation:armor.helmet_tin>,
    <ore:plateSilver>.firstItem: <thermalfoundation:armor.helmet_silver>,
    <ore:plateLead>.firstItem: <thermalfoundation:armor.helmet_lead>,
    <ore:plateNickel>.firstItem: <thermalfoundation:armor.helmet_nickel>,
    <ore:platePlatinum>.firstItem: <thermalfoundation:armor.helmet_platinum>,
    <ore:plateSteel>.firstItem: <thermalfoundation:armor.helmet_steel>,
    <ore:plateElectrum>.firstItem: <thermalfoundation:armor.helmet_electrum>,
    <ore:plateInvar>.firstItem: <thermalfoundation:armor.helmet_invar>,
    <ore:plateBronze>.firstItem: <thermalfoundation:armor.helmet_bronze>,
    <ore:plateConstantan>.firstItem: <thermalfoundation:armor.helmet_constantan>,
    <ore:ingotManyullyn>.firstItem: <tcomplement:manyullyn_helmet>,
    <ore:ingotKnightslime>.firstItem: <tcomplement:knightslime_helmet>,
    <ore:ingotEthaxium>.firstItem: <abyssalcraft:ethaxiumhelmet>,
    <ore:ingotAbyssalnite>.firstItem: <abyssalcraft:ahelmet>,
    <ore:ingotLiquifiedCoralium>.firstItem: <abyssalcraft:corhelmet>,
    <ore:ingotDreadium>.firstItem: <abyssalcraft:dreadiumhelmet>,
    <ore:furArctic>.firstItem: <twilightforest:arctic_helmet>,
    <ore:plateSteel>.firstItem: <railcraft:armor_helmet_steel>,
    <quark:chain>: <minecraft:chainmail_helmet>,
    <ore:plateHoneySteel>.firstItem: <careerbees:bee.armor.head>,
    <ore:plateDarkSteel>.firstItem: <enderio:item_dark_steel_helmet>
    };
for IItemStack, IIngredient in Helmets {
        recipes.remove(IIngredient);

        RecipeBuilder.get("blacksmith")
        .setShaped([
            [IItemStack, IItemStack, IItemStack],
            [IItemStack, null, IItemStack]])
        .setFluid(<liquid:lava> * 500)
        .addTool(<ore:gtceHardHammers>, 10)
        .addOutput(IIngredient)
        .create();

}

var Chestplates as IItemStack[IIngredient] = {
    <ore:plateFiery>.firstItem: <twilightforest:fiery_chestplate>,
    <ore:plateIron>.firstItem: <minecraft:iron_chestplate>,
    <ore:plateDiamond>.firstItem: <minecraft:diamond_chestplate>,
    <ore:plateGold>.firstItem: <minecraft:golden_chestplate>,
    <ore:plateEmerald>.firstItem: <actuallyadditions:item_chest_emerald>,
    <ore:plateObsidian>.firstItem: <actuallyadditions:item_chest_obsidian>,
    <ore:plateManasteel>.firstItem: <botania:manasteelchest>,
    <ore:plateTerrasteel>.firstItem: <botania:terrasteelchest>,
    <ore:plateElementium>.firstItem: <botania:elementiumchest>,
    <ceramics:unfired_clay:9>: <ceramics:clay_chestplate>,
    <ore:plateThaumium>.firstItem: <thaumcraft:thaumium_chest>,
    <ore:ingotVoid>.firstItem: <thaumcraft:void_chest>,
    <ore:plateIronwood>.firstItem: <twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 6}]}),
    <ore:ingotSteeleaf>.firstItem: <twilightforest:steeleaf_chestplate>.withTag({ench: [{lvl: 2 as short, id: 4}]}),
    <ore:plateKnightmetal>.firstItem: <twilightforest:knightmetal_chestplate>,
    <twilightforest:alpha_fur>: <twilightforest:yeti_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0}]}),
    <ore:plateCopper>.firstItem: <thermalfoundation:armor.plate_copper>,
    <ore:plateTin>.firstItem: <thermalfoundation:armor.plate_tin>,
    <ore:plateSilver>.firstItem: <thermalfoundation:armor.plate_silver>,
    <ore:plateLead>.firstItem: <thermalfoundation:armor.plate_lead>,
    <ore:plateNickel>.firstItem: <thermalfoundation:armor.plate_nickel>,
    <ore:platePlatinum>.firstItem: <thermalfoundation:armor.plate_platinum>,
    <ore:plateSteel>.firstItem: <thermalfoundation:armor.plate_steel>,
    <ore:plateElectrum>.firstItem: <thermalfoundation:armor.plate_electrum>,
    <ore:plateInvar>.firstItem: <thermalfoundation:armor.plate_invar>,
    <ore:plateBronze>.firstItem: <thermalfoundation:armor.plate_bronze>,
    <ore:plateConstantan>.firstItem: <thermalfoundation:armor.plate_constantan>,
    <ore:ingotManyullyn>.firstItem: <tcomplement:manyullyn_chestplate>,
    <ore:ingotKnightslime>.firstItem: <tcomplement:knightslime_chestplate>,
    <ore:ingotEthaxium>.firstItem: <abyssalcraft:ethaxiumplate>,
    <ore:ingotAbyssalnite>.firstItem: <abyssalcraft:aplate>,
    <ore:ingotLiquifiedCoralium>.firstItem: <abyssalcraft:corplate>,
    <ore:ingotDreadium>.firstItem: <abyssalcraft:dreadiumplate>,
    <ore:furArctic>.firstItem: <twilightforest:arctic_chestplate>,
    <ore:plateSteel>.firstItem: <railcraft:armor_chestplate_steel>,
    <quark:chain>: <minecraft:chainmail_chestplate>,
    <ore:plateHoneySteel>.firstItem: <careerbees:bee.armor.chest>,
    <ore:plateDarkSteel>.firstItem: <enderio:item_dark_steel_chestplate>

    };
for IItemStack, IIngredient in Chestplates {
        recipes.remove(IIngredient);

        RecipeBuilder.get("blacksmith")
        .setShaped([
            [IItemStack, null, IItemStack],
            [IItemStack, IItemStack, IItemStack],
            [IItemStack, IItemStack, IItemStack]])
        .setFluid(<liquid:lava> * 750)
        .addTool(<ore:gtceHardHammers>, 20)
        .addOutput(IIngredient)
        .create();
}

var Leggings as IItemStack[IIngredient] = {
    <ore:plateFiery>.firstItem: <twilightforest:fiery_leggings>,
    <ore:plateIron>.firstItem: <minecraft:iron_leggings>,
    <ore:plateDiamond>.firstItem: <minecraft:diamond_leggings>,
    <ore:plateGold>.firstItem: <minecraft:golden_leggings>,
    <ore:plateEmerald>.firstItem: <actuallyadditions:item_pants_emerald>,
    <ore:plateObsidian>.firstItem: <actuallyadditions:item_pants_obsidian>,
    <ore:plateManasteel>.firstItem: <botania:manasteellegs>,
    <ore:plateTerrasteel>.firstItem: <botania:terrasteellegs>,
    <ore:plateElementium>.firstItem: <botania:elementiumlegs>,
    <ceramics:unfired_clay:9>: <ceramics:clay_leggings>,
    <ore:plateThaumium>.firstItem: <thaumcraft:thaumium_legs>,
    <ore:ingotVoid>.firstItem: <thaumcraft:void_legs>,
    <ore:plateIronwood>.firstItem: <twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 6}]}),
    <ore:ingotSteeleaf>.firstItem: <twilightforest:steeleaf_leggings>.withTag({ench: [{lvl: 2 as short, id: 4}]}),
    <ore:plateKnightmetal>.firstItem: <twilightforest:knightmetal_leggings>,
    <twilightforest:alpha_fur>: <twilightforest:yeti_leggings>.withTag({ench: [{lvl: 2 as short, id: 0}]}),
    <ore:plateCopper>.firstItem: <thermalfoundation:armor.legs_copper>,
    <ore:plateTin>.firstItem: <thermalfoundation:armor.legs_tin>,
    <ore:plateSilver>.firstItem: <thermalfoundation:armor.legs_silver>,
    <ore:plateLead>.firstItem: <thermalfoundation:armor.legs_lead>,
    <ore:plateNickel>.firstItem: <thermalfoundation:armor.legs_nickel>,
    <ore:platePlatinum>.firstItem: <thermalfoundation:armor.legs_platinum>,
    <ore:plateSteel>.firstItem: <thermalfoundation:armor.legs_steel>,
    <ore:plateElectrum>.firstItem: <thermalfoundation:armor.legs_electrum>,
    <ore:plateInvar>.firstItem: <thermalfoundation:armor.legs_invar>,
    <ore:plateBronze>.firstItem: <thermalfoundation:armor.legs_bronze>,
    <ore:plateConstantan>.firstItem: <thermalfoundation:armor.legs_constantan>,
    <ore:ingotManyullyn>.firstItem: <tcomplement:manyullyn_leggings>,
    <ore:ingotKnightslime>.firstItem: <tcomplement:knightslime_leggings>,
    <ore:ingotEthaxium>.firstItem: <abyssalcraft:ethaxiumlegs>,
    <ore:ingotAbyssalnite>.firstItem: <abyssalcraft:alegs>,
    <ore:ingotLiquifiedCoralium>.firstItem: <abyssalcraft:corlegs>,
    <ore:ingotDreadium>.firstItem: <abyssalcraft:dreadiumlegs>,
    <ore:furArctic>.firstItem: <twilightforest:arctic_leggings>,
    <ore:plateSteel>.firstItem: <railcraft:armor_leggings_steel>,
    <quark:chain>: <minecraft:chainmail_leggings>,
    <ore:plateHoneySteel>.firstItem: <careerbees:bee.armor.legs>,
    <ore:plateDarkSteel>.firstItem: <enderio:item_dark_steel_leggings>

    };
for IItemStack, IIngredient in Leggings {
        recipes.remove(IIngredient);

        RecipeBuilder.get("blacksmith")
        .setShaped([
            [IItemStack, IItemStack, IItemStack],
            [IItemStack, null, IItemStack],
            [IItemStack, null, IItemStack]])
        .setFluid(<liquid:lava> * 750)
        .addTool(<ore:gtceHardHammers>, 15)
        .addOutput(IIngredient)
        .create();

}

var Boots as IItemStack[IIngredient] = {
    <ore:plateFiery>.firstItem: <twilightforest:fiery_boots>,
    <ore:plateIron>.firstItem: <minecraft:iron_boots>,
    <ore:plateDiamond>.firstItem: <minecraft:diamond_boots>,
    <ore:plateGold>.firstItem: <minecraft:golden_boots>,
    <ore:plateEmerald>.firstItem: <actuallyadditions:item_boots_emerald>,
    <ore:plateObsidian>.firstItem: <actuallyadditions:item_boots_obsidian>,
    <ore:plateManasteel>.firstItem: <botania:manasteelboots>,
    <ore:plateTerrasteel>.firstItem: <botania:terrasteelboots>,
    <ore:plateElementium>.firstItem: <botania:elementiumboots>,
    <ceramics:unfired_clay:9>: <ceramics:clay_boots>,
    <ore:plateThaumium>.firstItem: <thaumcraft:thaumium_boots>,
    <ore:ingotVoid>.firstItem: <thaumcraft:void_boots>,
    <ore:plateIronwood>.firstItem: <twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 6}]}),
    <ore:ingotSteeleaf>.firstItem: <twilightforest:steeleaf_boots>.withTag({ench: [{lvl: 2 as short, id: 4}]}),
    <ore:plateKnightmetal>.firstItem: <twilightforest:knightmetal_boots>,
    <twilightforest:alpha_fur>: <twilightforest:yeti_boots>.withTag({ench: [{lvl: 2 as short, id: 0}]}),
    <ore:plateCopper>.firstItem: <thermalfoundation:armor.boots_copper>,
    <ore:plateTin>.firstItem: <thermalfoundation:armor.boots_tin>,
    <ore:plateSilver>.firstItem: <thermalfoundation:armor.boots_silver>,
    <ore:plateLead>.firstItem: <thermalfoundation:armor.boots_lead>,
    <ore:plateNickel>.firstItem: <thermalfoundation:armor.boots_nickel>,
    <ore:platePlatinum>.firstItem: <thermalfoundation:armor.boots_platinum>,
    <ore:plateSteel>.firstItem: <thermalfoundation:armor.boots_steel>,
    <ore:plateElectrum>.firstItem: <thermalfoundation:armor.boots_electrum>,
    <ore:plateInvar>.firstItem: <thermalfoundation:armor.boots_invar>,
    <ore:plateBronze>.firstItem: <thermalfoundation:armor.boots_bronze>,
    <ore:plateConstantan>.firstItem: <thermalfoundation:armor.boots_constantan>,
    <ore:ingotManyullyn>.firstItem: <tcomplement:manyullyn_boots>,
    <ore:ingotKnightslime>.firstItem: <tcomplement:knightslime_boots>,
    <ore:ingotEthaxium>.firstItem: <abyssalcraft:ethaxiumboots>,
    <ore:ingotAbyssalnite>.firstItem: <abyssalcraft:aboots>,
    <ore:ingotLiquifiedCoralium>.firstItem: <abyssalcraft:corboots>,
    <ore:ingotDreadium>.firstItem: <abyssalcraft:dreadiumboots>,
    <ore:furArctic>.firstItem: <twilightforest:arctic_boots>,
    <ore:plateSteel>.firstItem: <railcraft:armor_boots_steel>,
    <quark:chain>: <minecraft:chainmail_boots>,
    <ore:plateHoneySteel>.firstItem: <careerbees:bee.armor.feet>,
    <ore:plateDarkSteel>.firstItem: <enderio:item_dark_steel_boots>

    };
for IItemStack, IIngredient in Boots {
        recipes.remove(IIngredient);

        RecipeBuilder.get("blacksmith")
        .setShaped([
            [null, null, null],
            [IItemStack, null, IItemStack],
            [IItemStack, null, IItemStack]])
        .setFluid(<liquid:lava> * 500)
        .addTool(<ore:gtceHardHammers>, 10)
        .addOutput(IIngredient)
        .create();

}