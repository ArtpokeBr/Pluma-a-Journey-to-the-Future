import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Fences Rework                                                                                                                    //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var WoodFences as IItemStack[IIngredient] = {
    <minecraft:planks>: <minecraft:fence>,
    <minecraft:planks:1>: <minecraft:spruce_fence>,
    <minecraft:planks:2>: <minecraft:birch_fence>,
    <minecraft:planks:3>: <minecraft:jungle_fence>,
    <minecraft:planks:4>: <minecraft:acacia_fence>,
    <minecraft:planks:5>: <minecraft:dark_oak_fence>,

    // <biomesoplenty:planks_0>: <biomesoplenty:sacred_oak_fence>,
    // <biomesoplenty:planks_0:1>: <biomesoplenty:cherry_fence>,
    // <biomesoplenty:planks_0:2>: <biomesoplenty:umbran_fence>,
    // <biomesoplenty:planks_0:3>: <biomesoplenty:fir_fence>,
    // <biomesoplenty:planks_0:4>: <biomesoplenty:ethereal_fence>,
    // <biomesoplenty:planks_0:5>: <biomesoplenty:magic_fence>,
    // <biomesoplenty:planks_0:6>: <biomesoplenty:mangrove_fence>,
    // <biomesoplenty:planks_0:7>: <biomesoplenty:palm_fence>,
    // <biomesoplenty:planks_0:8>: <biomesoplenty:redwood_fence>,
    // <biomesoplenty:planks_0:9>: <biomesoplenty:willow_fence>,
    // <biomesoplenty:planks_0:10>: <biomesoplenty:pine_fence>,
    // <biomesoplenty:planks_0:11>: <biomesoplenty:hellbark_fence>,
    // <biomesoplenty:planks_0:12>: <biomesoplenty:jacaranda_fence>,
    // <biomesoplenty:planks_0:13>: <biomesoplenty:mahogany_fence>,
    // <biomesoplenty:planks_0:14>: <biomesoplenty:ebony_fence>,
    // <biomesoplenty:planks_0:15>: <biomesoplenty:eucalyptus_fence>,

    // <forestry:planks.0>: <forestry:fences.larch>,
    // <forestry:planks.0:1>: <forestry:fences.teak>,
    // <forestry:planks.0:2>: <forestry:fences.acacia>,
    // <forestry:planks.0:3>: <forestry:fences.lime>,
    // <forestry:planks.0:4>: <forestry:fences.chestnut>,
    // <forestry:planks.0:5>: <forestry:fences.wenge>,
    // <forestry:planks.0:6>: <forestry:fences.baobab>,
    // <forestry:planks.0:7>: <forestry:fences.sequoia>,
    // <forestry:planks.0:8>: <forestry:fences.kapok>,
    // <forestry:planks.0:9>: <forestry:fences.ebony>,
    // <forestry:planks.0:10>: <forestry:fences.mahogany>,
    // <forestry:planks.0:11>: <forestry:fences.balsa>,
    // <forestry:planks.0:12>: <forestry:fences.willow>,
    // <forestry:planks.0:13>: <forestry:fences.walnut>,
    // <forestry:planks.0:14>: <forestry:fences.greenheart>,
    // <forestry:planks.0:15>: <forestry:fences.cherry>,
    // <forestry:planks.1>: <forestry:fences.mahoe>,
    // <forestry:planks.1:1>: <forestry:fences.poplar>,
    // <forestry:planks.1:2>: <forestry:fences.palm>,
    // <forestry:planks.1:3>: <forestry:fences.papaya>,
    // <forestry:planks.1:4>: <forestry:fences.pine>,
    // <forestry:planks.1:5>: <forestry:fences.plum>,
    // <forestry:planks.1:6>: <forestry:fences.maple>,
    // <forestry:planks.1:7>: <forestry:fences.citrus>,
    // <forestry:planks.1:8>: <forestry:fences.giganteum>,
    // <forestry:planks.1:9>: <forestry:fences.ipe>,
    // <forestry:planks.1:10>: <forestry:fences.padauk>,
    // <forestry:planks.1:11>: <forestry:fences.cocobolo>,
    // <forestry:planks.1:12>: <forestry:fences.zebrawood>,

    // <extratrees:planks.0>: <extratrees:fences.apple>,
    // <extratrees:planks.0:1>: <extratrees:fences.fig>,
    // <extratrees:planks.0:2>: <extratrees:fences.butternut>,
    // <extratrees:planks.0:3>: <extratrees:fences.whitebeam>,
    // <extratrees:planks.0:15>: <extratrees:fences.hickory>,
    // <extratrees:planks.0:14>: <extratrees:fences.hazel>,
    // <extratrees:planks.0:13>: <extratrees:fences.fir>,
    // <extratrees:planks.0:12>: <extratrees:fences.cypress>,
    // <extratrees:planks.0:11>: <extratrees:fences.yew>,
    // <extratrees:planks.0:10>: <extratrees:fences.banana>,
    // <extratrees:planks.0:9>: <extratrees:fences.hawthorn>,
    // <extratrees:planks.0:8>: <extratrees:fences.beech>,
    // <extratrees:planks.0:4>: <extratrees:fences.rowan>,
    // <extratrees:planks.0:5>: <extratrees:fences.hemlock>,
    // <extratrees:planks.0:6>: <extratrees:fences.ash>,
    // <extratrees:planks.0:7>: <extratrees:fences.alder>,
    // <extratrees:planks.1>: <extratrees:fences.elm>,
    // <extratrees:planks.1:1>: <extratrees:fences.elder>,
    // <extratrees:planks.1:2>: <extratrees:fences.holly>,
    // <extratrees:planks.1:3>: <extratrees:fences.hornbeam>,
    // <extratrees:planks.1:15>: <extratrees:fences.gingko>,
    // <extratrees:planks.1:14>: <extratrees:fences.iroko>,
    // <extratrees:planks.1:13>: <extratrees:fences.purpleheart>,
    // <extratrees:planks.1:12>: <extratrees:fences.rosewood>,
    // <extratrees:planks.1:11>: <extratrees:fences.logwood>,
    // <extratrees:planks.1:10>: <extratrees:fences.brazilwood>,
    // <extratrees:planks.1:9>: <extratrees:fences.maclura>,
    // <extratrees:planks.1:8>: <extratrees:fences.pear>,
    // <extratrees:planks.1:7>: <extratrees:fences.locust>,
    // <extratrees:planks.1:6>: <extratrees:fences.sweetgum>,
    // <extratrees:planks.1:5>: <extratrees:fences.olive>,
    // <extratrees:planks.1:4>: <extratrees:fences.cedar>,
    // <extratrees:planks.2>: <extratrees:fences.eucalyptus>,
    // <extratrees:planks.2:1>: <extratrees:fences.box>,
    // <extratrees:planks.2:2>: <extratrees:fences.syzgium>,
    // <extratrees:planks.2:3>: <extratrees:fences.pinkivory>,

    // <natura:overworld_planks:5>: <natura:overworld_fences>,
    // <natura:overworld_planks:6>: <natura:overworld_fences:1>,
    // <natura:overworld_planks:7>: <natura:overworld_fences:2>,
    // <natura:overworld_planks:8>: <natura:overworld_fences:3>,
    // <natura:redwood_logs>: <natura:overworld_fences:4>,
    // <natura:nether_planks>: <natura:nether_fences>,
    // <natura:nether_planks:1>: <natura:nether_fences:1>,
    // <natura:nether_planks:2>: <natura:nether_fences:2>,

    // <roots:wildwood_planks>: <roots:wildwood_fence>,

    // <traverse:fir_planks>: <traverse:fir_fence>,

    // <integrateddynamics:menril_planks>: <integrateddynamics:menril_fence>,
    
    // <abyssalcraft:dltplank>: <abyssalcraft:fence_dlt>,
    // <abyssalcraft:dreadplanks>: <abyssalcraft:fence_drt>

    };
