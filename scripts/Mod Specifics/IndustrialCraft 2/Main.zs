#modloaded ic2

import mods.mekanism.enrichment as EnrichmentChamber;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import crafttweaker.item.IItemStack;

# GT's Fertilizer to IC2's Fertilizer
recipes.remove(<ic2:crop_res:2>);
recipes.addShapeless(<ic2:crop_res:2>, [<gregtech:meta_item_1:1001>]);
recipes.addShapeless(<gregtech:meta_item_1:1001>, [<ic2:crop_res:2>]);

// Also Reworking Recipe for the GT's Fertilizer using Scrap
<recipemap:mixer>.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();

mixer.recipeBuilder()
	.inputs(<ore:dirt>, <ore:dustWood>*2, <ore:sand>*4)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:1001>*4)
	.duration(100)
	.EUt(30)
.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dirt>, <ore:itemScrap>*2, <ore:sand>*4)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:1001>*8)
	.duration(100)
	.EUt(30)
.buildAndRegister();

# Weed Ex Recipe Compat
craft.make(<gregtech:meta_item_1:79>.withTag({Fluid: {FluidName: "ic2weed_ex", Amount: 1000}}), ["pretty",
  "G ♥",
  "◘  "], {
  "G": <ic2:crop_res:3>,                      # Grin Powder
  "♥": <ore:dustRedstone> | <ore:alloyBasic>, # Redstone
  "◘": <gregtech:meta_item_1:79>,             # Empty Universal Cell
});

mixer.recipeBuilder()
	.inputs(<ic2:crop_res:3>)
    .fluidInputs(<liquid:redstone>*144)
    .fluidOutputs(<liquid:ic2weed_ex>*1000)
	.duration(300)
	.EUt(8)
.buildAndRegister();

# CF Powder
recipes.remove(<ic2:crafting:25>);
solidifier.recipeBuilder()
    .fluidInputs(<liquid:concrete>*576)
    .notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<ic2:crafting:25>)
	.duration(300)
	.EUt(8)
.buildAndRegister();

# [Reinforced Stone Alternate Recipe]
chemical_bath.recipeBuilder()
    .inputs(<ic2:scaffold:2>)
    .fluidInputs(<liquid:ic2construction_foam>*100)
    .outputs(<ic2:resource:11>)
    .duration(200)
    .EUt(4)
.buildAndRegister();

# [Mixed Metal] from [Light Brass Plate][+2]
craft.remake(<ic2:ingot>*3, ["pretty",
  "п п п",
  "□ □ □",
  "P P P"], {
  "п": <ore:lightPlateStainlessSteel>, # Light Stainless Steel Plate
  "□": <ore:lightPlateBrass>,          # Light Brass Plate
  "P": <ore:lightPlateNichrome>,       # Light Nichrome Plate
});

// Advanced Alloy Recipe
compressor.recipeBuilder()
    .inputs(<ic2:ingot>)
    .outputs(<ore:plateAdvancedAlloy>.firstItem)
    .duration(400)
    .EUt(800)
.buildAndRegister();

// Hydrated Tin Dust Recipe
chemical_bath.recipeBuilder()
    .inputs(<ore:dustTin>)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<ic2:dust:29>)
    .duration(125)
    .EUt(120)
.buildAndRegister();

// Hydrated Coal Dust Recipe
chemical_bath.recipeBuilder()
    .inputs(<ore:dustCoal>)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<ore:dustHydratedCoal>.firstItem)
    .duration(125)
    .EUt(30)
.buildAndRegister();

//Removing Industrial Diamond from the Enrichement Chamber
EnrichmentChamber.removeRecipe(<ic2:dust:5>);

//Carbon Fixes

// Carbon Dust * 1
<recipemap:macerator>.findRecipe(2, [<ic2:crafting:15>], null).remove();
macerator.recipeBuilder()
    .inputs(<ore:plateCarbon>)
    .outputs(<ore:dustCarbon>.firstItem)
    .duration(12)
    .EUt(2)
.buildAndRegister();

// Carbon * 144
<recipemap:extractor>.findRecipe(30, [<ic2:crafting:15>], null).remove();
extractor.recipeBuilder()
    .inputs(<ore:plateCarbon>)
    .fluidOutputs(<liquid:carbon>*144)
    .duration(12)
    .EUt(30)
.buildAndRegister();

