import mods.mekatweaker.InfuserType;
import mods.mekanism.infuser as MetallurgicInfuser;

//Metallurgic Infuser Organization
MetallurgicInfuser.removeAllRecipes();

MetallurgicInfuser.addRecipe("BIO", 10, <minecraft:dirt>, <minecraft:dirt:2>);
MetallurgicInfuser.addRecipe("BIO", 10, <minecraft:cobblestone>, <minecraft:mossy_cobblestone>);
MetallurgicInfuser.addRecipe("BIO", 10, <minecraft:stonebrick>, <minecraft:stonebrick:1>);
MetallurgicInfuser.addRecipe("BIO", 10, <minecraft:sand>, <minecraft:dirt>);
MetallurgicInfuser.addRecipe("BIO", 10, <minecraft:sand:1>, <minecraft:dirt>);
MetallurgicInfuser.addRecipe("BIO", 15, <minecraft:netherrack>, <biomesoplenty:grass:6>);

MetallurgicInfuser.addRecipe("FUNGI", 10, <minecraft:dirt>, <minecraft:mycelium>);
MetallurgicInfuser.addRecipe("FUNGI", 15, <minecraft:netherrack>, <biomesoplenty:grass:8>);

MetallurgicInfuser.addRecipe("REDSTONE", 640, <enderio:item_alloy_ball>, <mekanism:enrichedalloy>);
MetallurgicInfuser.addRecipe("REDSTONE", 640, <railcraft:circuit>, <mekanism:controlcircuit>);

MetallurgicInfuser.addRecipe("DIAMOND", 640, <enderio:item_alloy_endergy_ball:5>, <mekanism:reinforcedalloy>);

MetallurgicInfuser.addRecipe("OBSIDIAN", 640, <enderio:item_alloy_endergy_ball:2>, <mekanism:atomicalloy>);

// Custom Infuse Types ===========================================================================================

InfuserType.addTypeObject(<ore:dustManasteel>, "MANASTEEL", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_manasteel>, "MANASTEEL", 200);

InfuserType.addTypeObject(<ore:dustStygian>, "STYGIAN", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_stygian>, "STYGIAN", 200);

InfuserType.addTypeObject(<evilcraft:garmonbozia>, "GARMONBOZIA", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_garmonbozia>, "GARMONBOZIA", 200);

InfuserType.addTypeObject(<ore:dustSentientMetal>, "SENTIENT", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_sentient>, "SENTIENT", 200);

InfuserType.addTypeObject(<ore:dustLiquifiedCoralium>, "CORALIUM", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_coralium>, "CORALIUM", 200);

// ===============================================================================================================


//Mithril Recipe
MetallurgicInfuser.addRecipe("MANASTEEL", 50, <ore:ingotCobaltSteel>.firstItem, <ore:ingotMithril>.firstItem);

//Black Iron Ingot
MetallurgicInfuser.addRecipe("CARBON", 50, <ore:ingotMelodicAlloy>.firstItem, <ore:ingotBlackIron>.firstItem);

//Ender Alloy (Basic) Recipe
recipes.remove(<enderutilities:enderpart>);
MetallurgicInfuser.addRecipe("STYGIAN", 50, <ore:ingotEndSteel>.firstItem, <enderutilities:enderpart>);

//Ender Ingot (from Extended Crafting) Recipe
recipes.remove(<extendedcrafting:material:36>);
MetallurgicInfuser.addRecipe("STYGIAN", 50, <ore:ingotBlackIron>.firstItem, <extendedcrafting:material:36>);

//Ender Alloy (Enhanced) Recipe
recipes.remove(<enderutilities:enderpart:1>);
MetallurgicInfuser.addRecipe("GARMONBOZIA", 50, <enderutilities:enderpart>, <enderutilities:enderpart:1>);

//Ender Alloy (Advanced) Recipe
recipes.remove(<enderutilities:enderpart:2>);
MetallurgicInfuser.addRecipe("SENTIENT", 50, <enderutilities:enderpart:1>, <enderutilities:enderpart:2>);

//Enriched Iron
MetallurgicInfuser.addRecipe("CARBON", 160, <ore:dustIron>.firstItem, <mekanism:enrichediron>);