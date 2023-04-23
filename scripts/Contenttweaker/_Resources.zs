#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Commands;


print("--------------- Custom Resources Start------------------");

//Parchment  ================================================================================

var parchment = VanillaFactory.createItem("parchment");
parchment.register();

//Obsidian  ================================================================================
var obsidianElectrode = VanillaFactory.createItem("obsidianelectrode");
obsidianElectrode.register();

// Blank Shape Card ================================================================================
var BlankShapeCard = VanillaFactory.createItem("blankshapecard");
BlankShapeCard.register();

##### MorePlates Ports ######

// Enori Plate ================================================================================
var enoriplate = VanillaFactory.createItem("enoriplate");
enoriplate.register();

// Restonia Plate ================================================================================
var restoniaplate = VanillaFactory.createItem("restoniaplate");
restoniaplate.register();

// Diamatine Plate ================================================================================
var diamatineplate = VanillaFactory.createItem("diamatineplate");
diamatineplate.register();

// Emeradic Plate ================================================================================
var emeradicplate = VanillaFactory.createItem("emeradicplate");
emeradicplate.register();

// Void Plate ================================================================================
var voidplate = VanillaFactory.createItem("voidplate");
voidplate.register();

// Palis Plate ================================================================================
var palisplate = VanillaFactory.createItem("palisplate");
palisplate.register();



// Enori Gear ================================================================================
var enorigear = VanillaFactory.createItem("enorigear");
enorigear.register();

// Restonia Gear ================================================================================
var restoniagear = VanillaFactory.createItem("restoniagear");
restoniagear.register();

// Diamatine Gear ================================================================================
var diamatinegear = VanillaFactory.createItem("diamatinegear");
diamatinegear.register();

// Emeradic Gear ================================================================================
var emeradicgear = VanillaFactory.createItem("emeradicgear");
emeradicgear.register();

// Void Gear ================================================================================
var voidgear = VanillaFactory.createItem("voidgear");
voidgear.register();

// Palis Gear ================================================================================
var palisgear = VanillaFactory.createItem("palisgear");
palisgear.register();


// Empowered Enori Plate ================================================================================
var empoweredenoriplate = VanillaFactory.createItem("empoweredenoriplate");
empoweredenoriplate.register();

// Empowered Restonia Plate ================================================================================
var empoweredrestoniaplate = VanillaFactory.createItem("empoweredrestoniaplate");
empoweredrestoniaplate.register();

// Empowered Diamatine Plate ================================================================================
var empowereddiamatineplate = VanillaFactory.createItem("empowereddiamatineplate");
empowereddiamatineplate.register();

// Empowered Emeradic Plate ================================================================================
var empoweredemeradicplate = VanillaFactory.createItem("empoweredemeradicplate");
empoweredemeradicplate.register();

// Empowered Void Plate ================================================================================
var empoweredvoidplate = VanillaFactory.createItem("empoweredvoidplate");
empoweredvoidplate.register();

// Empowered Palis Plate ================================================================================
var empoweredpalisplate = VanillaFactory.createItem("empoweredpalisplate");
empoweredpalisplate.register();


// Empowered Enori Gear ================================================================================
var empoweredenorigear = VanillaFactory.createItem("empoweredenorigear");
empoweredenorigear.register();

// Empowered Restonia Gear ================================================================================
var empoweredrestoniagear = VanillaFactory.createItem("empoweredrestoniagear");
empoweredrestoniagear.register();

// Empowered Diamatine Gear ================================================================================
var empowereddiamatinegear = VanillaFactory.createItem("empowereddiamatinegear");
empowereddiamatinegear.register();

// Empowered Emeradic Gear ================================================================================
var empoweredemeradicgear = VanillaFactory.createItem("empoweredemeradicgear");
empoweredemeradicgear.register();

// Empowered Void Gear ================================================================================
var empoweredvoidgear = VanillaFactory.createItem("empoweredvoidgear");
empoweredvoidgear.register();

// Empowered Palis Gear ================================================================================
var empoweredpalisgear = VanillaFactory.createItem("empoweredpalisgear");
empoweredpalisgear.register();

// Heavy Duty Alloy ================================================================================
var heavydutyalloy = VanillaFactory.createItem("heavydutyalloy");
heavydutyalloy.register();

// Heavy Duty Plate ================================================================================
var heavyduty = VanillaFactory.createItem("heavyduty");
heavyduty.register();

// Refined Cloth ================================================================================
var refinedCloth = VanillaFactory.createItem("refinedcloth");
refinedCloth.register();

// Thermal Cloth ================================================================================
var thermalCloth = VanillaFactory.createItem("thermalcloth");
thermalCloth.register();

// Layers for the Space Suit ================================================================================
var layerPressure = VanillaFactory.createItem("layerpressure");
layerPressure.register();

var layerRadiation = VanillaFactory.createItem("layerradiation");
layerRadiation.register();

