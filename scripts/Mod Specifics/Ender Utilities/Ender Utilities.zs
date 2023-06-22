// Inactive Ender Core (Basic)
recipes.remove(<enderutilities:enderpart:10>);
recipes.addShaped(<enderutilities:enderpart:10> * 1, [[<bloodmagic:component:4>, <enderutilities:enderpart:0>, <bloodmagic:component:4>], [<enderutilities:enderpart:0>, <minecraft:ender_eye>, <enderutilities:enderpart:0>],[<bloodmagic:component:4>, <enderutilities:enderpart:0>, <bloodmagic:component:4>]]);

// Inactive Ender Core (Enhanced)
recipes.remove(<enderutilities:enderpart:11>);
recipes.addShaped(<enderutilities:enderpart:11> * 1, [[<contenttweaker:reductus>, <enderutilities:enderpart:1>, <contenttweaker:reductus>], [<enderutilities:enderpart:1>, <enderutilities:enderpart:10>, <enderutilities:enderpart:1>],[<contenttweaker:reductus>, <enderutilities:enderpart:1>, <contenttweaker:reductus>]]);

// Inactive Ender Core (Advanced)
recipes.remove(<enderutilities:enderpart:12>);
mods.extendedcrafting.TableCrafting.addShaped(2, <enderutilities:enderpart:12>, [
	[null, null, <ore:plateElvenQuartz>, null, null], 
	[null, <enderutilities:enderpart:2>, <quantumflux:craftingpiece:3>, <enderutilities:enderpart:2>, null], 
	[<ore:plateElvenQuartz>, <quantumflux:craftingpiece:3>, <enderutilities:enderpart:11>, <quantumflux:craftingpiece:3>, <ore:plateElvenQuartz>], 
	[null, <enderutilities:enderpart:2>, <quantumflux:craftingpiece:3>, <enderutilities:enderpart:2>, null], 
	[null, null, <ore:plateElvenQuartz>, null, null]
]);

// //Ender Alloy (Basic)
// recipes.remove(<enderutilities:enderpart>);
// alloy.recipeBuilder()
//     .inputs(<ore:ingotEndSteel>, <ore:ingotStygian>)
//     .outputs(<enderutilities:enderpart>*2)
//     .duration(300)
//     .EUt(600)
// .buildAndRegister();

// //Ender Alloy (Enhanced)
// recipes.remove(<enderutilities:enderpart:1>);
// alloy.recipeBuilder()
//     .inputs(<enderutilities:enderpart>, <extendedcrafting:material:48>)
//     .outputs(<enderutilities:enderpart:1>*2)
//     .duration(350)
//     .EUt(700)
// .buildAndRegister();

// //Ender Alloy (Advanced)
// recipes.remove(<enderutilities:enderpart:2>);
// alloy.recipeBuilder()
//     .inputs(<enderutilities:enderpart:1>, <ore:ingotCrystaltine>)
//     .outputs(<enderutilities:enderpart:2>*2)
//     .duration(400)
//     .EUt(800)
// .buildAndRegister();

// Portal Control Panel
recipes.remove(<enderutilities:portal_panel>);
recipes.addShaped(<enderutilities:portal_panel> * 2, [[<enderutilities:frame>, <contenttweaker:integrated_botanical_processor>, <enderutilities:frame>], [<enderutilities:frame>, <enderutilities:enderpart:16>, <enderutilities:frame>],[<enderutilities:frame>, <contenttweaker:integrated_botanical_processor>, <enderutilities:frame>]]);

// Portal Frame
recipes.remove(<enderutilities:frame>);
recipes.addShaped(<enderutilities:frame> * 8, [[<ore:plateSentientMetal>, <enderutilities:enderpart:1>, <ore:plateSentientMetal>], [<enderutilities:enderpart:1>, <ore:gemObsidian>, <enderutilities:enderpart:1>],[<ore:plateSentientMetal>, <enderutilities:enderpart:1>, <ore:plateSentientMetal>]]);

