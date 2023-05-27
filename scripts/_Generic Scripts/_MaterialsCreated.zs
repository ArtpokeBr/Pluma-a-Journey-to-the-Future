#loader gregtech
#priority 10000

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;


// Editing Existent Materials ======================================//

var brass = MaterialRegistry.get("brass");
brass.addFlags("GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL");

var Salt = MaterialRegistry.get("salt");
Salt.addFlags("MORTAR_GRINDABLE");

var red_alloy = MaterialRegistry.get("red_alloy");
red_alloy.addFlags("GENERATE_GEAR");

var copper = MaterialRegistry.get("copper");
copper.addFlags("GENERATE_GEAR");

var tin = MaterialRegistry.get("tin");
tin.addFlags("GENERATE_GEAR");

var titanium = MaterialRegistry.get("titanium");
titanium.addFlags("GENERATE_FOIL", "GENERATE_SPRING", "GENERATE_SPRING_SMALL");

var vanadium_steel = MaterialRegistry.get("vanadium_steel");
vanadium_steel.addFlags("GENERATE_FRAME");

var red_steel = MaterialRegistry.get("red_steel");
red_steel.addFlags("GENERATE_ROTOR", "GENERATE_DENSE");

var annealed_copper = MaterialRegistry.get("annealed_copper");
annealed_copper.addFlags("GENERATE_FRAME");

var certus_quartz = MaterialRegistry.get("certus_quartz");
certus_quartz.addFlags("GENERATE_GEAR");

var nether_quartz = MaterialRegistry.get("nether_quartz");
nether_quartz.addFlags("GENERATE_GEAR");

var quartzite = MaterialRegistry.get("quartzite");
quartzite.addFlags("GENERATE_GEAR");

var magnesium = MaterialRegistry.get("magnesium");
magnesium.addFlags("GENERATE_GEAR", "GENERATE_INGOT", "GENERATE_PLATE");

var gold = MaterialRegistry.get("gold");
gold.addFlags("GENERATE_GEAR");

var rose_gold = MaterialRegistry.get("rose_gold");
rose_gold.addFlags("GENERATE_FOIL", "GENERATE_SPRING", "GENERATE_SPRING_SMALL");

var stainless_steel = MaterialRegistry.get("stainless_steel");
stainless_steel.addFlags("GENERATE_SPRING");

var hsla_steel = MaterialRegistry.get("hsla_steel");
hsla_steel.addFlags("GENERATE_ROTOR");

var aluminium = MaterialRegistry.get("aluminium");
aluminium.addFlags("GENERATE_DENSE");

var silver = MaterialRegistry.get("silver");
silver.addFlags("GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING");

var electrum = MaterialRegistry.get("electrum");
electrum.addFlags("GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING");

var bronze = MaterialRegistry.get("bronze");
bronze.addFlags("GENERATE_DENSE", "GENERATE_SPRING_SMALL", "GENERATE_SPRING");

var invar = MaterialRegistry.get("invar");
invar.addFlags("GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING");

var iron_magnetic = MaterialRegistry.get("iron_magnetic");
iron_magnetic.addFlags("GENERATE_DENSE");

var steel_magnetic = MaterialRegistry.get("steel_magnetic");
steel_magnetic.addFlags("GENERATE_DENSE");

var nickel = MaterialRegistry.get("nickel");
nickel.addFlags("GENERATE_ROTOR");

var zinc = MaterialRegistry.get("zinc");
zinc.addFlags("GENERATE_ROTOR");

// ========================= //

// Actually Additions Materials //
val black_quartz = MaterialBuilder(32000, "black_quartz")
    .gem().fluid("fluid").ore(2, 1, false)
    .iconSet("GEM_HORIZONTAL")
    .color(0x212A35)
    .flags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_LENSE", "MORTAR_GRINDABLE"])
    .build();

// ========================= //

