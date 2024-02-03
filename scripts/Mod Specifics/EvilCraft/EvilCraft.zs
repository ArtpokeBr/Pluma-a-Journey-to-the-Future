import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;
import mods.evilcraft.BloodInfuser as BloodInfuser;
import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;

//Dark Gem Ore Processing

#tooltip fixing
<ore:oreDark>.firstItem.clearTooltip();
<ore:oreDark>.firstItem.addTooltip(format.white("Dark Ore"));
<ore:oreDark>.firstItem.addTooltip(format.darkPurple("Obtained within the Vinteum Vein."));

# Ore into Dusts
macerator.recipeBuilder()
	.inputs(<ore:oreDark>)
    .outputs(<ore:gemDarkCrushed>.firstItem*2) 
    .chancedOutput(<ore:gemDarkCrushed>.firstItem*1, 500, 1000)
    .chancedOutput(<ore:gemDarkCrushed>.firstItem*1, 250, 500)
	.duration(200)
	.EUt(100)
.buildAndRegister();

# Gem back into dust

macerator.recipeBuilder()
	.inputs(<ore:gemDark>)
    .outputs(<ore:gemDarkCrushed>.firstItem) 
	.duration(100)
	.EUt(8)
.buildAndRegister();

# Dust into Dark Gem itself

autoclave.recipeBuilder()
    	.inputs(<ore:gemDarkCrushed>)
    	.fluidInputs(<liquid:water> * 200)
    	.chancedOutput(<ore:gemDark>.firstItem, 7000, 2700)
    	.duration(2000)
    	.EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    	.inputs(<ore:gemDarkCrushed>)
    	.fluidInputs(<liquid:distilled_water> * 200)
    	.chancedOutput(<ore:gemDark>.firstItem, 9000, 3000)
    	.duration(1000)
    	.EUt(24)
.buildAndRegister();

autoclave.recipeBuilder()
    	.inputs(<ore:gemDarkCrushed>)
    	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    	.outputs(<ore:gemDark>.firstItem)
    	.duration(100)
    	.EUt(24)
.buildAndRegister();

# Fluid Darkness out of Dark Gems
extractor.recipeBuilder()
        .inputs(<ore:gemDark>)
        .fluidOutputs(<liquid:dark_fluid>*144)
        .duration(86)
        .EUt(12)
.buildAndRegister();

extractor.recipeBuilder()
        .inputs(<evilcraft:dark_block>)
        .fluidOutputs(<liquid:dark_fluid>*1296)
        .duration(172)
        .EUt(24)
.buildAndRegister();

// ===============================

// Spikes
recipes.remove(<evilcraft:dark_spike>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltVanadiumSteel>],
    [<ore:stickRunicSteel>],
    [<ore:stickRunicSteel>]])
  .setFluid(<liquid:dark_fluid> * 288)
  .addTool(<ore:gtceFiles>, 20)
  .addOutput(<evilcraft:dark_spike> * 3)
.create();

// Blood Extractor =============
recipes.removeByRecipeName("evilcraft:blood_extractor");
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:materialSpike>, <ore:materialSpike>, <ore:materialSpike>],
    [<ore:lightPlateTwilightMetal>, <gregtech:meta_item_1:82>, <ore:lightPlateTwilightMetal>],
    [null, <ore:springSmallManasteel>, null]])
  .setFluid(<liquid:dark_fluid> * 288)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<evilcraft:blood_extractor>.withTag({capacity: 8000}))
.create();

// Golden String
recipes.remove(<evilcraft:golden_string>);
recipes.addShaped(<evilcraft:golden_string> * 1, [[<ore:glodCrystal>, <ore:plateGold>, <ore:glodCrystal>], [<ore:plateGold>, <randomthings:ingredient:12>, <ore:plateGold>],[<ore:glodCrystal>, <ore:plateGold>, <ore:glodCrystal>]]);

