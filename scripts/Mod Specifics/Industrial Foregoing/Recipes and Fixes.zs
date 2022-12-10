import mods.pyrotech.DryingRack as DryingRack;
import mods.industrialforegoing.Extractor as FluidExtractor;
import mods.industrialforegoing.SludgeRefiner as SludgeRefiner;
import mods.industrialforegoing.BioReactor as BioReactor;
import mods.industrialforegoing.ProteinReactor as ProteinReactor;
import crafttweaker.item.IItemStack;

// Plastic Production ===============================================

# Dry Rubber
recipes.remove(<industrialforegoing:dryrubber>);
DryingRack.addRecipe(
  "DryRubber",
  <industrialforegoing:dryrubber>,
  <gregtech:meta_item_1:438>,          // Sticky Resin
  750,
  true
);

# Plastic itself
furnace.remove(<industrialforegoing:plastic>);
chemical_reactor.recipeBuilder()
    .inputs([<industrialforegoing:dryrubber>, <ore:dustSulfur>])
    .fluidInputs(<liquid:latex>*250)
    .outputs(<industrialforegoing:plastic>*3)
    .duration(100)
    .EUt(90)
.buildAndRegister();

# More sludge outputs
SludgeRefiner.add(<gregtech:meta_item_1:1001>/*Fertilizer from GT */, 10);
SludgeRefiner.add(<thermalfoundation:material:816>, 10);
SludgeRefiner.add(<forestry:fertilizer_bio>, 10);
SludgeRefiner.add(<forestry:mulch>, 10);
SludgeRefiner.add(<thaumcraft:nugget:10>, 10);

# Fluid Extractor outputs
FluidExtractor.add(<integrateddynamics:menril_log>, <fluid:menrilresin> * 5);
FluidExtractor.add(<gregtech:rubber_log>, <liquid:latex> * 5);

# BioReactor, additional entries
	val otherCrops = [
		<harvestcraft:almonditem>,
		<harvestcraft:amaranthitem>,
		<harvestcraft:barleyitem>,
		<harvestcraft:breadfruititem>,
		<harvestcraft:cashewitem>,
		<harvestcraft:chestnutitem>,
		<harvestcraft:flaxitem>,
		<harvestcraft:garlicitem>,
		<harvestcraft:gingeritem>,
		<harvestcraft:juteitem>,
		<harvestcraft:kaleitem>,
		<harvestcraft:kenafitem>,
		<harvestcraft:milletitem>,
		<harvestcraft:mustardseedsitem>,
		<harvestcraft:oatsitem>,
		<harvestcraft:peanutitem>,
		<harvestcraft:pecanitem>,
		<harvestcraft:pistachioitem>,
		<harvestcraft:quinoaitem>,
		<harvestcraft:sisalitem>,
		<harvestcraft:spiceleafitem>,
		<harvestcraft:walnutitem>,
	] as IItemStack[];

	for crop in otherCrops {
		BioReactor.add(crop);
	}

    for seed in <ore:listAllseed>.items {
        BioReactor.add(seed);
    }
	
	for veggie in <ore:listAllveggie>.items {
		BioReactor.add(veggie);
	}
	
	for fruit in <ore:listAllfruit>.items {
		BioReactor.add(fruit);
	}

# Protein Reactor, additional entires
for item in <ore:listAllmeatraw>.items {
		ProteinReactor.add(item);
}

// Tree Fluid Extractor
recipes.remove(<industrialforegoing:tree_fluid_extractor>);
recipes.addShaped(<industrialforegoing:tree_fluid_extractor> * 1, [[<ore:plateVanadiumSteel>, <ore:oc:circuitChip2>, <ore:plateVanadiumSteel>], [<ore:plateVanadiumSteel>, <gregtech:meta_item_1:144>, <ore:plateVanadiumSteel>],[<ore:plateVanadiumSteel>, <ore:gearModularium>, <ore:plateVanadiumSteel>]]);

