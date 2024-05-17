#loader contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.ResourceLocation as resLoc;
import mods.contenttweaker.IItemColorSupplier;
import crafttweaker.item.IItemStack;

print("--------------- Material Factory ------------------");

#Ore Cluster
MaterialSystem.getPartBuilder()
    .setName("ore_cluster")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("cluster")
    .build();

#Ore Shard
MaterialSystem.getPartBuilder()
    .setName("ore_shard")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("shard")
    .build();

#Ore Clump
MaterialSystem.getPartBuilder()
    .setName("ore_clump")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("clump")
    .build();

#Ore Crystal
MaterialSystem.getPartBuilder()
    .setName("ore_crystal")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("crystal")
    .build();

// #Ore Purified
// MaterialSystem.getPartBuilder()
//     .setName("ore_purified")
//     .setPartType(MaterialSystem.getPartType("item"))
//     .setOreDictName("orePurified")
//     .build();

#Light Plate
MaterialSystem.getPartBuilder()
    .setName("light_plate")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("lightPlate")
    .build();

#Heavy Plate
MaterialSystem.getPartBuilder()
    .setName("heavy_plate")
    .setPartType(MaterialSystem.getPartType("item"))
    .setOreDictName("heavyPlate")
    .build();

// Manual first, then GT Generated
val materialColorMap as int[string] = {
    "Ardite": 13713936,

    "Actinium": 12833279,
    "Aluminium": 8440048,
    "Americium": 2652265,
    "Antimony": 14474480,
    "Argon": 65280,
    "Arsenic": 6776662,
    "Astatine": 2365988,
    "Barium": 8618572,
    "Berkelium": 6576776,
    "Beryllium": 6599780,
    "Bismuth": 6594720,
    "Bohrium": 14440447,
    "Boron": 13826770,
    "Bromine": 5245450,
    "Caesium": 8413707,
    "Calcium": 16774622,
    "Californium": 11033106,
    "Carbon": 1315860,
    "Cadmium": 3289660,
    "Cerium": 8884605,
    "Chlorine": 16777215,
    "Chrome": 15385816,
    "Cobalt": 5263610,
    "Copernicium": 16776959,
    "Copper": 16737280,
    "Curium": 8082510,
    "Darmstadtium": 5734498,
    "Deuterium": 16777215,
    "Dubnium": 13893119,
    "Dysprosium": 16777215,
    "Einsteinium": 13541120,
    "Erbium": 16777215,
    "Europium": 2162687,
    "Fermium": 9980623,
    "Flerovium": 16777215,
    "Fluorine": 16777215,
    "Francium": 11184810,
    "Gadolinium": 14540287,
    "Gallium": 14474495,
    "Germanium": 4408131,
    "Gold": 16770640,
    "Hafnium": 10066330,
    "Hassium": 14540253,
    "Holmium": 16777215,
    "Hydrogen": 181,
    "Helium": 16777215,
    "Helium3": 16777215,
    "Indium": 4194432,
    "Iodine": 2896975,
    "Iridium": 10609892,
    "Iron": 13158600,
    "Krypton": 8454016,
    "Lanthanum": 6124917,
    "Lawrencium": 16777215,
    "Lead": 9200780,
    "Lithium": 12437467,
    "Livermorium": 11184810,
    "Lutetium": 43775,
    "Magnesium": 16763080,
    "Mendelevium": 1919695,
    "Manganese": 13492665,
    "Meitnerium": 2246334,
    "Mercury": 15129820,
    "Molybdenum": 11842780,
    "Moscovium": 7885997,
    "Neodymium": 6579300,
    "Neon": 16430260,
    "Neptunium": 2641275,
    "Nickel": 13158650,
    "Nihonium": 534174,
    "Niobium": 12498120,
    "Nitrogen": 49089,
    "Nobelium": 16777215,
    "Oganesson": 1322340,
    "Osmium": 3289855,
    "Oxygen": 5030911,
    "Palladium": 8421504,
    "Phosphorus": 16776960,
    "Polonium": 13227134,
    "Platinum": 16777160,
    "Plutonium": 15741490,
    "Plutonium241": 16401990,
    "Potassium": 12508415,
    "Praseodymium": 13553358,
    "Promethium": 16777215,
    "Protactinium": 10980205,
    "Radon": 16726527,
    "Radium": 16777165,
    "Rhenium": 11975363,
    "Rhodium": 14421080,
    "Roentgenium": 14941676,
    "Rubidium": 15736350,
    "Ruthenium": 5287117,
    "Rutherfordium": 16774817,
    "Samarium": 16777164,
    "Scandium": 16777215,
    "Seaborgium": 1689087,
    "Selenium": 11975275,
    "Silicon": 3947600,
    "Silver": 14474495,
    "Sodium": 150,
    "Strontium": 13158600,
    "Sulfur": 13158400,
    "Tantalum": 7895180,
    "Technetium": 5526613,
    "Tellurium": 16777215,
    "Tennessine": 9928662,
    "Terbium": 16777215,
    "Thorium": 7680,
    "Thallium": 12698078,
    "Thulium": 16777215,
    "Tin": 14474460,
    "Titanium": 14459120,
    "Tritium": 16777215,
    "Tungsten": 3289650,
    "Uranium": 3338290,
    "Uranium235": 4651590,
    "Vanadium": 3289650,
    "Xenon": 65535,
    "Ytterbium": 10987431,
    "Yttrium": 7754316,
    "Zinc": 15461370,
    "Zirconium": 13172735,
    "Naquadah": 3289650,
    "NaquadahEnriched": 3947580,
    "Naquadria": 1973790,
    "Neutronium": 16448250,
    "Tritanium": 6291456,
    "Duranium": 4960175,
    "Trinium": 10056637,
    "CertusQuartz": 13816550,
    "Almandine": 16711680,
    "Andradite": 9861120,
    "AnnealedCopper": 16747835,
    "Asbestos": 15132390,
    "Ash": 9868950,
    "BandedIron": 9525850,
    "BatteryAlloy": 10255520,
    "BlueTopaz": 8099548,
    "Bone": 16448250,
    "Brass": 16757760,
    "Bronze": 16744448,
    "BrownLimonite": 13132800,
    "Calcite": 16443100,
    "Cassiterite": 14474460,
    "CassiteriteSand": 14474460,
    "Chalcopyrite": 10516520,
    "Charcoal": 6571590,
    "Chromite": 2298895,
    "Cinnabar": 9830400,
    "Water": 255,
    "LiquidOxygen": 6719709,
    "Coal": 4605510,
    "Cobaltite": 5263610,
    "Cooperite": 16777160,
    "Cupronickel": 14915200,
    "DarkAsh": 3289650,
    "Diamond": 13172735,
    "Electrum": 16777060,
    "Emerald": 5308240,
    "Galena": 6569060,
    "Garnierite": 3328070,
    "GreenSapphire": 6604930,
    "Grossular": 13132800,
    "Ice": 13158655,
    "Ilmenite": 4601650,
    "Rutile": 13897052,
    "Bauxite": 13132800,
    "Inval": 11842680,
    "Kanthal": 12767967,
    "Lazurite": 6584575,
    "Magnalium": 13156095,
    "Magnesite": 16448180,
    "Magnetite": 1973790,
    "Molybdenite": 1644825,
    "Nichrome": 13487862,
    "NiobiumNitride": 1911069,
    "NiobiumTitanium": 1908009,
    "Obsidian": 5255780,
    "Phosphate": 16776960,
    "PlatinumRaw": 16777160,
    "SterlingSilver": 16440545,
    "RoseGold": 16770590,
    "BlackBronze": 6566525,
    "BismuthBronze": 6585725,
    "Biotite": 1318420,
    "Powellite": 16776960,
    "Pyrite": 9861160,
    "Pyrolusite": 9868970,
    "Pyrope": 7877220,
    "RockSalt": 15780040,
    "Ruridit": 7061375,
    "Ruby": 16737380,
    "Salt": 16448250,
    "Saltpeter": 15132390,
    "Sapphire": 6579400,
    "Scheelite": 13143060,
    "Sodalite": 1316095,
    "AluminiumSulfite": 13388731,
    "Tantalite": 9523240,
    "Coke": 6710886,
    "SolderingAlloy": 9868960,
    "Spessartine": 16737380,
    "Sphalerite": 16777215,
    "StainlessSteel": 13158620,
    "Steel": 8421504,
    "Stibnite": 4605510,
    "Tetrahedrite": 13115392,
    "TinAlloy": 13158600,
    "Topaz": 16744448,
    "Tungstate": 3617315,
    "Ultimet": 11842790,
    "Uraninite": 2302755,
    "Uvalovite": 11861940,
    "VanadiumGallium": 8421516,
    "WroughtIron": 13153460,
    "Wulfenite": 16744448,
    "YellowLimonite": 13158400,
    "YttriumBariumCuprate": 5259334,
    "NetherQuartz": 15127250,
    "Quartzite": 13821650,
    "Graphite": 8421504,
    "Graphene": 8421504,
    "TungsticAcid": 12371968,
    "Osmiridium": 6579455,
    "LithiumChloride": 14606074,
    "CalciumChloride": 15461370,
    "Bornite": 9922091,
    "Chalcocite": 3487029,
    "GalliumArsenide": 10526880,
    "Potash": 7881015,
    "SodaAsh": 14474495,
    "IndiumGalliumPhosphide": 10521790,
    "NickelZincFerrite": 3947580,
    "SiliconDioxide": 13158600,
    "MagnesiumChloride": 13897052,
    "SodiumSulfide": 16770688,
    "PhosphorusPentoxide": 14474240,
    "Quicklime": 15790320,
    "SodiumBisulfate": 17493,
    "FerriteMixture": 11842740,
    "Magnesia": 8943736,
    "PlatinumGroupSludge": 7680,
    "Realgar": 10297635,
    "SodiumBicarbonate": 5659542,
    "PotassiumDichromate": 16713806,
    "ChromiumTrioxide": 16770273,
    "AntimonyTrioxide": 15132400,
    "Zincite": 16777205,
    "CupricOxide": 986895,
    "CobaltOxide": 7897088,
    "ArsenicTrioxide": 16777215,
    "Massicot": 16768341,
    "Ferrosilite": 9921322,
    "MetalMixture": 5254422,
    "SodiumHydroxide": 13184,
    "SodiumPersulfate": 16777215,
    "Bastnasite": 13135405,
    "Pentlandite": 10851845,
    "Spodumene": 12495530,
    "Lepidolite": 15741580,
    "GlauconiteSand": 8565820,
    "Malachite": 352005,
    "Mica": 12829645,
    "Barite": 15133675,
    "Alunite": 14791745,
    "Talc": 5944410,
    "Soapstone": 6263135,
    "Kyanite": 7237370,
    "IronMagnetic": 13158600,
    "TungstenCarbide": 3342438,
    "CarbonDioxide": 11129077,
    "TitaniumTetrachloride": 13897052,
    "NitrogenDioxide": 8781055,
    "HydrogenSulfide": 16777215,
    "NitricAcid": 13421568,
    "SulfuricAcid": 16777215,
    "PhosphoricAcid": 14474241,
    "SulfurTrioxide": 10526740,
    "SulfurDioxide": 13158425,
    "CarbonMonoxide": 936064,
    "HypochlorousAcid": 7309969,
    "Ammonia": 4142208,
    "HydrofluoricAcid": 34986,
    "NitricOxide": 8243440,
    "IronIiiChloride": 396043,
    "UraniumHexafluoride": 4378918,
    "EnrichedUraniumHexafluoride": 4977962,
    "DepletedUraniumHexafluoride": 7649894,
    "NitrousOxide": 8243455,
    "EnderPearl": 7134408,
    "PotassiumFeldspar": 7874600,
    "NeodymiumMagnetic": 6579300,
    "HydrochloricAcid": 16777215,
    "Steam": 16777215,
    "DistilledWater": 4887807,
    "SodiumPotassium": 6618292,
    "SamariumMagnetic": 16777165,
    "ManganesePhosphide": 14791764,
    "MagnesiumDiboride": 3348736,
    "MercuryBariumCalciumCuprate": 5592405,
    "UraniumTriplatinum": 34560,
    "SamariumIronArsenicOxide": 3342387,
    "IndiumTinBariumTitaniumCuprate": 10046464,
    "UraniumRhodiumDinaquadide": 657930,
    "EnrichedNaquadahTriniumEuropiumDuranide": 8230515,
    "RutheniumTriniumAmericiumNeutronate": 16777215,
    "InertMetalMixture": 14855794,
    "RhodiumSulfate": 15641173,
    "RutheniumTetroxide": 13092807,
    "OsmiumTetroxide": 11316593,
    "IridiumChloride": 78368,
    "FluoroantimonicAcid": 16777215,
    "TitaniumTrifluoride": 9371903,
    "CalciumPhosphide": 10824234,
    "IndiumPhosphide": 5779036,
    "BariumSulfide": 15788758,
    "TriniumSulfide": 15106150,
    "ZincSulfide": 16777206,
    "GalliumSulfide": 16774558,
    "AntimonyTrifluoride": 16247484,
    "EnrichedNaquadahSulfate": 3026460,
    "NaquadriaSulfate": 26163,
    "Pyrochlore": 2822400,
    "LiquidHelium": 16580496,
    "SiliconeRubber": 14474460,
    "Nitrobenzene": 7358774,
    "RawRubber": 13420425,
    "RawStyreneButadieneRubber": 5521469,
    "StyreneButadieneRubber": 2169368,
    "PolyvinylAcetate": 16750933,
    "ReinforcedEpoxyResin": 10517008,
    "PolyvinylChloride": 14149350,
    "PolyphenyleneSulfide": 11175936,
    "GlycerylTrinitrate": 16777215,
    "Polybenzimidazole": 2960685,
    "Polydimethylsiloxane": 16119285,
    "Plastic": 13158600,
    "Epoxy": 13143060,
    "Polycaprolactam": 3289650,
    "Polytetrafluoroethylene": 6579300,
    "Sugar": 16448250,
    "Methane": 16711800,
    "Epichlorohydrin": 7414784,
    "Monochloramine": 4169600,
    "Chloroform": 8989856,
    "Cumene": 5579264,
    "Tetrafluoroethylene": 8224125,
    "Chloromethane": 13118624,
    "AllylChloride": 8904362,
    "Isoprene": 1315860,
    "Propane": 16441936,
    "Propene": 16768341,
    "Ethane": 13158655,
    "Butene": 13586437,
    "Butane": 11941662,
    "DissolvedCalciumAcetate": 14469300,
    "VinylAcetate": 14791552,
    "MethylAcetate": 15648431,
    "Ethenone": 1315910,
    "Tetranitromethane": 993320,
    "Dimethylamine": 5588073,
    "Dimethylhydrazine": 85,
    "DinitrogenTetroxide": 16772,
    "Dimethyldichlorosilane": 4462160,
    "Styrene": 13813950,
    "Butadiene": 11885072,
    "Dichlorobenzene": 17493,
    "AceticAcid": 13153440,
    "Phenol": 7881761,
    "BisphenolA": 13937152,
    "VinylChloride": 14807280,
    "Ethylene": 14803425,
    "Benzene": 1710618,
    "Acetone": 11513775,
    "Glycerol": 8904327,
    "Methanol": 11175936,
    "Ethanol": 16777215,
    "Toluene": 16777215,
    "DiphenylIsophthalate": 2387543,
    "PhthalicAcid": 13750737,
    "Dimethylbenzene": 6724672,
    "Diaminobenzidine": 3374425,
    "Dichlorobenzidine": 10608294,
    "Nitrochlorobenzene": 9418010,
    "Chlorobenzene": 3303998,
    "Octane": 9046537,
    "EthylTertbutylEther": 11623430,
    "Ethylbenzene": 16777215,
    "Naphthalene": 16053463,
    "Rubber": 0,
    "Cyclohexane": -218959129,
    "NitrosylChloride": 15986944,
    "CyclohexanoneOxime": 15461360,
    "Caprolactam": 6776680,
    "Butyraldehyde": 5589567,
    "PolyvinylButyral": 3439937,
    "WoodGas": 14601607,
    "WoodVinegar": 13915392,
    "WoodTar": 2627339,
    "CharcoalByproducts": 7881761,
    "Biomass": 65280,
    "BioDiesel": 16744448,
    "FermentedBiomass": 4478208,
    "Creosote": 8404992,
    "Diesel": 16777215,
    "RocketFuel": 12433292,
    "Glue": 16777215,
    "Lubricant": 16777215,
    "McGuffium239": 16777215,
    "IndiumConcentrate": 928080,
    "SeedOil": 16777215,
    "DrillingFluid": 16777130,
    "ConstructionFoam": 8421504,
    "SulfuricHeavyFuel": 16777215,
    "HeavyFuel": 16777215,
    "LightlyHydrocrackedHeavyFuel": 16776960,
    "SeverelyHydrocrackedHeavyFuel": 16776960,
    "LightlySteamcrackedHeavyFuel": 16777215,
    "SeverelySteamcrackedHeavyFuel": 16777215,
    "SulfuricLightFuel": 16777215,
    "LightFuel": 16777215,
    "LightlyHydrocrackedLightFuel": 12037896,
    "SeverelyHydrocrackedLightFuel": 12037896,
    "LightlySteamcrackedLightFuel": 16777215,
    "SeverelySteamcrackedLightFuel": 16777215,
    "SulfuricNaphtha": 16777215,
    "Naphtha": 16777215,
    "LightlyHydrocrackedNaphtha": 12563976,
    "SeverelyHydrocrackedNaphtha": 12563976,
    "LightlySteamcrackedNaphtha": 12563976,
    "SeverelySteamcrackedNaphtha": 12563976,
    "SulfuricGas": 16777215,
    "RefineryGas": 16777215,
    "LightlyHydrocrackedGas": 11842740,
    "SeverelyHydrocrackedGas": 11842740,
    "LightlySteamcrackedGas": 11842740,
    "SeverelySteamcrackedGas": 11842740,
    "HydrocrackedEthane": 9868988,
    "HydrocrackedEthylene": 10724256,
    "HydrocrackedPropene": 12494144,
    "HydrocrackedPropane": 12494144,
    "HydrocrackedButane": 8727576,
    "HydrocrackedButene": 10042885,
    "HydrocrackedButadiene": 11358723,
    "SteamcrackedEthane": 9868988,
    "SteamcrackedEthylene": 10724256,
    "SteamcrackedPropene": 12494144,
    "SteamcrackedPropane": 12494144,
    "SteamcrackedButane": 8727576,
    "SteamcrackedButene": 10042885,
    "SteamcrackedButadiene": 11358723,
    "Lpg": 16777215,
    "RawGrowthMedium": 10777425,
    "SterilizedGrowthMedium": 11306862,
    "Oil": 657930,
    "OilHeavy": 657930,
    "OilMedium": 657930,
    "OilLight": 657930,
    "NaturalGas": 16777215,
    "Bacteria": 8421376,
    "BacterialSludge": 3497531,
    "EnrichedBacterialSludge": 8388352,
    "Mutagen": 65407,
    "GelatinMixture": 5802926,
    "RawGasoline": 16737280,
    "Gasoline": 16426240,
    "GasolinePremium": 16753920,
    "CoalGas": 3355443,
    "CoalTar": 1710618,
    "Gunpowder": 8421504,
    "Oilsands": 657930,
    "RareEarth": 8421476,
    "Stone": 13487565,
    "Lava": 16728064,
    "Glowstone": 16776960,
    "NetherStar": 16777215,
    "Endstone": 14278302,
    "Netherrack": 13107200,
    "NitroFuel": 13172480,
    "Collagen": 8406812,
    "Gelatin": 5802926,
    "Agar": 5208386,
    "Milk": 16711422,
    "Cocoa": 6566400,
    "Wheat": 16777156,
    "Meat": 12667980,
    "Wood": 6566400,
    "Paper": 16448250,
    "FishOil": 14467421,
    "RubySlurry": 16737380,
    "SapphireSlurry": 6579400,
    "GreenSapphireSlurry": 6604930,
    "DyeBlack": 2105376,
    "DyeRed": 16711680,
    "DyeGreen": 65280,
    "DyeBrown": 6307840,
    "DyeBlue": 8447,
    "DyePurple": 8388736,
    "DyeCyan": 65535,
    "DyeLightGray": 12632256,
    "DyeGray": 8421504,
    "DyePink": 16761024,
    "DyeLime": 8454016,
    "DyeYellow": 16776960,
    "DyeLightBlue": 6324479,
    "DyeMagenta": 16711935,
    "DyeOrange": 16744448,
    "DyeWhite": 16777215,
    "ImpureEnrichedNaquadahSolution": 3703864,
    "EnrichedNaquadahSolution": 3845434,
    "AcidicEnrichedNaquadahSolution": 4052541,
    "EnrichedNaquadahWaste": 3496757,
    "ImpureNaquadriaSolution": 5342289,
    "NaquadriaSolution": 6401377,
    "AcidicNaquadriaSolution": 7394928,
    "NaquadriaWaste": 4348738,
    "Lapotron": 2898353,
    "TreatedWood": 5253120,
    "UuMatter": 16777215,
    "Glass": 16448250,
    "Perlite": 1971230,
    "Borax": 16448250,
    "SaltWater": 200,
    "Olivine": 9895830,
    "Opal": 255,
    "Amethyst": 13775570,
    "Lapis": 4605660,
    "Blaze": 16762880,
    "Apatite": 13158655,
    "BlackSteel": 6579300,
    "DamascusSteel": 7237230,
    "TungstenSteel": 6579360,
    "CobaltBrass": 11842720,
    "TricalciumPhosphate": 16776960,
    "GarnetRed": 13127760,
    "GarnetYellow": 13158480,
    "Marble": 13158600,
    "GraniteBlack": 657930,
    "GraniteRed": 16711808,
    "VanadiumMagnetite": 2302780,
    "QuartzSand": 13158600,
    "Pollucite": 15782610,
    "Bentonite": 16111570,
    "FullersEarth": 10526840,
    "Pitchblende": 13160960,
    "Monazite": 3294770,
    "Mirabilite": 15792850,
    "Trona": 8882015,
    "Gypsum": 15132410,
    "Zeolite": 15787750,
    "Concrete": 6579300,
    "SteelMagnetic": 8421504,
    "VanadiumSteel": 12632256,
    "Potin": 13211521,
    "BorosilicateGlass": 15135718,
    "Andesite": 12500670,
    "NaquadahAlloy": 2631720,
    "SulfuricNickelSolution": 4109888,
    "SulfuricCopperSolution": 4761024,
    "LeadZincSolution": 16777215,
    "NitrationMixture": 15131307,
    "DilutedSulfuricAcid": 12613664,
    "DilutedHydrochloricAcid": 10069923,
    "Flint": 8256,
    "Air": 11129077,
    "LiquidAir": 11129077,
    "NetherAir": 4994100,
    "LiquidNetherAir": 4994100,
    "EnderAir": 2634836,
    "LiquidEnderAir": 2634836,
    "AquaRegia": 16757042,
    "PlatinumSludgeResidue": 8550737,
    "PalladiumRaw": 8421504,
    "RarestMetalMixture": 8597009,
    "AmmoniumChloride": 9900454,
    "AcidicOsmiumSolution": 10726026,
    "RhodiumPlatedPalladium": 14337477,
    "Clay": 13158620,
    "Redstone": 13107200,
    "Electrotine": 3978440,
    "EnderEye": 6750054,
    "Diatomite": 14803425,
    "RedSteel": 9200740,
    "BlueSteel": 6579340,
    "Basalt": 3945010,
    "GraniticMineralSand": 2636860,
    "Redrock": 16732210,
    "GarnetSand": 13132800,
    "Hssg": 10066176,
    "RedAlloy": 13107200,
    "BasalticMineralSand": 2634280,
    "Hsse": 3368448,
    "Hsss": 6684723,
    "IridiumMetalResidue": 6053224,
    "Granite": 13607308,
    "Brick": 10180163,
    "Fireclay": 11378843,
    "Diorite": 16777215,
    "BlueAlloy": 6599935,
    "AerInfused": 15724376,
    "AquaInfused": 4380660,
    "EntropyInfused": 2829097,
    "IgnisInfused": 14163213,
    "OrdoInfused": 14737625,
    "TerraInfused": 1948174,
    "Vinteum": 6605055,
    "Starmetal": 3919,
    "Wax": 15983554,
    "Mithril": 4620980,
    "Manasteel": 4028632,
    "Signalum": 16156462,
    "Enderium": 2052938,
    "StellarAlloy": 12244223,
    "Terrasteel": 3269931,
    "Draconium": 8008397,
    "InfusedNitrofuel": 655309,
    "Naquadriaticfuel": 2359851,
    "Lithiumchloride": 12698016,
    "Potassiumchloride": 10666428,
    "Rawlatticite": 4359924,
    "Liquidnightmares": 2556208,
    "LiquidHydrogen": 15593975,
    "UnstableMana": 2238330,
    "RedMatter": 9576205,
    "Ferroboron": 2829097,
    "VibrantAlloy": 10813296,
    "ConstructionAlloy": 5195095,
};

