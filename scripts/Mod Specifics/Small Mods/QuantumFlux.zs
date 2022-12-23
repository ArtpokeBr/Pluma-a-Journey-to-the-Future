import mods.inworldcrafting.ExplosionCrafting as ExplosionCrafting;
import mods.artisanworktables.builder.RecipeBuilder;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Quantum Flux Script                                                                                                              //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Darkstone -> Darkness Imbued Stone
recipes.remove(<quantumflux:darkstone>);

<quantumflux:darkstone>.displayName = "Darkness Imbued Stone";
<quantumflux:darkstone:1>.displayName = "Darkness Imbued Lamp";
<quantumflux:darkstone:2>.displayName = "Decorative Darkness Imbued Stone";
<quantumflux:darkstone:3>.displayName = "Darkness Imbued Stone Tile";

chemical_bath.recipeBuilder()
    .inputs(<ore:stoneBasalt>)
    .fluidInputs(<liquid:dark_fluid> * 576)
    .outputs(<quantumflux:darkstone>)
    .duration(100)
    .EUt(250)
.buildAndRegister();

//Industrial Grade Graphite
chemical_bath.recipeBuilder()
    .inputs(<ore:orePurifiedGraphite>)
    .fluidInputs(<liquid:nacre> * 500)
    .outputs(<contenttweaker:industrial_grade_graphite_ore>)
    .duration(100)
    .EUt(250)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:industrial_grade_graphite_ore>)
    .outputs(<contenttweaker:industrial_grade_graphite_dust>*2)
    .duration(80)
    .EUt(30)
.buildAndRegister();

//Making Hyper Diamond
ExplosionCrafting.explodeItemRecipe(<quantumflux:craftingpiece:6>, <contenttweaker:industrial_grade_graphite_dust>, 80);

// Amplification Crystal
recipes.remove(<quantumflux:craftingpiece:2>);
recipes.addShapedMirrored(<quantumflux:craftingpiece:2>, [[<ore:ingotEnergeticAlloy>,<ore:ingotEnergeticAlloy>,<minecraft:spider_eye>],[null,null,<ore:lightPlateDemonlord>],[<ore:ingotEnergeticAlloy>,<ore:ingotEnergeticAlloy>,<minecraft:spider_eye>]]);

//Magnet
recipes.remove(<quantumflux:magnet>);
RecipeBuilder.get("basic")
  .setShaped([
    [<magneticraft:crafting:4>, null, <magneticraft:crafting:4>],
    [<quantumflux:craftingpiece:2>, <enderio:item_magnet>, <quantumflux:craftingpiece:2>],
    [<ore:plateDarkSteel>, <ore:plateDoubleDarkSteel>, <ore:plateDarkSteel>]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<quantumflux:magnet>)
.create();

// Quibit Crystal
recipes.remove(<quantumflux:craftingpiece:0>);
recipes.addShaped(<quantumflux:craftingpiece:0> * 4, [[<ore:plateVibrantAlloy>, <ore:gearSmallEnderium>, <ore:plateVibrantAlloy>], [<ore:plateVibrantAlloy>, <ore:EmpoweredEmeradicCrystal>, <ore:plateVibrantAlloy>],[<ore:boltEnergeticAlloy>, <ore:foilEnergeticAlloy>, <ore:boltEnergeticAlloy>]]);

// Glue Trap
recipes.remove(<quantumflux:mobglue>);
assembler.recipeBuilder()
    .inputs(<ore:frameGtTreatedWood>, <forestry:oak_stick>*4)
    .fluidInputs(<liquid:glue>*1000)
    .outputs(<quantumflux:mobglue>)
    .duration(160)
    .EUt(30)
.buildAndRegister();

// Advanced Circuit
recipes.remove(<quantumflux:craftingpiece:5>);
circuit_assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:385>, <quantumflux:craftingpiece:3>*2, <quantumflux:craftingpiece:6>, <ore:componentTransistor>*2)
    .outputs(<quantumflux:craftingpiece:5>)
    .duration(134)
    .EUt(410)
.buildAndRegister();

// Quantum Disk
recipes.remove(<quantumflux:craftingpiece:4>);
assembler.recipeBuilder()
    .inputs(<quantumflux:craftingpiece:5>, <quantumflux:craftingpiece:2>*2, <ore:wireGtSingleVibrantAlloy>*2)
    .fluidInputs(<liquid:dark_steel>*576)
    .outputs(<quantumflux:craftingpiece:4>)
    .duration(134)
    .EUt(410)
.buildAndRegister();

