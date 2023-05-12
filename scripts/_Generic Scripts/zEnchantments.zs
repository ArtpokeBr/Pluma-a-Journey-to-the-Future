import mods.enderio.Enchanter as EIOEnchanter;
import mods.thermalexpansion.Enchanter as ThermalEnchanter;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// recipes.removeByRecipeName("openblocks:flim_flam_0");
// recipes.removeByRecipeName("openblocks:flim_flam_1");
// recipes.removeByRecipeName("openblocks:flim_flam_2");
// recipes.removeByRecipeName("openblocks:flim_flam_3");
recipes.removeByRecipeName("evilcraft:enchanted_book");

val eioRemoveList as IEnchantmentDefinition[] = [<enchantment:minecraft:silk_touch>];

val thermalRemoveList as IItemStack[] = [<minecraft:glowstone_dust>];

val additionList as IItemStack[IEnchantmentDefinition] = {
    <enchantment:minecraft:silk_touch>: <tconstruct:materials:16>*1
} as IItemStack[IEnchantmentDefinition];

// We remove from EIO via enchantments
for enchantment in eioRemoveList {
    EIOEnchanter.removeRecipe(enchantment);
}

// We remove from Thermal via inputs - book is in all, by default
for item in thermalRemoveList {
    ThermalEnchanter.removeRecipe(<minecraft:book>, item);
}

for enchantment, item in additionList {
    val max as int = enchantment.maxLevel;
    val multiplier as int = (max == 1) ? 100 : (item.amount * max);
    val book as IItemStack = <minecraft:enchanted_book>.withTag(enchantment.makeEnchantment(enchantment.minLevel).makeBookTag());

    EIOEnchanter.addRecipe(enchantment, item.definition.makeStack(item.metadata), item.amount, 2);
    ThermalEnchanter.addRecipe(book, <minecraft:book>, item, 1000 * multiplier, 100 * multiplier, false);
}