// Quark Materials //
val biotite = MaterialBuilder(32001, "biotite")
    .gem().fluid("fluid").ore(2, 1, false)
    .color(0x0e0d12)
    .addOreByproducts(<material:ender_pearl>)
    .flags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_LENSE", "MORTAR_GRINDABLE"])
    .build();

// ========================= //

// Totally Custom Materials //
val obscure_compound = MaterialBuilder(32002, "obscure_compound")
    .dust()
    .color(0x211f26)
    .build();

// ========================= //

// Ender IO Materials //

val pulsating_iron = MaterialBuilder(32003, "pulsating_iron")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x6ae26e)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .cableProperties(8, 1, 0)
    .build();
    
val conductive_iron = MaterialBuilder(32004, "conductive_iron")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xf7b29b)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .cableProperties(32, 1, 0)
    .build();

val energetic_alloy = MaterialBuilder(32005, "energetic_alloy")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xf49507)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .cableProperties(128, 1, 0)
    .build();

val vibrant_alloy = MaterialBuilder(32006, "vibrant_alloy")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xa4ff70)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .cableProperties(512, 1, 0)
    .build();

val end_steel = MaterialBuilder(32007, "end_steel")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xe0efbd)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .cableProperties(2048, 1, 0)
    .build();

val dark_steel = MaterialBuilder(32008, "dark_steel")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x414751)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();  

val electrical_steel = MaterialBuilder(32009, "electrical_steel")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xb2c0c1)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

// ========================= //

val slaked_composite = MaterialBuilder(32010, "slaked_composite")
    .dust()
    .color(0xD9B472)
    .build();

// ========================= //

val ardite = MaterialBuilder(32011, "ardite")
    .ingot().fluid("fluid")
    .ore(2, 2, false)
    .iconSet("metallic")
    .color(0xEE6600)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val menril = MaterialBuilder(32012, "menril")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x2abaf7)
    .flags(["GENERATE_FRAME", "GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

// val chorus = MaterialBuilder(32013, "chorus")
//     .ingot().fluid("fluid")
//     .iconSet("shiny")
//     .color(0xae70b8)
//     .flags(["GENERATE_FRAME", "GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
//     .build();

val fluix = MaterialBuilder(32014, "fluix")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x9345b5)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val stygian = MaterialBuilder(32015, "stygian")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x841dbf)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val runic_steel = MaterialBuilder(32016, "runic_steel")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x626082)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val terrastone = MaterialBuilder(32017, "terrastone")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x298122)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();    

val scorched = MaterialBuilder(32018, "scorched")
    .fluid("fluid", true)
    .iconSet("dull")
    .color(0x331f13)
    .flags(["generate_plate"])
    .build();

val honeySteel = MaterialBuilder(32019, "honey_steel")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xF5C068)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val refinedObsidian = MaterialBuilder(32020, "refined_obsidian")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x755a9c)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val IronAlloy = MaterialBuilder(32021, "construction_alloy")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x4f4557)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val StellarAlloy = MaterialBuilder(32022, "stellar_alloy")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xceeaeb)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val FossilOre = MaterialBuilder(32023, "fossil")
    .dust()
    .ore()
    .iconSet("QUARTZ")
    .color(0xa1a092)
    .build();

var LigniteCoal = MaterialBuilder(32024, "lignite_coal")
    .gem(1, 1200).ore()
    .color(0x644646).iconSet("LIGNITE")
    .flags("FLAMMABLE", "NO_SMELTING", "NO_SMASHING", "MORTAR_GRINDABLE", "DISABLE_DECOMPOSITION")
    .build();

var Amber = MaterialBuilder(32025, "amber")
    .gem(3).ore(1, 1, false)
    .color(0xe08712).iconSet("GEM_HORIZONTAL")
    .flags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_LENSE", "MORTAR_GRINDABLE"])
    .build();

val beneath_gas = MaterialBuilder(32026, "beneath_gas")
    .fluid("gas")
    .iconSet("dull")
    .color(0x082137)
    .build();