// Barrel
recipes.remove(<enderutilities:barrel:0>);
recipes.addShaped(<enderutilities:barrel:0> * 1, [[<ore:logWood>, <ore:plateConstructionAlloy>, <ore:logWood>], [<ore:logWood>, <pyrotech:crate>, <ore:logWood>],[<ore:logWood>, <ore:plateConstructionAlloy>, <ore:logWood>]]);

// Storage Key
recipes.remove(<enderutilities:enderpart:80>);
recipes.addShaped(<enderutilities:enderpart:80> * 1, [[<ore:boltConstructionAlloy>, <ore:stickConstructionAlloy>, <ore:artisansSolderer>.reuse().transformDamage(5)], [<ore:boltConstructionAlloy>, <ore:stickConstructionAlloy>, <ore:artisansBurner>.reuse().transformDamage(5)],[null, <ore:ringConstructionAlloy>, null]]);

// Adjustable Storage Unit
recipes.remove(<enderutilities:asu:0>);
recipes.addShaped(<enderutilities:asu:0> * 1, [[<ore:plateRoseGold>, <enderutilities:enderpart:15>, <ore:plateRoseGold>], [<ore:springCobaltSteel>, <minecraft:ender_chest>, <ore:springCobaltSteel>],[<ore:plateRoseGold>, <ore:lightPlateCobaltSteel>, <ore:plateRoseGold>]]);

// Drawbridge
recipes.remove(<enderutilities:draw_bridge:0>);
recipes.addShaped(<enderutilities:draw_bridge:0> * 1, [[<ore:plateCobalt>, <ore:craftingPiston>, <ore:plateCobalt>], [<ore:springArdite>, <gregtech:meta_item_1:172>, <ore:springArdite>],[<ore:plateCobalt>, <ore:circuitLv>, <ore:plateCobalt>]]);

// Advanced Drawbridge
recipes.remove(<enderutilities:draw_bridge:1>);
recipes.addShaped(<enderutilities:draw_bridge:1> * 1, [[<ore:plateCobaltSteel>, <enderutilities:enderpart:15>, <ore:plateCobaltSteel>], [<ore:springManasteel>, <enderutilities:draw_bridge:0>, <ore:springManasteel>],[<ore:plateCobaltSteel>, <ore:circuitHv>, <ore:plateCobaltSteel>]]);

// Ender Elevator (white)
recipes.remove(<enderutilities:ender_elevator:0>);
recipes.addShaped(<enderutilities:ender_elevator:0> * 2, [[<ore:plateGreenSapphire>, <minecraft:stone_pressure_plate>, <ore:plateGreenSapphire>], [<ore:endorCrystal>, <opencomputers:upgrade:20>, <ore:endorCrystal>],[<ore:plateGreenSapphire>, <gregtech:meta_item_1:173>, <ore:plateGreenSapphire>]]);

// Inserter
recipes.remove(<enderutilities:inserter:0>);
recipes.addShaped(<enderutilities:inserter:0> * 1, [[<enderutilities:enderpart:0>, <enderutilities:enderpart:0>, <enderutilities:enderpart:0>], [<ore:blockGlassHardened>, <enderutilities:enderpart:15>, <ore:blockGlassHardened>],[<enderutilities:enderpart:0>, <enderutilities:enderpart:0>, <enderutilities:enderpart:0>]]);

// Inserter (Filtered)
recipes.remove(<enderutilities:inserter:1>);
recipes.addShaped(<enderutilities:inserter:1> * 1, [[null, null, null], [<enderio:item_basic_item_filter:0>, <enderutilities:inserter:0>, <enderio:item_basic_item_filter:0>],[null, null, null]]);

// Cracked Floor
recipes.remove(<enderutilities:floor:1>);
recipes.addShaped(<enderutilities:floor:1> * 4, [[null, <quark:grate>, null], [<quark:grate>, <enderutilities:floor:0>, <quark:grate>],[null, <quark:grate>, null]]);