for IItemStack, IIngredient in WoodFences {
        recipes.remove(IIngredient);

        # [Fence]
        craft.remake(IIngredient * 3, ["pretty",
          "     ",
          "# ≢ #",
          "# ≢ #"], {
          "#": IItemStack,      # Planks
          "≢": <ore:stickWood>, # Stick
        });     
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Fence Gates Rework                                                                                                               //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var WoodGates as IItemStack[IIngredient] = {
    <minecraft:planks>: <minecraft:fence_gate>,
    <minecraft:planks:1>: <minecraft:spruce_fence_gate>,
    <minecraft:planks:2>: <minecraft:birch_fence_gate>,
    <minecraft:planks:3>: <minecraft:jungle_fence_gate>,
    <minecraft:planks:4>: <minecraft:acacia_fence_gate>,
    <minecraft:planks:5>: <minecraft:dark_oak_fence_gate>,

    // <biomesoplenty:planks_0>: <biomesoplenty:sacred_oak_fence>,
    // <biomesoplenty:planks_0:1>: <biomesoplenty:cherry_fence>,
    // <biomesoplenty:planks_0:2>: <biomesoplenty:umbran_fence>,
    // <biomesoplenty:planks_0:3>: <biomesoplenty:fir_fence>,
    // <biomesoplenty:planks_0:4>: <biomesoplenty:ethereal_fence>,
    // <biomesoplenty:planks_0:5>: <biomesoplenty:magic_fence>,
    // <biomesoplenty:planks_0:6>: <biomesoplenty:mangrove_fence>,
    // <biomesoplenty:planks_0:7>: <biomesoplenty:palm_fence>,
    // <biomesoplenty:planks_0:8>: <biomesoplenty:redwood_fence>,
    // <biomesoplenty:planks_0:9>: <biomesoplenty:willow_fence>,
    // <biomesoplenty:planks_0:10>: <biomesoplenty:pine_fence>,
    // <biomesoplenty:planks_0:11>: <biomesoplenty:hellbark_fence>,
    // <biomesoplenty:planks_0:12>: <biomesoplenty:jacaranda_fence>,
    // <biomesoplenty:planks_0:13>: <biomesoplenty:mahogany_fence>,
    // <biomesoplenty:planks_0:14>: <biomesoplenty:ebony_fence>,
    // <biomesoplenty:planks_0:15>: <biomesoplenty:eucalyptus_fence>,

    // <forestry:planks.0>: <forestry:fences.larch>,
    // <forestry:planks.0:1>: <forestry:fences.teak>,
    // <forestry:planks.0:2>: <forestry:fences.acacia>,
    // <forestry:planks.0:3>: <forestry:fences.lime>,
    // <forestry:planks.0:4>: <forestry:fences.chestnut>,
    // <forestry:planks.0:5>: <forestry:fences.wenge>,
    // <forestry:planks.0:6>: <forestry:fences.baobab>,
    // <forestry:planks.0:7>: <forestry:fences.sequoia>,
    // <forestry:planks.0:8>: <forestry:fences.kapok>,
    // <forestry:planks.0:9>: <forestry:fences.ebony>,
    // <forestry:planks.0:10>: <forestry:fences.mahogany>,
    // <forestry:planks.0:11>: <forestry:fences.balsa>,
    // <forestry:planks.0:12>: <forestry:fences.willow>,
    // <forestry:planks.0:13>: <forestry:fences.walnut>,
    // <forestry:planks.0:14>: <forestry:fences.greenheart>,
    // <forestry:planks.0:15>: <forestry:fences.cherry>,
    // <forestry:planks.1>: <forestry:fences.mahoe>,
    // <forestry:planks.1:1>: <forestry:fences.poplar>,
    // <forestry:planks.1:2>: <forestry:fences.palm>,
    // <forestry:planks.1:3>: <forestry:fences.papaya>,
    // <forestry:planks.1:4>: <forestry:fences.pine>,
    // <forestry:planks.1:5>: <forestry:fences.plum>,
    // <forestry:planks.1:6>: <forestry:fences.maple>,
    // <forestry:planks.1:7>: <forestry:fences.citrus>,
    // <forestry:planks.1:8>: <forestry:fences.giganteum>,
    // <forestry:planks.1:9>: <forestry:fences.ipe>,
    // <forestry:planks.1:10>: <forestry:fences.padauk>,
    // <forestry:planks.1:11>: <forestry:fences.cocobolo>,
    // <forestry:planks.1:12>: <forestry:fences.zebrawood>,

    // <extratrees:planks.0>: <extratrees:fences.apple>,
    // <extratrees:planks.0:1>: <extratrees:fences.fig>,
    // <extratrees:planks.0:2>: <extratrees:fences.butternut>,
    // <extratrees:planks.0:3>: <extratrees:fences.whitebeam>,
    // <extratrees:planks.0:15>: <extratrees:fences.hickory>,
    // <extratrees:planks.0:14>: <extratrees:fences.hazel>,
    // <extratrees:planks.0:13>: <extratrees:fences.fir>,
    // <extratrees:planks.0:12>: <extratrees:fences.cypress>,
    // <extratrees:planks.0:11>: <extratrees:fences.yew>,
    // <extratrees:planks.0:10>: <extratrees:fences.banana>,
    // <extratrees:planks.0:9>: <extratrees:fences.hawthorn>,
    // <extratrees:planks.0:8>: <extratrees:fences.beech>,
    // <extratrees:planks.0:4>: <extratrees:fences.rowan>,
    // <extratrees:planks.0:5>: <extratrees:fences.hemlock>,
    // <extratrees:planks.0:6>: <extratrees:fences.ash>,
    // <extratrees:planks.0:7>: <extratrees:fences.alder>,
    // <extratrees:planks.1>: <extratrees:fences.elm>,
    // <extratrees:planks.1:1>: <extratrees:fences.elder>,
    // <extratrees:planks.1:2>: <extratrees:fences.holly>,
    // <extratrees:planks.1:3>: <extratrees:fences.hornbeam>,
    // <extratrees:planks.1:15>: <extratrees:fences.gingko>,
    // <extratrees:planks.1:14>: <extratrees:fences.iroko>,
    // <extratrees:planks.1:13>: <extratrees:fences.purpleheart>,
    // <extratrees:planks.1:12>: <extratrees:fences.rosewood>,
    // <extratrees:planks.1:11>: <extratrees:fences.logwood>,
    // <extratrees:planks.1:10>: <extratrees:fences.brazilwood>,
    // <extratrees:planks.1:9>: <extratrees:fences.maclura>,
    // <extratrees:planks.1:8>: <extratrees:fences.pear>,
    // <extratrees:planks.1:7>: <extratrees:fences.locust>,
    // <extratrees:planks.1:6>: <extratrees:fences.sweetgum>,
    // <extratrees:planks.1:5>: <extratrees:fences.olive>,
    // <extratrees:planks.1:4>: <extratrees:fences.cedar>,
    // <extratrees:planks.2>: <extratrees:fences.eucalyptus>,
    // <extratrees:planks.2:1>: <extratrees:fences.box>,
    // <extratrees:planks.2:2>: <extratrees:fences.syzgium>,
    // <extratrees:planks.2:3>: <extratrees:fences.pinkivory>,

    // <natura:overworld_planks:5>: <natura:overworld_fences>,
    // <natura:overworld_planks:6>: <natura:overworld_fences:1>,
    // <natura:overworld_planks:7>: <natura:overworld_fences:2>,
    // <natura:overworld_planks:8>: <natura:overworld_fences:3>,
    // <natura:redwood_logs>: <natura:overworld_fences:4>,
    // <natura:nether_planks>: <natura:nether_fences>,
    // <natura:nether_planks:1>: <natura:nether_fences:1>,
    // <natura:nether_planks:2>: <natura:nether_fences:2>,

    // <roots:wildwood_planks>: <roots:wildwood_fence>,

    // <traverse:fir_planks>: <traverse:fir_fence>,

    // <integrateddynamics:menril_planks>: <integrateddynamics:menril_fence>,
    
    // <abyssalcraft:dltplank>: <abyssalcraft:fence_dlt>,
    // <abyssalcraft:dreadplanks>: <abyssalcraft:fence_drt>

    };
for IItemStack, IIngredient in WoodGates {
        recipes.remove(IIngredient);

        # [Oak Fence Gate]
        craft.remake(IIngredient, ["pretty",
            "     ",
            "# ≢ #",
            "# ≢ #"], {
            "#": <ore:stickWood>,   # Stick
            "≢": IItemStack,        # Planks
        });   
}