val Modularium = MaterialBuilder(32027, "modularium")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xa1cfd1)
    .blastTemp(1800, "LOW")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val time_vortex_fluid = MaterialBuilder(32028, "time_vortex_fluid")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x251c3b)
    .build();

val lumium = MaterialBuilder(32029, "lumium")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xf6ff99)
    .blastTemp(2700, "HIGH")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val signalum = MaterialBuilder(32030, "signalum")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xce4b00)
    .blastTemp(2700, "HIGH")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val enderium = MaterialBuilder(32031, "enderium")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x1f6b62)
    .blastTemp(3500, "HIGHEST")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val glitch_infused_ingot = MaterialBuilder(32032, "glitch_infused")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x03fcc6)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val soularium = MaterialBuilder(32033, "soularium")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x664027)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val manasteel = MaterialBuilder(32034, "manasteel")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x3389ff)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val elementium = MaterialBuilder(32035, "elementium")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xf15cae)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val terrasteel = MaterialBuilder(32036, "terrasteel")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x53f900)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val ember = MaterialBuilder(32037, "ember")
    .fluid("fluid")
    .iconSet("dull")
    .color(0xf56642)
    .build();

val dawnstone = MaterialBuilder(32038, "dawnstone")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xffa733)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val demonlord = MaterialBuilder(32039, "demonlord")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0xd91ac6)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build(); 

val diabolic_carbide = MaterialBuilder(32040, "diabolic_carbide")
    .ingot().fluid("fluid")
    .iconSet("shiny")
    .color(0x1a1819)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();  

val dwarven_solution = MaterialBuilder(32041, "dwarven_solution")
    .fluid("fluid")
    .iconSet("dull")
    .color(0xd69949)
    .build();

val unstable_mana = MaterialBuilder(32042, "unstable_mana")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x439ADF)
    .build();

val liquid_nightmares = MaterialBuilder(32043, "liquid_nightmares")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x270130)
    .build();    

val vinteum = MaterialBuilder(32044, "vinteum")
    .gem(3).ore().fluid("fluid")
    .color(0x64C8FF).iconSet("EMERALD")
    .flags("NO_SMELTING", "NO_SMASHING", "MORTAR_GRINDABLE", "DISABLE_DECOMPOSITION", "GENERATE_LENS", "GENERATE_PLATE")
    .build();

val red_quartz_sand = MaterialBuilder(32045, "red_sand")
    .dust(1)
    .flags("DISABLE_DECOMPOSITION", "MORTAR_GRINDABLE")
    .iconSet("QUARTZ")
    .color(0xfa7025)
    .build();

val twilight_metal = MaterialBuilder(32046, "twilight_metal")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xc1c4b7)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FINE_WIRE", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE", "GENERATE_FRAME"])
    .build();

val dark_fluid = MaterialBuilder(32047, "dark_fluid")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x0a090a)
    .build(); 

val ender_mixture = MaterialBuilder(32048, "ender_mixture")
    .dust()
    .iconSet("SHINY")
    .color(0x42f572)
    .build();

val aquamarine = MaterialBuilder(32049, "aquamarine")
    .gem(3).ore().fluid("fluid")
    .color(0x19acfc).iconSet("RUBY")
    .flags("NO_SMELTING", "NO_SMASHING", "MORTAR_GRINDABLE", "DISABLE_DECOMPOSITION", "GENERATE_LENS", "GENERATE_PLATE")
    .build();

var draconium = MaterialBuilder(32050, "draconium")
    .element("Draconium")
    .ingot().fluid()
    .color(0xbe49ed)
    .iconSet("metallic")
    .blastTemp(6800, "HIGHER")
    .flags(["generate_plate", "generate_rod", "generate_gear", "generate_dense"])
    .build();