// Energy Bridge Resonator
recipes.remove(<enderutilities:energy_bridge:0>);
recipes.addShaped(<enderutilities:energy_bridge:0> * 1, [[<enderutilities:enderpart:1>, <contenttweaker:clearance_processor>, <enderutilities:enderpart:1>], [<gregtech:meta_item_1:281>, <enderutilities:enderpart:16>, <gregtech:meta_item_1:281>],[<enderutilities:enderpart:1>, <contenttweaker:clearance_processor>, <enderutilities:enderpart:1>]]);

// Energy Bridge Receiver
recipes.remove(<enderutilities:energy_bridge:1>);
recipes.addShaped(<enderutilities:energy_bridge:1> * 1, [[<enderutilities:enderpart:2>, <ore:gearStarmetal>, <enderutilities:enderpart:2>], [<ore:gearStarmetal>, <enderutilities:enderpart:17>, <ore:gearStarmetal>],[<enderutilities:enderpart:2>, <ore:gearStarmetal>, <enderutilities:enderpart:2>]]);

// Energy Bridge Transmitter
recipes.remove(<enderutilities:energy_bridge:2>);
recipes.addShaped(<enderutilities:energy_bridge:2> * 1, [[<enderutilities:enderpart:2>, <actuallyadditions:item_misc:19>, <enderutilities:enderpart:2>], [<enderutilities:enderpart:2>, <enderutilities:enderpart:17>, <enderutilities:enderpart:2>],[<enderutilities:enderpart:2>, <gregtech:meta_item_1:219>, <enderutilities:enderpart:2>]]);

// Ender Infuser
recipes.remove(<enderutilities:machine_1:0>);
recipes.addShaped(<enderutilities:machine_1:0> * 1, [[<enderutilities:enderpart:0>, <ore:hopper>, <enderutilities:enderpart:0>], [<enderutilities:enderpart:0>, <ore:batteryHv>, <enderutilities:enderpart:0>],[<ore:plateCobaltSteel>, <ore:blockBatteryAlloy>, <ore:plateCobaltSteel>]]);

// Tool Workstation
recipes.remove(<enderutilities:machine_1:1>);
recipes.addShaped(<enderutilities:machine_1:1> * 1, [[<enderutilities:enderpart:0>, <enderutilities:enderpart:10>, <enderutilities:enderpart:0>], [<enderutilities:enderpart:0>, <enderio:block_dark_steel_anvil:0>, <enderutilities:enderpart:0>],[<ore:plateCobaltSteel>, <avaritia:compressed_crafting_table>, <ore:plateCobaltSteel>]]);

// Creation Station
recipes.remove(<enderutilities:machine_1:2>);
recipes.addShaped(<enderutilities:machine_1:2> * 1, [[<ore:plateEmerald>, <forestry:thermionic_tubes:11>, <ore:plateEmerald>], [<gregtech:machine:1647>, <gregtech:machine:16>, <gregtech:machine:1647>],[<ore:plateEmerald>, <gregtech:machine:1627>, <ore:plateEmerald>]]);

//Ender Infused String
recipes.remove(<enderutilities:enderpart:21>);
alloy.recipeBuilder()
    .inputs(<natura:materials:7>, <ore:dustEnderPearl>*2)
    .outputs(<enderutilities:enderpart:21>)
    .duration(200)
    .EUt(450)
.buildAndRegister();

//Ender Infused Stick
recipes.remove(<enderutilities:enderpart:20>);
alloy.recipeBuilder()
    .inputs(<ore:itemNutritiousStick>, <ore:dustEnderPearl>*2)
    .outputs(<enderutilities:enderpart:20>)
    .duration(200)
    .EUt(450)
.buildAndRegister();

