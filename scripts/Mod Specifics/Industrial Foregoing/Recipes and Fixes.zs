import mods.pyrotech.DryingRack as DryingRack;
import mods.industrialforegoing.Extractor as FluidExtractor;
import mods.industrialforegoing.SludgeRefiner as SludgeRefiner;
import mods.industrialforegoing.BioReactor as BioReactor;
import mods.industrialforegoing.ProteinReactor as ProteinReactor;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IIngredient;

// Plastic Production ===============================================

# Dry Rubber
recipes.remove(<industrialforegoing:dryrubber>);
mods.nuclearcraft.Extractor.addRecipe(<ic2:misc_resource:4>, <industrialforegoing:dryrubber>, <liquid:glue>*10);
DryingRack.addRecipe(
  "DryRubber",
  <industrialforegoing:dryrubber>,
  <ic2:misc_resource:4>,          // Sticky Resin
  750,
  false
);

# Plastic itself
<industrialforegoing:plastic>.displayName = "Industrial Plastic";
furnace.remove(<industrialforegoing:plastic>);
chemical_reactor.recipeBuilder()
    .inputs([<industrialforegoing:dryrubber>, <ore:dustSulfur>])
    .fluidInputs(<liquid:latex>*250)
    .outputs(<industrialforegoing:plastic>*3)
    .duration(100)
    .EUt(90)
.buildAndRegister();

# More sludge outputs
SludgeRefiner.add(<gregtech:meta_item_1:1001>/*Fertilizer from GT */, 10);
SludgeRefiner.add(<thermalfoundation:material:816>, 10);
SludgeRefiner.add(<forestry:fertilizer_bio>, 10);
SludgeRefiner.add(<forestry:mulch>, 10);
SludgeRefiner.add(<thaumcraft:nugget:10>, 10);

# Fluid Extractor outputs
FluidExtractor.add(<integrateddynamics:menril_log>, <fluid:menrilresin> * 5);
FluidExtractor.add(<ic2:rubber_wood>, <liquid:latex> * 5);

# BioReactor, additional entries
	val otherCrops = [
		<harvestcraft:almonditem>,
		<harvestcraft:amaranthitem>,
		<harvestcraft:barleyitem>,
		<harvestcraft:breadfruititem>,
		<harvestcraft:cashewitem>,
		<harvestcraft:chestnutitem>,
		<harvestcraft:flaxitem>,
		<harvestcraft:garlicitem>,
		<harvestcraft:gingeritem>,
		<harvestcraft:juteitem>,
		<harvestcraft:kaleitem>,
		<harvestcraft:kenafitem>,
		<harvestcraft:milletitem>,
		<harvestcraft:mustardseedsitem>,
		<harvestcraft:oatsitem>,
		<harvestcraft:peanutitem>,
		<harvestcraft:pecanitem>,
		<harvestcraft:pistachioitem>,
		<harvestcraft:quinoaitem>,
		<harvestcraft:sisalitem>,
		<harvestcraft:spiceleafitem>,
		<harvestcraft:walnutitem>,
	] as IItemStack[];

	for crop in otherCrops {
		BioReactor.add(crop);
	}

    for seed in <ore:listAllseed>.items {
        BioReactor.add(seed);
    }
	
	for veggie in <ore:listAllveggie>.items {
		BioReactor.add(veggie);
	}
	
	for fruit in <ore:listAllfruit>.items {
		BioReactor.add(fruit);
	}

# Protein Reactor, additional entires
for item in <ore:listAllmeatraw>.items {
		ProteinReactor.add(item);
}

// Tree Fluid Extractor
recipes.remove(<industrialforegoing:tree_fluid_extractor>);
recipes.addShaped(<industrialforegoing:tree_fluid_extractor> * 1, [[<ore:plateVanadiumSteel>, <ore:circuitMv>, <ore:plateVanadiumSteel>], [<ore:plateVanadiumSteel>, <gregtech:meta_item_1:144>, <ore:plateVanadiumSteel>],[<ore:plateVanadiumSteel>, <ore:gearModularium>, <ore:plateVanadiumSteel>]]);

// White Conveyor Belt
recipes.remove(<industrialforegoing:conveyor:0>);
recipes.addShaped(<industrialforegoing:conveyor:0> * 4, [[<ore:screwSteel>, <ore:foilWroughtIron>, <ore:screwSteel>], [<ore:plateIron>, <ore:lightPlateIron>, <ore:plateIron>],[<ore:screwSteel>, <ore:foilWroughtIron>, <ore:screwSteel>]]);

