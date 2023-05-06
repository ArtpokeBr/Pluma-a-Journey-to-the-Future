import mods.roots.Fey as Fey;
import mods.actuallyadditions.Empowerer as Empowerer;
import mods.extendedcrafting.CombinationCrafting as CombinationCrafting;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.botania.RuneAltar as RunicAltar;
import mods.botania.ElvenTrade;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.abyssalcraft.InfusionRitual;

# [Canister] from [Necrotic Bone][+2]
recipes.removeByRecipeName("bhc:canister");
craft.make(<bhc:canister>, ["pretty",
  "⌂ □ ⌂",
  "□ W □",
  "⌂ □ ⌂"], {
  "⌂": <ore:casingIron>,   # Iron Casing
  "□": <ore:plateEnori>,   # Enori Plate
  "W": <ore:boneWithered>, # Necrotic Bone
});

# [Canister]*4 from [Royal Jelly][+2]
recipes.removeByRecipeName("bhc:canister");
craft.make(<bhc:canister> * 4, ["pretty",
  "⌂ □ ⌂",
  "□ R □",
  "⌂ □ ⌂"], {
  "⌂": <ore:casingIron>,     # Iron Casing
  "□": <ore:plateEnori>,     # Enori Plate
  "R": <ore:dropRoyalJelly>, # Royal Jelly
});

# Relic Apple
recipes.remove(<bhc:relic_apple>);
Fey.addRecipe(
  "relic_apple",
  <bhc:relic_apple>,    // the itemstack produced by this recipe
  [<natura:edibles:10>, <ore:crystalDiamantine>, <ore:EmeradicCrystal>, <ore:crystalMenril>, <ore:slimecrystal>], // an array of IIngredients that make up the recipe; must contain 5 items
  1
);

# Heart Amulet
<bhc:heart_amulet>.addTooltip(format.gray("<Press Shift for more Info>"));
<bhc:heart_amulet>.addShiftTooltip(format.white("Technically an Amulet but...now you use it in your Bonus Slots!"));
recipes.remove(<bhc:heart_amulet>);
RecipeBuilder.get("mage")
  .setShaped([
    [<pyrotech:material:26>, null, <pyrotech:material:26>],
    [<ore:glodCrystal>, <ore:itemHeart>, <ore:glodCrystal>],
    [null, <ore:glodCrystal>, null]])
  .setFluid(<liquid:refinedcanolaoil> * 1000)
  .addTool(<ore:artisansAthame>, 10)
  .addOutput(<bhc:heart_amulet>)
.create();

# Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
Fey.addRecipe(
  "red_heart_canister",
  <bhc:red_heart_canister>,    // the itemstack produced by this recipe
  [<bhc:canister>, <bhc:relic_apple>, <ore:boneWithered>, <bhc:red_heart>, <biomesoplenty:fleshchunk>], // an array of IIngredients that make up the recipe; must contain 5 items
  1
);

// Yellow Heart
Empowerer.addRecipe(<bhc:yellow_heart>, <bhc:red_heart>, <ore:gemGarnetYellow>, <projectred-core:resource_item:504>, <contenttweaker:alchemical_nautilus>, <embers:seed_gold>, 5000, 250, [0.2, 0.5, 0.5]);
CombinationCrafting.addRecipe(<bhc:yellow_heart>, 80000, <bhc:red_heart>, [<ore:gemGarnetYellow>.firstItem, <projectred-core:resource_item:504>, <contenttweaker:alchemical_nautilus>, <embers:seed_gold>]);

// Yellow Heart Canister
recipes.remove(<bhc:yellow_heart_canister>);
Empowerer.addRecipe(<bhc:yellow_heart_canister>, <bhc:canister>, <bhc:yellow_heart>, <minecraft:golden_apple:1>, <minecraft:fish:3>, <bhc:relic_apple>, 5000, 250, [0.2, 0.5, 0.5]);
CombinationCrafting.addRecipe(<bhc:yellow_heart_canister>, 80000, <bhc:canister>, [<bhc:yellow_heart>, <minecraft:golden_apple:1>, <minecraft:fish:3>, <bhc:relic_apple>]);

// Green Heart
mods.botania.ElvenTrade.addRecipe([<bhc:green_heart>], [<bhc:yellow_heart>, <natura:nether_glowshroom>, <actuallyadditions:item_crystal_shard:4>]);

// Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
RunicAltar.addRecipe(<bhc:green_heart_canister>, [<bhc:canister>,<bhc:green_heart>,<ore:foodSpicygreens>,<randomthings:runedust:13>, <bhc:relic_apple>, <ore:EmpoweredEmeradicCrystal>, <ore:EmpoweredEmeradicCrystal>, <ore:dustTerrasteel>, <ore:dustTerrasteel>], 20000);

// Blue Heart
mods.thaumcraft.Crucible.registerRecipe("blue_heart", "BASEALCHEMY", <bhc:blue_heart>, <bhc:green_heart>, [<aspect:draco> * 25,<aspect:victus> * 500, <aspect:imperium> * 250]);

// Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
mods.abyssalcraft.InfusionRitual.addRitual("blue_heart_canister", 0, -1, 20000, false, <bhc:blue_heart_canister>, <bhc:canister>, [<bhc:blue_heart>, <deepmoblearning:pristine_matter_tinker_slime>, <contenttweaker:potency_core>, <deepmoblearning:pristine_matter_tinker_slime>, <bhc:relic_apple>, <deepmoblearning:pristine_matter_tinker_slime>, <contenttweaker:potency_core>, <deepmoblearning:pristine_matter_tinker_slime>], true);