// Small Memory Chest
recipes.remove(<enderutilities:storage_0:0>);
recipes.addShaped(<enderutilities:storage_0:0> * 1, [[null, null, null], [<ore:oc:ram1>, <extrautils2:ingredients:2>, <ore:oc:ram1>],[<enderutilities:enderpart:0>, <minecraft:chest>, <enderutilities:enderpart:0>]]);

// Memory Chest
recipes.remove(<enderutilities:storage_0:1>);
recipes.addShaped(<enderutilities:storage_0:1> * 1, [[null, null, null], [<ore:oc:ram3>, <extrautils2:ingredients:2>, <ore:oc:ram3>],[<enderutilities:enderpart:0>, <enderutilities:storage_0:0>, <enderutilities:enderpart:0>]]);

// Large Memory Chest
recipes.remove(<enderutilities:storage_0:2>);
recipes.addShaped(<enderutilities:storage_0:2> * 1, [[null, null, null], [<ore:oc:ram5>, <extrautils2:ingredients:2>, <ore:oc:ram5>],[<enderutilities:enderpart:0>, <enderutilities:storage_0:1>, <enderutilities:enderpart:0>]]);

// Handy Chest (Normal)
recipes.remove(<enderutilities:storage_0:4>);
recipes.addShaped(<enderutilities:storage_0:4> * 1, [[null, null, null], [<gregtech:meta_item_1:172>, <enderutilities:storage_0:3>, <gregtech:meta_item_1:172>],[<enderutilities:enderpart:0>, <enderutilities:enderpart:10>, <enderutilities:enderpart:0>]]);

// Handy Chest (Large)
recipes.remove(<enderutilities:storage_0:5>);
recipes.addShaped(<enderutilities:storage_0:5> * 1, [[null, null, null], [<gregtech:meta_item_1:173>, <enderutilities:storage_0:4>, <gregtech:meta_item_1:173>],[<enderutilities:enderpart:1>, <enderutilities:enderpart:10>, <enderutilities:enderpart:1>]]);

// Handy Chest (Extended)
recipes.remove(<enderutilities:storage_0:6>);
recipes.addShaped(<enderutilities:storage_0:6> * 1, [[null, null, null], [<gregtech:meta_item_1:174>, <enderutilities:storage_0:5>, <gregtech:meta_item_1:174>],[<enderutilities:enderpart:2>, <enderutilities:enderpart:11>, <enderutilities:enderpart:2>]]);

// Junk Storage Unit
recipes.remove(<enderutilities:storage_0:7>);
recipes.addShaped(<enderutilities:storage_0:7> * 1, [[<ore:plateConstructionAlloy>, <ore:plateAAVoid>, <ore:plateConstructionAlloy>], [<ore:compressed2xCobblestone>, <enderutilities:barrel:0>, <ore:compressed2xCobblestone>],[<ore:plateConstructionAlloy>, <ore:plateAAVoid>, <ore:plateConstructionAlloy>]]);

// Ender Capacitor (Basic)
recipes.remove(<enderutilities:endercapacitor:0>);
recipes.addShaped(<enderutilities:endercapacitor:0> * 1, [[null, <torchmaster:frozen_pearl>, null], [<enderutilities:enderpart:0>, null, <enderutilities:enderpart:0>],[<ore:plateObsidian>, <enderutilities:enderpart:0>, <ore:plateObsidian>]]);

// Ender Capacitor (Enhanced)
recipes.remove(<enderutilities:endercapacitor:1>);
recipes.addShaped(<enderutilities:endercapacitor:1> * 1, [[null, <enderutilities:endercapacitor:0>, null], [<enderutilities:enderpart:1>, null, <enderutilities:enderpart:1>],[<ore:plateObsidian>, <enderutilities:enderpart:1>, <ore:plateObsidian>]]);

// Ender Capacitor (Advanced)
recipes.remove(<enderutilities:endercapacitor:2>);
recipes.addShaped(<enderutilities:endercapacitor:2> * 1, [[null, <enderutilities:endercapacitor:1>, null], [<enderutilities:enderpart:2>, null, <enderutilities:enderpart:2>],[<ore:plateRefinedObsidian>, <enderutilities:enderpart:2>, <ore:plateRefinedObsidian>]]);

