import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting as Casting;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;

// REMOVING AND HIDING ITEMS from OreDicts and JEI

var OreRemovals as IItemStack[] = [

//CareerBee's
<careerbees:ingredients:8>,
<careerbees:ingredients:7>,
<careerbees:ingredients:4>,
<careerbees:ingredients:6>,
<careerbees:ingredients:5>,

//EnderIO
<enderio:item_material:28>,
<enderio:item_material:31>,
<enderio:item_material:27>,
<enderio:item_material:30>,
<enderio:item_material:26>,
<enderio:item_material:39>,

//ThermalFoundation
<thermalfoundation:material:261>,
<thermalfoundation:material:262>,
<thermalfoundation:material:259>,
<thermalfoundation:material:258>,
<thermalfoundation:material:289>,
<thermalfoundation:material:260>,
<thermalfoundation:material:25>,
<thermalfoundation:material:27>,
<thermalfoundation:material:324>,

//MagneticCraft
<magneticraft:ores:3>,

//LazyAE2
<threng:material:3>,

//Fossil
<fossil:amber>,
<fossil:fossil>,

//BloodMagic
<bloodmagic:component:23>,
<bloodmagic:component:24>,

//Advanced Rocketry / LibVulpes
<libvulpes:ore0:8>,

];

for item in OreRemovals {
	JEI.hide(item);
    recipes.remove(item);
	furnace.remove(item);
	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}
}