// Blood Infusion Core (Recipe is trough the Dwarven Matrix Multiblock)
recipes.remove(<evilcraft:blood_infusion_core>);

# [Blood Infuser] from [Blood Infusion Core][+7]
recipes.remove(<evilcraft:blood_infuser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
  "evilcraft:blood_infuser", # Name
  "FIRSTSTEPS@2", # Research
  100, # Vis cost
  [<aspect:ignis> * 20, <aspect:perditio> * 20, ],
  <evilcraft:blood_infuser>, # Output
  Grid(["pretty",
  "□ п □",
  "H B H",
  "2 2 2"], {
  "□": <ore:lightPlateRedSteel>,        # Light Red Steel Plate
  "п": <tconstruct:large_plate>.withTag({Material: "xu_demonic_metal"}), # Demonic Large Plate
  "H": <contenttweaker:baykoksbloodiedstone>,    # Baykoks Bloodied Stone
  "B": <evilcraft:blood_infusion_core>, # Blood Infusion Core
  "2": <ore:compressed2xNetherrack>,    # 2x Compressed Netherrack
}).shaped());


// Dark Powered Gem and non Powered Block fix
recipes.remove(<evilcraft:dark_power_gem_block>);
compressor.recipeBuilder()
    .inputs(<evilcraft:dark_power_gem>*9)
    .outputs(<evilcraft:dark_power_gem_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

recipes.remove(<evilcraft:dark_block>);
compressor.recipeBuilder()
    .inputs(<evilcraft:dark_gem>*9)
    .outputs(<evilcraft:dark_block>)
    .duration(300)
    .EUt(2)
.buildAndRegister();

//Vengeance Ring
recipes.remove(<evilcraft:vengeance_ring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemDarkCrushed>, <ore:plateMelodicAlloy>, <ore:gemDarkCrushed>],
    [<ore:plateMelodicAlloy>, null, <ore:plateMelodicAlloy>],
    [<ore:gemDarkCrushed>, <ore:plateMelodicAlloy>, <ore:gemDarkCrushed>]])
  .setFluid(<liquid:liquidchorus> * 250)
  .addTool(<ore:artisansGrimoire>, 25)
  .addOutput(<evilcraft:vengeance_ring>)
.create();

//Vengeance Focus
recipes.remove(<evilcraft:vengeance_focus>);
RecipeBuilder.get("mage")
  .setShaped([
    [<evilcraft:dark_gem_crushed>, <ore:plateDemonlord>, <evilcraft:dark_gem_crushed>],
    [<ore:plateDemonlord>, <evilcraft:vengeance_ring>, <ore:plateDemonlord>],
    [<evilcraft:dark_gem_crushed>, <ore:plateDemonlord>, <evilcraft:dark_gem_crushed>]])
  .setFluid(<liquid:liquidchorus> * 500)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<evilcraft:vengeance_focus>)
.create();

//Vengeance Piercing Focus
recipes.remove(<evilcraft:piercing_vengeance_focus>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustLunar>, <ore:plateDenseStygian>, <ore:dustLunar>],
    [<ore:plateDenseStygian>, <evilcraft:inverted_potentia:1>, <ore:plateDenseStygian>],
    [<ore:dustLunar>, <ore:plateDenseStygian>, <ore:dustLunar>]])
  .setFluid(<liquid:liquidchorus> * 750)
  .addTool(<ore:artisansGrimoire>, 35)
  .addOutput(<evilcraft:piercing_vengeance_focus>)
  .create();

// Spectral Glasses
recipes.remove(<evilcraft:spectral_glasses>);
recipes.addShaped(<evilcraft:spectral_glasses> * 1, [[null, null, null], [<evilcraft:vengeance_ring>, <ore:stickStygian>, <evilcraft:vengeance_ring>],[null, null, null]]);