// Ender Relic
recipes.remove(<enderutilities:enderpart:40>);
recipes.addShaped(<enderutilities:enderpart:40> * 1, [[<enderutilities:enderpart:0>, <ore:plateEnderPearl>, <enderutilities:enderpart:0>], [<ore:plateEnderPearl>, <minecraft:end_crystal>, <ore:plateEnderPearl>],[<enderutilities:enderpart:0>, <ore:plateEnderPearl>, <enderutilities:enderpart:0>]]);

// Jailer module
recipes.remove(<enderutilities:enderpart:45>);
recipes.addShaped(<enderutilities:enderpart:45> * 1, [[<enderutilities:enderpart:0>, <enderio:block_dark_iron_bars>, <enderutilities:enderpart:0>], [<enderio:block_dark_iron_bars>, null, <enderio:block_dark_iron_bars>],[<enderutilities:enderpart:0>, <enderio:block_dark_iron_bars>, <enderutilities:enderpart:0>]]);

// Memory Card (misc)
recipes.remove(<enderutilities:enderpart:50>);
recipes.addShaped(<enderutilities:enderpart:50> * 1, [[<ore:boltRoseGold>, <ore:boltRoseGold>, <ore:boltRoseGold>], [<enderutilities:enderpart:0>, <opencomputers:component:7>, <enderutilities:enderpart:0>],[<enderutilities:enderpart:0>, <opencomputers:component:7>, <enderutilities:enderpart:0>]]);

// Memory Card (items) 6 B
recipes.remove(<enderutilities:enderpart:51>);
recipes.addShaped(<enderutilities:enderpart:51> * 2, [[<ore:boltRoseGold>, <ore:boltRoseGold>, <ore:boltRoseGold>], [<enderutilities:enderpart:0>, <gregtech:machine:1628>, <enderutilities:enderpart:0>],[<enderutilities:enderpart:0>, <gregtech:machine:1628>, <enderutilities:enderpart:0>]]);

// Memory Card (items) 10 B
recipes.remove(<enderutilities:enderpart:53>);
recipes.addShaped(<enderutilities:enderpart:53> * 1, [[<ore:boltLumium>, <ore:boltLumium>, <ore:boltLumium>], [<enderutilities:enderpart:2>, <gregtech:machine:1630>, <enderutilities:enderpart:2>],[<enderutilities:enderpart:2>, <gregtech:machine:1630>, <enderutilities:enderpart:2>]]);

// Barrel Void Upgrade
recipes.remove(<enderutilities:enderpart:73>);
recipes.addShaped(<enderutilities:enderpart:73> * 2, [[<ore:plateAAVoid>, <ore:ingotBlueAlloy>, <ore:plateAAVoid>], [<ore:ingotBlueAlloy>, <quantumflux:voidbucket>, <ore:ingotBlueAlloy>],[<ore:plateAAVoid>, <ore:ingotBlueAlloy>, <ore:plateAAVoid>]]);

// Barrel Capacity Upgrade
recipes.remove(<enderutilities:enderpart:72>);
recipes.addShaped(<enderutilities:enderpart:72> * 2, [[<ore:plateBlueAlloy>, <ore:chest>, <ore:plateBlueAlloy>], [<ore:springAluminium>, <enderutilities:barrel:0>, <ore:springAluminium>],[<ore:plateBlueAlloy>, <ore:chest>, <ore:plateBlueAlloy>]]);

// Barrel Structural Upgrade
recipes.remove(<enderutilities:enderpart:71>);
recipes.addShaped(<enderutilities:enderpart:71> * 2, [[<ore:plateObsidian>, <ore:barsIron>, <ore:plateObsidian>], [<ore:barsIron>, <ore:ingotElectrotineAlloy>, <ore:barsIron>],[<ore:plateObsidian>, <ore:barsIron>, <ore:plateObsidian>]]);

