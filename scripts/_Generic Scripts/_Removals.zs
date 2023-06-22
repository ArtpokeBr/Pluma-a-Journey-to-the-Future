import crafttweaker.item.IItemStack;

// Creating a Game Stage that specifically is used to Remove Items.

var RemovingOnlyTheRecipe as IItemStack[] = [
<scannable:scanner>,
<scannable:module_blank>,
<jecalculation:item_calculator>,
<jecalculation:item_calculator:1>,
<actuallyadditions:block_coffee_machine>,
<magicalmap:map>,
<cyclicmagic:inventory_food>,
<cyclicmagic:book_ender>,
<embers:ember_detector>,
<extrautils2:luxsaber:7>,
<extrautils2:luxsaber:1>,
<extrautils2:luxsaber:5>,
<extrautils2:luxsaber:3>,
<extrautils2:luxsaber>,
<extrautils2:luxsaber:4>,
<extrautils2:luxsaber:2>,
<extrautils2:luxsaber:6>,
<naturescompass:naturescompass>,
<mekanism:machineblock:13>,
<mekanism:robit>,
<cyclicmagic:ender_eye_orb>,
<botania:flowerbag>,
<embers:staff_ember>,
<embers:ignition_cannon>,
<embers:axe_clockwork>,
<embers:pickaxe_clockwork>,
<embers:grandhammer>,
<evilcraft:sceptre_of_thunder>,
<cyclicmagic:glowing_helmet>,
<thermalfoundation:tome_experience>,
<cyclicmagic:charm_antidote>,
<cyclicmagic:charm_water>,
<cyclicmagic:charm_air>,
<cyclicmagic:charm_void>,
<cyclicmagic:charm_boat>,
<cyclicmagic:charm_fire>,
<cyclicmagic:charm_speed>,
<cyclicmagic:charm_wing>,
<cyclicmagic:evoker_fang>,
<cyclicmagic:ender_dungeon>,
<cyclicmagic:tool_spelunker>,
<cyclicmagic:tool_randomize>,
<cyclicmagic:food_step>,
<randomthings:rainshield>,
<randomthings:biomeradar>,
<randomthings:obsidianskull>,
<randomthings:timeinabottle>,
<actuallyadditions:item_crate_keeper>

    ];
for i in RemovingOnlyTheRecipe {
recipes.remove(i);
i.addTooltip(format.lightPurple("Can be bought in the Shop!"));
}

<jecalculation:item_calculator>.addTooltip(format.gray("Press Shift + Right Click to swap to the Math Calculator."));
<embers:ember_detector>.addTooltip(format.gray("Hold to detect the Ember Level in the Current Chunk."));

var DisabledStage as IItemStack[] = [
    ];

for i in DisabledStage {
mods.recipestages.Recipes.setRecipeStage("DisabledStage", i);    
mods.ItemStages.addItemStage("DisabledStage", i);
}

var RemovingOnlyTheRecipeII as IItemStack[] = [
<enderio:block_alloy>,
<enderio:block_alloy:1>,
<enderio:block_alloy:2>,
<enderio:block_alloy:4>,
<enderio:block_alloy:5>,
<enderio:block_alloy:6>,
<enderio:block_alloy:8>,
<tconstruct:metal>,
<tconstruct:metal:1>
    ];
for i in RemovingOnlyTheRecipeII {
recipes.remove(i);
}