// Empty Orb
recipes.remove(<evilcraft:blood_orb:0>);
recipes.addShaped(<evilcraft:blood_orb:0> * 1, [[<ore:gemDarkCrushed>, <botania:managlass>, <ore:gemDarkCrushed>], [<botania:managlass>, <embers:ember_cluster>, <botania:managlass>],[<ore:gemDarkCrushed>, <botania:managlass>, <ore:gemDarkCrushed>]]);

// Blood Orb
BloodInfuser.removeRecipesWithOutput(<evilcraft:blood_orb:1>);
BloodInfuser.addRecipe(<evilcraft:blood_orb>, <liquid:evilcraftblood> * 640000, 3, <evilcraft:blood_orb:1>, 600, 2);

// Iron Promise Acceptor
BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor>);
BloodInfuser.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <liquid:evilcraftblood> * 10000, 0, <evilcraft:promise_acceptor>, 100, 5);

// Promise of Tenacity I
recipes.remove(<evilcraft:promise>);
recipes.addShaped(<evilcraft:promise>, [[<ore:EmpoweredEnoriCrystal>,<evilcraft:bowl_of_promises:2>.noReturn(),<ore:EmpoweredEnoriCrystal>],[<ore:plateManaQuartz>,<evilcraft:promise_acceptor>,<ore:plateManaQuartz>],[<ore:EmpoweredEnoriCrystal>,<evilcraft:bowl_of_promises:2>.noReturn(),<ore:EmpoweredEnoriCrystal>]]);

// Gold Promise Acceptor
BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:1>);
BloodInfuser.addRecipe(<ore:empoweredBlockGlodCrystal>, <liquid:evilcraftblood> * 40000, 1, <evilcraft:promise_acceptor:1>, 200, 8);

// Promise of Tenacity II
recipes.remove(<evilcraft:promise:1>);
recipes.addShaped(<evilcraft:promise:1>, [[<ore:empoweredGlodCrystal>,<evilcraft:bowl_of_promises:3>.noReturn(),<ore:empoweredGlodCrystal>],[<ore:plateSunnyQuartz>,<evilcraft:promise_acceptor:1>,<ore:plateSunnyQuartz>],[<ore:empoweredGlodCrystal>,<evilcraft:bowl_of_promises:3>.noReturn(),<ore:empoweredGlodCrystal>]]);

// Diamond Promise Acceptor
BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:2>);
BloodInfuser.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <liquid:evilcraftblood> * 160000, 2, <evilcraft:promise_acceptor:2>, 300, 10);

// Promise of Tenacity III
recipes.remove(<evilcraft:promise:2>);
recipes.addShaped(<evilcraft:promise:2>, [[<ore:EmpoweredDiamantineCrystal>,<evilcraft:bowl_of_promises:4>.noReturn(),<ore:EmpoweredDiamantineCrystal>],[<ore:plateLavenderQuartz>,<evilcraft:promise_acceptor:2>,<ore:plateLavenderQuartz>],[<ore:EmpoweredDiamantineCrystal>,<evilcraft:bowl_of_promises:4>.noReturn(),<ore:EmpoweredDiamantineCrystal>]]);

// Bowl of Empty Promises
recipes.remove(<evilcraft:bowl_of_promises:1>);
recipes.addShaped(<evilcraft:bowl_of_promises:1>, [[<evilcraft:dark_power_gem>,<ore:powderMana>,<evilcraft:dark_power_gem>],[<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>]]);

// Bowl of Promises (Strength 0)
BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:2>);
BloodInfuser.addRecipe(<evilcraft:bowl_of_promises>, <liquid:evilcraftblood> * 5000, 0, <evilcraft:bowl_of_promises:2>, 100, 2);

// Bowl of Promises (Strength I)
BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:3>);
BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:2>, <liquid:evilcraftblood> * 10000, 1, <evilcraft:bowl_of_promises:3>, 100, 2);