// Extracting Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade>);
recipes.addShapeless("if_extractor_belt",<industrialforegoing:conveyor_upgrade>,[<industrialforegoing:conveyor>, <ore:blockHopper>]);

// Inserting Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:1>);
recipes.addShapeless("if_inserter_belt",<industrialforegoing:conveyor_upgrade:1>,[<industrialforegoing:conveyor>, <pyrotech:mechanical_hopper>]);

// Detecting Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:2>);
recipes.addShapeless("if_detecting_belt",<industrialforegoing:conveyor_upgrade:2>,[<industrialforegoing:conveyor>, <minecraft:comparator>]);

// Boucing Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:3>);
recipes.addShapeless("if_boucing_belt",<industrialforegoing:conveyor_upgrade:3>,[<industrialforegoing:conveyor>, <ore:blockSlime>]);

// Dropping Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:4>);
recipes.addShapeless("if_dropping_belt",<industrialforegoing:conveyor_upgrade:4>,[<industrialforegoing:conveyor>, <minecraft:dropper>]);

// Blinking Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:5>);
recipes.addShapeless("if_blinking_belt",<industrialforegoing:conveyor_upgrade:5>*2,[<industrialforegoing:conveyor>, <industrialforegoing:conveyor>, <contenttweaker:endermansheart>]);

// Splitting Conveyor Belt
recipes.remove(<industrialforegoing:conveyor_upgrade:6>);
recipes.addShapeless("if_splitting_belt",<industrialforegoing:conveyor_upgrade:6>,[<industrialforegoing:conveyor>, <ore:gearWroughtIron>, <ore:stickWroughtIron>]);

// Machine Case
recipes.remove(<teslacorelib:machine_case>);
recipes.addShaped(<teslacorelib:machine_case> * 1, [[<ore:lightPlateModularium>, <industrialforegoing:plastic>, <ore:lightPlateModularium>], [<industrialforegoing:plastic>, <extrautils2:decorativeglass:5>, <industrialforegoing:plastic>],[<ore:lightPlateModularium>, <industrialforegoing:plastic>, <ore:lightPlateModularium>]]);

