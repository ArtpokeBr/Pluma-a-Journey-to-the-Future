import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import moretweaker.railcraft.RockCrusher as RockCrusher;

//Removing Creosote Bottle from Furnace
furnace.remove(<railcraft:fluid_bottle_creosote>);

# Tooltips to inform the Color Variations ========

var ColorVariations as IItemStack[] = [
<railcraft:tank_iron_valve:*>,
<railcraft:tank_iron_wall:*>,
<railcraft:tank_steel_valve:*>,
<railcraft:tank_steel_wall:*>,
<railcraft:glass:*>,
<railcraft:post_metal_platform:*>,
<railcraft:post_metal:*>,
];

for i in ColorVariations {
i.addTooltip(format.yellow("This item can be Dyed and Chiseled! Press U to see the recipes."));
}

var ReinforcedConcrete as IItemStack[] = [
<railcraft:reinforced_concrete>,
<railcraft:reinforced_concrete:1>,
<railcraft:reinforced_concrete:2>,
<railcraft:reinforced_concrete:3>,
<railcraft:reinforced_concrete:4>,
<railcraft:reinforced_concrete:5>,
<railcraft:reinforced_concrete:6>,
<railcraft:reinforced_concrete:7>,
<railcraft:reinforced_concrete:8>,
<railcraft:reinforced_concrete:9>,
<railcraft:reinforced_concrete:10>,
<railcraft:reinforced_concrete:11>,
<railcraft:reinforced_concrete:12>,
<railcraft:reinforced_concrete:13>,
<railcraft:reinforced_concrete:14>,
<railcraft:reinforced_concrete:15>
];
for i in ReinforcedConcrete {
<ore:reinforcedConcrete>.add(i);
i.addTooltip(format.yellow("This item can be Dyed and Chiseled! Press U to see the recipes."));
mods.chisel.Carving.addVariation("reinforced_concrete", i);
}

# [Reinforced Concrete]*16 from [Concrete Dust][+2]
recipes.removeByRecipeName("railcraft:reinforced_concrete#8$2");
craft.make(<railcraft:reinforced_concrete:8> * 16, ["pretty",
  "s G s",
  "G ▲ G",
  "s G s"], {
  "s": <minecraft:stone:*>, # Stone
  "G": <tconstruct:soil>,  # Grout
  "▲": <ore:dustConcrete>, # Concrete Dust
});

// =============================================

// Stone Fixes =================================

var AbyssalStone as IItemStack[] = [
    <railcraft:generic:8>,
    <railcraft:brick_abyssal>,
    <railcraft:brick_abyssal:1>,
    <railcraft:brick_abyssal:2>,
    <railcraft:brick_abyssal:3>,
    <railcraft:brick_abyssal:4>,
    // <railcraft:brick_abyssal_brick_stairs>,
    // <railcraft:brick_abyssal_paver_stairs>,
    // <railcraft:brick_abyssal_slab>,
    // <railcraft:brick_abyssal_slab:1>
    ];

