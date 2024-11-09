import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Casting as Casting;
import mods.tconstruct.Melting as Melting;
import mods.tconstruct.Alloy as Alloy;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.Overrides;

var osmium = <liquid:osmium>;
var aluminium = <liquid:aluminium>;
var refined_obsidian = <liquid:refined_obsidian>;
var refined_glowstone = <liquid:refined_glowstone>;
var osmiridium = <liquid:osmiridium>;
var tungsten = <liquid:tungsten>;
var steel = <liquid:steel>;
var iridium = <liquid:iridium>;

var TinkerSmeltingAndCastingFixes as ILiquidStack[IItemStack] = {

    //Osmium
    <mekanism:gastank>.withTag({tier: 0}): osmium,
    // <magneticraft:chunks:11>: osmium,
    // <magneticraft:rocky_chunks:11>: osmium,
    // <magneticraft:light_plates:11>: osmium,
    // <magneticraft:heavy_plates:11>: osmium,
    <tconstruct:shard>.withTag({Material: "osmium"}): osmium,
    <mekanism:nugget:1>: osmium,
    <mekanism:ingot:1>: osmium,
    <gregtech:meta_dust_tiny:75>: osmium,
    <gregtech:meta_dust_small:75>: osmium,
    <mekanism:basicblock>: osmium,
    <ore:ingotOsmium>.firstItem: osmium,
    <ore:nuggetOsmium>.firstItem: osmium,
    <ore:plateOsmium>.firstItem: osmium,
    <tconstruct:shard>.withTag({Material: "osmium"}): osmium,

    //Aluminium
    // <magneticraft:chunks:7>: aluminium,
    // <magneticraft:rocky_chunks:7>: aluminium,
    // <magneticraft:light_plates:7>: aluminium,
    // <magneticraft:heavy_plates:7>: aluminium,
    <gregtech:meta_dust_tiny:2>: aluminium,
    <gregtech:meta_dust_small:2>: aluminium,
    <gregtech:meta_ingot:2>: aluminium,
    <gregtech:meta_nugget:2>: aluminium,
    <gregtech:meta_plate:2>: aluminium,
    <gregtech:meta_block_compressed_0:2>: aluminium,

    //Refined Obsidian
    <tconstruct:shard>.withTag({Material: "refined_obsidian"}): refined_obsidian,
    <ore:ingotRefinedObsidian>.firstItem: refined_obsidian,
    <ore:blockRefinedObsidian>.firstItem: refined_obsidian,
    <ore:nuggetRefinedObsidian>.firstItem: refined_obsidian,
    <ore:plateRefinedObsidian>.firstItem: refined_obsidian,

    //Refined Glowstone
    <ore:blockRefinedGlowstone>.firstItem: refined_glowstone,
    <tconstruct:shard>.withTag({Material: "refined_glowstone"}): refined_glowstone,
    <ore:ingotRefinedGlowstone>.firstItem: refined_glowstone,
    <ore:nuggetRefinedGlowstone>.firstItem: refined_glowstone,

    //Osmiridium
    <tconstruct:shard>.withTag({Material: "osmiridium"}): osmiridium,
    <gregtech:meta_dust_tiny:344>: osmiridium,
    <gregtech:meta_dust_small:344>: osmiridium,
    <ore:ingotOsmiridium>.firstItem: osmiridium,
    <ore:nuggetOsmiridium>.firstItem: osmiridium,
    <ore:plateOsmiridium>.firstItem: osmiridium,
    <ore:blockOsmiridium>.firstItem: osmiridium,

    //Tungsten
    // <magneticraft:chunks:5>: tungsten,
    // <magneticraft:rocky_chunks:5>: tungsten,
    // <magneticraft:light_plates:5>: tungsten,
    // <magneticraft:heavy_plates:5>: tungsten,

    //Steel
    // <magneticraft:chunks:6>: steel,
    // <magneticraft:rocky_chunks:6>: steel,
    // <magneticraft:light_plates:6>: steel,
    // <magneticraft:heavy_plates:6>: steel,
    <mekanism:nugget:4>: steel,
    <mekanism:ingot:4>: steel,
    <gregtech:meta_dust_tiny:324>: steel,
    <gregtech:meta_dust_small:324>: steel,
    <ore:blockSteel>.firstItem: steel,
    <ore:plateSteel>.firstItem: steel,

    //Iridium
    <tconstruct:shard>.withTag({Material: "iridium"}): iridium,
    <gregtech:meta_dust_tiny:50>: iridium,
    <gregtech:meta_dust_small:50>: iridium,


    };
for ILiquidStack, IItemStack in TinkerSmeltingAndCastingFixes {
        Casting.removeTableRecipe(ILiquidStack, IItemStack);
        Casting.removeBasinRecipe(ILiquidStack, IItemStack);
        Melting.removeRecipe(IItemStack, ILiquidStack);
}

//Removing also Undesired Alloys from the Smeltery
Alloy.removeRecipe(osmiridium);

//Removing Aluminium out of the Melter and High Oven
mods.tcomplement.Overrides.removeRecipe(aluminium, <ore:oreAluminium>.firstItem);
HighOven.removeMeltingOverride(aluminium);