// Space Suit ================================================================================

var unpreparedspaceHelmet = VanillaFactory.createItem("unpreparedspacehelmet");
unpreparedspaceHelmet.register();

var unpreparedspaceChestplate = VanillaFactory.createItem("unpreparedspacechestplate");
unpreparedspaceChestplate.register();

var unpreparedspaceLeggins = VanillaFactory.createItem("unpreparedspaceleggins");
unpreparedspaceLeggins.register();

var unpreparedspaceBoots = VanillaFactory.createItem("unpreparedspaceboots");
unpreparedspaceBoots.register();

// Red Alloy Wiring ================================================================================
var etchedRedAlloyWiring = VanillaFactory.createItem("etchedredalloywiring");
etchedRedAlloyWiring.register();

// Triberium Wiring ================================================================================
var etchedTriberiumWiring = VanillaFactory.createItem("etchedtriberiumwiring");
etchedTriberiumWiring.register();

// Skystone Doped Boule ================================================================================
var skystoneBoule = VanillaFactory.createItem("skystoneboule");
skystoneBoule.register();

// Heavy Duty Alloy II ================================================================================
var heavydutyalloyII = VanillaFactory.createItem("heavydutyalloy2");
heavydutyalloyII.register();

// Heavy Duty Plate II ================================================================================
var heavydutyII = VanillaFactory.createItem("heavyduty2");
heavydutyII.register();

// Titanium Bars ================================================================================
var TitaniumBars = VanillaFactory.createItem("titaniumbars");
TitaniumBars.register();

// Glod Crystal ================================================================================
var glod_crystal = VanillaFactory.createItem("glod_crystal");
glod_crystal.register();

// Empowered Glod Crystal ================================================================================
var empowered_glod_crystal = VanillaFactory.createItem("empowered_glod_crystal");
empowered_glod_crystal.register();

// Heart of the Woods ================================================================================
var heart_of_the_woods = VanillaFactory.createItem("heart_of_the_woods");
heart_of_the_woods.maxStackSize = 16;
heart_of_the_woods.rarity = "RARE";
heart_of_the_woods.register();

// AR Artifacts ================

var overworldessencel = VanillaFactory.createItem("overworldessencel");
overworldessencel.register();

var overworldessencer = VanillaFactory.createItem("overworldessencer");
overworldessencer.register();

// Ghast Bladder =================

var ghasbladder = VanillaFactory.createItem("ghasbladder");
ghasbladder.register();

// Pigmen Flesh =================

var pigmanflesh = VanillaFactory.createItemFood("pigmanflesh", 2);
pigmanflesh.register();

// Hellish Flesh =================

var hellishflesh = VanillaFactory.createItem("hellishflesh");
hellishflesh.register();

// Tainted Soil Dust =================

var taintedsoildust = VanillaFactory.createItem("taintedsoildust");
taintedsoildust.register();

// Enderman's Heart =================

var endermansheart = VanillaFactory.createItem("endermansheart");
endermansheart.register();

// Ink Dropplet =================

var ink_dropplet = VanillaFactory.createItem("ink_dropplet");
ink_dropplet.register();

// Unfired Porcelain Brick =================
var unfiredPorcelainBrick = VanillaFactory.createItem("unfiredporcelainbrick");
unfiredPorcelainBrick.register();

// Seared Plate =================
var searedPlate = VanillaFactory.createItem("searedplate");
searedPlate.register();

// Hot Iron Ingot =================
var hot_iron_ingot = VanillaFactory.createItem("hot_iron_ingot");
hot_iron_ingot.register();

// Endor Crystal =================
var endor_crystal = VanillaFactory.createItem("endor_crystal");
endor_crystal.register();

var empowered_endor_crystal = VanillaFactory.createItem("empowered_endor_crystal");
empowered_endor_crystal.register();

// Salted Hide =================
var saltedHide = VanillaFactory.createItem("saltedhide");
saltedHide.register();

// Blank Upgrade Module =============

var blank_upgrade_module = VanillaFactory.createItem("blank_upgrade_module");
blank_upgrade_module.register();

// Chip Composite =============

var chip_composite = VanillaFactory.createItem("chip_composite");
chip_composite.register();

// Menril Crystal =============

var gemMenril = VanillaFactory.createItem("gemmenril");
gemMenril.register();

// Sooty Energetic Compound (Charged) ================================================================================
var sooty_energetic_compound = VanillaFactory.createItem("sooty_energetic_compound");
sooty_energetic_compound.register();

// Sooty Energetic Compound (Uncharged) ================================================================================
var sooty_energetic_compound_1 = VanillaFactory.createItem("sooty_energetic_compound_1");
sooty_energetic_compound_1.register();

// Soot Covered Redstone =============

var soot_covered_redstone = VanillaFactory.createItem("soot_covered_redstone");
soot_covered_redstone.register();