// Enchantment Extractor
recipes.remove(<industrialforegoing:enchantment_extractor>);
recipes.addShaped(<industrialforegoing:enchantment_extractor> * 1, [[<industrialforegoing:plastic>, <gregtech:meta_item_1:159>, <industrialforegoing:plastic>], [<ore:bookEmpty>, <teslacorelib:machine_case>, <ore:bookEmpty>],[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// Enchantment Applicator
recipes.remove(<industrialforegoing:enchantment_aplicator>);
recipes.addShaped(<industrialforegoing:enchantment_aplicator> * 1, [[<industrialforegoing:plastic>, <gregtech:meta_item_1:159>, <industrialforegoing:plastic>], [<railcraft:anvil:0>, <teslacorelib:machine_case>, <railcraft:anvil:0>],[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// Enchantment Sorter
recipes.remove(<industrialforegoing:enchantment_refiner>);
recipes.addShaped(<industrialforegoing:enchantment_refiner> * 1, [[<industrialforegoing:plastic>, <gregtech:meta_item_1:189>, <industrialforegoing:plastic>], [<ore:bookEmpty>, <teslacorelib:machine_case>, <minecraft:enchanted_book>],[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// Mob Slaughter Factory
var platSword = <tconstruct:sword_blade>.withTag({Material: "electrum"});
recipes.remove(<industrialforegoing:mob_slaughter_factory>);
recipes.addShaped(<industrialforegoing:mob_slaughter_factory> * 1, [[<industrialforegoing:plastic>, <ore:skullZombieFrankenstein>, <industrialforegoing:plastic>], [platSword, <teslacorelib:machine_case>, platSword],[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// Mob Crusher
var pinkSword = <tconstruct:large_sword_blade>.withTag({Material: "pink_metal"});
recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator> * 1, [[<industrialforegoing:plastic>, <ore:skullZombieFrankenstein>, <industrialforegoing:plastic>], [pinkSword, <teslacorelib:machine_case>, pinkSword],[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// Pink Slime Ingot
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotMagnesium>*3, <ore:dustSmallVanadium>*2)
    .fluidInputs(<liquid:if.pink_slime> * 1000)
    .outputs(<industrialforegoing:pink_slime_ingot>*3)
    .property("temperature", 2550)
    .duration(300)
    .EUt(200)
.buildAndRegister();

AlloyFurnace.addRecipe(<tconevo:material:1>, <ore:ingotMagnesium>*2, <industrialforegoing:pink_slime_ingot>*3);

// Liquit Meat Ingot
solidifier.recipeBuilder()
	.fluidInputs(<liquid:meat> * 576)
    .notConsumable(<gregtech:meta_item_1:16>) 
    .outputs(<tconevo:edible>)
    .duration(20)
    .EUt(7)
.buildAndRegister();

// Essence Infused Ingot
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotGlitchInfused>*3, <ore:dustSmallUvarovite>*2)
    .fluidInputs(<liquid:essence> * 1000)
    .outputs(<tconevo:metal:15>*3)
    .property("temperature", 2550)
    .duration(300)
    .EUt(200)
.buildAndRegister();

AlloyFurnace.addRecipe(<randomthings:imbue:2>, <ore:ingotGlitchInfused>*2, <tconevo:metal:15>*3);

# [Potion Brewer] from [Machine Case][+6]
recipes.removeByRecipeName("industrialforegoing:potion_enervator");
craft.make(<industrialforegoing:potion_enervator>, ["pretty",
  "R B R",
  "V M H",
  "□ o □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "B": <minecraft:brewing_stand>,   # Brewing Stand
  "V": <gregtech:meta_item_1:249>,  # HV Fluid Regulator
  "M": <teslacorelib:machine_case>, # Machine Case
  "H": <gregtech:meta_item_1:144>,  # HV Electric Pump
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Animal Baby Separator] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:animal_independence_selector");
craft.make(<industrialforegoing:animal_independence_selector>, ["pretty",
  "R H R",
  "L M L",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,                 # Industrial Plastic
  "H": <gregtech:meta_item_1:234>,       # HV Sensor
  "L": <industrialforegoing:conveyor:5>, # Lime Conveyor Belt
  "M": <teslacorelib:machine_case>,      # Machine Case
  "□": <ore:plateStainlessSteel>,        # Stainless Steel Plate
  "¤": <ore:gearModularium>,             # Modularium Gear
});

# [Animal Feeder] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:animal_stock_increaser");
craft.make(<industrialforegoing:animal_stock_increaser>, ["pretty",
  "R F R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "F": <railcraft:equipment:2>,     # Feed Station
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Plant Sower] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:crop_sower");
craft.make(<industrialforegoing:crop_sower>, ["pretty",
  "R F R",
  "H M H",
  "¤ S ¤"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "F": <minecraft:flower_pot>,      # Flower Pot
  "H": <gregtech:meta_item_1:174>,  # HV Electric Piston
  "M": <teslacorelib:machine_case>, # Machine Case
  "¤": <ore:gearStainlessSteel>,    # Stainless Steel Gear
  "S": <ore:springSignalum>,        # Signalum Spring
});

# [Plant Fertilizer] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:crop_enrich_material_injector");
craft.make(<industrialforegoing:crop_enrich_material_injector>, ["pretty",
  "R F R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "F": <gregtech:meta_item_1:1001>, # Fertilizer
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Plant Gatherer] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:crop_recolector");
craft.make(<industrialforegoing:crop_recolector>, ["pretty",
  "R a R",
  "D M D",
  "¤ S ¤"], {
  "R": <ore:itemRubber>,                   # Industrial Plastic
  "a": <embers:hoe_dawnstone>.anyDamage(), # Dawnstone Hoe
  "D": <embers:axe_dawnstone>.anyDamage(), # Dawnstone Axe
  "M": <teslacorelib:machine_case>,        # Machine Case
  "¤": <ore:gearStainlessSteel>,           # Stainless Steel Gear
  "S": <ore:springSignalum>,               # Signalum Spring
});

# [Black Hole Unit] from [Massive Storage Unit][+4]
recipes.removeByRecipeName("industrialforegoing:black_hole_unit_clean");
recipes.removeByRecipeName("industrialforegoing:black_hole_unit");
craft.make(<industrialforegoing:black_hole_unit>, ["pretty",
  "R R R",
  "□ M □",
  "c a c"], {
  "R": <ore:itemRubber>,              # Industrial Plastic
  "□": <ore:lightPlateEnderium>,      # Light Enderium Plate
  "M": <enderutilities:msu>,          # Massive Storage Unit
  "c": <ore:chest>, # Chest
  "a": <teslacorelib:machine_case>,   # Machine Case
});

# [Resources Fisher] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:water_resources_collector");
craft.make(<industrialforegoing:water_resources_collector>, ["pretty",
  "R / R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "/": <thermalfoundation:tool.fishing_rod_electrum>.anyDamage(), # electrum Fishing Rod
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Animal Rancher] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:animal_resource_harvester");
craft.make(<industrialforegoing:animal_resource_harvester>, ["pretty",
  "R P R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "P": <thermalfoundation:tool.shears_electrum>.anyDamage(), # electrum Shears
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Mob Duplicator] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:mob_duplicator");
craft.make(<industrialforegoing:mob_duplicator>, ["pretty",
  "R * R",
  "◘ M ◘",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,               # Industrial Plastic
  "*": <ore:itemWeatherCrystal>,       # Weather Crystal
  "◘": <thermalexpansion:frame:147>,   # Signalum Cell Frame (Full)
  "M": <teslacorelib:machine_case>,    # Machine Case
  "□": <ore:plateStainlessSteel>,      # Stainless Steel Plate
  "¤": <ore:gearCrystallinePinkSlime>, # Crystalline Pink Slime Gear
});

# [Block Breaker] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:block_destroyer");
craft.make(<industrialforegoing:block_destroyer>, ["pretty",
  "R D R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,                       # Industrial Plastic
  "D": <embers:pickaxe_dawnstone>.anyDamage(), # Dawnstone Pickaxe
  "H": <gregtech:meta_item_1:129>,             # HV Electric Motor
  "M": <teslacorelib:machine_case>,            # Machine Case
  "□": <ore:plateStainlessSteel>,              # Stainless Steel Plate
  "¤": <ore:gearModularium>,                   # Modularium Gear
});

# [Block Placer] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:block_placer");
craft.make(<industrialforegoing:block_placer>, ["pretty",
  "R H R",
  "◙ M ◙",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "H": <gregtech:meta_item_1:174>,  # HV Electric Piston
  "◙": <ore:frameGtDawnstone>,      # Dawnstone Frame Box
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Sewage Composter] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:sewage_composter_solidifier");
craft.make(<industrialforegoing:sewage_composter_solidifier>, ["pretty",
  "R C R",
  "H M H",
  "□ o □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "C": <forestry:moistener>,        # Forestry Moistener
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Animal Sewer] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:animal_byproduct_recolector");
craft.make(<industrialforegoing:animal_byproduct_recolector>, ["pretty",
  "R ¤ R",
  "H M H",
  "□ o □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "¤": <ore:gearSmallSoularium>,    # Small Soularium Gear
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Sludge Refiner] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:sludge_refiner");
craft.make(<industrialforegoing:sludge_refiner>, ["pretty",
  "R S R",
  "F M F",
  "□ o □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "S": <ore:ringSoularium>,         # Soularium Ring
  "F": <gregtech:meta_item_1:290>,  # Fluid Filter
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Mob Detector] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:mob_detector");
craft.make(<industrialforegoing:mob_detector>, ["pretty",
  "R R R",
  "H M O",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "H": <gregtech:meta_item_1:219>,  # HV Emitter
  "M": <teslacorelib:machine_case>, # Machine Case
  "O": <minecraft:observer>,        # Observer
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Bioreactor] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:bioreactor");
craft.make(<industrialforegoing:bioreactor>, ["pretty",
  "R H R",
  "□ M □",
  "п o п"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "H": <gregtech:meta_item_1:144>,  # HV Electric Pump
  "□": <ore:lightPlateLead>,        # Light Lead Plate
  "M": <teslacorelib:machine_case>, # Machine Case
  "п": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Biofuel Generator] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:biofuel_generator");
craft.make(<industrialforegoing:biofuel_generator>, ["pretty",
  "R M R",
  "п a п",
  "□ H □"], {
  "R": <ore:itemRubber>,             # Industrial Plastic
  "M": <ore:rotorModularium>,        # Modularium Rotor
  "п": <ore:heavyPlateBatteryAlloy>, # Heavy Battery Alloy Plate
  "a": <teslacorelib:machine_case>,  # Machine Case
  "□": <ore:plateStainlessSteel>,    # Stainless Steel Plate
  "H": <gregtech:meta_item_1:174>,   # HV Electric Piston
});

# [Laser Base] from [Titanium Iridium Alloy Gear][+5]
recipes.removeByRecipeName("industrialforegoing:laser_base");
craft.make(<industrialforegoing:laser_base>, ["pretty",
  "R v R",
  "E ¤ E",
  "□ M □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "v": <ore:circuitEv>,             # Nanoprocessor Assembly
  "E": <ore:batteryEv>,             # Lapotron Crystal
  "¤": <ore:gearTitaniumIridium>,   # Titanium Iridium Alloy Gear
  "□": <ore:lightPlateEnderium>,    # Light Enderium Plate
  "M": <teslacorelib:machine_case>, # Machine Case
});

# [Laser Drill] from [Lapotron Crystal][+5]
recipes.removeByRecipeName("industrialforegoing:laser_drill");
craft.make(<industrialforegoing:laser_drill>, ["pretty",
  "R G R",
  "E v E",
  "¤ M ¤"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "G": <ore:lensGlass>, # Glass Lens (White)
  "E": <gregtech:meta_item_1:220>,  # EV Emitter
  "v": <ore:batteryEv>,             # Lapotron Crystal
  "¤": <ore:gearEnderium>,          # Enderium Gear
  "M": <teslacorelib:machine_case>, # Machine Case
});

# [Black Hole Controller v2.0] from [Massive Storage Bundle][+4]
recipes.removeByRecipeName("industrialforegoing:black_hole_controller_reworked");
craft.make(<industrialforegoing:black_hole_controller_reworked>, ["pretty",
  "R R R",
  "▬ a ▬",
  "◙ M ◙"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "▬": <ore:ingotPinkMetal>,        # Pink Slime Ingot
  "a": <enderutilities:msu:1>,      # Massive Storage Bundle
  "◙": <ore:frameGtEnderium>,       # Enderium Frame Box
  "M": <teslacorelib:machine_case>, # Machine Case
});

# [Dye Mixer] from [Machine Case][+6]
recipes.removeByRecipeName("industrialforegoing:dye_mixer");
craft.make(<industrialforegoing:dye_mixer>, ["pretty",
  "R S R",
  "r M p",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "S": <gregtech:meta_item_1:75>,   # Spray Can (Green)
  "r": <gregtech:meta_item_1:76>,   # Spray Can (Red)
  "M": <teslacorelib:machine_case>, # Machine Case
  "p": <gregtech:meta_item_1:73>,   # Spray Can (Blue)
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Enchantment Factory] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:enchantment_invoker");
craft.make(<industrialforegoing:enchantment_invoker>, ["pretty",
  "R E R",
  "D M D",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,                     # Industrial Plastic
  "E": <ore:bookEmpty> | <ore:craftingBook>, # Book
  "D": <ore:manaDiamond>,                    # Mana Diamond
  "M": <teslacorelib:machine_case>,          # Machine Case
  "□": <ore:lightPlateRunicSteel>,           # Light Runic Steel Plate
  "¤": <ore:gearModularium>,                 # Modularium Gear
});

# [Spores Recreator] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:spores_recreator");
craft.make(<industrialforegoing:spores_recreator>, ["pretty",
  "R M R",
  "H a H",
  "□ o □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "M": <forestry:farm_mushroom>,    # Mushroom Farm (Managed)
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "a": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "o": <ore:springModularium>,      # Modularium Spring
});

# [Animal Grower] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:animal_growth_increaser");
craft.make(<industrialforegoing:animal_growth_increaser>, ["pretty",
  "R H R",
  "C M C",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "H": <gregtech:meta_item_1:219>,  # HV Emitter
  "C": <fossil:chicken_essence>,    # Chicken Essence
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Material StoneWork Factory] from [Machine Case][+6]
recipes.removeByRecipeName("industrialforegoing:material_stonework_factory");
craft.make(<industrialforegoing:material_stonework_factory>, ["pretty",
  "R ¤ R",
  "A M ~",
  "□ H □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "¤": <ore:gearEssenceMetal>,      # Essence-Infused Gear
  "A": <ore:listAllwater>,          # Water Bucket
  "M": <teslacorelib:machine_case>, # Machine Case
  "~": <minecraft:lava_bucket>,     # Lava Bucket
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "H": <gregtech:meta_item_1:174>,  # HV Electric Piston
});

# [Black Hole Tank] from [Ender Core (Advanced)][+4]
recipes.removeByRecipeName("industrialforegoing:black_hole_tank");
recipes.removeByRecipeName("industrialforegoing:black_hole_tank_clean");
craft.make(<industrialforegoing:black_hole_tank>, ["pretty",
  "R R R",
  "U E U",
  "□ M □"], {
  "R": <ore:itemRubber>,              # Industrial Plastic
  "U": <mekanism:machineblock2:11>.withTag({tier: 3}), # Ultimate Fluid Tank
  "E": <enderutilities:enderpart:17>, # Ender Core (Advanced)
  "□": <ore:lightPlateEnderium>,      # Light Enderium Plate
  "M": <teslacorelib:machine_case>,   # Machine Case
});

# [Resourceful Furnace] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:resourceful_furnace");
craft.make(<industrialforegoing:resourceful_furnace>, ["pretty",
  "R F R",
  "▬ M ▬",
  "□ o □"], {
  "R": <ore:itemRubber>,             # Industrial Plastic
  "F": <ore:craftingFurnace>,        # Furnace
  "▬": <ore:ingotBrickNetherGlazed>, # Nethercotta
  "M": <teslacorelib:machine_case>,  # Machine Case
  "□": <ore:plateStainlessSteel>,    # Stainless Steel Plate
  "o": <ore:springModularium>,       # Modularium Spring
});

# [Protein Reactor] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:protein_reactor");
craft.make(<industrialforegoing:protein_reactor>, ["pretty",
  "R п R",
  "H M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "п": <tconstruct:large_plate>.withTag({Material: "meat_metal"}), # Meaty Large Plate
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Protein Generator] from [Biofuel Generator][+5]
recipes.removeByRecipeName("industrialforegoing:protein_generator");
craft.make(<industrialforegoing:protein_generator>, ["pretty",
  "R п R",
  "H B H",
  "□ M □"], {
  "R": <ore:itemRubber>,                        # Industrial Plastic
  "п": <tconstruct:large_plate>.withTag({Material: "meat_metal"}), # Meaty Large Plate
  "H": <gregtech:meta_item_1:129>,              # HV Electric Motor
  "B": <industrialforegoing:biofuel_generator>, # Biofuel Generator
  "□": <ore:plateStainlessSteel>,               # Stainless Steel Plate
  "M": <ore:springModularium>,                  # Modularium Spring
});

# [Hydrator] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:hydrator");
craft.make(<industrialforegoing:hydrator>, ["pretty",
  "R п R",
  "B M B",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,                  # Industrial Plastic
  "п": <ore:plateTerrasteel>,             # Terrasteel Plate
  "B": <ore:fertilizer>, # Fertilizer
  "M": <teslacorelib:machine_case>,       # Machine Case
  "□": <ore:plateStainlessSteel>,         # Stainless Steel Plate
  "¤": <ore:gearModularium>,              # Modularium Gear
});

# [Wither Builder] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:wither_builder");
craft.make(<industrialforegoing:wither_builder>, ["pretty",
  "R t R",
  "S M S",
  "□ H □"], {
  "R": <ore:itemRubber>,                       # Industrial Plastic
  "t": <ore:netherStar> | <ore:gemNetherStar>, # Nether Star
  "S": <ore:springStellarAlloy>,               # Stellar Alloy Spring
  "M": <teslacorelib:machine_case>,            # Machine Case
  "□": <ore:plateStainlessSteel>,              # Stainless Steel Plate
  "H": <gregtech:meta_item_1:189>,             # HV Robot Arm
});

# [Fluid Crafter] from [Machine Case][+6]
recipes.removeByRecipeName("industrialforegoing:fluid_crafter");
craft.make(<industrialforegoing:fluid_crafter>, ["pretty",
  "R A R",
  "H M V",
  "□ o □"], {
  "R": <ore:itemRubber>,               # Industrial Plastic
  "A": <thermalexpansion:augment:433>, # Augment: Fluidic Fabrication
  "H": <gregtech:meta_item_1:144>,     # HV Electric Pump
  "M": <teslacorelib:machine_case>,    # Machine Case
  "V": <gregtech:meta_item_1:159>,     # HV Conveyor Module
  "□": <ore:plateStainlessSteel>,      # Stainless Steel Plate
  "o": <ore:springModularium>,         # Modularium Spring
});

# [Plant Interactor] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:plant_interactor");
craft.make(<industrialforegoing:plant_interactor>, ["pretty",
  "R P R",
  "H M H",
  "□ S □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "P": <tconstruct:scythe_head>.withTag({Material: "pink_metal"}), # Pink Metal Scythe Head
  "H": <gregtech:meta_item_1:129>,  # HV Electric Motor
  "M": <teslacorelib:machine_case>, # Machine Case
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "S": <ore:springSignalum>,        # Signalum Spring
});

# [Item Splitter] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:item_splitter");
craft.make(<industrialforegoing:item_splitter>, ["pretty",
  "R H R",
  "h M h",
  "□ o □"], {
  "R": <ore:itemRubber>,                 # Industrial Plastic
  "H": <gregtech:meta_item_1:129>,       # HV Electric Motor
  "h": <ore:hopper> | <ore:blockHopper>, # Hopper
  "M": <teslacorelib:machine_case>,      # Machine Case
  "□": <ore:plateStainlessSteel>,        # Stainless Steel Plate
  "o": <ore:springModularium>,           # Modularium Spring
});

# [Fluid Dictionary Converter] from [Machine Case][+5]
recipes.removeByRecipeName("industrialforegoing:fluiddictionary_converter");
craft.make(<industrialforegoing:fluiddictionary_converter>, ["pretty",
  "R R R",
  "V M H",
  "□ ¤ □"], {
  "R": <ore:itemRubber>,            # Industrial Plastic
  "V": <gregtech:meta_item_1:249>,  # HV Fluid Regulator
  "M": <teslacorelib:machine_case>, # Machine Case
  "H": <gregtech:meta_item_1:144>,  # HV Electric Pump
  "□": <ore:plateStainlessSteel>,   # Stainless Steel Plate
  "¤": <ore:gearModularium>,        # Modularium Gear
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_0");
craft.make(<industrialforegoing:range_addon>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateStone>,                           # Stone Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_1");
craft.make(<industrialforegoing:range_addon:1>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateLapis>,                           # Lapis Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_2");
craft.make(<industrialforegoing:range_addon:2>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateIron>,                            # Iron Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_3");
craft.make(<industrialforegoing:range_addon:3>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateTin>,                             # Tin Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_4");
craft.make(<industrialforegoing:range_addon:4>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateCopper>,                          # Copper Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_5");
craft.make(<industrialforegoing:range_addon:5>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateBrass>,                           # Brass Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_6");
craft.make(<industrialforegoing:range_addon:6>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateSilver>,                          # Silver Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_7");
craft.make(<industrialforegoing:range_addon:7>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateGold>,                            # Gold Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_8");
craft.make(<industrialforegoing:range_addon:8>, ["pretty",
  "⌃ R ⌃",
  "⌃ G ⌃",
  "⌃ R ⌃"], {
  "⌃": <ore:plateCertusQuartz>,                    # Certus Quartz Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_9");
craft.make(<industrialforegoing:range_addon:9>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateDiamond>,                         # Diamond Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_10");
craft.make(<industrialforegoing:range_addon:10>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:platePlatinum>,                        # Platinum Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Range Addon] from [Glass Pane][+2]
recipes.removeByRecipeName("industrialforegoing:range_addon_11");
craft.make(<industrialforegoing:range_addon:11>, ["pretty",
  "□ R □",
  "□ G □",
  "□ R □"], {
  "□": <ore:plateTerrasteel>,                      # Terrasteel Plate
  "R": <ore:itemRubber>,                           # Industrial Plastic
  "G": <ore:paneGlass>, # Glass Pane
});

# [Leaf Shearing Addon] from [electrum Shears][+2]
recipes.removeByRecipeName("industrialforegoing:leaf_shearing");
craft.make(<industrialforegoing:leaf_shearing>, ["pretty",
  "□ R □",
  "□ P □",
  "□ R □"], {
  "□": <ore:plateEnori>, # Enori Plate
  "R": <ore:itemRubber>, # Industrial Plastic
  "P": <thermalfoundation:tool.shears_electrum>.anyDamage(), # electrum Shears
});

# [Fortune Addon] from [Enchanted Book][+2]
recipes.removeByRecipeName("industrialforegoing:fortune_addon");
craft.make(<industrialforegoing:fortune_addon>, ["pretty",
  "□ R □",
  "□ E □",
  "□ R □"], {
  "□": <ore:plateEmeradicEmpowered>,             # Empowered Emeradic Plate
  "R": <ore:itemRubber>,                         # Industrial Plastic
  "E": <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35}]}), # Fortune III Enchanted Book
});

# [Itemstack Transfer Addon (Pull/Down)] from [Insertion Conveyor Upgrade][+2]
recipes.removeByRecipeName("industrialforegoing:itemstack_transfer_addon_pull_0");
craft.make(<industrialforegoing:itemstack_transfer_addon_pull>, ["pretty",
  "R M R",
  "R I R",
  "R M R"], {
  "R": <ore:itemRubber>,                         # Industrial Plastic
  "M": <industrialforegoing:conveyor:2>,         # Magenta Conveyor Belt
  "I": <industrialforegoing:conveyor_upgrade:1>, # Insertion Conveyor Upgrade
});

# [Itemstack Transfer Addon (Push/Down)] from [Extraction Conveyor Upgrade][+2]
recipes.removeByRecipeName("industrialforegoing:itemstack_transfer_addon_push_0");
craft.make(<industrialforegoing:itemstack_transfer_addon_push>, ["pretty",
  "R M R",
  "R E R",
  "R M R"], {
  "R": <ore:itemRubber>,                       # Industrial Plastic
  "M": <industrialforegoing:conveyor:2>,       # Magenta Conveyor Belt
  "E": <industrialforegoing:conveyor_upgrade>, # Extraction Conveyor Upgrade
});

# [Fluid Transfer Addon (Pull/Down)] from [Insertion Conveyor Upgrade][+2]
recipes.removeByRecipeName("industrialforegoing:fluid_transfer_addon_pull_0");
craft.make(<industrialforegoing:fluid_transfer_addon_pull>, ["pretty",
  "R L R",
  "R I R",
  "R L R"], {
  "R": <ore:itemRubber>,                         # Industrial Plastic
  "L": <industrialforegoing:conveyor:3>,         # Light Blue Conveyor Belt
  "I": <industrialforegoing:conveyor_upgrade:1>, # Insertion Conveyor Upgrade
});

# [Fluid Transfer Addon (Push/Down)] from [Extraction Conveyor Upgrade][+2]
recipes.removeByRecipeName("industrialforegoing:fluid_transfer_addon_push_0");
craft.make(<industrialforegoing:fluid_transfer_addon_push>, ["pretty",
  "R L R",
  "R E R",
  "R L R"], {
  "R": <ore:itemRubber>,                       # Industrial Plastic
  "L": <industrialforegoing:conveyor:3>,       # Light Blue Conveyor Belt
  "E": <industrialforegoing:conveyor_upgrade>, # Extraction Conveyor Upgrade
});

// Ported and Tweaked from DJ2 // ==========================

function addIFLaserLensRecipe(output as IItemStack, input_glass_pane as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:plastic>,<industrialforegoing:pink_slime_ingot>],[<industrialforegoing:plastic>,input_glass_pane,<industrialforegoing:plastic>],[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:plastic>,<industrialforegoing:pink_slime_ingot>]]);
}

# All Laser Lenses
val glass_panes = [<ore:paneGlassWhite>, <ore:paneGlassOrange>, <ore:paneGlassMagenta>, <ore:paneGlassLightBlue>, <ore:paneGlassYellow>, <ore:paneGlassLime>, <ore:paneGlassPink>, <ore:paneGlassGray>, <ore:paneGlassLightGray>, <ore:paneGlassCyan>, <ore:paneGlassPurple>, <ore:paneGlassBlue>, <ore:paneGlassBrown>, <ore:paneGlassGreen>, <ore:paneGlassRed>, <ore:paneGlassBlack>] as IIngredient[];
for i in 0 to 16 {
	addIFLaserLensRecipe(<industrialforegoing:laser_lens>.withDamage(i), glass_panes[i]);
	recipes.remove(<industrialforegoing:laser_lens_inverted>.withDamage(i));
	recipes.addShapeless(<industrialforegoing:laser_lens_inverted>.withDamage(i),[<industrialforegoing:laser_lens>.withDamage(i), <ore:gtceScrewdrivers>]);
}

// ====================================

# [Black Hole Label]*4 from [Barrel Label][+2]
recipes.removeByRecipeName("industrialforegoing:black_hole_label");
craft.make(<industrialforegoing:black_hole_label> * 4, ["pretty",
  "R R R",
  "B a B",
  "R R R"], {
  "R": <ore:itemRubber>,              # Industrial Plastic
  "B": <ore:paperBlack>,              # Black Paper
  "a": <enderutilities:enderpart:70>, # Barrel Label
});

# [Mob Imprisonment Tool] from [Impetus Cell][+2]
recipes.removeByRecipeName("industrialforegoing:mob_imprisonment_tool");
craft.make(<industrialforegoing:mob_imprisonment_tool>, ["pretty",
  "□ R □",
  "R ◘ R",
  "□ R □"], {
  "□": <ore:plateTungstenCarbide>,       # Tungstencarbide Plate
  "R": <ore:itemRubber>,                 # Industrial Plastic
  "◘": <thaumicaugmentation:material:3>, # Impetus Cell
});

# [Meat Feeder] from [Meaty Large Plate][+4]
recipes.removeByRecipeName("industrialforegoing:meat_feeder");
craft.make(<industrialforegoing:meat_feeder>, ["pretty",
  "R t R",
  "G □ G",
  "  S  "], {
  "R": <ore:itemRubber>,         # Industrial Plastic
  "t": <ore:ringStainlessSteel>, # Stainless Steel Ring
  "G": <minecraft:glass_bottle>, # Glass Bottle
  "□": <tconstruct:large_plate>.withTag({Material: "meat_metal"}), # Meaty Large Plate
  "S": <ore:boltStainlessSteel>, # Stainless Steel Bolt
});

