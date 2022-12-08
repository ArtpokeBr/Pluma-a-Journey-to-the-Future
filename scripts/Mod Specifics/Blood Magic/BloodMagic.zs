import mods.extendedcrafting.TableCrafting as ExtendedTableCrafting;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

var Tier1Reagents as IItemStack[] = [
<bloodmagic:component:2>,
<bloodmagic:component>,
<bloodmagic:component:1>,
<contenttweaker:dirty_reagent>
];
for i in Tier1Reagents {
i.addTooltip(format.green("Tier 1 ") + format.white("Reagent"));
}

var Tier1Essences as IItemStack[] = [
<contenttweaker:aether>,
<contenttweaker:aquasalus>,
<contenttweaker:incendium>,
<contenttweaker:terrae>
];
for i in Tier1Essences {
i.addTooltip(format.green("Tier 1 ") + format.white("Essence"));
}

// ===================================================================

var Tier2Reagents as IItemStack[] = [
<bloodmagic:component:13>,
<contenttweaker:wizards_reagent>,
<bloodmagic:component:32>,
<bloodmagic:component:5>
];
for i in Tier2Reagents {
i.addTooltip(format.yellow("Tier 2 ") + format.white("Reagent"));
}

var Tier2Essences as IItemStack[] = [
<contenttweaker:magicales>,
<contenttweaker:sanctus>,
<contenttweaker:orbis_terrae>,
<contenttweaker:crystallos>
];
for i in Tier2Essences {
i.addTooltip(format.yellow("Tier 2 ") + format.white("Essence"));
}

// ===================================================================

var Tier3Reagents as IItemStack[] = [
<contenttweaker:neutral_reagent>,
<contenttweaker:tempest_reagent>,
<contenttweaker:damage_reagent>,
<contenttweaker:strength_reagent>
];
for i in Tier3Reagents {
i.addTooltip(format.gold("Tier 3 ") + format.white("Reagent"));
}

var Tier3Essences as IItemStack[] = [
<contenttweaker:crepitous>,
<contenttweaker:tempestas>,
<contenttweaker:virtus>,
<contenttweaker:offensa>
];
for i in Tier3Essences {
i.addTooltip(format.gold("Tier 3 ") + format.white("Essence"));
}

// ===================================================================

var Tier4Reagents as IItemStack[] = [
<bloodmagic:component:31>,
<bloodmagic:component:4>,
<bloodmagic:component:9>,
<contenttweaker:potent_reagent>
];
for i in Tier4Reagents {
i.addTooltip(format.red("Tier 4 ") + format.white("Reagent"));
}

var Tier4Essences as IItemStack[] = [
<contenttweaker:reductus>,
<contenttweaker:tenebrae>,
<contenttweaker:praesidium>,
<contenttweaker:potentia>
];
for i in Tier4Essences {
i.addTooltip(format.red("Tier 4 ") + format.white("Essence"));
}

// ===================================================================

// Blood Orb tooltips (From DJ2)
function add_blood_orb_tooltip(id as string, amount as string, tier as string) {
	var item = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:"~id as string});
	item.addTooltip(format.white("This Blood Orb can store a base of ") + format.red(amount) + format.white(" Life Points."));
	if (tier > 1) {
		item.addTooltip(format.white("This Blood Orb can only be filled in a tier ") + format.red(tier) + format.white(" or above Blood Altar"));
	}
}
add_blood_orb_tooltip("weak", "5,000", 1);
add_blood_orb_tooltip("apprentice", "25,000", 2);
add_blood_orb_tooltip("magician", "150,000", 3);
add_blood_orb_tooltip("master", "1,000,000", 4);
add_blood_orb_tooltip("archmage", "10,000,000", 5);
add_blood_orb_tooltip("transcendent", "30,000,000", 6);

# Weak Blood Shard tooltip (From DJ2)
<bloodmagic:blood_shard>.addTooltip(format.white("Slay mobs with your activated ") + format.red("Bound Blade"));
<bloodmagic:blood_shard>.addTooltip(format.white("to obtain. Be wary though. While it's active,"));
<bloodmagic:blood_shard>.addTooltip(format.white("it constantly drains LP from your Life Network!"));

# Tartaric Gem tooltips (From DJ2)
<bloodmagic:soul_gem:0>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("64") + format.white(" Will Quality."));
<bloodmagic:soul_gem:1>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("256") + format.white(" Will Quality."));
<bloodmagic:soul_gem:2>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("1024") + format.white(" Will Quality."));
<bloodmagic:soul_gem:3>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("4096") + format.white(" Will Quality."));
<bloodmagic:soul_gem:4>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("16,384") + format.white(" Will Quality."));

# Sentient Armor Orb Tooltip
<bloodmagic:sentient_armour_gem>.addTooltip(format.white("Right Click to Deploy a ") + format.aqua("Sentient Armor") + format.white("."));
<bloodmagic:sentient_armour_gem>.addTooltip(format.white("Consult the ") + format.red("Sanguine Scienctiem") + format.white(" for more info."));

