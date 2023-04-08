import crafttweaker.item.IItemStack;
import mods.astralsorcery.StarlightInfusion as StarlightInfusion;
import mods.thaumcraft.Crucible as TCrucible;
import mods.astralsorcery.Altar as AstralAltar;
import mods.thaumcraft.ArcaneWorkbench;
import mods.chisel.Carving as Carving;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.astralsorcery.Utils;
import mods.astralsorcery.LightTransmutation;
import crafttweaker.item.IIngredient;
import mods.botania.PureDaisy as PureDaisy;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Astral Script                                                                                                                    //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function addAstralSorceryIrridescentAltarRecipe(name as string, output as IItemStack, starlight as int, i as IIngredient[][], additionals as IIngredient[]) {

var recipe_list = [i[1][1], i[1][2], i[1][3], i[2][1], i[2][2], i[2][3], i[3][1], i[3][2], i[3][3], i[0][0], i[0][4], i[4][0], i[4][4], i[0][1], i[0][3], i[1][0], i[1][4], i[3][0], i[3][4], i[4][1], i[4][3], i[0][2], i[2][0], i[2][4], i[4][2]] as IIngredient[];
for item in additionals {
	recipe_list += item;
}

mods.astralsorcery.Altar.removeAltarRecipe(name);
mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starlight, 100, recipe_list);

}


//Rock Crystal Ore
PureDaisy.addRecipe(<contenttweaker:nacre_block>, <astralsorcery:blockcustomore>);

# Tooltips ==================================

#infused wood tooltip
<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Crafted in-world by dropping any log into liquid Starlight."));

#perk crystal tooltips
<astralsorcery:itemperkgem>.addTooltip(format.aqua("Crafted in-world with glowstone dust and a rockcrystal in liquid Starlight."));
<astralsorcery:itemperkgem:1>.addTooltip(format.aqua("Crafted in-world with glowstone dust and a rockcrystal in liquid Starlight."));
<astralsorcery:itemperkgem:2>.addTooltip(format.aqua("Crafted in-world with glowstone dust and a rockcrystal in liquid Starlight."));

# Aquamarine is now made with Sapphire
autoclave.recipeBuilder()
    .inputs(<ore:gemSapphire> * 1)
    .fluidInputs([<liquid:liquid_mana> * 1000])
    .chancedOutput(<ore:gemAquamarine>.firstItem, 5000, 500)
    .duration(2000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:gemSapphire> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(<ore:gemAquamarine>.firstItem * 1)
    .duration(100)
    .EUt(4)
.buildAndRegister();

//Resonating Gem is now made with Botania
Agglomeration.addRecipe(<astralsorcery:itemcraftingcomponent:4>, [<ore:gemAquamarine>, <ore:dustAstralStarmetal>.firstItem, <botania:manaresource:1>]);

#Vibrant infused via Nacre in an Autoclave ============================
autoclave.recipeBuilder()
    .inputs(<astralsorcery:blockinfusedwood> * 1)
    .fluidInputs([<liquid:nacre> * 1000])
    .outputs(<astralsorcery:blockinfusedwood:6> * 1)
    .duration(260)
    .EUt(80)
.buildAndRegister();

# Starmetal Fixes ===================================================================================

furnace.remove(<ore:ingotAstralStarmetal>.firstItem);
<astralsorcery:blockcustomore:1>.displayName = "Blessed Starmetal Ore";
<astraladditions:block_starmetal>.displayName = "Blessed Starmetal Block";
<astralsorcery:itemcraftingcomponent:1>.displayName = "Blessed Starmetal Ingot";
<astralsorcery:itemcraftingcomponent:2>.displayName = "Blessed Starmetal Dust";

# Marble Adjustments ================================================================================

// mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_raw");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_chiseled");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_pillar");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_bricks");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_engraved");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_arch");
// mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_runed");

for i in 1 to 7 {

    recipes.remove(<astralsorcery:blockmarble>);
    recipes.remove(<astralsorcery:blockmarble>.withDamage(i));
	<ore:blockMarble>.remove(<astralsorcery:blockmarble>.withDamage(i));
	<ore:stoneMarble>.remove(<astralsorcery:blockmarble>.withDamage(i));
	mods.chisel.Carving.removeVariation("marble", <astralsorcery:blockmarble>.withDamage(i));

    <ore:blockRefinedMarble>.add(<astralsorcery:blockmarble>.withDamage(i));
	<ore:stoneRefinedMarble>.add(<astralsorcery:blockmarble>.withDamage(i));
	mods.chisel.Carving.addVariation("refined_marble", <astralsorcery:blockmarble>.withDamage(i));
}

<ore:blockMarble>.remove(<astralsorcery:blockmarble>);
<ore:stoneMarble>.remove(<astralsorcery:blockmarble>);

<ore:blockRefinedMarble>.add(<astralsorcery:blockmarble>);
<ore:stoneRefinedMarble>.add(<astralsorcery:blockmarble>);

mods.chisel.Carving.removeVariation("marble", <astralsorcery:blockmarble>);
mods.chisel.Carving.addVariation("refined_marble", <astralsorcery:blockmarble>);

<astralsorcery:blockmarblestairs>.displayName = "Blessed Marble Stairs";
<astralsorcery:blockmarble:1>.displayName = "Blessed Marble Bricks";
<astralsorcery:blockmarbleslab>.displayName = "Blessed Marble Slab";
<astralsorcery:blockmarble:3>.displayName = "Blessed Marble Arch";
<astralsorcery:blockmarble:6>.displayName = "Blessed Runed Marble";
<astralsorcery:blockmarble:4>.displayName = "Blessed Chiseled Marble";
<astralsorcery:blockmarble>.displayName = "Blessed Marble";
<astralsorcery:blockmarble:2>.displayName = "Blessed Marble Pillar";
<astralsorcery:blockmarble:5>.displayName = "Blessed Engraved Marble";

autoclave.recipeBuilder()
    .inputs(<ore:stoneMarble>)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 250])
    .outputs(<astralsorcery:blockmarble>)
    .duration(120)
    .EUt(150)
