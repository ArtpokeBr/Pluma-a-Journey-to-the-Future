import crafttweaker.item.IItemStack;

var GTToolsRemoved as IItemStack[] = [
//Tconstruct    
<gregtech:sword>.withEmptyTag(), //Sword
<gregtech:pickaxe>.withEmptyTag(), //Pickaxe
<gregtech:shovel>.withEmptyTag(), //Shovel
<gregtech:axe>.withEmptyTag(), //Axe
<gregtech:hoe>.withEmptyTag(), //Hoe
//<gregtech:meta_tool:19>.withEmptyTag() //Mining Hammer
        ];
for item in GTToolsRemoved {
	recipes.remove(item);
	mods.jei.JEI.hide(item);
	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}
}