var ItensRemovidos as IItemStack[] = [

//Abyssalcraft
<abyssalcraft:crate>,
<abyssalcraft:odbcore>,
<abyssalcraft:odb>,
<abyssalcraft:charcoal>,
<abyssalcraft:materializer>,
<abyssalcraft:dpick>,
<abyssalcraft:daxe>,
<abyssalcraft:dshovel>,
<abyssalcraft:dsword>,
<abyssalcraft:dhoe>,
<abyssalcraft:apick>,
<abyssalcraft:aaxe>,
<abyssalcraft:ashovel>,
<abyssalcraft:asword>,
<abyssalcraft:dreadiumhoe>,
<abyssalcraft:dreadiumsword>,
<abyssalcraft:dreadiumshovel>,
<abyssalcraft:dreadiumaxe>,
<abyssalcraft:dreadiumpickaxe>,
<abyssalcraft:corhoe>,
<abyssalcraft:corsword>,
<abyssalcraft:corshovel>,
<abyssalcraft:coraxe>,
<abyssalcraft:corpick>,
<abyssalcraft:ahoe>,

//Avaritia
<avaritia:extreme_crafting_table>,
<botania_tweaks:dire_crafty_crate>,
<avaritia:resource:6>,
<avaritia:block_resource:1>,
<avaritia:neutronium_compressor>,
<avaritia:singularity:14>,
<avaritia:singularity:3>,
<avaritia:singularity:4>,
<avaritia:singularity:5>,
<avaritia:singularity:2>,
<avaritia:singularity:13>,
<avaritia:singularity:12>,
<avaritia:singularity:11>,
<avaritia:singularity:10>,
<avaritia:singularity:9>,
<avaritia:singularity:8>,
<avaritia:singularity:7>,
<avaritia:singularity:6>,
<avaritia:singularity>,
<avaritia:singularity:1>,

//Overloaded
<overloaded:railgun>,
<overloaded:ray_gun>,
<overloaded:settings_editor>,
<overloaded:multi_boots>,
<overloaded:multi_leggings>,
<overloaded:multi_chestplate>,
<overloaded:multi_helmet>,
<overloaded:multi_tool>,
<overloaded:nether_star_block>,
<overloaded:infinite_water_source>,
<overloaded:player_interface>,
<overloaded:item_interface>,
<overloaded:hyper_energy_sender>,
<overloaded:hyper_energy_receiver>,
<overloaded:hyper_fluid_sender>,
<overloaded:hyper_fluid_receiver>,
<overloaded:hyper_item_sender>,
<overloaded:hyper_item_receiver>,
<overloaded:item_core>,
<overloaded:energy_core>,
<overloaded:linking_card>,
<overloaded:fluid_core>,
<overloaded:energy_extractor>,

//Ender IO
<enderio:block_simple_stirling_generator>,
<enderio:block_simple_wired_charger>,
<enderio:block_simple_furnace>,
<enderio:block_simple_crafter>,
<enderio:block_simple_alloy_smelter>,
<enderio:item_endergy_conduit>,
<enderio:item_endergy_conduit:1>,
<enderio:item_endergy_conduit:2>,
<enderio:item_endergy_conduit:3>,
<enderio:item_endergy_conduit:4>,
<enderio:item_endergy_conduit:5>,
<enderio:item_endergy_conduit:6>,

//Ender Utils
<enderutilities:enderpart:30>,

//AE2
<aeadditions:terminal.universal.wireless>,
<aeadditions:vibrantchamberfluid>,
<aeadditions:storage.physical:4>,
<aeadditions:pattern.fluid>,
<aeadditions:terminal.fluid.wireless>,

//Astral
<astralsorcery:blockcustomsandore>,

//Embers
<embers:stamp_bar_raw>,
<embers:stamp_bar>,
<embers:stamp_gear_raw>,
<embers:stamp_gear>,
<embers:geo_separator>,
<embers:mini_boiler>,
<embers:dawnstone_anvil>,

//Improved Backpacks
<improvedbackpacks:bound_leather>,
<improvedbackpacks:tanned_leather>,

//Roots
<roots:fire_starter>,
<roots:wooden_shears>,
<roots:glass_eye>,

//Cyclic
<cyclicmagic:builder_block>,
<cyclicmagic:placer_block>,
<cyclicmagic:block_user>,
<cyclicmagic:cable_wireless>,
<cyclicmagic:cable_wireless_energy>,
<cyclicmagic:ender_lightning>,

//Twilight Forest
<twilightforest:uncrafting_table>,

//AE2
<threng:machine:2>,
<threng:machine:1>,

//Actually Additions
<actuallyadditions:block_bio_reactor>,
<actuallyadditions:block_miner>,
<actuallyadditions:block_leaf_generator>,
<actuallyadditions:block_lava_factory_controller>,
<actuallyadditions:block_grinder>,
<actuallyadditions:block_grinder_double>,
<actuallyadditions:block_furnace_double>,
<actuallyadditions:block_oil_generator>,
<actuallyadditions:block_furnace_solar>,
<actuallyadditions:block_fishing_net>,
<actuallyadditions:block_heat_collector>,
<actuallyadditions:item_bag>,
<actuallyadditions:item_void_bag>,
<actuallyadditions:item_tele_staff>,
<actuallyadditions:item_spawner_changer>,
<actuallyadditions:item_crafter_on_a_stick>,
<actuallyadditions:block_misc:6>,
<actuallyadditions:item_mining_lens>,
<actuallyadditions:item_food:2>,
<actuallyadditions:item_food>, //Cheese Wheel
<actuallyadditions:item_food:1>,
<actuallyadditions:item_food:3>,
<actuallyadditions:item_food:4>,
<actuallyadditions:item_food:5>,
<actuallyadditions:item_food:6>,
<actuallyadditions:item_food:7>,
<actuallyadditions:item_food:9>,
<actuallyadditions:item_food:8>,
<actuallyadditions:item_food:10>,
<actuallyadditions:item_food:20>,
<actuallyadditions:item_food:19>,
<actuallyadditions:item_food:18>,
<actuallyadditions:item_food:14>,
<actuallyadditions:item_food:13>,
<actuallyadditions:item_food:12>,
<actuallyadditions:item_food:11>,

//Logistic Pipes
<logisticspipes:power_provider_rf>,
<logisticspipes:power_provider_eu>,
<logisticspipes:power_provider_mj>,
<logisticspipes:upgrade_power_transportation>,
<logisticspipes:logistics_programmer>,
<logisticspipes:program_compiler>,

//Tconstruct    
<tconstruct:rack:1>.withEmptyTag(),
<tconstruct:cast_custom:4>,
<tconstruct:cast_custom:2>,
<tcomplement:melter>,
<tcomplement:storage>,
<tconstruct:stone_stick>,
<tconstruct:materials:2>,
<tconstruct:wooden_hopper>,
//<tconstruct:pattern>.withTag({PartType: "plustic:laser_medium"}),
//<tconstruct:cast>.withTag({PartType: "plustic:laser_medium"}),
<tcomplement:steel_helmet>,
<tcomplement:steel_chestplate>,
<tcomplement:steel_leggings>,
<tcomplement:steel_boots>,
<tconstruct:slime_boots:5>,
<tconstruct:slimesling:5>,

// ExNihilo
<exnihilocreatio:item_material:1>,
<exnihilocreatio:block_crucible>,
<exnihilocreatio:block_crucible:1>,
<exnihilocreatio:block_crucible_wood>,

// HarvestCraft
<harvestcraft:waterfilter>,
<harvestcraft:grinder>,
<harvestcraft:well>,
<harvestcraft:beehive>,
<harvestcraft:apiary>,
<harvestcraft:waxcomb>,
<harvestcraft:honeycomb>,
<harvestcraft:honeycombitem>,
<harvestcraft:waxcombitem>,
<harvestcraft:presser>,
<harvestcraft:queenbeeitem>,
<harvestcraft:grubitem>,
<harvestcraft:cookedgrubitem>,
<harvestcraft:shippingbin>,
<harvestcraft:market>,

// ProjectRed
<projectred-core:resource_item:400>,
<projectred-core:resource_item:401>,
<projectred-core:resource_item:402>,
<projectred-core:resource_item:410>,

//GregTech
<gregtech:meta_item_1:471>, //LV Item Magnet
<gregtech:meta_item_1:472>, //HV Item Magnet
<gregtech:gt_armor:3>, //Electric Thruster Jetpack
<gregtech:gt_armor:2>, //Liquid-Fueled Jetpack
<gregtech:gt_armor:4>, //Advanced Thruster Jetpack

//Advanced Rocketry / Vulpes Library
<libvulpes:coalgenerator>,

//Fossil and Archeology
<fossil:sifter>,

//Mekanism
<mekanism:transmitter>.withTag({tier: 0}),
<mekanism:transmitter>.withTag({tier: 1}),
<mekanism:transmitter>.withTag({tier: 2}),
<mekanism:transmitter>.withTag({tier: 3}),
<mekanism:transmitter:1>.withTag({tier: 0}),
<mekanism:transmitter:1>.withTag({tier: 1}),
<mekanism:transmitter:1>.withTag({tier: 2}),
<mekanism:transmitter:1>.withTag({tier: 3}),
<mekanism:transmitter:3>.withTag({tier: 0}),
<mekanism:transmitter:5>.withTag({tier: 0}),
<mekanism:transmitter:4>.withTag({tier: 0}),
<mekanism:transmitter:3>.withTag({tier: 3}),
<mekanism:transmitter:3>.withTag({tier: 2}),
<mekanism:transmitter:3>.withTag({tier: 1}),
<mekanism:seismicreader>,
<mekanism:jetpack>,
<mekanism:armoredjetpack>,
<mekanism:basicblock2:7>, /*Boiler Casing*/
<mekanism:basicblock2:8>, /*Boiler Valve*/
<mekanism:basicblock2:6>, /*Pressure Disperser*/
<mekanism:machineblock3:5>, /*Formulaic Assembler*/

//QuantumFlux
<quantumflux:mattertransporter>,
<quantumflux:zeropointextractor>,
<quantumflux:netherbane>,
<quantumflux:graphiteore>,
<quantumflux:graphitedust>,
<quantumflux:linkingcard>,
<quantumflux:telepad>,
<quantumflux:quibitcluster:1>,
<quantumflux:quibitcluster:2>,
<quantumflux:quibitcluster:3>,
<quantumflux:quibitcluster:4>,
<quantumflux:quibitcluster:5>,
<quantumflux:quibitcluster>,

//MagneticCraft
<magneticraft:grinder>,
<magneticraft:sieve>,
<magneticraft:sluice_box>,
<magneticraft:chunks>,
<magneticraft:chunks:1>,
<magneticraft:chunks:2>,
<magneticraft:chunks:3>,
<magneticraft:chunks:4>,
<magneticraft:chunks:5>,
<magneticraft:chunks:7>,
<magneticraft:chunks:9>,
<magneticraft:chunks:10>,
<magneticraft:rocky_chunks:4>,
<magneticraft:rocky_chunks:3>,
<magneticraft:rocky_chunks:2>,
<magneticraft:rocky_chunks:1>,
<magneticraft:rocky_chunks>,
<magneticraft:chunks:14>,
<magneticraft:chunks:13>,
<magneticraft:chunks:12>,
<magneticraft:chunks:11>,
<magneticraft:rocky_chunks:14>,
<magneticraft:rocky_chunks:13>,
<magneticraft:rocky_chunks:12>,
<magneticraft:rocky_chunks:11>,
<magneticraft:rocky_chunks:10>,
<magneticraft:rocky_chunks:9>,
<magneticraft:rocky_chunks:8>,
<magneticraft:rocky_chunks:7>,
<magneticraft:rocky_chunks:5>,
<magneticraft:electric_drill>.withEmptyTag(),
<magneticraft:electric_chainsaw>.withEmptyTag(),
<magneticraft:electric_piston>.withEmptyTag(),
<magneticraft:battery_item_low>.withEmptyTag(),
<magneticraft:battery_item_medium>.withEmptyTag(),
<magneticraft:oil_source>,
<magneticraft:oil_source:10>,
<magneticraft:electric_furnace>,
<magneticraft:wind_turbine>,
<magneticraft:electric_heater>,
<magneticraft:rf_heater>,
<magneticraft:electric_engine>,
<magneticraft:heat_pipe>,
<magneticraft:brick_furnace>,
<magneticraft:heat_sink>,
<magneticraft:pneumatic_restriction_tube>,
<magneticraft:pneumatic_tube>,
<magneticraft:fabricator>,
<magneticraft:insulated_heat_pipe>,
<magneticraft:gasification_unit>,
<magneticraft:relay>,
<magneticraft:filter>,
<magneticraft:transposer>,
<magneticraft:battery>,
<magneticraft:floppy_disk>.withEmptyTag(),
<magneticraft:floppy_disk:1>.withEmptyTag(),
<magneticraft:floppy_disk:2>.withEmptyTag(),
<magneticraft:floppy_disk:3>.withEmptyTag(),
<magneticraft:floppy_disk:4>.withEmptyTag(),
<magneticraft:tungsten_gear>,
<magneticraft:steel_gear>,
<magneticraft:broken_gear>,
<magneticraft:iron_gear>,
<magneticraft:floppy_disk:5>.withEmptyTag(),
<magneticraft:floppy_disk:6>.withEmptyTag(),
<magneticraft:computer>,
<magneticraft:mining_robot>,
<magneticraft:connector>,
<magneticraft:electric_pole>,
<magneticraft:tesla_tower>,
<magneticraft:energy_receiver>,
<magneticraft:electric_pole_transformer>,
<magneticraft:solar_panel>,
<magneticraft:solar_tower>,
<magneticraft:solar_mirror>,
<magneticraft:pumpjack>,
<magneticraft:oil_heater>,
<magneticraft:refinery>,
<magneticraft:voltmeter>,
<magneticraft:thermometer>,
<magneticraft:small_tank>,
<magneticraft:iron_pipe>,
<magneticraft:steel_hammer>,
<magneticraft:iron_hammer>,
<magneticraft:stone_hammer>,
<magneticraft:electric_cable>,
<magneticraft:steam_engine>,
<magneticraft:steam_turbine>,
<magneticraft:rf_transformer>,
<magneticraft:thermopile>,
<magneticraft:multiblock_parts:1>,
<magneticraft:hydraulic_press>,

//Draconic
<draconicevolution:generator>,
<draconicevolution:rain_sensor>,

//Open Computers
<opencomputers:material>,
<opencomputers:material:29>,

//Thermal Expansion
<thermalexpansion:augment:256>,
<thermalexpansion:augment:257>,
<thermalexpansion:augment:258>,
<thermalexpansion:augment:273>,
<thermalexpansion:augment:288>,
<thermalexpansion:augment:303>,
<thermalexpansion:augment:304>,
<thermalexpansion:augment:336>,
<thermalexpansion:augment:337>,
<thermalexpansion:augment:352>,
<thermalexpansion:augment:512>,
<thermalexpansion:augment:513>,
<thermalexpansion:augment:514>,
<thermalexpansion:augment:515>,
<thermalexpansion:augment:576>,
<thermalexpansion:augment:640>,
<thermalexpansion:augment:656>,
<thermalexpansion:augment:720>,
<thermalexpansion:augment:704>,
<thermalexpansion:augment:688>,
<thermalexpansion:augment:674>,
<thermalexpansion:augment:673>,
<thermalexpansion:augment:672>,
<thermalfoundation:tome_lexicon>,

//Railcraft
<railcraft:brick_andesite:1>,
<railcraft:brick_andesite:5>,

<railcraft:brick_diorite:1>,
<railcraft:brick_diorite:5>,

<railcraft:brick_granite:1>,
<railcraft:brick_granite:5>,

//RandomThings
<randomthings:diviningrod:6>,
<randomthings:diviningrod:1>,
<randomthings:diviningrod:19>,
<randomthings:diviningrod:18>,
<randomthings:diviningrod:12>,
<randomthings:diviningrod:7>,
<randomthings:diviningrod:3>,
<randomthings:diviningrod:15>,
<randomthings:diviningrod:13>,
<randomthings:diviningrod:11>,
<randomthings:diviningrod:10>,
<randomthings:diviningrod:16>,
<randomthings:diviningrod:8>,
<randomthings:diviningrod:2>,
<randomthings:diviningrod:14>,
<randomthings:diviningrod:5>,
<randomthings:diviningrod:9>,
<randomthings:diviningrod:21>,
<randomthings:diviningrod:4>,
<randomthings:diviningrod>,
<randomthings:diviningrod:17>,
<randomthings:diviningrod:20>,
<randomthings:spectrecoil_redstone>,
<randomthings:spectrecoil_ender>,
<randomthings:weatheregg:2>,
<randomthings:weatheregg:1>,
<randomthings:weatheregg>,
<randomthings:lightredirector>,
<randomthings:analogemitter>,
<randomthings:endermailbox>,
<randomthings:enderletter>,
<randomthings:potionvaporizer>,
<randomthings:voxelprojector>,
<randomthings:blockbreaker>,
<randomthings:blazeandsteel>,
<randomthings:enderbucket>,
<randomthings:reinforcedenderbucket>,
<randomthings:spectrecharger>,
<randomthings:spectrecharger:1>,
<randomthings:spectrecharger:2>,

//Pyrotech
<pyrotech:log_pile>,
<pyrotech:material:27>,
<pyrotech:anvil_obsidian>,
<pyrotech:material:50>,
<pyrotech:material:51>,
<pyrotech:crafting_table_template>,
<pyrotech:furnace_core>,

//Forge Microblocks
<microblockcbe:stone_rod>,

//Forestry
<forestry:charcoal>,
<binniecore:storage>,
<binniecore:storage:1>,
<binniecore:storage:2>,
<binniecore:storage:3>,
<binniecore:storage:4>,
<binniecore:storage:5>,
<forestry:bottler>,
<forestry:still>,
<binniecore:field_kit>,

//Industrial Foregoing
<industrialforegoing:tinydryrubber>,
<industrialforegoing:infinity_drill>.withTag({Energy: 16000000 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "UNCOMMON"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 0 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "POOR"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 4000000 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "COMMON"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 80000000 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "RARE"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 3360000000 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "LEGENDARY"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 9223372036854775807 as long, Fluid: {FluidName: "biofuel", Amount: 1000000}, Special: 1 as byte, Selected: "ARTIFACT"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 9223372036854775807 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "ARTIFACT"}),
<industrialforegoing:infinity_drill>.withTag({Energy: 480000000 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "EPIC"}),
<industrialforegoing:energy_field_addon>,

//Natura
<natura:sticks>,
<natura:sticks:1>,
<natura:sticks:2>,
<natura:sticks:3>,
<natura:sticks:4>,
<natura:sticks:5>,
<natura:sticks:6>,
<natura:sticks:7>,
<natura:sticks:8>,
<natura:sticks:12>,
<natura:sticks:11>,
<natura:sticks:10>,
<natura:sticks:9>,
<natura:blaze_rail>,
<natura:nether_pressure_plate>,
<natura:nether_button>,
<natura:nether_lever>,
<natura:blaze_hopper>,
<natura:nether_doors:3>,
<natura:overworld_doors:7>,
<natura:overworld_doors:6>,
<natura:overworld_doors:5>,
<natura:netherrack_furnace>,
<natura:blaze_rail_detector>,
<natura:blaze_rail_activator>,
<natura:blaze_rail_golden>,

//Farming for Blockheads
<farmingforblockheads:feeding_trough>,

//ExtraUtils
<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}),
<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}),
<extrautils2:teleporter:1>,
<extrautils2:book>

        ];
for item in ItensRemovidos {
	mods.jei.JEI.removeAndHide(item);

	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}

	val actualItem = (item.damage == 0 && item.isDamageable)
        ? item.anyDamage()
        : item;
    furnace.remove(<*>, actualItem);
    furnace.remove(actualItem);
    recipes.remove(actualItem);
}


// Furnace Removals ================================

var FurnaceRemovals as IItemStack[] = [
	
        ];
for item in ItensRemovidos {
	furnace.remove(item);
}