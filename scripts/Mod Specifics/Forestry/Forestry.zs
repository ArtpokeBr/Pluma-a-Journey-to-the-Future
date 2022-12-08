import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter as Carpenter;
import mods.forestry.ThermionicFabricator as ThermionicFabricator;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Forestry Script                                                                                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Scoop
recipes.remove(<forestry:scoop>);
recipes.addShaped(<forestry:scoop> * 1, [[<ore:stickTreatedWood>, <ore:wool>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],[<ore:screwSteel>, <ore:stickTreatedWood>, <ore:gtceScrewdrivers>]]);

// Bee Smoker
recipes.remove(<forestry:smoker>);
recipes.addShaped(<forestry:smoker> * 1, [[<harvestcraft:hardenedleatheritem>, <ore:stickTreatedWood>, <ore:screwSteel>], [<harvestcraft:hardenedleatheritem>, <ore:pyreFireStarters>, <ore:lightPlateSteel>],[<ore:gtceScrewdrivers>, <ore:lightPlateSteel>, <ore:lightPlateSteel>]]);



// Casing's ===============================

// Sturdy Casing -> Sturdy Chassis
<forestry:sturdy_machine>.displayName = "Sturdy Chassis";
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine> * 1, [[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], [<ore:springBrass>, <ore:ringBrass>, <ore:springBrass>],[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]]);
recipes.addShaped(<forestry:sturdy_machine> * 2, [[<ore:plateHoneySteel>, <ore:plateHoneySteel>, <ore:plateHoneySteel>], [<ore:springHoneySteel>, <ore:ringHoneySteel>, <ore:springHoneySteel>],[<ore:plateHoneySteel>, <ore:plateHoneySteel>, <ore:plateHoneySteel>]]);


// Impregnated Casing -> Impregnated Chassis
<forestry:impregnated_casing>.displayName = "Impregnated Chassis";
Carpenter.removeRecipe(<forestry:impregnated_casing>);
recipes.addShaped(<forestry:impregnated_casing> * 1, [[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<forestry:oak_stick>, <extratrees:misc:2>, <forestry:oak_stick>],[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]]);

// Hardened Casing -> Hardened Chassis
<forestry:hardened_machine>.displayName = "Hardened Chassis";
Carpenter.removeRecipe(<forestry:hardened_machine>);
recipes.addShaped(<forestry:hardened_machine> * 1, [[<ore:plateAluminium>, <ore:plateDiamond>, <ore:plateAluminium>], [<ore:springAluminium>, <forestry:sturdy_machine>, <ore:springAluminium>],[<ore:plateAluminium>, <ore:plateDiamond>, <ore:plateAluminium>]]);

// Flexible Casing -> Mutagenic Chassis
<forestry:flexible_casing>.displayName = "Mutagenic Chassis";
ThermionicFabricator.removeCast(<forestry:flexible_casing>);

assembler.recipeBuilder()
    .inputs(<forestry:hardened_machine>, <forestry:thermionic_tubes:9>*2, <ore:plateGreenSapphire>*4, <ore:springTerrastone>*2)
    .fluidInputs(<liquid:mutagen> * 1000)
    .outputs(<forestry:flexible_casing>)
    .property("circuit", 16)
    .duration(250)
    .EUt(128)
.buildAndRegister();

// Thermionic Fabricator
recipes.remove(<forestry:fabricator:0>);
recipes.addShaped(<forestry:fabricator:0> * 1, [[<ore:plateLapis>, <ore:heavyPlateGold>, <ore:plateLapis>], [<ore:plateCobaltBrass>, <actuallyadditions:block_misc:9>, <ore:plateCobaltBrass>],[<ore:plateCobaltBrass>, <magneticraft:crafting:2>, <ore:plateCobaltBrass>]]);



// Squeezer
//recipes.remove(<forestry:squeezer:0>);
//recipes.addShaped(<forestry:squeezer:0> * 1, [[<ore:plateTin>, <ore:circuitLv>, <ore:plateTin>], [<ore:plateTin>, <forestry:sturdy_machine>, <ore:plateTin>],[<ore:plateTin>, <gregtech:meta_item_1:172>, <ore:plateTin>]]);


### HoneComb Fixes ### =============================================================================

<ore:ingotHoneycomb>.add(<careerbees:ingredients:10>);

<careerbees:ingredients:10>.addTooltip(format.green("Can also be made by a Honey Smeltery Bee!"));
<careerbees:ingredients:10>.addTooltip(format.green("Place an Iron in a Flower Pedestal Close to it!"));

//HoneyComb Ingot
alloy.recipeBuilder()
    .inputs(<ore:dropHoneydew>, <ore:ingotIron>)
    .outputs(<ore:ingotHoneycomb>.firstItem)
    .duration(180)
    .EUt(16)
.buildAndRegister();

// Bee-Bee Gun
recipes.remove(<careerbees:beegun>);
recipes.addShaped(<careerbees:beegun> * 1, [[<ore:screwHoneySteel>, <ore:gtceScrewdrivers>, <ore:screwHoneySteel>], [<careerbees:ingredients:10>, <ore:gearHoneySteel>, <ore:plateHoneySteel>],[<careerbees:ingredients:10>, <ore:gtceWrenches>, <ore:gtceHardHammers>]]);

//Readding the Ash OreDict and adding convertions for it
recipes.addShapeless(<ore:dustAsh>.firstItem, [<forestry:ash>]);
furnace.addRecipe(<ore:dustAsh>.firstItem, <forestry:wood_pile>);