// Twilight Crystall ================

var twilight_crystal = VanillaFactory.createItem("twilight_crystal");
twilight_crystal.register();

// Alchemical Nautilus ==============
var alchemical_nautilus = VanillaFactory.createItem("alchemical_nautilus");
alchemical_nautilus.register();

// // Demonlord ==============
// var demon_lord = VanillaFactory.createItem("demonlord");
// demon_lord.register();

// // Diabolic Carbide ==============
// var diabolic_carbide = VanillaFactory.createItem("diabolic_carbide");
// diabolic_carbide.register();

// Heart of the Magical Woods ================================================================================
var heart_of_the_magical_woods = VanillaFactory.createItem("heart_of_the_magical_woods");
heart_of_the_magical_woods.rarity = "EPIC";
heart_of_the_magical_woods.glowing = true;
heart_of_the_magical_woods.register();

// Osglolapis ==============
var osglolapis = VanillaFactory.createItem("osglolapis");
osglolapis.register();

// KnightMetal Plate ================================================================================
var knightmetalplate = VanillaFactory.createItem("knightmetalplate");
knightmetalplate.register();

// KnightMetal Gear ================================================================================
var knightmetalgear = VanillaFactory.createItem("knightmetalgear");
knightmetalgear.register();

// Fiery Plate ================================================================================
var fieryplate = VanillaFactory.createItem("fieryplate");
fieryplate.register();

// Fiery Gear ================================================================================
var fierygear = VanillaFactory.createItem("fierygear");
fierygear.register();

// IronWood Plate ================================================================================
var ironwoodplate = VanillaFactory.createItem("ironwoodplate");
ironwoodplate.register();

// IronWood Gear ================================================================================
var ironwoodgear = VanillaFactory.createItem("ironwoodgear");
ironwoodgear.register();

// Energetic Silver Plate ================================================================================
var energeticsilverplate = VanillaFactory.createItem("energeticsilverplate");
energeticsilverplate.register();

// Energetic Silver Gear ================================================================================
var energeticsilvergear = VanillaFactory.createItem("energeticsilvergear");
energeticsilvergear.register();

// Melodic Alloy Plate ================================================================================
var mellodicalloyplate = VanillaFactory.createItem("melodicalloyplate");
mellodicalloyplate.register();

// Melodic Alloy Gear ================================================================================
var melodicalloygear = VanillaFactory.createItem("melodicalloygear");
melodicalloygear.register();

// Leather Related ================================================================================
var imp_leather_scrap = VanillaFactory.createItem("imp_leather_scrap");
imp_leather_scrap.register();

var buffalo_leather_scrap = VanillaFactory.createItem("buffalo_leather_scrap");
buffalo_leather_scrap.register();

var industrial_leather = VanillaFactory.createItem("industrial_leather");
industrial_leather.register();

// Dark Soularium Plate ================================================================================
var darksoulariumplate = VanillaFactory.createItem("darksoulariumplate");
darksoulariumplate.glowing = true;
darksoulariumplate.register();

// Dark Soularium Gear ================================================================================
var darksoulariumgear = VanillaFactory.createItem("darksoulariumgear");
darksoulariumgear.glowing = true;
darksoulariumgear.register();

//Industrial Grade Graphite Dust
var industrial_grade_graphite_dust = VanillaFactory.createItem("industrial_grade_graphite_dust");
industrial_grade_graphite_dust.register();


// Dark Magic Dust ================================================================================

var dark_magic_dust = VanillaFactory.createItem("dark_magic_dust");
dark_magic_dust.rarity = "rare";
dark_magic_dust.glowing = true;
dark_magic_dust.register();

// White Magic Dust ================================================================================

var white_magic_dust = VanillaFactory.createItem("white_magic_dust");
white_magic_dust.rarity = "rare";
white_magic_dust.glowing = true;
white_magic_dust.register();

//Lich Bones ================================================================================
var lich_bones = VanillaFactory.createItem("lich_bones");
lich_bones.register();

//Rainbow Fabric ================================================================================
var rainbow_fabric = VanillaFactory.createItem("rainbow_fabric");
rainbow_fabric.register();

//Botania Quartz's Integration ================================================================================

# Lavender
var lavender_quartz_plate = VanillaFactory.createItem("lavender_quartz_plate");
lavender_quartz_plate.register();
var lavender_quartz_gear = VanillaFactory.createItem("lavender_quartz_gear");
lavender_quartz_gear.register();

# Elven
var elven_quartz_plate = VanillaFactory.createItem("elven_quartz_plate");
elven_quartz_plate.register();
var elven_quartz_gear = VanillaFactory.createItem("elven_quartz_gear");
elven_quartz_gear.register();

# Red
var red_quartz_plate = VanillaFactory.createItem("red_quartz_plate");
red_quartz_plate.register();
var red_quartz_gear = VanillaFactory.createItem("red_quartz_gear");
red_quartz_gear.register();

