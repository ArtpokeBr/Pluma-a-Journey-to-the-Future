import mods.pyrotech.StoneCrucible as StoneCrucible;
import mods.pyrotech.BrickCrucible as BrickCrucible;

// The Crucible is a Removed Machine!

StoneCrucible.removeAllRecipes();
BrickCrucible.removeAllRecipes();

mods.jei.JEI.removeAndHide(<pyrotech:stone_crucible>);
mods.jei.JEI.removeAndHide(<pyrotech:brick_crucible>);