#modloaded ic2

# Water and Milk Dust → Milk
<recipemap:mixer>.recipeBuilder()
    .inputs(<ore:dustMilk>)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:milk>*1000)
    .duration(100)
    .EUt(2)
.buildAndRegister();

# Water and CF Powder → Construction Foam
<recipemap:mixer>.recipeBuilder()
    .inputs(<ic2:crafting:25>)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:ic2construction_foam>*1000)
    .duration(300)
    .EUt(32)
.buildAndRegister();


# Water/Distilled Water → IC2 Coolant
<recipemap:mixer>.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<ore:dustLapis>*8)
    .fluidOutputs(<liquid:ic2coolant>*1000)
    .duration(300)
    .EUt(32)
.buildAndRegister();

<recipemap:mixer>.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<ore:dustLapis>)
    .fluidOutputs(<liquid:ic2coolant>*1000)
    .duration(250)
    .EUt(16)
.buildAndRegister();

# Water + Regen Potion II + Blightberry → Hotspring Water
<recipemap:mixer>.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}), <ore:cropBlightberry>*2)
    .fluidOutputs(<liquid:ic2hot_water>*1000)
    .duration(300)
    .EUt(32)
.buildAndRegister();

# UU-Matter + Coalescence Matrix → Eutectic UU-Metal Alloy
<recipemap:mixer>.recipeBuilder()
    .fluidInputs(<liquid:ic2uu_matter>*72)
    .inputs(<tconevo:material>)
    .fluidOutputs(<liquid:universal_metal>*144)
    .duration(400)
    .EUt(1800)
.buildAndRegister();

# Filling Uranium Cell
<recipemap:canner>.recipeBuilder()
    .inputs(<ic2:crafting:9>, <ic2:nuclear>)
    .outputs(<ic2:uranium_fuel_rod>)
    .duration(100)
    .EUt(1000)
.buildAndRegister();

# Filling MOX Cell
<recipemap:canner>.recipeBuilder()
    .inputs(<ic2:crafting:9>, <ic2:nuclear:4>)
    .outputs(<ic2:mox_fuel_rod>)
    .duration(100)
    .EUt(1000)
.buildAndRegister();

# Energium Dust + Coalescence Matrix → Energium Ingot
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:491>*3, <tconevo:material>)
    .outputs(<ore:ingotEnergium>.firstItem)
    .duration(200)
    .EUt(1200)
.buildAndRegister();

