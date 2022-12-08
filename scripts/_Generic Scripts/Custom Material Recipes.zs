import mods.enderio.AlloySmelter as AlloySmelter;
import mods.gregtech.recipe.RecipeMap;
import mods.botania.PureDaisy as PureDaisy;

//Demon Lord (Lunar Lapis + Demon Ingot + Amethyst)
AlloySmelter.addRecipe(<ore:ingotDemonlord>.firstItem*2, [<ore:dustLunar>, <ore:ingotDemonicMetal>, <ore:dustAmethyst>], 10000, 1.0);

//Diabolic Carbide (Evil Infused Iron + Crude Steel + Carbon)
AlloySmelter.addRecipe(<ore:ingotDiabolicCarbide>.firstItem*2, [<ore:ingotCrudeSteel>, <ore:ingotEvilMetal>, <ore:dustCarbon>], 10000, 1.0);

//Twilight Metal (Ironwood + Knightmetal + Fiery)
AlloySmelter.addRecipe(<ore:ingotTwilightMetal>.firstItem*2, [<ore:ingotFiery>, <ore:ingotIronwood>, <ore:ingotKnightmetal>], 15000, 1.0);

//Ender Mixture (Enderpearl Dust + Endereye Dust + NetherQuartz Dust)
mixer.recipeBuilder()
    .inputs(<ore:dustSmallEnderPearl>*2, <ore:dustSmallEnderEye>*2, <ore:dustTinyNetherQuartz>*4)
    .outputs(<ore:dustEnderMixture>.firstItem*3)
    .duration(400)
    .EUt(150)
.buildAndRegister();

//Enderlyne
chemreactor.recipeBuilder()
    .fluidInputs(<liquid:liquidchorus>*1000)
    .inputs(<ore:dustSmallEnderMixture>*2, <stygian:endglow>)
    .fluidOutputs(<liquid:enderlyne>*1000)
    .duration(228)
    .EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:liquidchorus>*500)
    .inputs(<ore:dustSmallEnderMixture>*2, <stygian:endleaves>)
    .fluidOutputs(<liquid:enderlyne>*500)
    .duration(228)
    .EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:liquidchorus>*250)
    .inputs(<ore:dustSmallEnderMixture>*2, <stygian:endtallgrass>)
    .fluidOutputs(<liquid:enderlyne>*250)
    .duration(228)
    .EUt(16)
.buildAndRegister();

//Fermented Enderlyne
fermenter.recipeBuilder()
    .fluidInputs(<liquid:enderlyne>*200)
    .fluidOutputs(<liquid:fermented_enderlyne>*200)
    .duration(148)
    .EUt(32)
.buildAndRegister();

//Polyenderlyne
chemreactor.recipeBuilder()
    .fluidInputs(<liquid:fermented_enderlyne>*144, <liquid:endacid>*288, <liquid:air>*1000)
    .fluidOutputs(<liquid:polyenderlyne>*288)
    .duration(228)
    .EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:fermented_enderlyne>*144, <liquid:endacid>*288, <liquid:oxygen>*1000)
    .fluidOutputs(<liquid:polyenderlyne>*316)
    .duration(228)
    .EUt(16)
.buildAndRegister();

# Plate
solidifier.recipeBuilder()
    .fluidInputs(<liquid:polyenderlyne>*144)
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<ore:platePolyenderlyne>.firstItem)
    .duration(40)
    .EUt(7)
.buildAndRegister();

# Foil
extruder.recipeBuilder()
    .inputs(<ore:platePolyenderlyne>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
    .outputs(<ore:foilPolyenderlyne>.firstItem)
    .duration(40)
    .EUt(24)
.buildAndRegister();

//Refined Glue Recipe
fermenter.recipeBuilder()
    .fluidInputs(<liquid:glue> * 100) 
    .fluidOutputs(<liquid:refined_glue> * 75)
    .duration(300)
    .EUt(60)
.buildAndRegister();

//Super Glue Recipe
chemreactor.recipeBuilder()
    .fluidInputs(<liquid:refined_glue> * 200) 
    .fluidInputs(<liquid:nitrogen_dioxide> * 100)
    .fluidInputs(<liquid:styrene> * 100)
    .fluidOutputs(<liquid:super_glue> * 250)
    .duration(600)
    .EUt(120)
.buildAndRegister();

// Cobalt Steel Recipe

mixer.recipeBuilder()
    .inputs(<ore:dustCobalt>*2, <ore:dustRunicSteel>)
    .outputs(<ore:dustCobaltSteel>.firstItem*4)
    .duration(358)
    .EUt(700)
.buildAndRegister();

// Magnetic Copper
polarizer.recipeBuilder()
    .inputs(<ore:ingotCopper>) 
    .outputs(<ore:ingotCopperMagnetic>.firstItem)
    .duration(80)
    .EUt(20)
.buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<ore:stickCopper>) 
    .outputs(<ore:stickCopperMagnetic>.firstItem)
    .duration(40)
    .EUt(20)
.buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<ore:plateCopper>) 
    .outputs(<ore:plateCopperMagnetic>.firstItem)
    .duration(40)
    .EUt(20)
.buildAndRegister();

# Vis Shard transformation
PureDaisy.addRecipe(<ore:oreAerInfused>, <thaumcraft:crystal_aer>);
PureDaisy.addRecipe(<ore:oreIgnisInfused>, <thaumcraft:crystal_ignis>);
PureDaisy.addRecipe(<ore:oreAquaInfused>, <thaumcraft:crystal_aqua>);
PureDaisy.addRecipe(<ore:oreTerraInfused>, <thaumcraft:crystal_terra>);
PureDaisy.addRecipe(<ore:oreOrdoInfused>, <thaumcraft:crystal_ordo>);
PureDaisy.addRecipe(<ore:oreEntropyInfused>, <thaumcraft:crystal_perditio>);

# Abyssal Stone Dust Recipe
macerator.recipeBuilder()
    .inputs(<abyssalcraft:stone:1>) 
    .outputs(<ore:dustAbyssalStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<abyssalcraft:cobblestone:1>) 
    .outputs(<ore:dustAbyssalStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

# Using Abyssal Stone to get stuff

centrifuge.recipeBuilder()
    .inputs(<ore:dustAbyssalStone>*7)
    .outputs(<ore:dustSodium>.firstItem*2, <ore:dustPotassium>.firstItem*2)
    .chancedOutput(<ore:dustTinyOlivine>.firstItem*1, 1000 ,100)
    .chancedOutput(<ore:dustTinyGarnierite>.firstItem*4, 1500 ,100)
    .fluidOutputs(<liquid:sodium_potassium>*1000)
    .duration(845)
    .EUt(325)
.buildAndRegister();

# Dread Stone Dust Recipe
macerator.recipeBuilder()
    .inputs(<abyssalcraft:stone:2>) 
    .outputs(<ore:dustDreadStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<abyssalcraft:cobblestone:2>) 
    .outputs(<ore:dustDreadStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

# Abyssalnite Stone Dust Recipe
macerator.recipeBuilder()
    .inputs(<abyssalcraft:stone:3>) 
    .outputs(<ore:dustAbyssalniteStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<abyssalcraft:cobblestone:3>) 
    .outputs(<ore:dustAbyssalniteStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();

# Omothol Stone Dust Recipe
macerator.recipeBuilder()
    .inputs(<abyssalcraft:stone:6>) 
    .outputs(<ore:dustOmotholStone>.firstItem)
    .duration(80)
    .EUt(8)
.buildAndRegister();


