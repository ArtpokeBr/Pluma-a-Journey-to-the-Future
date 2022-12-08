import mods.artisanworktables.builder.RecipeBuilder;

//Ring of Magnetizing
recipes.remove(<actuallyadditions:item_suction_ring>);
mods.jei.JEI.hide(<actuallyadditions:item_suction_ring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:plateRestonia>, <ore:plateEnori>, <ore:plateLapis>],
    [<ore:plateEnori>, <actuallyadditions:item_misc:6>, <ore:plateEnori>],
    [<ore:plateLapis>, <ore:plateEnori>, <ore:plateRestonia>]])
  .addTool(<ore:artisansGrimoire>, 6)
  .addOutput(<actuallyadditions:item_suction_ring>)
  .create();

//Ring of Speed
recipes.remove(<actuallyadditions:item_potion_ring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustSugar>, <ore:cropNetherWart>, <ore:dustSugar>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:dustSugar>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:dustSugar>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring>)
  .create();

//Ring of Haste
recipes.remove(<actuallyadditions:item_potion_ring:1>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:repeater>, <ore:cropNetherWart>, <minecraft:repeater>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<minecraft:comparator>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:comparator>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:1>)
  .create();

//Ring of Strengh
recipes.remove(<actuallyadditions:item_potion_ring:2>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustBlaze>, <ore:cropNetherWart>, <ore:dustBlaze>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:dustBlaze>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:dustBlaze>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:2>)
  .create();

//Ring of Jump Boost
recipes.remove(<actuallyadditions:item_potion_ring:3>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:craftingPiston>, <ore:cropNetherWart>, <ore:craftingPiston>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:craftingPiston>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:craftingPiston>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:3>)
  .create();

//Ring of Regeneration
recipes.remove(<actuallyadditions:item_potion_ring:4>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:ghast_tear>, <ore:cropNetherWart>, <minecraft:ghast_tear>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<minecraft:ghast_tear>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:ghast_tear>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:4>)
  .create();

//Ring of Resistence
recipes.remove(<actuallyadditions:item_potion_ring:5>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:shield>, <ore:cropNetherWart>, <minecraft:shield>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<minecraft:shield>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:shield>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 2)
  .addOutput(<actuallyadditions:item_potion_ring:5>)
  .create();

//Ring of Fire Resistence
recipes.remove(<actuallyadditions:item_potion_ring:6>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:magma_cream>, <ore:cropNetherWart>, <minecraft:magma_cream>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<minecraft:magma_cream>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:magma_cream>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:6>)
  .create();

//Ring of Water Breathing
recipes.remove(<actuallyadditions:item_potion_ring:7>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:fish>, <ore:cropNetherWart>, <ore:fish>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:fish>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:fish>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 6)
  .addOutput(<actuallyadditions:item_potion_ring:7>)
  .create();

//Ring of Night Vision
recipes.remove(<actuallyadditions:item_potion_ring:9>);
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:golden_carrot>, <ore:cropNetherWart>, <minecraft:golden_carrot>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<minecraft:golden_carrot>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:golden_carrot>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_potion_ring:9>)
  .create();

//Ring of Growth
recipes.remove(<actuallyadditions:item_growth_ring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:listAllseed>, <actuallyadditions:block_greenhouse_glass>, <ore:listAllseed>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:listAllseed>, <actuallyadditions:block_crystal_empowered:5>, <ore:listAllseed>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_growth_ring>)
  .create();

//Ring of Liquid Banning
recipes.remove(<actuallyadditions:item_water_removal_ring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:listAllwater>, <minecraft:sponge>, <ore:listAllwater>],
    [<ore:plateDiamatine>, <actuallyadditions:item_misc:6>, <ore:plateDiamatine>],
    [<ore:listAllwater>, <actuallyadditions:block_crystal:2>, <ore:listAllwater>]])
  .setFluid(<liquid:vinteum> * 576)
  .addTool(<ore:artisansGrimoire>, 5)
  .addOutput(<actuallyadditions:item_water_removal_ring>)
  .create();