// Gold Casing
recipes.remove(<quantumflux:craftingpiece:1>);
assembler.recipeBuilder()
    .inputs(<genetics:misc>, <ore:gearSmallDarkSteel>*4, <ore:ringConstructionAlloy>)
    .fluidInputs(<liquid:gold>*576)
    .outputs(<quantumflux:craftingpiece:1>*6)
    .duration(134)
    .EUt(410)
.buildAndRegister();

// Ender Crystal
recipes.remove(<quantumflux:craftingpiece:3>);

autoclave.recipeBuilder()
    .inputs(<ore:dustEnderMixture>)
    .fluidInputs(<liquid:water> * 200)
    .chancedOutput(<quantumflux:craftingpiece:3>, 7000, 2700)
    .duration(2000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustEnderMixture>)
    .fluidInputs(<liquid:distilled_water> * 200)
    .chancedOutput(<quantumflux:craftingpiece:3>, 9000, 3000)
    .duration(1000)
    .EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:dustEnderMixture>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    .outputs(<quantumflux:craftingpiece:3>)
    .duration(100)
    .EUt(24)
.buildAndRegister();

// Exciter Upgrade
recipes.remove(<quantumflux:exciterupgrade>);
chemical_bath.recipeBuilder()
    .inputs(<quantumflux:craftingpiece:4>)
    .fluidInputs(<liquid:red_alloy>*576)
    .outputs(<quantumflux:exciterupgrade>)
    .duration(146)
    .EUt(250)
.buildAndRegister();

// RF Entangler
recipes.remove(<quantumflux:rfentangler>);
recipes.addShaped(<quantumflux:rfentangler> * 1, [[<quantumflux:craftingpiece:0>, <quantumflux:craftingpiece:1>, <quantumflux:craftingpiece:0>], [<quantumflux:craftingpiece:5>, <randomthings:spectreenergyinjector>, <quantumflux:craftingpiece:5>],[<ore:plateTitanium>, <quantumflux:craftingpiece:1>, <ore:plateTitanium>]]);

<quantumflux:rfentangler>.addTooltip(format.white("An Alternative to the ") + format.lightPurple("Spectral Energy Injector") + format.white(" as its transfer rate can be increased."));

// RF Exciter
recipes.remove(<quantumflux:rfexciter>);
recipes.addShaped(<quantumflux:rfexciter> * 2, [[<quantumflux:craftingpiece:1>, <ore:plateDoubleTitanium>, <quantumflux:craftingpiece:1>], [<quantumflux:craftingpiece:0>, <randomthings:spectrecoil_normal>, <quantumflux:craftingpiece:0>],[<quantumflux:craftingpiece:1>, <ore:plateDoubleTitanium>, <quantumflux:craftingpiece:1>]]);

<quantumflux:rfexciter>.addTooltip(format.white("An Alternative to the ") + format.lightPurple("Spectre Coil") + format.white(" but you can ") + format.green("Shift + Right Click ") + format.white("with an ") + format.red("Exciter Upgrade ") + format.white("to increase its transfer rate."));

// Void Bucket
recipes.remove(<quantumflux:voidbucket>);
recipes.addShaped(<quantumflux:voidbucket> * 1, [[null, null, null], [<ore:plateDarkSteel>, <darkutils:material>, <ore:plateDarkSteel>],[null, <ore:plateDarkSteel>, null]]);

// Quibit Cell
recipes.remove(<quantumflux:quibitcell>);
recipes.addShaped(<quantumflux:quibitcell> * 1, [[<ore:foilDarkSteel>, <quantumflux:craftingpiece:0>, <ore:foilDarkSteel>], [<quantumflux:craftingpiece:1>, <quantumflux:rfexciter>, <quantumflux:craftingpiece:1>],[<ore:plateTitanium>, <quantumflux:craftingpiece:5>, <ore:plateTitanium>]]);

// Quantum Entropy Accelerator
recipes.remove(<quantumflux:entropyaccelerator>);
recipes.addShaped(<quantumflux:entropyaccelerator> * 1, [[<quantumflux:craftingpiece:1>, <extrautils2:trashcan>, <quantumflux:craftingpiece:1>], [<quantumflux:craftingpiece:5>, <ore:batteryEv>, <quantumflux:craftingpiece:5>],[<quantumflux:craftingpiece:1>, <ore:springTitanium>, <quantumflux:craftingpiece:1>]]);

<quantumflux:entropyaccelerator>.addTooltip(format.white("Generates ") + format.yellow("Energy") + format.white(" from ") + format.green(format.obfuscated("ANYTHING")));

// Imaginary Time Block (Recipe with Draconic)
recipes.remove(<quantumflux:imaginarytime>);
