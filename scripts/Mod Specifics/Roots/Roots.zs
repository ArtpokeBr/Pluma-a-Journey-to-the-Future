import mods.tcomplement.highoven.HighOven as HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tconstruct.Casting as Casting;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Roots Script                                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Pyre
recipes.remove(<roots:pyre>);
assembler.recipeBuilder()
    .inputs(<ore:wildroot>, <roots:terra_moss>, <mysticalworld:charred_log> * 3, <ore:obsidian>*2, <ore:dustBlaze>)
    .fluidInputs(<liquid:ghastlycerin> * 1400)
    .outputs(<roots:pyre>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

//Runic Dust in the Macerator
macerator.recipeBuilder()
    .inputs(<ore:runestone>)
    .outputs(<roots:runic_dust> * 4)
    .duration(200)
    .EUt(32)
.buildAndRegister();

//Runic Steel Recipe =============================================================================================

// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);
var Runic_Steel = HighOven.newMixRecipe(<liquid:runic_steel> * 144, <liquid:iron> * 100, 3000);
Runic_Steel.addOxidizer(<roots:runic_dust>, 98);
Runic_Steel.addReducer(<ore:dustCarbon>, 99);
Runic_Steel.addPurifier(<ore:wildroot>, 50);
Runic_Steel.register();

blast_furnace.recipeBuilder()
    .inputs(<ore:ingotSteel>, <ore:wildroot>, <roots:runic_dust>)
    .outputs(<ore:ingotRunicSteel>.firstItem * 2)
    .property("temperature", 2500)
    .duration(600)
    .EUt(500)
.buildAndRegister();

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//Casting.addTableRecipe(<ore:ingotRunicSteel>.firstItem, <tconstruct:cast_custom>, <liquid:runic_steel>, 100, false, 80);
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//Casting.addBasinRecipe(<ore:blockRunicSteel>.firstItem, null, <liquid:runic_steel>, 900, false, 720);

//Terrastone Recipe =============================================================================================

// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);
var terrastone = HighOven.newMixRecipe(<liquid:terrastone> * 144, <liquid:bronze> * 100, 1500);
terrastone.addOxidizer(<roots:terra_moss>, 98);
terrastone.addReducer(<ore:dustSmallBrass>, 85);
terrastone.addPurifier(<ore:wildroot>, 50);
terrastone.register();

blast_furnace.recipeBuilder()
    .inputs(<ore:ingotBrass>, <ore:wildroot>, <roots:terra_moss>)
    .outputs(<ore:ingotTerrastone>.firstItem * 2)
    .property("temperature", 2500)
    .duration(600)
    .EUt(500)
.buildAndRegister();

// Knifes ============================================================================================================

// Amethyst Knife -> Manyullyn Knife
<mysticalworld:amethyst_knife>.displayName="Manyullyn Knife";

recipes.remove(<mysticalworld:amethyst_knife>);
recipes.addShaped(<mysticalworld:amethyst_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "manyullyn"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "manyullyn"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Copper Knife
recipes.remove(<mysticalworld:copper_knife>);
recipes.addShaped(<mysticalworld:copper_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "copper"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "copper"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Silver Knife
recipes.remove(<mysticalworld:silver_knife>);
recipes.addShaped(<mysticalworld:silver_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "silver"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "silver"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Wood Knife
recipes.remove(<roots:wood_knife>);
recipes.addShaped(<roots:wood_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "wood"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "wood"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Stone Knife
recipes.remove(<roots:stone_knife>);
recipes.addShaped(<roots:stone_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "stone"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "stone"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Iron Knife
recipes.remove(<roots:iron_knife>);
recipes.addShaped(<roots:iron_knife> * 1, [[null, null, <tconstruct:knife_blade>.withTag({Material: "iron"})], [<roots:wildroot>, <tconstruct:knife_blade>.withTag({Material: "iron"}), <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Diamond Knife
recipes.remove(<roots:diamond_knife>);
recipes.addShaped(<roots:diamond_knife> * 1, [[null, null, <ore:plateDiamond>], [<roots:wildroot>, <ore:plateDiamond>, <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Gold Knife
recipes.remove(<roots:gold_knife>);
recipes.addShaped(<roots:gold_knife> * 1, [[null, null, <ore:plateGold>], [<roots:wildroot>, <ore:plateGold>, <natura:materials:7>],[<gregtech:meta_stick:1648>, <harvestcraft:hardenedleatheritem>, null]]);

// Staff
recipes.remove(<roots:staff:0>);
recipes.addShaped(<roots:staff:0> * 1, [[null, <ore:logWood>, <ore:rootsBarkWildwood>], [null, <ore:stickTreatedWood>, <ore:logWood>],[<ore:stickTreatedWood>, null, null]]);