var awakened_draconium = MaterialBuilder(32051, "awakened_draconium")
    .element("AwakenedDraconium")
    .ingot().fluid()
    .color(0xf58742)
    .iconSet("metallic")
    .flags(["no_smelting", "generate_plate", "generate_rod", "generate_gear"])
    .build();

val enderlyne = MaterialBuilder(32052, "enderlyne")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x9370DB)
    .build();

val fermented_enderlyne = MaterialBuilder(32053, "fermented_enderlyne")
    .fluid("fluid")
    .iconSet("dull")
    .color(0x9e70fa)
    .build();

val polyenderlyne = MaterialBuilder(32054, "polyenderlyne")
    .fluid("fluid")
    .iconSet("dull")
    .flags(["GENERATE_PLATE", "GENERATE_FOIL", "GENERATE_INGOT"])
    .color(0xAC8BF0)
    .build();

val infinity_metal = MaterialBuilder(32055, "infinity_metal")
    .ingot()
    .iconSet("infinity")
    .color(0xc1c4b7)
    .blastTemp(8700, "HIGHEST")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val ancient_metal = MaterialBuilder(32056, "ancient_metal")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0xf02626)
    .blastTemp(2700, "HIGHEST")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val refined_glue = MaterialBuilder(32057, "refined_glue")
    .fluid("fluid")
    .iconSet("dull")
    .flags(["GENERATE_PLATE", "GENERATE_FOIL", "GENERATE_INGOT"])
    .color(0xebb360)
    .build();

val super_glue = MaterialBuilder(32058, "super_glue")
    .fluid("fluid")
    .iconSet("dull")
    .flags(["GENERATE_PLATE", "GENERATE_FOIL", "GENERATE_INGOT"])
    .color(0xE8E2CF)
    .build();

val cobalt_steel = MaterialBuilder(32059, "cobalt_steel")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x6485fa)
    .blastTemp(3500, "LOW")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val magnetic_copper = MaterialBuilder(32060, "copper_magnetic")
    .ingot()
    .iconSet("magnetic")
    .color(0xff6400)
    .flags(["GENERATE_DENSE", "GENERATE_BOLT_SCREW", "GENERATE_ROD"])
    .build();