//Lava Crystal
<bloodmagic:lava_crystal>.addTooltip(format.white("Capable of being a ") + format.red("Heat Source") + format.white(" at a cost of ") + format.red("Life Points."));

recipes.remove(<bloodmagic:lava_crystal>);
recipes.addShaped(<bloodmagic:lava_crystal> * 1, [[<railcraft:firestone_refined>, <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}), <railcraft:firestone_refined>], [<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}), blood_orb_at_least_tier_1.reuse(), <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lava", Amount: 1000}})],[<railcraft:firestone_refined>, <evilcraft:blood_waxed_coal>, <railcraft:firestone_refined>]]);


// Rudimentary Snare
recipes.remove(<bloodmagic:soul_snare:0>);
recipes.addShaped(<bloodmagic:soul_snare:0> * 4, [[null, <ore:boltManasteel>, <evilcraft:garmonbozia>], [<ore:manaString>, <ore:stickManasteel>, <ore:boltManasteel>],[<ore:gearSmallEndSteel>, <ore:manaString>, null]]);

//Blood Altar
recipes.remove(<bloodmagic:altar>);
ExtendedTableCrafting.addShaped(2, <bloodmagic:altar>, [
	[null, null, null, null, null], 
	[<tconstruct:large_plate>.withTag({Material: "xu_demonic_metal"}), <ore:heavyPlatePolyenderlyne>, null, <ore:heavyPlatePolyenderlyne>, <tconstruct:large_plate>.withTag({Material: "xu_demonic_metal"})], 
	[<ore:plateDemonic>, <ore:frameGtHslaSteel>, <evilcraft:blood_infusion_core>, <ore:frameGtHslaSteel>, <ore:plateDemonic>], 
	[<ore:plateDemonic>, <ore:frameGtHslaSteel>, <bloodmagic:monster_soul>, <ore:frameGtHslaSteel>, <ore:plateDemonic>], 
	[<astralsorcery:blockblackmarble:5>, <astralsorcery:blockblackmarble:6>, <astralsorcery:blockblackmarble:6>, <astralsorcery:blockblackmarble:6>, <astralsorcery:blockblackmarble:5>]
]);

//Hellfire Forge
recipes.remove(<bloodmagic:soul_forge>);
ExtendedTableCrafting.addShaped(2, <bloodmagic:soul_forge>, [
	[<ore:lightPlateModularium>, null, null, null, <ore:lightPlateModularium>], 
	[<ore:frameGtHslaSteel>, <ore:plateBoundMetal>, <evilcraft:blood_infusion_core>, <ore:plateBoundMetal>, <ore:frameGtHslaSteel>], 
	[<bloodmagic:blood_rune>, <bloodmagic:blood_rune>, <ore:frameGtHslaSteel>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>], 
	[<bloodmagic:blood_rune>, <ore:plateDemonlord>, <ore:gearBoundMetal>, <ore:plateDemonlord>, <bloodmagic:blood_rune>], 
	[<ore:plateDenseDiabolicCarbide>, null, null, null, <ore:plateDenseDiabolicCarbide>]
]);

//Sacrificial Dagger
recipes.remove(<bloodmagic:sacrificial_dagger>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:foilEndSteel>, <evilcraft:garmonbozia>],
    [<ore:plateStygian>, <fossil:tooth_dagger>, <ore:foilEndSteel>],
    [<ore:gearSmallManasteel>, <ore:plateStygian>, null]])
  .setFluid(<liquid:hsla_steel> * 576)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<bloodmagic:sacrificial_dagger>)
.create();

//Alchemy Table
recipes.remove(<bloodmagic:alchemy_table>);
ExtendedTableCrafting.addShaped(2, <bloodmagic:alchemy_table>, [
	[null, null, null, null, null], 
	[<minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:carpet:14>, <minecraft:carpet:14>, <minecraft:glass_bottle>], 
	[<bloodmagic:blood_rune>, <bloodmagic:blood_rune>, <evilcraft:blood_infusion_core>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>], 
	[<bloodmagic:blood_rune>, <astralsorcery:blockinfusedwood>, <ore:plateBlazeQuartz>, <astralsorcery:blockinfusedwood>, <bloodmagic:blood_rune>], 
	[<ore:lightPlateDarkSteel>, <ore:lightPlateDarkSteel>, blood_orb_at_least_tier_1.reuse(), <ore:lightPlateDarkSteel>, <ore:lightPlateDarkSteel>]
]);

// Blank Rune
recipes.remove(<bloodmagic:blood_rune:0>);
recipes.addShaped(<bloodmagic:blood_rune:0> * 4, [[<stygian:endobsidian>, <ore:livingrock>, <stygian:endobsidian>], [<bloodmagic:slate:0>, blood_orb_at_least_tier_1.reuse(), <bloodmagic:slate:0>],[<stygian:endobsidian>, <ore:livingrock>, <stygian:endobsidian>]]);