for i in AbyssalStone {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_abyssal:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var BleachedBone as IItemStack[] = [
    <railcraft:brick_bleachedbone>,
    <railcraft:brick_bleachedbone:1>,
    <railcraft:brick_bleachedbone:2>,
    <railcraft:brick_bleachedbone:3>,
    <railcraft:brick_bleachedbone:4>,
    // <railcraft:brick_bleachedbone_brick_stairs>,
    // <railcraft:brick_bleachedbone_paver_stairs>,
    // <railcraft:brick_bleachedbone_slab>
    ];

for i in BleachedBone {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_bleachedbone:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var BloodStained as IItemStack[] = [
    <railcraft:brick_bloodstained>,
    <railcraft:brick_bloodstained:1>,
    <railcraft:brick_bloodstained:2>,
    <railcraft:brick_bloodstained:3>,
    <railcraft:brick_bloodstained:4>,
    // <railcraft:brick_bloodstained_brick_stairs>,
    // <railcraft:brick_bloodstained_paver_stairs>,
    // <railcraft:brick_bloodstained_slab>,
    // <railcraft:brick_bloodstained_slab:1>
    ];

for i in BloodStained {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_bloodstained:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var FrostBound as IItemStack[] = [
    <railcraft:brick_frostbound>,
    <railcraft:brick_frostbound:1>,
    <railcraft:brick_frostbound:2>,
    <railcraft:brick_frostbound:3>,
    <railcraft:brick_frostbound:4>,
    // <railcraft:brick_frostbound_brick_stairs>,
    // <railcraft:brick_frostbound_paver_stairs>,
    // <railcraft:brick_frostbound_slab>,
    // <railcraft:brick_frostbound_slab:1>
    ];

for i in FrostBound {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_frostbound:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var Infernal as IItemStack[] = [
    <railcraft:brick_infernal>,
    <railcraft:brick_infernal:1>,
    <railcraft:brick_infernal:2>,
    <railcraft:brick_infernal:3>,
    <railcraft:brick_infernal:4>,
    // <railcraft:brick_infernal_brick_stairs>,
    // <railcraft:brick_infernal_paver_stairs>,
    // <railcraft:brick_infernal_slab>,
    // <railcraft:brick_infernal_slab:1>
    ];

for i in Infernal {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_infernal:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

/*

var Jaded as IItemStack[] = [
    <railcraft:jaded_stone>,
    <railcraft:jaded>,
    <railcraft:jaded:1>,
    <railcraft:jaded:2>,
    <railcraft:jaded:3>,
    <railcraft:jaded:4>,
    <railcraft:jaded_brick_stairs>,
    <railcraft:jaded_paver_stairs>,
    <railcraft:jaded_slab>,
    <railcraft:jaded_slab:1>
    ];

for i in Jaded {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:jaded:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

*/

var Quarried as IItemStack[] = [
    <railcraft:generic:9>,
    <railcraft:brick_quarried>,
    <railcraft:brick_quarried:1>,
    <railcraft:brick_quarried:2>,
    <railcraft:brick_quarried:3>,
    <railcraft:brick_quarried:4>,
    // <railcraft:brick_quarried_brick_stairs>,
    // <railcraft:brick_quarried_paver_stairs>,
    // <railcraft:brick_quarried_slab>,
    // <railcraft:brick_quarried_slab:1>
    ];

for i in Quarried {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_quarried:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var Sandy as IItemStack[] = [
    <railcraft:brick_sandy>,
    <railcraft:brick_sandy:1>,
    <railcraft:brick_sandy:2>,
    <railcraft:brick_sandy:3>,
    <railcraft:brick_sandy:4>,
    // <railcraft:brick_sandy_brick_stairs>,
    // <railcraft:brick_sandy_paver_stairs>,
    // <railcraft:brick_sandy_slab>,
    // <railcraft:brick_sandy_slab:1>
    ];

for i in Sandy {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_sandy:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var Badlands as IItemStack[] = [
    <railcraft:brick_red_sandy>,
    <railcraft:brick_red_sandy:1>,
    <railcraft:brick_red_sandy:2>,
    <railcraft:brick_red_sandy:3>,
    <railcraft:brick_red_sandy:4>,
    // <railcraft:brick_red_sandy_brick_stairs>,
    // <railcraft:brick_red_sandy_paver_stairs>,
    // <railcraft:brick_red_sandy_slab>,
    // <railcraft:brick_red_sandy_slab:1>
    ];

for i in Badlands {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_red_sandy:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var Nether as IItemStack[] = [
    <railcraft:brick_nether>,
    <railcraft:brick_nether:1>,
    <railcraft:brick_nether:2>,
    <railcraft:brick_nether:3>,
    <railcraft:brick_nether:4>
    ];

for i in Nether {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_nether:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var RedNether as IItemStack[] = [
    <railcraft:brick_red_nether>,
    <railcraft:brick_red_nether:1>,
    <railcraft:brick_red_nether:2>,
    <railcraft:brick_red_nether:3>,
    <railcraft:brick_red_nether:4>
    ];

for i in RedNether {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_red_nether:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

var Pearlized as IItemStack[] = [
    <railcraft:brick_pearlized>,
    <railcraft:brick_pearlized:1>,
    <railcraft:brick_pearlized:2>,
    <railcraft:brick_pearlized:3>,
    <railcraft:brick_pearlized:4>,
    // <railcraft:brick_pearlized_brick_stairs>,
    // <railcraft:brick_pearlized_paver_stairs>,
    // <railcraft:brick_pearlized_slab>,
    // <railcraft:brick_pearlized_slab:1>
    ];

for i in Pearlized {

	macerator.recipeBuilder()
        .inputs(i)
        .outputs(<railcraft:brick_pearlized:5>)
        .duration(80)
        .EUt(8)
    .buildAndRegister();    
}

# Crushed Obsidian
macerator.recipeBuilder()
    .inputs(<ore:obsidian>)
    .outputs(<railcraft:generic:7>*4)
    .duration(400)
    .EUt(8)
.buildAndRegister();  

// =============================================

# Name Fixes ===================================

<railcraft:charge:9>.displayName = "Carbon Electrode";
<railcraft:charge:10>.displayName = "Silver Electrode";

// Pearlized Block
recipes.remove(<railcraft:brick_pearlized:2>);
recipes.addShaped(<railcraft:brick_pearlized:2> * 8, [[<ore:endstone>, <ore:endstone>, <ore:endstone>], [<ore:endstone>, <ore:dustEnderPearl>, <ore:endstone>],[<ore:endstone>, <ore:endstone>, <ore:endstone>]]);

// Force Track Emitter
//recipes.remove(<railcraft:force_track_emitter>);
//recipes.addShaped(<railcraft:force_track_emitter> * 1, [[<ore:plateTin>, <ore:dustEnderPearl>, <ore:plateTin>], [<railcraft:charge:0>, <ore:blockDiamond>, <railcraft:charge:0>],[<ore:plateTin>, <ore:dustEnderPearl>, <ore:plateTin>]]);

# Recipes ===================================

// Manual Rolling Machine
// recipes.remove(<railcraft:equipment:0>);
// recipes.addShaped(<railcraft:equipment:0>, [[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>], [<forestry:thermionic_tubes:2>, <gregtech:machine:1647>, <forestry:thermionic_tubes:2>],[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>]]);

// Bag of Cement
recipes.remove(<railcraft:concrete>);
recipes.addShaped(<railcraft:concrete> * 4, [[<ore:gravel>, <ore:itemSlag>, <ore:gravel>], [<ore:itemSlag>, <ore:gravel>, <ore:itemSlag>],[<ore:gravel>, <ore:itemSlag>, <ore:gravel>]]);

//Strengthened Glass
recipes.remove(<railcraft:glass>);
furnace.addRecipe(<railcraft:glass>, <overloaded:compressed_sand>);

//Charge Terminal
recipes.remove(<railcraft:charge:1>);
recipes.addShaped(<railcraft:charge:1> * 1, [[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], [<ore:plateBrass>, null, <ore:plateBrass>],[<ore:ingotConstantan>, <ore:gearBrass>, <ore:ingotConstantan>]]);

//Flux Transformer
// recipes.remove(<railcraft:flux_transformer:0>);
// recipes.addShaped(<railcraft:flux_transformer:0> * 4, [[<railcraft:charge:3>, <railcraft:charge:6>, <railcraft:charge:3>], [<forestry:thermionic_tubes:4>, <ore:batteryMv>, <forestry:thermionic_tubes:4>],[<railcraft:charge:3>, <railcraft:charge:1>, <railcraft:charge:3>]]);

// Iron Tank Gauge
recipes.remove(<railcraft:tank_iron_gauge:0>);
recipes.addShaped(<railcraft:tank_iron_gauge:0> * 4, [[<ore:paneGlassColorless>, <ore:plateIron>, <ore:paneGlassColorless>], [<ore:plateIron>, <ore:paneGlassColorless>, <ore:plateIron>],[<ore:paneGlassColorless>, <ore:plateIron>, <ore:paneGlassColorless>]]);

// Iron Tank Valve
recipes.remove(<railcraft:tank_iron_valve:0>);
recipes.addShaped(<railcraft:tank_iron_valve:0> * 1, [[<minecraft:iron_bars>, <ore:plateIron>, <minecraft:iron_bars>], [<ore:plateIron>, <minecraft:lever>, <ore:plateIron>],[<minecraft:iron_bars>, <ore:plateIron>, <minecraft:iron_bars>]]);

// Iron Tank Wall
recipes.remove(<railcraft:tank_iron_wall:0>);
recipes.addShaped(<railcraft:tank_iron_wall:0> * 8, [[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>], [<ore:lightPlateIron>, null, <ore:lightPlateIron>],[<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>]]);

// Steel Tank Gauge
recipes.remove(<railcraft:tank_steel_gauge>);
recipes.addShaped(<railcraft:tank_steel_gauge> * 4, [[<ore:paneGlassColorless>, <ore:plateSteel>, <ore:paneGlassColorless>], [<ore:plateSteel>, <ore:paneGlassColorless>, <ore:plateSteel>],[<ore:paneGlassColorless>, <ore:plateSteel>, <ore:paneGlassColorless>]]);

// Steel Tank Valve
recipes.remove(<railcraft:tank_steel_valve>);
recipes.addShaped(<railcraft:tank_steel_valve> * 1, [[<ore:barsIron>, <ore:plateSteel>, <ore:barsIron>], [<ore:plateSteel>, <minecraft:lever>, <ore:plateSteel>],[<ore:barsIron>, <ore:plateSteel>, <ore:barsIron>]]);

// Steel Tank Wall
recipes.remove(<railcraft:tank_steel_wall>);
recipes.addShaped(<railcraft:tank_steel_wall> * 8, [[<ore:plateSteel>, <ore:lightPlateSteel>, <ore:plateSteel>], [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>],[<ore:plateSteel>, <ore:lightPlateSteel>, <ore:plateSteel>]]);

// Steam Locomotive
recipes.remove(<railcraft:locomotive_steam_solid:0>);
recipes.addShaped(<railcraft:locomotive_steam_solid:0> * 1, [[<railcraft:tank_iron_wall:0>, <railcraft:tank_iron_wall:0>, <gregtech:machine:16>], [<railcraft:tank_iron_wall:0>, <railcraft:tank_iron_wall:0>, <gregtech:machine:16>],[<minecraft:iron_bars>, <minecraft:minecart>, <minecraft:minecart>]]);

// Tunnel Bore
recipes.remove(<railcraft:bore:0>);
recipes.addShaped(<railcraft:bore:0> * 1, [[<ore:blockSteel>, <minecraft:minecart>, <ore:blockSteel>], [<gregtech:machine:16>, <minecraft:minecart>, <gregtech:machine:16>],[null, <minecraft:chest_minecart>, null]]);

//Steel Anvil /* Currently Disabled */
recipes.remove(<railcraft:anvil>);

recipes.addShaped(<railcraft:anvil>, [
[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
[<ore:screwSteel>, <ore:blockSteel>, <ore:screwSteel>],
[<ore:plateSteel>, <ore:blockSteel>, <ore:plateSteel>]]);

alloy.recipeBuilder()
    .inputs(<ore:ingotSteel>*31)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<railcraft:anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:steel>*4464)
    .notConsumable(<gregtech:meta_item_1:21>)
    .outputs(<railcraft:anvil>)
    .duration(120)
    .EUt(16)
.buildAndRegister();

// Railcraft Circuits ======================================================================

//Controller Circuit
recipes.remove(<railcraft:circuit>);
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitMv>, <ore:plateRedstone>, <projectred-core:resource_item:320>])
    .outputs(<railcraft:circuit>)
    .duration(180)
    .EUt(32)
    .buildAndRegister();

//Receiver Circuit
recipes.remove(<railcraft:circuit:1>);
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitMv>, <ore:plateGreenSapphire>, <projectred-core:resource_item:301>])
    .outputs(<railcraft:circuit:1>)
    .duration(180)
    .EUt(32)
    .buildAndRegister();

//Signal Circuit
recipes.remove(<railcraft:circuit:2>);
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitMv>, <ore:plateGold>, <projectred-core:resource_item:341>])
    .outputs(<railcraft:circuit:2>)
    .duration(180)
    .EUt(32)
    .buildAndRegister();

//Radio Circuit
recipes.remove(<railcraft:circuit:3>);
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitMv>, <ore:plateCobalt>, <projectred-core:resource_item:342>])
    .outputs(<railcraft:circuit:3>)
    .duration(180)
    .EUt(32)
    .buildAndRegister();


//Signal Lamp
recipes.remove(<railcraft:signal_lamp>);
assembler.recipeBuilder()
    .inputs([<natura:nether_glass:1>, <ore:dustGlowstone>, <contenttweaker:etchedredalloywiring>, <ore:lightPlateSteel>])
    .outputs(<railcraft:signal_lamp>)
    .duration(120)
    .EUt(12)
.buildAndRegister();

// Trackman's Goggles
recipes.remove(<railcraft:armor_goggles>);
recipes.addShaped(<railcraft:armor_goggles> * 1, [[<quark:framed_glass_pane>, <railcraft:circuit:1>, <quark:framed_glass_pane>], [<ore:lightPlateSteel>, null, <ore:lightPlateSteel>],[<ore:leatherStrip>, <ore:leatherStrip>, <ore:leatherStrip>]]);


//Firestone Ore Processing
recipes.removeByRecipeName("railcraft:firestone_cut$1");
recipes.removeByRecipeName("railcraft:firestone_refined$2");
recipes.removeByRecipeName("railcraft:firestone_refined$3");
recipes.removeByRecipeName("railcraft:firestone");

thermal_centrifuge.recipeBuilder()
    .inputs([<ore:oreFirestone>])
    .outputs(<railcraft:firestone_raw> * 4)
    .chancedOutput(<ore:dustSmallAlmandine>.firstItem, 1000, 1000)
    .chancedOutput(<ore:dustSmallArdite>.firstItem, 2000, 1000)
    .duration(450)
    .EUt(100)
.buildAndRegister();

engraver.recipeBuilder()
    .inputs([<railcraft:firestone_raw>*2])
    .notConsumable(<ore:lensVinteum>)
    .outputs(<railcraft:firestone_cut>)
    .duration(450)
    .EUt(300)
.buildAndRegister();

engraver.recipeBuilder()
    .inputs([<railcraft:firestone_cut>*2])
    .notConsumable(<ore:lensVinteum>)
    .outputs(<railcraft:firestone_refined>)
    .duration(450)
    .EUt(300)
.buildAndRegister();

//Blood Stained Brick
recipes.remove(<railcraft:brick_bloodstained:2>);
mixer.recipeBuilder()
    .fluidInputs(<liquid:blood> * 250)
    .inputs(<railcraft:brick_red_nether:2>)
    .outputs(<railcraft:brick_bloodstained:2>)
    .duration(120)
    .EUt(20)
.buildAndRegister();
  
// Shunting Wire in the Wiremill
wiremill.recipeBuilder()
    .inputs([<railcraft:charge:2>])
    .outputs(<railcraft:wire> * 2)
    .duration(120)
    .EUt(32)
.buildAndRegister();
 
// Track Parts
recipes.removeByRecipeName("railcraft:track_parts$1");
recipes.removeByRecipeName("railcraft:track_parts$2");
recipes.removeByRecipeName("railcraft:track_parts$3");
recipes.removeByRecipeName("railcraft:track_parts$4");
recipes.removeByRecipeName("railcraft:track_parts$5");
recipes.removeByRecipeName("railcraft:track_parts$6");
recipes.remove(<railcraft:track_parts>);
recipes.addShaped(<railcraft:track_parts> * 4, [[<ore:boltWroughtIron>, <ore:gtceHardHammers>, <ore:stickSteel>], [<ore:stickSteel>, null, <ore:stickSteel>],[<ore:boltWroughtIron>, <ore:gtceScrewdrivers>, <ore:stickSteel>]]);

// Iron Crowbar
recipes.remove(<railcraft:tool_crowbar_iron>);
recipes.addShapeless(<railcraft:tool_crowbar_iron>, [<gregtech:meta_tool:10>.withTag({"GT.ToolStats": {Material: "iron"}}),<ore:artisansLens>.reuse().transformDamage(10)]);

// Steel Crowbar
recipes.remove(<railcraft:tool_crowbar_steel>);
recipes.addShapeless(<railcraft:tool_crowbar_steel>, [<gregtech:meta_tool:10>.withTag({"GT.ToolStats": {Material: "steel"}}),<ore:artisansLens>.reuse().transformDamage(10)]);

recipes.removeByRecipeName("railcraft:rail#4$1");
recipes.removeByRecipeName("railcraft:rail#4$2");
recipes.removeByRecipeName("railcraft:rail#4$3");
recipes.removeByRecipeName("railcraft:rail#4$4");
recipes.removeByRecipeName("railcraft:rail#5$1");
recipes.removeByRecipeName("railcraft:rail#5$2");
recipes.removeByRecipeName("railcraft:rail#5$3");
recipes.removeByRecipeName("railcraft:rail#3$1");
recipes.removeByRecipeName("railcraft:rail#0$1");
recipes.removeByRecipeName("railcraft:rail#0$2");
recipes.removeByRecipeName("railcraft:rail#1$1");
recipes.removeByRecipeName("railcraft:rail_tungsten");
recipes.removeByRecipeName("railcraft:rail_tungsten_steel");
recipes.removeByRecipeName("railcraft:rail_titanium");
recipes.removeByRecipeName("railcraft:rail_invar");
recipes.removeByRecipeName("railcraft:rail_steel");

// Standard Rail
recipes.removeShapeless(<railcraft:rail:0>);
recipes.addShapedMirrored(<railcraft:rail:0> * 8, [[null, <ore:stickIron>, null], [null, <ore:stickLongIron>, null],[null, <ore:stickIron>, null]]);

// Advanced Rail
recipes.removeShapeless(<railcraft:rail:1>);
recipes.addShaped(<railcraft:rail:1> * 8, [[<railcraft:rail:0>, <ore:stickGold>, <ore:dustRedstone>], [<railcraft:rail:0>, <ore:stickLongGold>, <ore:dustRedstone>],[<railcraft:rail:0>, <ore:stickGold>, <ore:dustRedstone>]]);

// Wooden Rail
recipes.removeShapeless(<railcraft:rail:2>);
recipes.addShapedMirrored(<railcraft:rail:2> * 8, [[null, <ore:stickTreatedWood>, null], [null, <ore:stickLongWood>, null],[null, <ore:stickTreatedWood>, null]]);

// H.S. Rail
recipes.removeShapeless(<railcraft:rail:3>);
recipes.addShaped(<railcraft:rail:3> * 8, [[<railcraft:rail:1>, <ore:stickArdite>, <ore:dustBlaze>], [<railcraft:rail:1>, <ore:stickLongArdite>, <ore:dustBlaze>],[<railcraft:rail:1>, <ore:stickArdite>, <ore:dustBlaze>]]);

// Reinforced Rail
recipes.removeShapeless(<railcraft:rail:4>);
recipes.addShaped(<railcraft:rail:4> * 8, [[<railcraft:rail:0>, <ore:stickDarkSteel>, <ore:dustObsidian>], [<railcraft:rail:0>, <ore:stickLongDarkSteel>, <ore:dustObsidian>],[<railcraft:rail:0>, <ore:stickDarkSteel>, <ore:dustObsidian>]]);

// Nickel-Iron Battery
recipes.remove(<railcraft:battery_nickel_iron>);
recipes.addShaped(<railcraft:battery_nickel_iron> * 1, [[<railcraft:charge:1>, <railcraft:charge:3>, <railcraft:charge:1>], [<railcraft:charge:6>, <ore:batteryLv>, <railcraft:charge:7>],[<railcraft:charge:6>, <ore:lightPlateBatteryAlloy>, <railcraft:charge:7>]]);

// Nickel-Zinc Battery
recipes.remove(<railcraft:battery_nickel_zinc>);
recipes.addShaped(<railcraft:battery_nickel_zinc> * 1, [[<railcraft:charge:1>, <railcraft:charge:3>, <railcraft:charge:1>], [<railcraft:charge:6>, <ore:batteryLv>, <railcraft:charge:8>],[<railcraft:charge:6>, <ore:lightPlateBatteryAlloy>, <railcraft:charge:8>]]);

// Zinc-Carbon Battery
recipes.remove(<railcraft:battery_zinc_carbon>);
recipes.addShaped(<railcraft:battery_zinc_carbon> * 1, [[<railcraft:charge:1>, <railcraft:charge:3>, <railcraft:charge:1>], [<railcraft:charge:8>, <ore:batteryLv>, <railcraft:charge:9>],[<railcraft:charge:8>, <ore:lightPlateBatteryAlloy>, <railcraft:charge:9>]]);

// Zinc-Silver Battery
recipes.remove(<railcraft:battery_zinc_silver>);
recipes.addShaped(<railcraft:battery_zinc_silver> * 1, [[<railcraft:charge:1>, <railcraft:charge:3>, <railcraft:charge:1>], [<railcraft:charge:8>, <ore:batteryLv>, <railcraft:charge:10>],[<railcraft:charge:8>, <ore:lightPlateBatteryAlloy>, <railcraft:charge:10>]]);

//Rebar
recipes.removeByRecipeName("railcraft:rebar$8");
recipes.removeByRecipeName("railcraft:rebar$7");
recipes.removeByRecipeName("railcraft:rebar$6");
recipes.removeByRecipeName("railcraft:rebar$5");
recipes.removeByRecipeName("railcraft:rebar$4");
recipes.removeByRecipeName("railcraft:rebar$3");
recipes.removeByRecipeName("railcraft:rebar$2");
recipes.removeByRecipeName("railcraft:rebar$1");
recipes.addShapedMirrored(<railcraft:rebar> * 6, [[null, null, <ore:stickIron>], [null, <ore:stickIronMagnetic>, null],[<ore:stickIron>, null, null]]);

//Nickel Electrode
recipes.removeByRecipeName("railcraft:charge#6");
recipes.addShapedMirrored(<railcraft:charge:6> * 1, [[null, <ore:boltNickel>, null], [null, <forestry:thermionic_tubes:2>, null],[null, <ore:plateNickel>, null]]);

//Iron Electrode
recipes.removeByRecipeName("railcraft:charge#7");
recipes.addShapedMirrored(<railcraft:charge:7> * 1, [[null, <ore:boltIron>, null], [null, <forestry:thermionic_tubes:3>, null],[null, <ore:plateIron>, null]]);

//Zinc Electrode
recipes.removeByRecipeName("railcraft:charge#8");
recipes.addShapedMirrored(<railcraft:charge:8> * 1, [[null, <ore:boltZinc>, null], [null, <forestry:thermionic_tubes:1>, null],[null, <ore:plateZinc>, null]]);

//Carbon Electrode
recipes.removeByRecipeName("railcraft:charge#9");
recipes.addShapedMirrored(<railcraft:charge:9> * 1, [[null, <projectred-core:resource_item:250>, null], [null, <forestry:thermionic_tubes:0>, null],[null, <ore:blockCoal>, null]]);

//Silver Electrode
recipes.removeByRecipeName("railcraft:charge#10");
recipes.addShapedMirrored(<railcraft:charge:10> * 1, [[null, <ore:boltSilver>, null], [null, <forestry:thermionic_tubes:11>, null],[null, <ore:plateSilver>, null]]);

// Railcraft Wires ==================================================

# Large Charge Wire Spool
recipes.remove(<railcraft:charge:4>);
recipes.addShaped(<railcraft:charge:4> * 1, [[<ore:heavyPlateSteel>, <ore:plateSteel>, <ore:heavyPlateSteel>], [<magneticraft:crafting:3>, <magneticraft:crafting:3>, <magneticraft:crafting:3>],[<ore:heavyPlateSteel>, <ore:plateSteel>, <ore:heavyPlateSteel>]]);

# Medium Charge Wire Spool
recipes.remove(<railcraft:charge:3>);
wiremill.recipeBuilder()
    .inputs([<railcraft:charge:4>])
    .outputs(<railcraft:charge:3> * 3)
    .duration(120)
    .EUt(16)
.buildAndRegister();

# Small Charge Wire Spool
recipes.remove(<railcraft:charge:2>);
wiremill.recipeBuilder()
    .inputs([<railcraft:charge:3>])
    .outputs(<railcraft:charge:2> * 3)
    .duration(60)
    .EUt(8)
.buildAndRegister();

// Creosote Wood Block
recipes.remove(<railcraft:generic:5>);
chemical_bath.recipeBuilder()
    .inputs([<ore:logWood>])
    .fluidInputs(<liquid:creosote> * 1000)
    .outputs(<railcraft:generic:5>)
    .duration(120)
    .EUt(7)
.buildAndRegister();