// Barrel Label
recipes.remove(<enderutilities:enderpart:70>);
recipes.addShaped(<enderutilities:enderpart:70> * 2, [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], [<ore:stickWood>, <ore:ingotElectrotineAlloy>, <ore:stickWood>],[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]]);

// Link Crystal (Location)
recipes.remove(<enderutilities:linkcrystal:0>);
recipes.addShaped(<enderutilities:linkcrystal:0> * 1, [[<ore:plateEndSteel>, <ore:empoweredEndorCrystal>, <ore:plateEndSteel>], [<ore:empoweredEndorCrystal>, <abyssalcraft:lifecrystal>, <ore:empoweredEndorCrystal>],[<ore:plateEndSteel>, <ore:empoweredEndorCrystal>, <ore:plateEndSteel>]]);

// Link Crystal (Block)
recipes.remove(<enderutilities:linkcrystal:1>);
recipes.addShaped(<enderutilities:linkcrystal:1> * 1, [[<ore:plateEndSteel>, <ore:EmpoweredPalisCrystal>, <ore:plateEndSteel>], [<ore:EmpoweredPalisCrystal>, <abyssalcraft:lifecrystal>, <ore:EmpoweredPalisCrystal>],[<ore:plateEndSteel>, <ore:EmpoweredPalisCrystal>, <ore:plateEndSteel>]]);

// Link Crystal (Portal)
recipes.remove(<enderutilities:linkcrystal:2>);
recipes.addShaped(<enderutilities:linkcrystal:2> * 1, [[<ore:plateEndSteel>, <ore:ingotCrystallinePinkSlime>, <ore:plateEndSteel>], [<ore:ingotCrystallinePinkSlime>, <abyssalcraft:lifecrystal>, <ore:ingotCrystallinePinkSlime>],[<ore:plateEndSteel>, <ore:ingotCrystallinePinkSlime>, <ore:plateEndSteel>]]);

// Wand of the Lazy Builder
recipes.remove(<enderutilities:builderswand>);
recipes.addShaped(<enderutilities:builderswand> * 1, [[null, null, <enderutilities:enderpart:17>], [null, <betterbuilderswands:wanddiamond>, null],[<enderutilities:enderpart:2>, null, null]]);

# [Dolly] from [Steel Screw][+4]
recipes.remove(<enderutilities:dolly>);
craft.make(<enderutilities:dolly>, ["pretty",
  "t ╱ ╱",
  "S ╱ ╱",
  "□ □ ¤"], {
  "t": <ore:screwSteel>,      # Steel Screw
  "╱": <ore:stickRedAlloy>,   # Red Alloy Rod
  "S": <ore:gtceScrewdrivers>,# Iron Screwdriver
  "□": <ore:lightPlateSteel>, # Light Steel Plate
  "¤": <ore:gearRubber>,      # Rubber Gear
});

// Ender Arrow
recipes.remove(<enderutilities:enderarrow>);
recipes.addShaped(<enderutilities:enderarrow> * 5, [[<minecraft:arrow>, <enderutilities:enderpart:0>, <minecraft:arrow>], [<enderutilities:enderpart:0>, <minecraft:arrow>, <enderutilities:enderpart:0>],[<minecraft:arrow>, <enderutilities:enderpart:0>, <minecraft:arrow>]]);

// Ender Bag
recipes.remove(<enderutilities:enderbag>);
recipes.addShaped(<enderutilities:enderbag> * 1, [[<enderutilities:enderpart:21>, <contenttweaker:blood_infused_leather>, <enderutilities:enderpart:21>], [<contenttweaker:blood_infused_leather>, <enderutilities:enderpart:11>, <contenttweaker:blood_infused_leather>],[<enderutilities:enderpart:21>, <quark:quilted_wool:13>, <enderutilities:enderpart:21>]]);

