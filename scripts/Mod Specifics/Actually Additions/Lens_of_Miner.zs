import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.actuallyadditions.MiningLens as MiningLens;

//Removing Stone Ores

var StoneOres as IOreDictEntry[] = [
<ore:oreCoal>,
<ore:oreIron>,
<ore:oreGold>,
<ore:oreDiamond>,
<ore:oreLapis>,
<ore:oreRedstone>,
<ore:oreEmerald>,
<ore:oreQuartz>,
<ore:oreCopper>,
<ore:oreTin>,
<ore:oreLead>,
<ore:oreSilver>,
<ore:oreNickel>,
<ore:orePlatinum>,
<ore:oreAluminum>,
<ore:oreAluminium>,
<ore:oreOsmium>,
<ore:oreZinc>,
<ore:oreUranium>,
<ore:oreYellorite>,
<ore:oreCertusQuartz>,
<ore:oreApatite>,
<ore:oreQuartzBlack>,
<ore:oreRuby>,
<ore:orePeridot>,
<ore:oreTopaz>,
<ore:oreTanzanite>,
<ore:oreMalachite>,
<ore:oreSapphire>,
<ore:oreAmber>,
<ore:oreResonating>,
<ore:oreSulfur>,
<ore:oreSaltpeter>,
<ore:oreSalt>,
<ore:oreDraconium>

];
for ore in StoneOres {
MiningLens.removeStoneOre(ore);
}

var NetherOres as IOreDictEntry[] = [
<ore:oreNetherCoal>,
<ore:oreNetherIron>,
<ore:oreNetherGold>,
<ore:oreNetherDiamond>,
<ore:oreNetherLapis>,
<ore:oreNetherRedstone>,
<ore:oreNetherCopper>,
<ore:oreNetherTin>,
<ore:oreNetherLead>,
<ore:oreNetherSilver>,
<ore:oreNetherNickel>,
<ore:oreNetherPlatinum>,
<ore:oreFirestone>

];
for ore in NetherOres {
MiningLens.removeNetherOre(ore);
}

//Adding Dark Ore
// MiningLens.addStoneOre(<ore:oreDark>, 1000);