# Blaze
var blaze_quartz_plate = VanillaFactory.createItem("blaze_quartz_plate");
blaze_quartz_plate.register();
var blaze_quartz_gear = VanillaFactory.createItem("blaze_quartz_gear");
blaze_quartz_gear.register();

# Mana
var mana_quartz_plate = VanillaFactory.createItem("mana_quartz_plate");
mana_quartz_plate.register();
var mana_quartz_gear = VanillaFactory.createItem("mana_quartz_gear");
mana_quartz_gear.register();

# Sunny
var sunny_quartz_plate = VanillaFactory.createItem("sunny_quartz_plate");
sunny_quartz_plate.register();
var sunny_quartz_gear = VanillaFactory.createItem("sunny_quartz_gear");
sunny_quartz_gear.register();

//Botanic Integrated Circuit ==========================================================================================

# Integrated Botanical Processor
var integrated_botanical_processor = VanillaFactory.createItem("integrated_botanical_processor");
integrated_botanical_processor.rarity = "rare";
integrated_botanical_processor.register();

# Mana-doped Silicon Boule
var mana_silicon_boule = VanillaFactory.createItem("mana_silicon_boule");
mana_silicon_boule.register();

# Mana-doped Silicon Wafer
var mana_silicon_wafer = VanillaFactory.createItem("mana_silicon_wafer");
mana_silicon_wafer.register();

# Integrated Mana Circuit
var integrated_mana_circuit = VanillaFactory.createItem("integrated_mana_circuit");
integrated_mana_circuit.register();

# Integrated Botanical Mana Circuit Wafer
var integrated_botanical_mana_circuit_wafer = VanillaFactory.createItem("integrated_botanical_mana_circuit_wafer");
integrated_botanical_mana_circuit_wafer.register();

# Livingwood Board
var livingwood_board = VanillaFactory.createItem("livingwood_board");
livingwood_board.register();

# Livingwood Circuit Board
var livingwood_circuit_board = VanillaFactory.createItem("livingwood_circuit_board");
livingwood_circuit_board.register();

# Stone Alchemy Bowl
var stone_alchemy_bowl = VanillaFactory.createItem("stone_alchemy_bowl");
stone_alchemy_bowl.register();

# Twilight Powder
var twilight_powder = VanillaFactory.createItem("twilight_powder");
twilight_powder.register();

# Blackened Spirit
var blackened_spirit = VanillaFactory.createItem("blackened_spirit");
blackened_spirit.register();

# Arboreal Essence
var arboreal_essence = VanillaFactory.createItem("arboreal_essence");
arboreal_essence.register();

# Magical Leather
var magical_leather = VanillaFactory.createItem("magical_leather");
magical_leather.register();

# Blood Infused Leather
var blood_infused_leather = VanillaFactory.createItem("blood_infused_leather");
blood_infused_leather.register();

# Blank Botania Rune
var blank_botania_rune = VanillaFactory.createItem("blank_botania_rune");
blank_botania_rune.register();

# Compressed Mana Steel
var compressed_manasteel = VanillaFactory.createItem("compressed_manasteel");
compressed_manasteel.register();

# Compressed Stygian
var compressed_stygian = VanillaFactory.createItem("compressed_stygian");
compressed_stygian.register();

# Compressed Garmonbozia
var compressed_garmonbozia = VanillaFactory.createItem("compressed_garmonbozia");
compressed_garmonbozia.register();

# Compressed Sentient
var compressed_sentient = VanillaFactory.createItem("compressed_sentient");
compressed_sentient.register();

# Compressed Coralium
var compressed_coralium = VanillaFactory.createItem("compressed_coralium");
compressed_coralium.register();

# Hyper Pearl
var hyper_pearl = VanillaFactory.createItem("hyper_pearl");
hyper_pearl.register();

//Botania Petals ==================================================================
var petal_of_the_daisy = VanillaFactory.createItem("petal_of_the_daisy");
petal_of_the_daisy.register();

var hydrating_petal = VanillaFactory.createItem("hydrating_petal");
hydrating_petal.register();

var petal_of_the_inner_flame = VanillaFactory.createItem("petal_of_the_inner_flame");
petal_of_the_inner_flame.register();

var manastar_petal = VanillaFactory.createItem("manastar_petal");
manastar_petal.register();

var thermal_petal = VanillaFactory.createItem("thermal_petal");
thermal_petal.register();

var petal_of_the_arcane_rose = VanillaFactory.createItem("petal_of_the_arcane_rose");
petal_of_the_arcane_rose.register();

var petal_of_the_gourmaryllis = VanillaFactory.createItem("petal_of_the_gourmaryllis");
petal_of_the_gourmaryllis.register();

var petal_of_the_narslimmus = VanillaFactory.createItem("petal_of_the_narslimmus");
petal_of_the_narslimmus.register();