// Ender Pearl (reusable)
recipes.remove(<enderutilities:enderpearlreusable:0>);
recipes.addShaped(<enderutilities:enderpearlreusable:0> * 1, [[<enderutilities:enderpart:0>, <ore:blockEnderPearl>, <enderutilities:enderpart:0>], [<ore:blockEnderPearl>, <contenttweaker:hyper_pearl>, <ore:blockEnderPearl>],[<enderutilities:enderpart:0>, <ore:blockEnderPearl>, <enderutilities:enderpart:0>]]);

// Handy Bag
recipes.remove(<enderutilities:handybag:0>);
recipes.addShaped(<enderutilities:handybag:0> * 1, [[<enderutilities:enderpart:21>, <enderutilities:enderpart:1>, <enderutilities:enderpart:21>], [<enderutilities:enderpart:1>, <gregtech:machine:1628>, <enderutilities:enderpart:1>],[<contenttweaker:blood_infused_leather>, <enderutilities:enderpart:1>, <contenttweaker:blood_infused_leather>]]);

// Handy Bag (Large)
recipes.remove(<enderutilities:handybag:1>);
recipes.addShaped(<enderutilities:handybag:1> * 1, [[<enderutilities:enderpart:21>, <enderutilities:enderpart:2>, <enderutilities:enderpart:21>], [<enderutilities:enderpart:2>, <enderutilities:handybag:0>, <enderutilities:enderpart:2>],[<ore:plateDenseElementium>, <enderutilities:enderpart:2>, <ore:plateDenseElementium>]]);

// Inventory Swapper MC: �a1�r�f P: �a1�r�f
recipes.remove(<enderutilities:inventoryswapper>);
recipes.addShaped(<enderutilities:inventoryswapper> * 1, [[<enderutilities:enderpart:21>, <enderutilities:enderpart:0>, <enderutilities:enderpart:21>], [<enderutilities:enderpart:0>, <gregtech:machine:1628>, <enderutilities:enderpart:0>],[<ore:craftingPiston>, <enderutilities:enderpart:0>, <ore:craftingPiston>]]);

// Mob Harness
recipes.remove(<enderutilities:mobharness>);
recipes.addShaped(<enderutilities:mobharness> * 1, [[<contenttweaker:industrial_leather>, <enderutilities:enderpart:21>, <contenttweaker:industrial_leather>], [<contenttweaker:industrial_leather>, <enderutilities:enderpart:10>, <contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>, <enderutilities:enderpart:21>, <contenttweaker:industrial_leather>]]);

// Nullifier - 1 / 9
recipes.remove(<enderutilities:nullifier>);
recipes.addShaped(<enderutilities:nullifier> * 1, [[<ore:plateBlueAlloy>, <enderutilities:enderpart:0>, <ore:plateBlueAlloy>], [<enderutilities:enderpart:0>, <danknull:dank_null_0>, <enderutilities:enderpart:0>],[<ore:plateBlueAlloy>, <enderutilities:enderpart:0>, <ore:plateBlueAlloy>]]);

// Item Pickup Manager - pre: �a1�r�f LC: �a0�r�f
recipes.remove(<enderutilities:pickupmanager>);
recipes.addShaped(<enderutilities:pickupmanager> * 1, [[<enderutilities:enderpart:1>, <gregtech:meta_item_1:159>, <enderutilities:enderpart:1>], [<enderutilities:enderpart:1>, <minecraft:ender_chest>, <enderutilities:enderpart:1>],[<enderutilities:enderpart:1>, <ore:gearRedstone>, <enderutilities:enderpart:1>]]);

// Quick Stacker P: �a1�r�f
recipes.remove(<enderutilities:quickstacker>);
recipes.addShaped(<enderutilities:quickstacker> * 1, [[<ore:foilElementium>, <ore:foilElementium>, <ore:foilElementium>], [<ore:foilElementium>, <enderutilities:pickupmanager>, <ore:foilElementium>],[<ore:foilElementium>, <ore:foilElementium>, <ore:foilElementium>]]);