global denseOres as string[] = [
    "Aluminium",
    "Ardite",
    "Bauxite",
    "Coal",
    "Chromite",
    "Cobalt",
    "Copper",
    "Gold",
    "Graphite",
    "Ilmenite",
    "Iridium",
    "Iron",
    "Lead",
    "Lepidolite",
    "Magnesite",
    "Naquadah",
    "NaquadahEnriched",
    "Nickel",
    "Platinum",
    "Pyrolusite",
    "Redstone",
    "Saltpeter",
    "Silver",
    "Stibnite",
    "Tantalite",
    "Titanium",
    "Tungstate",
    "Tin",
    "Uraninite",
    "Uranium235",
    "VanadiumMagnetite",
    "Vinteum",
    "Almandine",
    "Amethyst",
    "Apatite",
    "Topaz",
    "BlueTopaz",
    "Diamond",
    "Emerald",
    "GreenSapphire",
    "GarnetRed",
    "GarnetYellow",
    "Grossular",
    "Lapis",
    "Lazurite",
    "Malachite",
    "Monazite",
    "Olivine",
    "Opal",
    "Pyrope",
    "Quartzite",
    "Realgar",
    "Ruby",
    "Sapphire",
    "Sodalite",
    "Spessartine"
];

for material in denseOres {
    var cleaned_string = material.replaceAll("(.)([A-Z])", "$1 $2");
	val part = MaterialSystem.getMaterialBuilder()
		.setName(cleaned_string)
		.setColor(materialColorMap[material])
		.build();
	part.registerParts(["dense_ore", "ore_clump", "ore_crystal", "ore_cluster", "ore_shard"/*, "ore_purified"*/] as string[]);
	print(material + " Dense Ore, Clump, Crystal, Cluster, Shard registered");
}