var jaded_petal = VanillaFactory.createItem("jaded_petal");
jaded_petal.register();

var thorny_belle_petal = VanillaFactory.createItem("thorny_belle_petal");
thorny_belle_petal.register();

var thorny_dread_petal = VanillaFactory.createItem("thorny_dread_petal");
thorny_dread_petal.register();

var tigerseye_petal = VanillaFactory.createItem("tigerseye_petal");
tigerseye_petal.register();

var petal_of_the_exoflame = VanillaFactory.createItem("petal_of_the_exoflame");
petal_of_the_exoflame.register();

var agricarnatic_petal = VanillaFactory.createItem("agricarnatic_petal");
agricarnatic_petal.register();

var hopping_petal = VanillaFactory.createItem("hopping_petal");
hopping_petal.register();

var petal_of_the_rannuncarpus = VanillaFactory.createItem("petal_of_the_rannuncarpus");
petal_of_the_rannuncarpus.register();

var tangled_petals = VanillaFactory.createItem("tangled_petals");
tangled_petals.register();

var petal_of_the_jiyuulia = VanillaFactory.createItem("petal_of_the_jiyuulia");
petal_of_the_jiyuulia.register();

var clay_cone_petal = VanillaFactory.createItem("clay_cone_petal");
clay_cone_petal.register();

var daffomill_petal = VanillaFactory.createItem("daffomill_petal");
daffomill_petal.register();

var petal_of_the_solegnolia = VanillaFactory.createItem("petal_of_the_solegnolia");
petal_of_the_solegnolia.register();

var petal_of_the_bergamute = VanillaFactory.createItem("petal_of_the_bergamute");
petal_of_the_bergamute.register();

var munching_petal = VanillaFactory.createItem("munching_petal");
munching_petal.register();

var petal_of_the_entropinnyum = VanillaFactory.createItem("petal_of_the_entropinnyum");
petal_of_the_entropinnyum.register();

var spectacular_petal = VanillaFactory.createItem("spectacular_petal");
spectacular_petal.register();

var petal_of_the_rafflowsia = VanillaFactory.createItem("petal_of_the_rafflowsia");
petal_of_the_rafflowsia.register();

var petal_me_not = VanillaFactory.createItem("petal_me_not");
petal_me_not.register();

var petal_of_the_game_of_life = VanillaFactory.createItem("petal_of_the_game_of_life");
petal_of_the_game_of_life.register();

var morphing_petal = VanillaFactory.createItem("morphing_petal");
morphing_petal.register();

// var orechid_petallius = VanillaFactory.createItem("orechid_petallius");
// orechid_petallius.register();

// var orechid_ignem_petallius = VanillaFactory.createItem("orechid_ignem_petallius");
// orechid_ignem_petallius.register();

var petal_of_the_fallen_kanade = VanillaFactory.createItem("petal_of_the_fallen_kanade");
petal_of_the_fallen_kanade.register();

var petal_of_the_hyacidus = VanillaFactory.createItem("petal_of_the_hyacidus");
petal_of_the_hyacidus.register();

var medumone_petal = VanillaFactory.createItem("medumone_petal");
medumone_petal.register();

var pollinating_petal = VanillaFactory.createItem("pollinating_petal");
pollinating_petal.register();

var loonium_petal = VanillaFactory.createItem("loonium_petal");
loonium_petal.register();

var petal_of_the_vinculotus = VanillaFactory.createItem("petal_of_the_vinculotus");
petal_of_the_vinculotus.register();

var spectralight_petal = VanillaFactory.createItem("spectralight_petal");
spectralight_petal.register();

var blubbing_petal = VanillaFactory.createItem("blubbing_petal");
blubbing_petal.register();

var petal_of_a_slice_o_cake = VanillaFactory.createItem("petal_of_a_slice_o_cake");
petal_of_a_slice_o_cake.register();

var dreaming_petal = VanillaFactory.createItem("dreaming_petal");
dreaming_petal.register();

var petrolic_petal = VanillaFactory.createItem("petrolic_petal");
petrolic_petal.register();

// ===================================================

//Botania Runes ===================================================

var rune_of_deception = VanillaFactory.createItem("rune_of_deception");
rune_of_deception.register();

var rune_of_mana = VanillaFactory.createItem("rune_of_mana");
rune_of_mana.register();

var rune_of_lust = VanillaFactory.createItem("rune_of_lust");
rune_of_lust.register();

var rune_of_gluttony = VanillaFactory.createItem("rune_of_gluttony");
rune_of_gluttony.register();

var rune_of_greed = VanillaFactory.createItem("rune_of_greed");
rune_of_greed.register();

var rune_of_sloth = VanillaFactory.createItem("rune_of_sloth");
rune_of_sloth.register();

var rune_of_wrath = VanillaFactory.createItem("rune_of_wrath");
rune_of_wrath.register();