// Bowl of Promises (Strength II)
BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:4>);
BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:3>, <liquid:evilcraftblood> * 15000, 2, <evilcraft:bowl_of_promises:4>, 100, 2);

// Bowl of Promises (Strength III)
BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:5>);
BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:4>, <liquid:evilcraftblood> * 20000, 3, <evilcraft:bowl_of_promises:5>, 100, 2);

// Promise of Productivity
recipes.remove(<evilcraft:promise:4>);
recipes.addShaped(<evilcraft:promise:4>, [[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>],[<contenttweaker:defensive_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:defensive_core>],[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>]]);
//ArcaneWorkbench.registerShapedRecipe("thaumcraft:promise_of_productivity", "FIRSTSTEPS@2", 40, [<aspect:aqua>*8,<aspect:perditio>*4], <evilcraft:promise:4>, [[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>],[<contenttweaker:defensive_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:defensive_core>],[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>]]);


// Promise of Velocity
recipes.remove(<evilcraft:promise:3>);
recipes.addShaped(<evilcraft:promise:3>, [[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>],[<contenttweaker:power_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:power_core>],[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>]]);
//ArcaneWorkbench.registerShapedRecipe("thaumcraft:promise_of_velocity", "FIRSTSTEPS@2", 40, [<aspect:perditio>*4,<aspect:ignis>*8], <evilcraft:promise:3>, [[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>],[<contenttweaker:power_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:power_core>],[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>]]);


// Weather Containers ==============================================================================================

# Empty
recipes.remove(<evilcraft:weather_container>);
recipes.addShapeless(<evilcraft:weather_container>, [<minecraft:glass_bottle>, <ore:dustDull>, <ore:dustSugar>]);

# Sunshine
chemreactor.recipeBuilder()
    .inputs(<evilcraft:weather_container:1>, <minecraft:double_plant>)
    .fluidInputs(<liquid:liquid_sunshine>*750)
    .outputs(<evilcraft:weather_container:1>*2)
    .duration(168)
    .EUt(600)
.buildAndRegister();

# Rainy
chemreactor.recipeBuilder()
    .inputs(<evilcraft:weather_container:2>, <minecraft:packed_ice>)
    .fluidInputs(<liquid:cloud_seed>*750)
    .outputs(<evilcraft:weather_container:2>*2)
    .duration(168)
    .EUt(600)
.buildAndRegister();

# Thunderstruck
chemreactor.recipeBuilder()
    .inputs(<evilcraft:weather_container:3>, <projectred-core:resource_item:341>)
    .fluidInputs(<liquid:cloud_seed_concentrated>*750)
    .outputs(<evilcraft:weather_container:3>*2)
    .duration(168)
    .EUt(600)
.buildAndRegister();

// Potentia Sphere
recipes.remove(<evilcraft:potentia_sphere>);
recipes.addShaped(<evilcraft:potentia_sphere> * 1, [[<ore:dustLapotron>, <botanicadds:mana_lapis>, <ore:dustLapotron>], [<botanicadds:mana_lapis>, <tconstruct:slime_congealed:0>, <botanicadds:mana_lapis>],[<ore:dustLapotron>, <botanicadds:mana_lapis>, <ore:dustLapotron>]]);

# Inverted Potentia Sphere
recipes.remove(<evilcraft:inverted_potentia>);
large_chemical_reactor.recipeBuilder()
    .inputs(<evilcraft:potentia_sphere>, <ore:dustDarkAsh>*2, <ore:gemDarkCrushed>*2)
    .fluidInputs(<liquid:liquid_nightmares>*250)
    .outputs(<evilcraft:inverted_potentia>)
    .duration(200)
    .EUt(450)
.buildAndRegister();

// Spiked Plate
recipes.remove(<evilcraft:spiked_plate:0>);
recipes.addShaped(<evilcraft:spiked_plate:0> * 1, [[null, null, null], [<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>],[<ore:lightPlateDarkSteel>, <evilcraft:inverted_potentia:0>, <ore:lightPlateDarkSteel>]]);