#Thaumcraft Ores 
var tcAer = MaterialBuilder(32061, "aer_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .color(0xefef58)
    .flags(["no_smelting"])
    .build();

var tcAqua = MaterialBuilder(32062, "aqua_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .flags(["no_smelting"])    
    .color(0x42d7f4)
    .build();

var tcEntropy = MaterialBuilder(32063, "entropy_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .flags(["no_smelting"])    
    .color(0x2b2b29)
    .build();

var tcIgnis = MaterialBuilder(32064, "ignis_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .flags(["no_smelting"])    
    .color(0xd81d0d)
    .build();

var tcOrdo = MaterialBuilder(32065, "ordo_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .flags(["no_smelting"])    
    .color(0xe0e0d9)
    .build();

var tcTerra = MaterialBuilder(32066, "terra_infused")
    .dust().ore(1, 1, true)
    .iconSet("shards")
    .flags(["no_smelting"])    
    .color(0x1dba0e)
    .build();

// ====== //

var concentrated_titanium = MaterialBuilder(32067, "concentrated_titanium")
    .dust().ore(1, 1, false)
    .iconSet("METALLIC")
    .flags(["no_smelting"])    
    .color(0x9c5eb5)
    .build();

# 32068 is used for Abyssal Stone

var moon = MaterialBuilder(32069, "moon")
    .dust()
    .iconSet("METALLIC")
    .flags(["no_smelting"])    
    .color(0xf0e7e6)
    .build();

# 32070 is used for Dread Stone

# 32071 is used for Abyssalnite Stone

# 32072 is used for Omothol Stone

val starmetal = MaterialBuilder(32073, "starmetal")
    .ingot().fluid("fluid").ore(1, 1, true)
    .iconSet("DULL")
    .color(0x1c1cba)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

// Related to Gold Processing ==================================================

val gold_alloy = MaterialBuilder(32074, "gold_alloy")
    .ingot()
    .iconSet("shiny")
    .color(0xBBA52B)
    .components([<material:copper>*3, <material:gold>*1, <material:rare_earth>*1])
    .flags(["DISABLE_DECOMPOSITION"])
    .build();

val precious_metal = MaterialBuilder(32075, "precious_metal")
    .ingot().ore()
    .iconSet("shiny")
    .color(0xB99023)
    .components([<material:gold>*1, <material:rare_earth>*1])
    .flags(["DISABLE_DECOMPOSITION"])
    .build();

val gold_leach = MaterialBuilder(32076, "gold_leach")
    .dust()
    .iconSet("rough")
    .color(0xBBA52B)
    .components([<material:copper>*3, <material:gold>*1])
    .flags(["DISABLE_DECOMPOSITION"])
    .build();

val copper_leach = MaterialBuilder(32077, "copper_leach")
    .dust()
    .iconSet("shiny")
    .color(0x765A30)
    .components([<material:copper>*3])
    .flags(["DISABLE_DECOMPOSITION"])
    .build();

val chloroauric_acid = MaterialBuilder(32078, "chloroauric_acid")
    .fluid()
    .iconSet("shiny")
    .color(0xDFD11F)
    .build();

val potassium_metabisulfite = MaterialBuilder(32079, "potassium_metabisulfite")
    .dust()
    .iconSet("dull")
    .color(0xebebeb)
    .components([<material:potassium>*2, <material:sulfur>*2, <material:oxygen>*5])
    .flags(["decomposition_by_electrolyzing"])
    .build();

// ========== //

val ferroboron = MaterialBuilder(32080, "ferroboron")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x141414)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val tough = MaterialBuilder(32081, "tough")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x24212b)
    .blastTemp(2700, "LOW")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val hard_carbon = MaterialBuilder(32082, "hard_carbon")
    .ingot().fluid("fluid")
    .iconSet("metallic")
    .color(0x316f82)
    .blastTemp(4000, "HIGH")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

val advanced_alloy = MaterialBuilder(32083, "advanced_alloy")
    .ingot()
    .iconSet("metallic")
    .color(0x858276)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .build();

var thaumium = MaterialBuilder(32084, "thaumium")
    .ingot()
    .color(0x591f8f)
    .components([<material:iron> * 1])
    .flags(["DISABLE_DECOMPOSITION", "GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("shiny")
    .build();

var voidmetal = MaterialBuilder(32085, "void")
    .ingot()
    .color(0x2B0051)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("dull")
    .build();
    <material:void>.setFormula("§5§kV");

// var mithrillium = MaterialBuilder(32086, "mithrillium")
//     .ingot()
//     .color(0x39829d)
//     .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
//     .iconSet("dull")
//     .build();

var thaumic_steel = MaterialBuilder(32087, "thaumic_steel")
    .ingot()
    .color(0x3e2e4d)
    .blastTemp(3500, "LOW")
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("dull")
    .build();

var osgloglas = MaterialBuilder(32088, "osgloglas")
    .ingot().fluid("fluid")
    .color(0x75f754)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("dull")
    .build();

var alumite = MaterialBuilder(32089, "alumite")
    .ingot().fluid("fluid")
    .color(0xfa9dfa)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("dull")
    .build();

var mirion = MaterialBuilder(32090, "mirion")
    .ingot().fluid("fluid")
    .color(0xdbfc7e)
    .flags(["GENERATE_GEAR", "GENERATE_DENSE", "GENERATE_ROTOR", "GENERATE_SMALL_GEAR", "GENERATE_SPRING_SMALL", "GENERATE_SPRING", "GENERATE_FOIL", "GENERATE_DOUBLE_PLATE"])
    .iconSet("dull")
    .build();

// ==============================================================================
