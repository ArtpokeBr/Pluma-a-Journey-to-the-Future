import mods.artisanworktables.builder.RecipeBuilder;

// Invisible Ink
recipes.remove(<conarm:invisible_ink>);
chemreactor.recipeBuilder()
    .inputs(<minecraft:glass_bottle>)
	.fluidInputs(<liquid:dye_black>*288, <liquid:dye_white>*288, <liquid:air>*500)
	.circuit(4)
	.outputs(<conarm:invisible_ink>)
	.duration(300)
	.EUt(8)
.buildAndRegister();

//Resistance Modifier
recipes.remove(<conarm:resist_mat>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>],
    [<ore:lightPlateDarkSteel>, <ore:cast>, <ore:lightPlateDarkSteel>],
    [<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>]])
  .setFluid(<liquid:pyrotheum> * 750)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat>)
.create();

//Fire Resistence Modifier
recipes.remove(<conarm:resist_mat_fire>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>],
    [<ore:lightPlateEnergeticAlloy>, <ore:cast>, <ore:lightPlateEnergeticAlloy>],
    [<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>]])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_fire>)
.create();

//Projectile Protection Modifier
recipes.remove(<conarm:resist_mat_proj>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>],
    [<ore:lightPlateSilver>, <ore:cast>, <ore:lightPlateSilver>],
    [<ore:plateEnori>, <ore:plateEnori>, <ore:plateEnori>]])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_proj>)
.create();

//Blast Protection Modifier
recipes.remove(<conarm:resist_mat_blast>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>],
    [<ore:lightPlateArdite>, <ore:cast>, <ore:lightPlateArdite>],
    [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]])
  .setFluid(<liquid:pyrotheum> * 750)
  .addTool(<ore:gtceHardHammers>, 10)
  .addOutput(<conarm:resist_mat_blast>)
.create();

//Gauntlet Base
recipes.remove(<conarm:gauntlet_mat>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, <ore:lightPlateIron>],
    [<ore:plateIron>, <hotornot:mitts>, <ore:plateIron>],
    [null, <ore:heavyPlateIron>, <ore:plateIron>]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:gtceHardHammers>, 15)
  .addOutput(<conarm:gauntlet_mat>)
  .create();

// Gauntlet Dexterity
recipes.remove(<conarm:gauntlet_mat_speed>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>],
    [<ore:blockRedstoneAlloy>, <conarm:gauntlet_mat>, <ore:blockRedstoneAlloy>],
    [<ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:blockRedstoneAlloy>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<conarm:gauntlet_mat_speed>)
.create();

// Gauntlet Power
recipes.remove(<conarm:gauntlet_mat_attack>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockStainlessSteel>, <ore:blockStainlessSteel>, <ore:blockStainlessSteel>],
    [<ore:blockStainlessSteel>, <conarm:gauntlet_mat>, <ore:blockStainlessSteel>],
    [<ore:blockStainlessSteel>, <ore:blockStainlessSteel>, <ore:blockStainlessSteel>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<conarm:gauntlet_mat_attack>)
.create();

// Gauntlet Far Reach
recipes.remove(<conarm:gauntlet_mat_reach>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<actuallyadditions:block_crystal:2>, <ore:blockEnderEye>, <actuallyadditions:block_crystal:2>],
    [<ore:blockEnderEye>, <conarm:gauntlet_mat>, <ore:blockEnderEye>],
    [<actuallyadditions:block_crystal:2>, <ore:blockEnderEye>, <actuallyadditions:block_crystal:2>]])
  .setFluid(<liquid:soldering_alloy> * 288)
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<conarm:gauntlet_mat_reach>)
.create();

// Frosty Soles
recipes.remove(<conarm:frosty_soles>); 
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:packed_ice>, null, <minecraft:packed_ice>],
    [<fossil:iced_stone>, null, <fossil:iced_stone>],
    [<ore:lilypad>, null, <ore:lilypad>]])
  .setFluid(<liquid:ice> * 1000)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:frosty_soles>)
.create();

