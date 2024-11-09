#modloaded magneticraft

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.magneticraft.SluiceBox as SluiceBox;
import mods.magneticraft.Sieve as Sieve;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			MagneticCraft Sieve                                                                                                              //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


### Removing Sieve Recipes ###

var RemovingFromTheSieving as IItemStack[] = [
// <magneticraft:rocky_chunks>,
// <magneticraft:rocky_chunks:1>,
// <magneticraft:rocky_chunks:2>,
// <magneticraft:rocky_chunks:3>,
// <magneticraft:rocky_chunks:4>,
// <magneticraft:rocky_chunks:5>,
// <magneticraft:rocky_chunks:7>,
// <magneticraft:rocky_chunks:8>,
// <magneticraft:rocky_chunks:9>,
// <magneticraft:rocky_chunks:10>,
// <magneticraft:rocky_chunks:11>,
// <magneticraft:rocky_chunks:12>,
// <magneticraft:rocky_chunks:13>,
// <magneticraft:rocky_chunks:14>
];
for i in RemovingFromTheSieving {
SluiceBox.removeRecipe(i);
Sieve.removeRecipe(i);
}

//Natura's Tainted Soil Dust
SluiceBox.addRecipe(<natura:nether_tainted_soil>, 1.0, <contenttweaker:taintedsoildust>, 0.5, <contenttweaker:taintedsoildust>, 0.15, <contenttweaker:taintedsoildust>);
Sieve.addRecipe(<natura:nether_tainted_soil>, <contenttweaker:taintedsoildust>, 1.0, <contenttweaker:taintedsoildust>, 0.75, <contenttweaker:taintedsoildust>, 0.5, 160);

sifter.recipeBuilder()
    .inputs(<ore:taintedSoil>)
    .chancedOutput(<contenttweaker:taintedsoildust> * 6, 9000, 1000)
    .duration(160)
    .EUt(32)
.buildAndRegister();

//Quark's Soul Powder
recipes.remove(<quark:soul_powder>);

SluiceBox.addRecipe(<minecraft:soul_sand>, 1.0, <quark:soul_powder>, 0.55, <quark:soul_powder>, 0.20, <quark:soul_bead>);
Sieve.addRecipe(<minecraft:soul_sand>, <quark:soul_powder>, 1.0, <quark:soul_powder>, 0.8, <quark:soul_powder>, 0.5, 160);

sifter.recipeBuilder()
    .inputs(<minecraft:soul_sand>)
    .chancedOutput(<quark:soul_powder> * 6, 9000, 1000)
    .chancedOutput(<quark:soul_bead>, 2500, 1000)
    .duration(160)
    .EUt(32)
.buildAndRegister();