// Sanguinary Pedestal
recipes.remove(<evilcraft:sanguinary_pedestal:0>);
recipes.addShaped(<evilcraft:sanguinary_pedestal:0> * 1, [[<ore:gemDark>, <ore:plateDenseDarkSteel>, <ore:gemDark>], [null, <evilcraft:dark_tank>, null],[<ore:gemDark>, <evilcraft:inverted_potentia:1>, <ore:gemDark>]]);

// Sanguinary Pedestal
recipes.remove(<evilcraft:sanguinary_pedestal:1>);
recipes.addShaped(<evilcraft:sanguinary_pedestal:1> * 1, [[<ore:gemDarkPower>, <ore:plateDenseRedSteel>, <ore:gemDarkPower>], [null, <evilcraft:sanguinary_pedestal:0>, null],[<ore:gemDarkPower>, <evilcraft:blood_orb:1>, <ore:gemDarkPower>]]);

// Dark Tank
recipes.removeByRecipeName("evilcraft:dark_tank");
recipes.removeByRecipeName("evilcraft:dark_tank_11");
recipes.addShaped(<evilcraft:dark_tank> * 1, [[<ore:quartzDark>, <ore:gemDarkCrushed>, <ore:quartzDark>], [<ore:gemDarkCrushed>, <enderio:block_tank:0>, <ore:gemDarkCrushed>],[<ore:quartzDark>, <ore:gemDarkCrushed>, <ore:quartzDark>]]);

# Materialized Vengeance Essence
recipes.remove(<evilcraft:vengeance_essence:1>);
mixer.recipeBuilder()
    .inputs(<evilcraft:vengeance_essence>, <ore:gemDarkCrushed>*4, <ore:dustAndradite>*2, <ore:dustCollagen>*2)
    .outputs(<evilcraft:vengeance_essence:1>*4)
    .duration(250)
    .EUt(500)
.buildAndRegister();

// Rejuvenated Flesh
<evilcraft:rejuvenated_flesh>.addTooltip(format.white("About ") + format.red("1.5") + format.white(" of hunguer per nom nom."));

//Blood Infusion Core alternative
mods.extendedcrafting.TableCrafting.addShaped(3, <evilcraft:blood_infusion_core>*2, [
	[null, null, null, <ore:gemDarkPower>, null, null, null], 
	[null, null, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, null, null], 
	[null, <evilcraft:hardened_blood_shard>, <contenttweaker:alchemical_nautilus>, <embers:seed_copper>, <contenttweaker:alchemical_nautilus>, <evilcraft:hardened_blood_shard>, null], 
	[<ore:gemDarkPower>, <evilcraft:hardened_blood_shard>, <embers:seed_copper>, <embers:wildfire_core>, <embers:seed_copper>, <evilcraft:hardened_blood_shard>, <ore:gemDarkPower>], 
	[null, <evilcraft:hardened_blood_shard>, <contenttweaker:alchemical_nautilus>, <embers:seed_copper>, <contenttweaker:alchemical_nautilus>, <evilcraft:hardened_blood_shard>, null], 
	[null, null, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, null, null], 
	[null, null, null, <ore:gemDarkPower>, null, null, null]
]);

// Purifier
recipes.remove(<evilcraft:purifier>);
ArcaneWorkbench.registerShapedRecipe("evilcraft:purifier", "UNLOCKALCHEMY@1", 20, [<aspect:perditio>*10,<aspect:ignis>*10], <evilcraft:purifier>, [[<evilcraft:hardened_blood_shard>, null, <evilcraft:hardened_blood_shard>], [<ore:plateDarkSteel>, <evilcraft:blood_infusion_core>, <ore:plateDarkSteel>],[<ore:plateDarkSteel>, <evilcraft:dark_block>, <ore:plateDarkSteel>]]);

