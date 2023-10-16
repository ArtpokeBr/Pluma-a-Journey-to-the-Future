import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Enricher as FluidEnricher;

# Fluid Enricher Cleaning
val CleaningFluidEnricher = [
<liquid:radaway>*250
]
 as ILiquidStack [];

for f in CleaningFluidEnricher {
	FluidEnricher.removeRecipeWithOutput(f);
}

//Fixing Rad-Away using the Wrong Ethanol
FluidEnricher.addRecipe(<nuclearcraft:glowing_mushroom>*3, <liquid:bio.ethanol>*250, <liquid:radaway>*250);

