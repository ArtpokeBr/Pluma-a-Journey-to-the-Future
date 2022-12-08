import crafttweaker.item.IItemStack;

var GTToolsRemoved as IItemStack[] = [
//Tconstruct    
<gregtech:meta_tool>.withEmptyTag(), //Sword
<gregtech:meta_tool:1>.withEmptyTag(), //Pickaxe
<gregtech:meta_tool:2>.withEmptyTag(), //Shovel
<gregtech:meta_tool:3>.withEmptyTag(), //Axe
<gregtech:meta_tool:4>.withEmptyTag(), //Hoe
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