.buildAndRegister();

# Sooty Marble Adjustments ==================================================================================
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_chiseled");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_pillar");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_bricks");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_engraved");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_arch");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_runed");

for i in 0 to 7 {

    recipes.remove(<astralsorcery:blockblackmarble>.withDamage(i));

    <ore:blockSootyMarble>.add(<astralsorcery:blockblackmarble>.withDamage(i));
	<ore:stoneSootyMarble>.add(<astralsorcery:blockblackmarble>.withDamage(i));

    chemical_bath.recipeBuilder()
        .inputs(<astralsorcery:blockmarble>.withDamage(i))
        .fluidInputs([<liquid:dark_fluid> * 288])
        .outputs(<astralsorcery:blockblackmarble>.withDamage(i))
        .duration(200)
        .EUt(200)
    .buildAndRegister();

}

# [Luminous Crafting Table] from [Condensed Praecantatio Vis Crystal][+8]
recipes.remove(<astralsorcery:blockaltar>);
ArcaneWorkbench.registerShapedRecipe("astralsorcery:blockaltar", "FIRSTSTEPS@2", 30, [<aspect:ordo> * 10, <aspect:perditio> * 10, <aspect:aer> * 10], <astralsorcery:blockaltar>, 
[[<astralsorcery:blockmarble>, <contenttweaker:empoweredvoidplate>, <astralsorcery:blockmarble>], 
[<embers:archaic_brick>, <contenttweaker:condensed_vis_crystal_praecantatio>, <embers:archaic_brick>],
[<embers:archaic_brick>, <ore:craftingTableWood>, <embers:archaic_brick>]]);

//Lightwell
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("pluma:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 800, 300, [
<astralsorcery:blockmarble:6>, null, <astralsorcery:blockmarble:6>,
<astralsorcery:blockmarble:4>, <astralsorcery:itemrockcrystalsimple>.withEmptyTag(), <astralsorcery:blockmarble:4>,
<ore:plateAquamarine>, <astralsorcery:blockmarble:6>, <ore:plateAquamarine>]);

//Cave Illuminator
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("pluma:shaped/internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1000, 500, [
<astralsorcery:blockmarble:6>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:6>,
<ore:lensAquamarine>, <enderio:block_holier_fog>, <ore:lensAquamarine>,
<astralsorcery:blockmarble:6>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:6>]);


//Containment Challice
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");

mods.astralsorcery.Altar.addTraitAltarRecipe("pluma:shaped/internal/altar/chalice", <astralsorcery:blockchalice>, 3000, 100,
[<ore:ingotAstralStarmetal>,<botania:altar:6>,<ore:ingotAstralStarmetal>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,
null,null,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,
<ore:ingotAstralStarmetal>,<ore:ingotAstralStarmetal>,null,null,null,null,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,
<ore:blockRefinedGlowstone>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockritualpedestal>]);

//Resonanting Wand (Vicio)

addAstralSorceryIrridescentAltarRecipe("astralsorcery:shaped/internal/altar/wand/vicio", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}), 3000, 
[[null,null,<minecraft:tipped_arrow>.withTag({Potion: "enderio:long_floating"}), null, null],
[<ore:gemAquamarine>,null,<ore:sugarcane>, null, <ore:gemAquamarine>],
[<ore:feather>,null,<astralsorcery:itemwand>.withTag({astralsorcery: {}}), null, <ore:feather>],
[<ore:gemAquamarine>,null,<ore:sugarcane>, null, <ore:gemAquamarine>],
[null,null,<minecraft:tipped_arrow>.withTag({Potion: "enderio:long_floating"}), null, null]], 
[<ore:feyFeather>, <ore:feyFeather>, <ore:feyFeather>, <ore:feyFeather>]);

//Illumination Powder
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder", <astralsorcery:itemusabledust> * 4, 150, 100,
[null,<randomthings:ingredient:5>,null,
<randomthings:ingredient:5>,<ore:dustAquamarine>,<randomthings:ingredient:5>,
null,<randomthings:ingredient:5>,null]);

// Starlight Crafting Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 850, 100,
[<astralsorcery:blockmarble:2>,<astralsorcery:itemrockcrystalsimple>,<astralsorcery:blockmarble:2>,
<astralsorcery:blockmarble:4>,<ore:heavyPlateTerrasteel>,<astralsorcery:blockmarble:4>,
<astralsorcery:blockmarble:2>,<liquid:astralsorcery.liquidstarlight>,<astralsorcery:blockmarble:2>]);


