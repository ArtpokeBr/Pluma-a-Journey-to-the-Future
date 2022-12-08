import mods.evilcraft.BloodInfuser as BloodInfuser;
import crafttweaker.item.IItemStack;

// BloodInfuser

// inputStack, inputFluid, tier, outputStack, duration, xp
// mods.evilcraft.BloodInfuser.addRecipe(<minecraft:melon>, <liquid:evilcraftblood> * 100, 0, <minecraft:stick>, 10, 10);

// inputStack, inputFluid, tier, outputStack, duration, xp
// mods.evilcraft.BloodInfuser.removeRecipe(<minecraft:melon>, <liquid:evilcraftblood> * 100, 0, <minecraft:melon>, 10, 10);

// outputStack
// mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<minecraft:melon>);

var RemovingFromTheBloodInfuser as IItemStack[] = [
<minecraft:redstone>
];
for i in RemovingFromTheBloodInfuser {
BloodInfuser.removeRecipesWithOutput(i);
}

//Dull Dust
recipes.remove(<evilcraft:dull_dust>);
BloodInfuser.addRecipe(<ore:dustSodiumBicarbonate>, <liquid:evilcraftblood> * 500, 0, <ore:dustDull>.firstItem, 500, 1);