var rune_of_envy = VanillaFactory.createItem("rune_of_envy");
rune_of_envy.register();

var rune_of_pride = VanillaFactory.createItem("rune_of_pride");
rune_of_pride.register();

var rune_of_water = VanillaFactory.createItem("rune_of_water");
rune_of_water.register();

var rune_of_fire = VanillaFactory.createItem("rune_of_fire");
rune_of_fire.register();

var rune_of_earth = VanillaFactory.createItem("rune_of_earth");
rune_of_earth.register();

var rune_of_air = VanillaFactory.createItem("rune_of_air");
rune_of_air.register();

var rune_of_spring = VanillaFactory.createItem("rune_of_spring");
rune_of_spring.register();

var rune_of_summer = VanillaFactory.createItem("rune_of_summer");
rune_of_summer.register();

var rune_of_autumn = VanillaFactory.createItem("rune_of_autumn");
rune_of_autumn.register();

var rune_of_winter = VanillaFactory.createItem("rune_of_winter");
rune_of_winter.register();

var rune_of_teleportation = VanillaFactory.createItem("rune_of_teleportation");
rune_of_teleportation.register();

var rune_of_energy = VanillaFactory.createItem("rune_of_energy");
rune_of_energy.register();

// ================================================================

//Blood Magic Reagents ============================================

var dirty_reagent = VanillaFactory.createItem("dirty_reagent");
dirty_reagent.register();

var wizards_reagent = VanillaFactory.createItem("wizards_reagent");
wizards_reagent.register();

var neutral_reagent = VanillaFactory.createItem("neutral_reagent");
neutral_reagent.register();

var tempest_reagent = VanillaFactory.createItem("tempest_reagent");
tempest_reagent.register();

var strength_reagent = VanillaFactory.createItem("strength_reagent");
strength_reagent.register();

var damage_reagent = VanillaFactory.createItem("damage_reagent");
damage_reagent.register();

var potent_reagent = VanillaFactory.createItem("potent_reagent");
potent_reagent.register();

var binding_reagent = VanillaFactory.createItem("binding_reagent");
binding_reagent.register();

// ==================================================================

//Blood Magic Catalysts =============================================

var simple_catalyst = VanillaFactory.createItem("simple_catalyst");
simple_catalyst.register();

var strengthened_catalyst = VanillaFactory.createItem("strengthened_catalyst");
strengthened_catalyst.register();

var concentrated_catalyst = VanillaFactory.createItem("concentrated_catalyst");
concentrated_catalyst.register();

var intensive_catalyst = VanillaFactory.createItem("intensive_catalyst");
intensive_catalyst.register();

// ==================================================================

//Blood Magic Essences ==============================================

var tempestas = VanillaFactory.createItem("tempestas");
tempestas.register();

var aether = VanillaFactory.createItem("aether");
aether.register();

var aquasalus = VanillaFactory.createItem("aquasalus");
aquasalus.register();

var crepitous = VanillaFactory.createItem("crepitous");
crepitous.register();

var crystallos = VanillaFactory.createItem("crystallos");
crystallos.register();

var incendium = VanillaFactory.createItem("incendium");
incendium.register();

var magicales = VanillaFactory.createItem("magicales");
magicales.register();

var offensa = VanillaFactory.createItem("offensa");
offensa.register();

var orbis_terrae = VanillaFactory.createItem("orbis_terrae");
orbis_terrae.register();

var praesidium = VanillaFactory.createItem("praesidium");
praesidium.register();

var potentia = VanillaFactory.createItem("potentia");
potentia.register();

var reductus = VanillaFactory.createItem("reductus");
reductus.register();

var sanctus = VanillaFactory.createItem("sanctus");
sanctus.register();

var tenebrae = VanillaFactory.createItem("tenebrae");
tenebrae.register();

var terrae = VanillaFactory.createItem("terrae");
terrae.register();

var virtus = VanillaFactory.createItem("virtus");
virtus.register();

// ==================================================================

//Blood Magic Cores =================================================
var empty_core = VanillaFactory.createItem("empty_core");
empty_core.register();

var gusty_core = VanillaFactory.createItem("gusty_core");
gusty_core.register();

var aquatic_core = VanillaFactory.createItem("aquatic_core");
aquatic_core.register();

var defensive_core = VanillaFactory.createItem("defensive_core");
defensive_core.register();

var icy_core = VanillaFactory.createItem("icy_core");
icy_core.register();

var fire_core = VanillaFactory.createItem("fire_core");
fire_core.register();

var magical_core = VanillaFactory.createItem("magical_core");
magical_core.register();

var offensive_core = VanillaFactory.createItem("offensive_core");
offensive_core.register();

var environmental_core = VanillaFactory.createItem("environmental_core");
environmental_core.register();

var potency_core = VanillaFactory.createItem("potency_core");
potency_core.register();

