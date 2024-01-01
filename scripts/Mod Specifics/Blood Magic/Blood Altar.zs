import mods.bloodmagic.BloodAltar as BloodAltar;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
//mods.bloodmagic.BloodAltar.removeRecipe(IItemStack input);

//Blood Orb I
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <contenttweaker:sanguine_pearl>, 0, 8000,200,100);

//Corrupted Starmetal
BloodAltar.addRecipe(<contenttweaker:corruptedstarmetal>, <ore:ingotAstralStarmetal>.firstItem, 2, 50000,500,300);

// Blank Slate
val Slate_Materials = [<botania:livingrock>, <fossil:volcanic_rock>, <astralsorcery:blockblackmarble>, <thaumicaugmentation:stone>] as IItemStack[];

BloodAltar.removeRecipe(<minecraft:stone>);
for item in Slate_Materials {
	BloodAltar.addRecipe(<bloodmagic:slate>, item, 0, 1000, 40, 40);
}

// Reinforced Slate
BloodAltar.removeRecipe(<bloodmagic:slate>);
BloodAltar.addRecipe(<bloodmagic:slate:1>, <bloodmagic:slate>, 1, 2500, 60, 60);

// Imbued Slate
BloodAltar.removeRecipe(<bloodmagic:slate:1>);
BloodAltar.addRecipe(<bloodmagic:slate:2>, <bloodmagic:slate:1>, 2, 7500, 125, 125);

// Demonic Slate
BloodAltar.removeRecipe(<bloodmagic:slate:2>);
BloodAltar.addRecipe(<bloodmagic:slate:3>, <bloodmagic:slate:2>, 3, 25000, 200, 200);

// Ethereal Slate
BloodAltar.removeRecipe(<bloodmagic:slate:3>);
BloodAltar.addRecipe(<bloodmagic:slate:4>, <bloodmagic:slate:3>, 4, 60000, 250, 250);

// Bound Ingot
BloodAltar.removeRecipe(<tconevo:material>);
BloodAltar.addRecipe(<tconevo:metal:25>, <tconevo:material>, 1, 10000, 150, 150);
