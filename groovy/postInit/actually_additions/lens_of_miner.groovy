// Removing Stone Ores

def stoneOres = [
    'oreCoal', 'oreIron', 'oreGold', 'oreDiamond', 'oreLapis', 'oreRedstone',
    'oreEmerald', 'oreQuartz', 'oreCopper', 'oreTin', 'oreLead', 'oreSilver',
    'oreNickel', 'orePlatinum', 'oreAluminum', 'oreAluminium', 'oreOsmium',
    'oreZinc', 'oreUranium', 'oreYellorite', 'oreCertusQuartz', 'oreApatite',
    'oreQuartzBlack', 'oreRuby', 'orePeridot', 'oreTopaz', 'oreTanzanite',
    'oreMalachite', 'oreSapphire', 'oreAmber', 'oreResonating', 'oreSulfur',
    'oreSaltpeter', 'oreSalt', 'oreDraconium'
]
stoneOres.each { mods.actuallyadditions.stoneMiningLens.removeByOre(it) }

def netherOres = [
    'oreNetherCoal', 'oreNetherIron', 'oreNetherGold', 'oreNetherDiamond',
    'oreNetherLapis', 'oreNetherRedstone', 'oreNetherCopper', 'oreNetherTin',
    'oreNetherLead', 'oreNetherSilver', 'oreNetherNickel', 'oreNetherPlatinum',
    'oreFirestone'
]
netherOres.each { mods.actuallyadditions.netherMiningLens.removeByOre(it) }

//Adding Dark Ore
// mods.actuallyadditions.stoneMiningLens.recipeBuilder().ore('oreDark').weight(1000).register()