var suppression_core = VanillaFactory.createItem("suppression_core");
suppression_core.register();

var reduction_core = VanillaFactory.createItem("reduction_core");
reduction_core.register();

var holy_core = VanillaFactory.createItem("holy_core");
holy_core.register();

var dark_core = VanillaFactory.createItem("dark_core");
dark_core.register();

var earthen_core = VanillaFactory.createItem("earthen_core");
earthen_core.register();

var power_core = VanillaFactory.createItem("power_core");
power_core.register();

var tempest_core = VanillaFactory.createItem("tempest_core");
tempest_core.register();

// ====================================================================

// Blood Magic Slates =================================================
var vibrant_slate = VanillaFactory.createItem("vibrant_slate");
vibrant_slate.register();
var rainbow_slate = VanillaFactory.createItem("rainbow_slate");
rainbow_slate.register();
var perfect_slate = VanillaFactory.createItem("perfect_slate");
perfect_slate.register();

// ====================================================================

var tannin_mixture = VanillaFactory.createItem("tannin_mixture");
tannin_mixture.register();

var small_hide_salted = VanillaFactory.createItem("small_hide_salted");
small_hide_salted.register();

//Extra Util's Integration ================================================================================

# Demon
var demon_plate = VanillaFactory.createItem("demon_plate");
demon_plate.register();
var demon_gear = VanillaFactory.createItem("demon_gear");
demon_gear.register();

# Enchanted
var enchanted_plate = VanillaFactory.createItem("enchanted_plate");
enchanted_plate.register();
var enchanted_gear = VanillaFactory.createItem("enchanted_gear");
enchanted_gear.register();

# Evil Infused
var evil_infused_plate = VanillaFactory.createItem("evil_infused_plate");
evil_infused_plate.register();
var evil_infused_gear = VanillaFactory.createItem("evil_infused_gear");
evil_infused_gear.register();

// =======================

var sanguine_pearl = VanillaFactory.createItem("sanguine_pearl");
sanguine_pearl.register();

var corruptedstarmetal = VanillaFactory.createItem("corruptedstarmetal");
corruptedstarmetal.register();

var abyssal_pearl = VanillaFactory.createItem("abyssal_pearl");
abyssal_pearl.rarity = "EPIC";
abyssal_pearl.glowing = true;
abyssal_pearl.register();


// Thaumcraft Vis Crystal's
val allThaumcraftAspects_ = ["aer", "terra", "ignis", "aqua", "ordo", "perditio", "vacuos", "lux", "motus", "gelum", "vitreus", "metallum", "victus", "mortuus", "potentia", "permutatio", "praecantatio", "auram", "alkimia", "vitium", "tenebrae", "alienis", "volatus", "herba", "instrumentum", "fabrico", "machina", "vinculum", "spiritus", "cognitio", "sensus", "aversio", "praemunio", "desiderium", "exanimis", "bestia", "humanus", "coralos", "priscus", "chronos", "anteanus", "dreadia", "imperium", "fluctus", "ventus", "exitium", "infernum", "sonus", "draco", "visum", "caeles"] as string[];
for aspect in allThaumcraftAspects_ {
	var condensed_vis_crystal = VanillaFactory.createItem("condensed_vis_crystal_" + aspect);
	condensed_vis_crystal.register();
}

// Operation Processor

var inscriber_operation_press = VanillaFactory.createItem("inscriber_operation_press");
inscriber_operation_press.register();

var printed_operation_circuit = VanillaFactory.createItem("printed_operation_circuit");
printed_operation_circuit.register();

var operation_processor = VanillaFactory.createItem("operation_processor");
operation_processor.register();

// === //

// Estimation Processor

var inscriber_estimation_press = VanillaFactory.createItem("inscriber_estimation_press");
inscriber_estimation_press.register();

var printed_estimation_circuit = VanillaFactory.createItem("printed_estimation_circuit");
printed_estimation_circuit.register();

var estimation_processor = VanillaFactory.createItem("estimation_processor");
estimation_processor.register();

// === //

// Methodology Processor

var inscriber_methodology_press = VanillaFactory.createItem("inscriber_methodology_press");
inscriber_methodology_press.register();

var printed_methodolgy_circuit = VanillaFactory.createItem("printed_methodolgy_circuit");
printed_methodolgy_circuit.register();

var methodology_processor = VanillaFactory.createItem("methodology_processor");
methodology_processor.register();

// === //

// Clearence Processor

var inscriber_clearance_press = VanillaFactory.createItem("inscriber_clearance_press");
inscriber_clearance_press.register();

var printed_clearance_circuit = VanillaFactory.createItem("printed_clearance_circuit");
printed_clearance_circuit.register();

var clearance_processor = VanillaFactory.createItem("clearance_processor");
clearance_processor.register();

// === //

// Scheduling Processor