global plate_materials  as string[] = [
    "Aluminium",
    "Ardite",
    "Cobalt",
    "Copper",
    "Gold",
    "Iridium",
    "Iron",
    "Lead",
    "Naquadah",
    "NaquadahEnriched",
    "Nickel",
    "Platinum",
    "Silver",
    "Titanium",
    "Tin",
    "Uranium235",
    "Vinteum",
    "Amethyst",
    "Apatite",
    "BlueTopaz",
    "Diamond",
    "Emerald",
    "GreenSapphire",
    "GarnetRed",
    "GarnetYellow",
    "Lapis",
    "Olivine",
    "Opal",
    "Quartzite",
    "Ruby",
    "Sapphire",
    "Topaz",
    "Electrum",
    "Cupronickel",
    "Uranium",
    "BlueAlloy",
    "VibrantAlloy",
    "ConstructionAlloy"
];

for material in plate_materials {
    var cleaned_string = material.replaceAll("(.)([A-Z])", "$1 $2");
	val part = MaterialSystem.getMaterialBuilder()
		.setName(cleaned_string)
		.setColor(materialColorMap[material])
		.build();
	part.registerParts(["light_plate", "heavy_plate"] as string[]);
	print(material + " Light Plate and Heavy Plate registered");
}

global casing_materials  as string[] = [
    "Iron",
    "Bronze",
    "Tin",
    "Copper",
    "Steel",
    "Lead",
    "SteelMagnetic",
    "Aluminium",
    "StainlessSteel",
    "Titanium",
    "TungstenSteel",
    "Brass",
    "Ferroboron"
];

for material in casing_materials {
	val part = MaterialSystem.getMaterialBuilder()
		.setName(material)
		.setColor(materialColorMap[material])
		.build();
	part.registerParts(["casing"] as string[]);
	print(material + " Casing registered");
}


print("--------------- Material Factory ------------------");