//Traveller's Belt
recipes.remove(<conarm:travel_belt_base>); 
RecipeBuilder.get("basic")
  .setShaped([
    [null, <pyrotech:material:43>, null],
    [<harvestcraft:hardenedleatheritem>, <ore:ringIron>, <harvestcraft:hardenedleatheritem>],
    [null, <pyrotech:material:43>, null]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_belt_base>)
.create();

//Traveller's Belt (Storage)
recipes.remove(<conarm:travel_belt>);
RecipeBuilder.get("basic")
  .setShapeless([<conarm:travel_belt_base>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <ore:screwSteel>])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<conarm:travel_belt>)
.create();

//Traveller's Belt (Alchemy)
recipes.remove(<conarm:travel_potion>); 
RecipeBuilder.get("basic")
  .setShapeless([<conarm:travel_belt_base>, <minecraft:brewing_stand>, <ore:screwSteel>, <ore:screwSteel>, <pyrotech:crate>])
  .addTool(<ore:gtceScrewdrivers>, 1)
  .addOutput(<conarm:travel_potion>)
.create();

//Traveller's Knapsack
recipes.remove(<conarm:travel_sack>); 
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:43>, <pyrotech:material:44>, <pyrotech:material:43>],
    [<pyrotech:material:42>, <minecraft:chest>, <pyrotech:material:42>],
    [<pyrotech:material:43>, <pyrotech:material:42>, <pyrotech:material:43>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_sack>)
.create();

//Traveller's Goggles
recipes.remove(<conarm:travel_goggles_base>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:42>, <pyrotech:material:44>, <pyrotech:material:42>],
    [<ore:craftingLensGlass>, <pyrotech:material:42>, <ore:craftingLensGlass>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_goggles_base>)
.create();

//Traveller's Goggles (Zoom)
recipes.remove(<conarm:travel_goggles>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:screwSteel>, null],
    [<mia:armored_glass>, <conarm:travel_goggles_base>, <mia:armored_glass>],
    [null, <ore:screwSteel>, null]])
  .addTool(<ore:gtceScrewdrivers>, 10)
  .addOutput(<conarm:travel_goggles>)
.create();

//Traveller's Goggles (Night Vision)
recipes.remove(<conarm:travel_night>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:golden_carrot>, null],
    [<ore:ingotAstralStarmetal>, <conarm:travel_goggles_base>, <ore:ingotAstralStarmetal>],
    [null, <minecraft:golden_carrot>, null]])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_night>)
.create();

//Traveller's Goggles (Soul Sight)
recipes.remove(<conarm:travel_soul>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <quark:soul_bead>, null],
    [<quark:soul_powder>, <conarm:travel_goggles_base>, <quark:soul_powder>],
    [null, <quark:soul_bead>, null]])
  .addTool(<ore:artisansAthame>, 10)
  .addOutput(<conarm:travel_soul>)
.create();

//Traveller's Cloak
recipes.remove(<conarm:travel_cloak>);
RecipeBuilder.get("basic")
  .setShaped([
    [<harvestcraft:hardenedleatheritem>, <quark:quilted_wool>, <harvestcraft:hardenedleatheritem>],
    [<pyrotech:material:42>, <quark:quilted_wool>, <pyrotech:material:42>],
    [<pyrotech:material:42>, null, <pyrotech:material:42>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<conarm:travel_cloak>)
.create();

//Traveller's Cloack (Invisiblity)
recipes.remove(<conarm:travel_sneak>);
RecipeBuilder.get("mage")
  .setShapeless([<conarm:travel_cloak>, <ore:empoweredEndorCrystal>, <ore:eye>])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_sneak>)
.create();

//Traveller's Cloack (Slow Fall)
recipes.remove(<conarm:travel_slowfall>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:feyFeather>, <ore:blockSlimeCongealed>, <ore:feyFeather>],
    [<ore:feyFeather>, <conarm:travel_cloak>, <ore:feyFeather>],
    [<ore:feyFeather>, <contenttweaker:empowered_endor_crystal>, <ore:feyFeather>]])
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<conarm:travel_slowfall>)
.create();