// Living Matter Manipulator
recipes.remove(<enderutilities:livingmanipulator>);
recipes.addShaped(<enderutilities:livingmanipulator> * 1, [[<enderutilities:enderpart:2>, <enderutilities:enderpart:1>, <enderutilities:enderpart:1>], [<ore:screwEndSteel>, <enderutilities:enderpart:11>, <enderutilities:enderpart:1>],[<ore:gtceScrewdrivers>, <ore:screwEndSteel>, <enderutilities:enderpart:1>]]);

// Portal Scaler
recipes.remove(<enderutilities:portalscaler>);
recipes.addShaped(<enderutilities:portalscaler> * 1, [[<enderutilities:frame>, <ore:blockGlassPurple>, <enderutilities:frame>], [<enderutilities:frame>, <enderutilities:enderpart:17>, <enderutilities:frame>],[<enderutilities:frame>, <enderutilities:enderpart:2>, <enderutilities:frame>]]);

// Ruler
recipes.remove(<enderutilities:ruler>);
recipes.addShaped(<enderutilities:ruler> * 1, [[<ore:plateBlueAlloy>, <tconstruct:tool_rod>.withTag({Material: "obsidian"}), null], [<ore:plateBlueAlloy>, null, <tconstruct:tool_rod>.withTag({Material: "obsidian"})],[<ore:plateBlueAlloy>, <ore:plateBlueAlloy>, <ore:plateBlueAlloy>]]);

// Syringe (empty)
recipes.remove(<enderutilities:syringe>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:517>*4, <ore:screwVanadiumSteel>*4, <ore:stickVanadiumSteel>, <enderutilities:enderpart:1>)
    .outputs(<enderutilities:syringe>)
    .duration(250)
    .EUt(512)
.buildAndRegister();

// Syringe (Paralyze)
recipes.remove(<enderutilities:syringe:1>);
mixer.recipeBuilder()
    .inputs(<enderutilities:syringe>, <minecraft:fermented_spider_eye>, <ore:cropMushroomBrown>, <ore:cropMushroomRed>, <ore:cropWhitemushroom>)
    .fluidInputs(<liquid:distilled_water>*250)
    .outputs(<enderutilities:syringe:1>)
    .duration(250)
    .EUt(512)
.buildAndRegister();

// Syringe (Stimulant)
recipes.remove(<enderutilities:syringe:2>);
mixer.recipeBuilder()
    .inputs(<enderutilities:syringe>, <ore:dustSugar>, <harvestcraft:energydrinkitem>, <minecraft:speckled_melon>, <ore:foodChocolatebar>)
    .fluidInputs(<liquid:distilled_water>*250)
    .outputs(<enderutilities:syringe:2>)
    .duration(250)
    .EUt(512)
.buildAndRegister();

// Syringe (Passifier)
recipes.remove(<enderutilities:syringe:3>);
mixer.recipeBuilder()
    .inputs(<enderutilities:syringe>, <minecraft:cookie>, <ore:foodCreepercookie>, <ore:listAllmilk>, <minecraft:cake>)
    .fluidInputs(<liquid:distilled_water>*250)   
    .outputs(<enderutilities:syringe:3>)
    .duration(250)
    .EUt(512)
.buildAndRegister();

// Void Pickaxe
recipes.remove(<enderutilities:void_pickaxe>);
recipes.addShaped(<enderutilities:void_pickaxe> * 1, [[<enderutilities:enderpart:2>, <tconstruct:pick_head>.withTag({Material: "xu_demonic_metal"}), <enderutilities:enderpart:2>], [<ore:EmpoweredAAVoidCrystal>, <enderutilities:enderpart:20>, <ore:EmpoweredAAVoidCrystal>],[null, <enderutilities:enderpart:20>, null]]);
