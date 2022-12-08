import mods.abyssalcraft.Transmutator as Transmutator;

# OP Transmutator recipes
Transmutator.removeTransmutationOutput(<minecraft:ice>);

# Ethaxium <-> End Stone conversion removal
Transmutator.removeTransmutationOutput(<minecraft:end_stone>);
Transmutator.removeTransmutationInput(<minecraft:end_stone>);
// mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:end_stone>, <liquid:liquidcoralium>);
// mods.thermalexpansion.Transposer.removeFillRecipe(<abyssalcraft:stone:5>, <liquid:liquidcoralium>);

# Transmutator recipes
Transmutator.addTransmutation(<abyssalcraft:crystal:2>, <ore:dustSulfur>.firstItem, 0.1);
Transmutator.addTransmutation(<abyssalcraft:crystal:3>, <minecraft:coal>, 0.1);
Transmutator.addTransmutation(<abyssalcraft:crystalcluster:3>, <minecraft:coal_block>, 0.9);
Transmutator.addTransmutation(<abyssalcraft:crystal:18>, <ore:dustSilicon>.firstItem, 0.1);
