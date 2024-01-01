import mods.botania.PureDaisy;
import mods.botania.ElvenTrade as ElvenTrade;
import crafttweaker.item.IItemStack;

val prehistoricLogs = [<fossil:palm_log>, <fossil:calamites_log>, <fossil:sigillaria_log>, <fossil:cordaites_log>] as IItemStack[];
val prehistoricStones = [<fossil:iced_stone>, <fossil:ancient_stone>, <gregtech:stone_smooth:3>, <twilightforest:maze_stone>] as IItemStack[];
val prehistoricMatterBlocks = [<fossil:ancient_wood>, <fossil:permafrost>, <twilightforest:naga_stone:1>, <fossil:dense_sand>] as IItemStack[];

# Livingrock
PureDaisy.removeRecipe(<botania:livingrock>);
for item in prehistoricStones {
	PureDaisy.addRecipe(item, <botania:livingrock>, 75);
}
<botania:livingrock>.addTooltip(format.white(format.italic("§7It seems only certain§f §6Prehistoric Stones§f")));
<botania:livingrock>.addTooltip(format.white(format.italic("§7have the ability to be transformed§f")));
<botania:livingrock>.addTooltip(format.white(format.italic("§7into Livingrock... How peculiar.§f")));

# Livingwood
PureDaisy.removeRecipe(<botania:livingwood>);
for item in prehistoricLogs {
	PureDaisy.addRecipe(item, <botania:livingwood>, 75);
}
<botania:livingwood>.addTooltip(format.white(format.italic("§7It seems only certain§f §6Prehistoric Logs§f")));
<botania:livingwood>.addTooltip(format.white(format.italic("§7have the ability to be transformed§f")));
<botania:livingwood>.addTooltip(format.white(format.italic("§7into Livingwood... How peculiar.§f")));

# Livingmatter
for item in prehistoricMatterBlocks {
	PureDaisy.addRecipe(item, <contenttweaker:livingmatter>, 75);
}
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("§7It seems only certain§f §6Prehistoric Remains§f")));
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("§7have the ability to be transformed§f")));
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("§7into Livingmatter... How peculiar.§f")));

# Dreammatter
ElvenTrade.addRecipe([<contenttweaker:dreammatter>], [<contenttweaker:livingmatter>]);

// Ancient Wood and Ancient Stone
PureDaisy.addRecipe(<thaumcraft:stone_ancient>, <fossil:ancient_stone>, 75);

PureDaisy.addRecipe(<fossil:cordaites_planks>, <fossil:ancient_wood>, 75);
PureDaisy.addRecipe(<fossil:palm_planks>, <fossil:ancient_wood>, 75);
PureDaisy.addRecipe(<fossil:calamites_planks>, <fossil:ancient_wood>, 75);
PureDaisy.addRecipe(<fossil:sigillaria_planks>, <fossil:ancient_wood>, 75);