var inscriber_scheduling_press = VanillaFactory.createItem("inscriber_scheduling_press");
inscriber_scheduling_press.register();

var printed_scheduling_circuit = VanillaFactory.createItem("printed_scheduling_circuit");
printed_scheduling_circuit.register();

var scheduling_processor = VanillaFactory.createItem("scheduling_processor");
scheduling_processor.register();

// === //

// Parallel Processor

var inscriber_parallel_press = VanillaFactory.createItem("inscriber_parallel_press");
inscriber_parallel_press.register();

var inscriber_parallel_circuit = VanillaFactory.createItem("inscriber_parallel_circuit");
inscriber_parallel_circuit.register();

// === //

// Speculative Processor

var inscriber_speculative_press = VanillaFactory.createItem("inscriber_speculative_press");
inscriber_speculative_press.register();

var inscriber_speculative_circuit = VanillaFactory.createItem("inscriber_speculative_circuit");
inscriber_speculative_circuit.register();

// === //

// Blank Press
// var inscriber_blank_press = VanillaFactory.createItem("inscriber_blank_press");
// inscriber_blank_press.register();

// === //

//Crystalline Pink Slime Components

var crystalline_pink_slime_plate = VanillaFactory.createItem("crystalline_pink_slime_plate");
crystalline_pink_slime_plate.register();

var crystalline_pink_slime_gear = VanillaFactory.createItem("crystalline_pink_slime_gear");
crystalline_pink_slime_gear.register();

// === //

// Star Leather

var star_leather = VanillaFactory.createItem("star_leather");
star_leather.register();

// === //

// Stone Tablet

var stone_tablet = VanillaFactory.createItem("stone_tablet");
stone_tablet.rarity = "RARE";
stone_tablet.register();

// Abyssal Tablet

var abyssal_tablet = VanillaFactory.createItem("abyssal_tablet");
abyssal_tablet.rarity = "RARE";
abyssal_tablet.glowing = true;
abyssal_tablet.register();

// === //

// Casing Mold and Shape

var casing_mold = VanillaFactory.createItem("casing_mold");
casing_mold.register();

var casing_shape = VanillaFactory.createItem("casing_shape");
casing_shape.register();

// Mixed Metal Ingot

var mixed_metal = VanillaFactory.createItem("mixed_metal");
mixed_metal.register();

// Devil Dust

var devil_dust = VanillaFactory.createItem("devil_dust");
devil_dust.register();

// Maligne Heart

var maligne_heart = VanillaFactory.createItem("maligne_heart");
maligne_heart.rarity = "EPIC";
maligne_heart.glowing = true;
maligne_heart.register();

// Baykok's Essence

var baykoks_essence = VanillaFactory.createItem("baykoks_essence");
baykoks_essence.register();

var fiery_baykoks_essence = VanillaFactory.createItem("fiery_baykoks_essence");
fiery_baykoks_essence.rarity = "RARE";
fiery_baykoks_essence.glowing = true;
fiery_baykoks_essence.register();

//Purple Print

var purpleprint = VanillaFactory.createItem("purpleprint");
purpleprint.register();

//Base Focal Sphere

var base_focal_sphere = VanillaFactory.createItem("base_focal_sphere");
base_focal_sphere.register();

//Primorial Fragment

var primordial_fragment = VanillaFactory.createItem("primordial_fragment");
primordial_fragment.rarity = "EPIC";
primordial_fragment.glowing = true;
primordial_fragment.register();

//Impetus Crystal
var impetus_crystal = VanillaFactory.createItem("impetus_crystal");
impetus_crystal.rarity = "EPIC";
impetus_crystal.glowing = true;
impetus_crystal.register();

//Conducted Impetus
var conducted_impetus = VanillaFactory.createItem("conducted_impetus");
conducted_impetus.rarity = "EPIC";
conducted_impetus.glowing = true;
conducted_impetus.register();

//Goddess Pearl

var goddess_pearl = VanillaFactory.createItem("goddess_pearl");
goddess_pearl.rarity = "EPIC";
goddess_pearl.glowing = true;
goddess_pearl.maxStackSize = 1;
goddess_pearl.register();

//Unwarpification Talisman

var unwarpification_talisman = VanillaFactory.createItem("unwarpification_talisman");
unwarpification_talisman.maxStackSize = 1;
unwarpification_talisman.rarity = "EPIC";
unwarpification_talisman.itemRightClick = function(stack, world, player, hand) {
    Commands.call("tc warp @p set 0 PERM", player, world, false, true);
    Commands.call("tc warp @p set 0", player, world, false, true);
    Commands.call("tc warp @p set 0 TEMP", player, world, false, true);
    Commands.call('/tellraw @p {"text":"Your warp has been set to 0!","bold":true}', player, world, false, true);
    return "Pass";
};
unwarpification_talisman.register();

print("--------------- Custom Resources End ------------------");