// Carbon Plate * 1
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.plate>], [<liquid:carbon> * 144]).remove();
solidifier.recipeBuilder()
    .fluidInputs(<liquid:carbon>*144)
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<ore:plateCarbon>.firstItem)
    .duration(40)
    .EUt(7)
.buildAndRegister();

# Assorted Buffs
<ic2:treetap>.maxDamage = 400; # Buff from 16
<ic2:wrench>.maxDamage = 5000; # Buff from 100

<ic2:dynamite>.maxStackSize = 64;
<ic2:dynamite_sticky>.maxStackSize = 64;

// Prevent recharging dupe
<ic2:lzh_condensator>.maxStackSize = 1;
<ic2:rsh_condensator>.maxStackSize = 1;

# IC2 Block Cutting blades
// mods.tconstruct.Casting.addTableRecipe(<ic2:block_cutting_blade>,   <architecturecraft:sawblade>, <fluid:iron>, 1152, true);
// mods.tconstruct.Casting.addTableRecipe(<ic2:block_cutting_blade:1>, <architecturecraft:sawblade>, <fluid:steel>, 1152, true);
// mods.tconstruct.Casting.addTableRecipe(<ic2:block_cutting_blade:2>, <architecturecraft:sawblade>, <fluid:diamond>, 5328, true);
// mods.tconstruct.Melting.addRecipe(<liquid:iron>  * 1152, <ic2:block_cutting_blade>);
// mods.tconstruct.Melting.addRecipe(<liquid:steel> * 1152, <ic2:block_cutting_blade:1>);

//Removing Hand Recipes for IC2 Cables
var IC2Wires as IItemStack[] = [
<ic2:cable>,
<ic2:cable:1>,
<ic2:cable:2>,
<ic2:cable:3>,
<ic2:cable:4>,
];
for item in IC2Wires {
	recipes.remove(item);
}

# [Basic Machine Casing] from [Iron Wrench (LV)][+2]
recipes.removeByRecipeName("ic2:48");
craft.make(<ic2:resource:12>, ["pretty",
  "⌂ □ ⌂",
  "□ W □",
  "⌂ □ ⌂"], {
  "⌂": <ore:casingSteel>, # Steel Casing
  "□": <ore:plateSteel>,  # Steel Plate
  "W": <ore:gtceWrenches>, # Iron Wrench (LV)
});

assembler.recipeBuilder()
    .inputs(<ore:casingSteel>*4, <ore:plateSteel>*4)
    .circuit(2)
    .outputs(<ic2:resource:12>)
    .duration(50)
    .EUt(16)
.buildAndRegister();

# [Advanced Machine Casing] from [Basic Machine Casing][+3]
recipes.removeByRecipeName("ic2:78");
recipes.removeByRecipeName("ic2:77");
craft.make(<ic2:resource:13>, ["pretty",
  "□ C □",
  "п ■ п",
  "□ C □"], {
  "□": <ore:plateAluminium>,     # Aluminium Plate
  "C": <ore:plateCarbon>,        # Carbon Fiber Plate
  "п": <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "■": <ore:machineBlock> | <ore:machineBlockCasing>, # Basic Machine Casing
});

assembler.recipeBuilder()
    .inputs(<ic2:resource:12>, <ore:plateAluminium>*4, <ore:plateAdvancedAlloy>*2, <ore:plateCarbon>*2)
    .circuit(2)
    .outputs(<ic2:resource:13>)
    .duration(50)
    .EUt(16)
.buildAndRegister();

// Hot Coolant Reprocessed back into IC2 Coolant
<recipemap:vacuum_freezer>.recipeBuilder()
    .fluidInputs(<liquid:ic2hot_coolant>*1000)
    .fluidOutputs(<liquid:ic2coolant>*1000)
    .duration(200)
    .EUt(16)
.buildAndRegister();

# Fixing Biogas
<recipemap:fermenter>.recipeBuilder()
    .fluidInputs(<liquid:biomass>*50)
    .inputs(<ore:itemFertilizer>)
    .fluidOutputs(<liquid:ic2biogas>*250)
    .duration(250)
    .EUt(8)
.buildAndRegister();
<recipemap:fermenter>.recipeBuilder()
    .fluidInputs(<liquid:fermented_biomass>*25)
    .inputs(<ore:itemFertilizer>)
    .fluidOutputs(<liquid:ic2biogas>*500)
    .duration(200)
    .EUt(8)
.buildAndRegister();

