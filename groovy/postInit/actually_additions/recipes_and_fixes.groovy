// Actually Additions - Recipes and Fixes ====================================
//
// Ported from the pack's own `craft.zs` DSL to GroovyScript's native vanilla
// crafting builder. Item/tooltip/display-name overrides and
// recipes.replaceAllOccurences have no GroovyScript equivalent and were left
// in the trimmed RecipesAndFixes.zs remainder.

///////// Lamps =======================

def makeLampRecipe = { inputColor, outputLamp ->
    mods.minecraft.crafting.removeByOutput(outputLamp)
    mods.minecraft.crafting.addShaped(outputLamp, [
        [ore('blockGlowstone'), ore('platePalis'), ore('blockGlowstone')],
        [inputColor, ore('gearBlackQuartz'), inputColor],
        [ore('blockGlowstone'), ore('platePalis'), ore('blockGlowstone')]
    ])

    mods.gregtech.assembler.recipeBuilder()
        .inputs(ore('blockGlowstone') * 4, inputColor * 2, ore('gearBlackQuartz'), ore('platePalis') * 2)
        .outputs(outputLamp)
        .duration(300)
        .EUt(12)
        .buildAndRegister()
}

(0..15).each {
    makeLampRecipe(item("projectred-core:resource_item:${500 + it}"), item("actuallyadditions:block_colored_lamp:${it}"))
}

// Chiseling The Lamps
mods.chisel.carving.addGroup('Actually Lamps')
[0, 1, 2, 3, 4, 5, 6, 7, 8, 15, 14, 13, 12, 11, 10, 9].each {
    mods.chisel.carving.addVariation('Actually Lamps', item("actuallyadditions:block_colored_lamp:${it}"))
}

// =================== Fixing Black Quartz Stuff =================== //

// Chiseling Blocks
mods.chisel.carving.addGroup('Black Quartz')
[2, 1, 0].each {
    def stack = item("actuallyadditions:block_misc:${it}")
    mods.minecraft.crafting.removeByOutput(stack)
    mods.chisel.carving.addVariation('Black Quartz', stack)
}
mods.chisel.carving.addVariation('Black Quartz', item('gregtech:meta_block_compressed_2000'))

// recipes.replaceAllOccurences(<actuallyadditions:item_misc:5>, <gregtech:meta_gem:32000>)
// -- no GroovyScript equivalent, left in RecipesAndFixes.zs

// == //

// Lamps OreDict ===============
[1, 2, 3, 4, 5, 6, 7, 8, 15, 14, 13, 12, 11, 10, 9].each {
    mods.minecraft.oreDict.add('actuallyLamp', item("actuallyadditions:block_colored_lamp:${it}"))
}

// Obsidian AIOT Compatibility ===============================================
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:obsidian_paxel'))
mods.minecraft.crafting.addShapeless('ObsidianAIOT', item('actuallyadditions:obsidian_paxel'), [
    item('pyrotech:obsidian_sword'), item('pyrotech:obsidian_pickaxe'), item('pyrotech:obsidian_axe'),
    item('pyrotech:obsidian_shovel'), item('pyrotech:obsidian_hoe')
])

// Wood Casing Rework =======================

// Wood Chassis Basic
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_misc:4'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_misc:4'), [
    [ore('plankWood'), ore('plateWood'), ore('plankWood')],
    [ore('plateWood'), item('forestry:impregnated_casing'), ore('plateWood')],
    [ore('plankWood'), ore('plateWood'), ore('plankWood')]
])

// Iron Casing and Normal Casing Rework =======================

mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_misc:9'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_misc:7'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_misc:8'))

//Iron Chassis
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_misc:9'), [
    [ore('heavyPlateIron'), ore('lightPlateIron'), ore('heavyPlateIron')],
    [ore('lightPlateIron'), item('actuallyadditions:block_misc:4'), ore('lightPlateIron')],
    [ore('heavyPlateIron'), ore('lightPlateIron'), ore('heavyPlateIron')]
])

//Steel Chassis
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_misc:7'), [
    [ore('heavyPlateSteel'), ore('lightPlateLead'), ore('heavyPlateSteel')],
    [ore('lightPlateLead'), item('actuallyadditions:block_misc:9'), ore('lightPlateLead')],
    [ore('heavyPlateSteel'), ore('lightPlateLead'), ore('heavyPlateSteel')]
])

// Ender Casing
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_misc:8'), [
    [ore('plateEnderPearl'), ore('plateDiamatineEmpowered'), ore('plateEnderPearl')],
    [item('forestry:thermionic_tubes:5'), item('actuallyadditions:block_misc:7'), item('forestry:thermionic_tubes:5')],
    [ore('plateEnderPearl'), ore('plateDiamatineEmpowered'), ore('plateEnderPearl')]
])

// Basic Coil
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:7'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:7'), [
    [null, ore('EnoriCrystal'), ore('plateTreatedWood')],
    [ore('EnoriCrystal'), ore('stickBlackQuartz'), ore('EnoriCrystal')],
    [ore('plateTreatedWood'), ore('EnoriCrystal'), null]
])

// Advanced Coil
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:8'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:8'), [
    [null, ore('glodCrystal'), ore('plateTreatedWood')],
    [ore('glodCrystal'), item('forestry:oak_stick'), ore('glodCrystal')],
    [ore('plateTreatedWood'), ore('glodCrystal'), null]
])

// Canola Oil Processing ######

//Refined Canola Oil
mods.gregtech.extractor.recipeBuilder()
    .inputs(ore('cropCanola'))
    .fluidOutputs(fluid('canolaoil') * 80)
    .duration(300)
    .EUt(32)
    .buildAndRegister()

//Refined Canola Oil
mods.gregtech.distillery.recipeBuilder()
    .fluidInputs(fluid('canolaoil') * 80)
    .circuitMeta(4)
    .fluidOutputs(fluid('refinedcanolaoil') * 80)
    .duration(600)
    .EUt(32)
    .buildAndRegister()

//Crystallized Oil
mods.gregtech.mixer.recipeBuilder()
    .fluidInputs(fluid('refinedcanolaoil') * 1000)
    .inputs(item('actuallyadditions:item_misc:23'))
    .fluidOutputs(fluid('crystaloil') * 1000)
    .duration(600)
    .EUt(32)
    .buildAndRegister()

//Empowered Oil
mods.gregtech.mixer.recipeBuilder()
    .fluidInputs(fluid('crystaloil') * 1000)
    .inputs(item('actuallyadditions:item_misc:24'))
    .fluidOutputs(fluid('empoweredoil') * 1000)
    .duration(600)
    .EUt(32)
    .buildAndRegister()

//Greenhouse Glass
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_greenhouse_glass'))
mods.gregtech.alloy_smelter.recipeBuilder()
    .inputs(ore('dustBorosilicateGlass') * 8)
    .notConsumable(item('gregtech:meta_item_1:18'))
    .outputs(item('actuallyadditions:block_greenhouse_glass'))
    .duration(200)
    .EUt(90)
    .buildAndRegister()

// Atomic Reconstructor
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_atomic_reconstructor'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_atomic_reconstructor'), [
    [ore('heavyPlateSteel'), ore('plateSteel'), ore('plateSteel')],
    [item('magneticraft:crafting:1'), item('actuallyadditions:block_misc:9'), ore('craftingLensGreen')],
    [ore('heavyPlateSteel'), ore('plateSteel'), ore('plateSteel')]
])

// [Small Storage Crate] from [Wood Chassis][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_giant_chest'))
def ironOrSilverChest = item('ironchest:iron_chest').or(item('ironchest:iron_chest:4'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_giant_chest'), [
    [ironOrSilverChest, ore('endorCrystal'), ironOrSilverChest],
    [ore('endorCrystal'), item('actuallyadditions:block_misc:4'), ore('endorCrystal')],
    [ironOrSilverChest, ore('endorCrystal'), ironOrSilverChest]
])

// [Medium Storage Crate] from [Small Storage Crate][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_giant_chest_medium'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_giant_chest_medium'), [
    [item('ironchest:iron_chest:1'), ore('empoweredEndorCrystal'), item('ironchest:iron_chest:1')],
    [ore('empoweredEndorCrystal'), item('actuallyadditions:block_giant_chest'), ore('empoweredEndorCrystal')],
    [item('ironchest:iron_chest:1'), ore('empoweredEndorCrystal'), item('ironchest:iron_chest:1')]
])

// [Large Storage Crate] from [Medium Storage Crate][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_giant_chest_large'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_giant_chest_large'), [
    [item('ironchest:iron_chest:2'), ore('empoweredBlockEndorCrystal'), item('ironchest:iron_chest:2')],
    [ore('empoweredBlockEndorCrystal'), item('actuallyadditions:block_giant_chest_medium'), ore('empoweredBlockEndorCrystal')],
    [item('ironchest:iron_chest:2'), ore('empoweredBlockEndorCrystal'), item('ironchest:iron_chest:2')]
])

// Storage Crate Keeper (Recipe Removed in Removals.zs) - tooltip left in RecipesAndFixes.zs

// Batteries ========================================================================

// Single Battery
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_battery:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_battery:0'), [
    [ore('plateBatteryAlloy'), item('actuallyadditions:item_crystal:0'), ore('plateBatteryAlloy')],
    [ore('plateEnori'), item('actuallyadditions:item_misc:8'), ore('plateEnori')],
    [ore('plateEnori'), ore('plateEnori'), ore('plateEnori')]
])

// Double Battery
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_battery_double:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_battery_double:0'), [
    [ore('plateBatteryAlloy'), item('actuallyadditions:item_crystal:0'), ore('plateBatteryAlloy')],
    [ore('plateEnori'), item('actuallyadditions:item_battery:0'), ore('plateEnori')],
    [ore('plateEnori'), ore('plateEnori'), ore('plateEnori')]
])

// Triple Battery
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_battery_triple:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_battery_triple:0'), [
    [ore('plateBatteryAlloy'), item('actuallyadditions:item_crystal:0'), ore('plateBatteryAlloy')],
    [ore('plateEnori'), item('actuallyadditions:item_battery_double:0'), ore('plateEnori')],
    [ore('plateEnori'), ore('plateEnori'), ore('plateEnori')]
])

// Quadruple Battery
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_battery_quadruple:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_battery_quadruple:0'), [
    [ore('plateBatteryAlloy'), item('actuallyadditions:item_crystal:0'), ore('plateBatteryAlloy')],
    [ore('plateEnori'), item('actuallyadditions:item_battery_triple:0'), ore('plateEnori')],
    [ore('plateEnori'), ore('plateEnori'), ore('plateEnori')]
])

// Quintuple Battery
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_battery_quintuple:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_battery_quintuple:0'), [
    [ore('plateBatteryAlloy'), item('actuallyadditions:item_crystal:0'), ore('plateBatteryAlloy')],
    [ore('plateEnori'), item('actuallyadditions:item_battery_quadruple:0'), ore('plateEnori')],
    [ore('plateEnori'), ore('plateEnori'), ore('plateEnori')]
])

// --------------- ========================================================================

// Empowerer
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_empowerer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_empowerer'), [
    [ore('screwRunicSteel'), item('actuallyadditions:item_crystal:0'), ore('screwRunicSteel')],
    [ore('gearSmallRunicSteel'), item('actuallyadditions:item_battery_double:0'), ore('gearSmallRunicSteel')],
    [item('actuallyadditions:block_misc:9'), item('actuallyadditions:block_display_stand'), item('actuallyadditions:block_misc:9')]
])

// Display Stand
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_display_stand'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_display_stand'), [
    [ore('springSmallRunicSteel'), item('actuallyadditions:item_misc:8'), ore('springSmallRunicSteel')],
    [item('actuallyadditions:block_testifi_bucks_green_wall'), item('actuallyadditions:block_testifi_bucks_green_wall'), item('actuallyadditions:block_testifi_bucks_green_wall')],
    [item('actuallyadditions:block_testifi_bucks_white_wall'), item('actuallyadditions:block_testifi_bucks_white_wall'), item('actuallyadditions:block_testifi_bucks_white_wall')]
])

// Farmer
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_farmer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_farmer'), [
    [ore('plateEnoriEmpowered'), ore('gearSmallStainlessSteel'), ore('plateEnoriEmpowered')],
    [ore('plateStainlessSteel'), item('actuallyadditions:block_misc:9'), ore('plateStainlessSteel')],
    [ore('plateEnoriEmpowered'), ore('circuitMv'), ore('plateEnoriEmpowered')]
])

// Shock Absorber
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_shock_suppressor'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_shock_suppressor'), [
    [ore('plateObsidian'), ore('plateAAVoid'), ore('plateObsidian')],
    [ore('plateAAVoid'), item('actuallyadditions:item_misc:8'), ore('plateAAVoid')],
    [ore('plateObsidian'), item('gregtech:meta_item_1:732'), ore('plateObsidian')]
])

// Player Interface
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_player_interface'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_player_interface'), [
    [ore('plateStainlessSteel'), ore('itemSkull'), ore('plateStainlessSteel')],
    [item('actuallyadditions:item_crystal_empowered:2'), item('actuallyadditions:block_misc:8'), item('actuallyadditions:item_crystal_empowered:2')],
    [ore('plateStainlessSteel'), item('actuallyadditions:item_misc:8'), ore('plateStainlessSteel')]
])

// Item Interface
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_item_viewer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_item_viewer'), [
    [item('actuallyadditions:item_misc:7'), ore('plateSteel'), item('actuallyadditions:item_misc:7')],
    [ore('plateRestonia'), ore('chestWood'), ore('plateRestonia')],
    [item('actuallyadditions:item_misc:7'), ore('plateSteel'), item('actuallyadditions:item_misc:7')]
])

// [Energy Laser Relay]*4 from [4x Energetic Alloy Wire][+4]
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:block_laser_relay'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_laser_relay'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay') * 4, [
    [null, ore('ringEnergeticAlloy'), null],
    [ore('screwRefinedObsidian'), ore('wireGtQuadrupleEnergeticAlloy'), ore('screwRefinedObsidian')],
    [ore('plateAAVoidEmpowered'), ore('lightPlateEnergeticAlloy'), ore('plateAAVoidEmpowered')]
])

// [Advanced Energy Laser Relay]*4 from [8x Energetic Alloy Wire][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_laser_relay_advanced'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay_advanced') * 4, [
    [null, ore('ringEnergeticAlloy'), null],
    [ore('screwDarkSteel'), ore('wireGtOctalEnergeticAlloy'), ore('screwDarkSteel')],
    [ore('plateAAVoidEmpowered'), ore('lightPlateEnergeticAlloy'), ore('plateAAVoidEmpowered')]
])

// [Extreme Energy Laser Relay]*4 from [16x Energetic Alloy Wire][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_laser_relay_extreme'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay_extreme') * 4, [
    [null, ore('ringEnergeticAlloy'), null],
    [ore('screwDarkSteel'), ore('wireGtHexEnergeticAlloy'), ore('screwDarkSteel')],
    [ore('plateAAVoidEmpowered'), ore('heavyPlateEnergeticAlloy'), ore('plateAAVoidEmpowered')]
])

// [Fluid Laser Relay]*4 from [Huge Polyethylene (PE) Fluid Pipe][+4]
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:block_laser_relay_fluids'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay_fluids') * 4, [
    [null, ore('ringManasteel'), null],
    [ore('screwRefinedObsidian'), ore('pipeHugeFluidPlastic'), ore('screwRefinedObsidian')],
    [ore('plateAAVoidEmpowered'), ore('lightPlatePlastic'), ore('plateAAVoidEmpowered')]
])

// [Item Laser Relay]*4 from [Restrictive Electrum Item Pipe][+4]
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:block_laser_relay_item'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay_item') * 4, [
    [null, ore('ringTerrastone'), null],
    [ore('screwRefinedObsidian'), ore('pipeNormalRestrictiveElectrum'), ore('screwRefinedObsidian')],
    [ore('plateAAVoidEmpowered'), ore('lightPlateTerrastone'), ore('plateAAVoidEmpowered')]
])

// [Advanced Item Laser Relay]*4 from [Large Restrictive Electrum Item Pipe][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_laser_relay_item_whitelist'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_laser_relay_item_whitelist') * 4, [
    [null, ore('ringTerrastone'), null],
    [ore('screwRefinedObsidian'), ore('pipeLargeRestrictiveElectrum'), ore('screwRefinedObsidian')],
    [ore('plateAAVoidEmpowered'), ore('heavyPlateTerrastone'), ore('plateAAVoidEmpowered')]
])

// Ranged Collector
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_ranged_collector'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_ranged_collector'), [
    [ore('plateBrass'), ore('plateAAVoid'), ore('plateBrass')],
    [ore('endorCrystal'), ore('hopper'), ore('endorCrystal')],
    [ore('plateBrass'), item('actuallyadditions:block_misc:9'), ore('plateBrass')]
])

// Long-Range Breaker
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_directional_breaker'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_directional_breaker'), [
    [ore('lightPlateGold'), ore('plateBrass'), ore('lightPlateGold')],
    [item('gregtech:meta_item_1:172'), item('actuallyadditions:block_breaker'), item('actuallyadditions:block_crystal:0')],
    [ore('lightPlateGold'), ore('plateBrass'), ore('lightPlateGold')]
])

// Experience Solidifier
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_xp_solidifier'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_xp_solidifier'), [
    [ore('plateDiamatineEmpowered'), item('actuallyadditions:item_solidified_experience'), ore('plateDiamatineEmpowered')],
    [item('actuallyadditions:item_misc:8'), item('forestry:hardened_machine'), item('actuallyadditions:item_misc:8')],
    [ore('plateDiamatineEmpowered'), item('actuallyadditions:item_solidified_experience'), ore('plateDiamatineEmpowered')]
])

// Energizer
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_energizer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_energizer'), [
    [ore('plateRestonia'), ore('plateBatteryAlloy'), ore('plateRestonia')],
    [item('actuallyadditions:item_misc:8'), item('actuallyadditions:block_misc:9'), item('actuallyadditions:item_misc:8')],
    [ore('plateRestonia'), item('actuallyadditions:item_battery_double:0'), ore('plateRestonia')]
])

// Enervator
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_enervator'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_enervator'), [
    [ore('plateRestonia'), item('actuallyadditions:item_battery_double:0'), ore('plateRestonia')],
    [item('actuallyadditions:item_misc:8'), item('actuallyadditions:block_misc:9'), item('actuallyadditions:item_misc:8')],
    [ore('plateRestonia'), ore('plateBatteryAlloy'), ore('plateRestonia')]
])

// Phantomface
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_phantomface'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_phantomface'), [
    [ore('plateStainlessSteel'), ore('chest'), ore('plateStainlessSteel')],
    [ore('plateDiamatineEmpowered'), item('forestry:hardened_machine'), ore('plateDiamatineEmpowered')],
    [ore('plateStainlessSteel'), item('actuallyadditions:item_misc:8'), ore('plateStainlessSteel')]
])

// Handheld Filler
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_filling_wand:0'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_filling_wand:0'), [
    [ore('EmpoweredEnoriCrystal'), ore('gearPalis'), ore('EmpoweredEnoriCrystal')],
    [ore('plateDiamatineEmpowered'), item('actuallyadditions:item_misc:8'), ore('plateDiamatineEmpowered')],
    [ore('screwSteel'), item('actuallyadditions:item_battery_triple:0'), ore('screwSteel')]
])

// ESD (Extraordinary Sample Deliverer)
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_inputter'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_inputter'), [
    [ore('plankWood'), ore('plankWood'), ore('plankWood')],
    [ore('plateAAVoid'), ore('hopper'), ore('plateAAVoid')],
    [ore('plankWood'), ore('plankWood'), ore('plankWood')]
])

// Advanced ESD (Express Sending Doughnut)
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_inputter_advanced'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_inputter_advanced'), [
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')],
    [ore('heavyPlateSteel'), item('actuallyadditions:block_inputter'), item('actuallyadditions:item_crystal_empowered:3')],
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')]
])

// Item Repairer (nbt() takes an SNBT string, not a Groovy map - confirmed by
// the doCall(String, Object[]) signature GroovyScript reported after the map version crashed)
def mendingBook = item('minecraft:enchanted_book').withNbt(nbt('{StoredEnchantments:[{lvl:1s,id:70s}]}'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_item_repairer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_item_repairer'), [
    [ore('heavyPlateSteel'), mendingBook, ore('heavyPlateSteel')],
    [item('actuallyadditions:item_misc:7'), item('actuallyadditions:block_misc:8'), item('actuallyadditions:item_misc:7')],
    [ore('heavyPlateSteel'), mendingBook, ore('heavyPlateSteel')]
])

// Auto-Breaker
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_breaker'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_breaker'), [
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')],
    [ore('heavyPlateSteel'), item('actuallyadditions:item_misc:7'), item('actuallyadditions:item_crystal')],
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')]
])

// Auto-Placer
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_placer'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_placer'), [
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')],
    [ore('heavyPlateSteel'), item('actuallyadditions:item_misc:7'), item('contenttweaker:endor_crystal')],
    [ore('plateSteel'), ore('plateSteel'), ore('plateSteel')]
])

// Automatic Precision Dropper
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_dropper'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_dropper'), [
    [ore('plateSteel'), item('actuallyadditions:item_misc:7'), ore('plateSteel')],
    [ore('heavyPlateSteel'), item('minecraft:dropper'), item('actuallyadditions:item_crystal:1')],
    [ore('plateSteel'), item('actuallyadditions:item_misc:7'), ore('plateSteel')]
])

// Item Filter
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_filter'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_filter'), [
    [ore('barsIron'), ore('barsIron'), ore('barsIron')],
    [ore('barsIron'), ore('gearBlackQuartz'), ore('barsIron')],
    [ore('barsIron'), ore('barsIron'), ore('barsIron')]
])

// Ring
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:6'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:6'), [
    [ore('plateIron'), ore('lightPlateGold'), ore('plateIron')],
    [ore('lightPlateGold'), ore('dustGlowstone'), ore('lightPlateGold')],
    [ore('plateIron'), ore('lightPlateGold'), ore('plateIron')]
])

// Empty Cup
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:14'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:14'), [
    [ore('plateBrick'), null, ore('plateBrick')],
    [ore('plateBrick'), ore('cropCoffee'), ore('plateBrick')],
    [ore('plateBrick'), ore('plateBrick'), ore('plateBrick')]
])

//Ender Star
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:19'))
mods.gregtech.mixer.recipeBuilder()
    .inputs(ore('gemNetherStar'), item('minecraft:dragon_breath'), ore('gemFlawlessBlackQuartz'), ore('empoweredEndorCrystal'))
    .outputs(item('actuallyadditions:item_misc:19'))
    .duration(400)
    .EUt(250)
    .buildAndRegister()

// [Phantom Connector] from [Neutronium Screwdriver][+5]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_phantom_connector'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_phantom_connector'), [
    [ore('gtceScrewdrivers'), ore('EmpoweredAAVoidCrystal'), ore('empoweredEndorCrystal')],
    [ore('screwSteel'), ore('empoweredEndorCrystal'), ore('EmpoweredAAVoidCrystal')],
    [ore('stickPulsatingIron'), ore('screwSteel'), ore('gtceWireCutters')]
])

// [Lens] from [Exquisite Black Quartz][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:18'))
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:item_misc:18'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:18'), [
    [ore('plateSoularium'), ore('fusedQuartz'), ore('plateSoularium')],
    [ore('fusedQuartz'), ore('gemExquisiteBlackQuartz'), ore('fusedQuartz')],
    [ore('plateSoularium'), ore('fusedQuartz'), ore('plateSoularium')]
])

// [Lens of Color] from [Lens][+5]
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:item_color_lens'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_color_lens'), [
    [ore('lightPlateSoularium'), item('gregtech:meta_item_1:434'), ore('lightPlateSoularium')],
    [item('gregtech:meta_item_1:435'), item('actuallyadditions:item_misc:18'), item('gregtech:meta_item_1:432')],
    [ore('lightPlateSoularium'), item('gregtech:meta_item_1:425'), ore('lightPlateSoularium')]
])

// [Lens of Detonation] from [Lens][+3]
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:item_explosion_lens'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_explosion_lens'), [
    [ore('lightPlateSoularium'), item('mekanism:obsidiantnt'), ore('lightPlateSoularium')],
    [item('cyclicmagic:ender_tnt_6'), item('actuallyadditions:item_misc:18'), item('cyclicmagic:ender_tnt_6')],
    [ore('lightPlateSoularium'), item('mekanism:obsidiantnt'), ore('lightPlateSoularium')]
])

// [Lens of Certain Death] from [Lens][+3]
def steeleafSwordBlade = item('tconstruct:sword_blade').withNbt(nbt('{Material:"steeleaf"}'))
def harmingPotion = item('minecraft:potion').withNbt(nbt('{Potion:"cofhcore:harming4"}'))
mods.actuallyadditions.atomicReconstructor.removeByOutput(item('actuallyadditions:item_damage_lens'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_damage_lens'), [
    [ore('lightPlateSoularium'), steeleafSwordBlade, ore('lightPlateSoularium')],
    [harmingPotion, item('actuallyadditions:item_misc:18'), harmingPotion],
    [ore('lightPlateSoularium'), steeleafSwordBlade, ore('lightPlateSoularium')]
])

// [Lens of Disenchanting] from [Lens][+3]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_disenchanting_lens'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_disenchanting_lens'), [
    [ore('plateDiamatineEmpowered'), item('minecraft:enchanting_table'), ore('plateDiamatineEmpowered')],
    [ore('plateEnchanted'), item('actuallyadditions:item_misc:18'), ore('plateEnchanted')],
    [ore('plateDiamatineEmpowered'), item('minecraft:enchanting_table'), ore('plateDiamatineEmpowered')]
])

// [Coal Generator] from [Steel Hull][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_coal_generator'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_coal_generator'), [
    [ore('plateSteel'), item('magneticraft:copper_coil'), ore('plateSteel')],
    [ore('ingotCarbon'), item('gregtech:steam_casing:2'), ore('ingotCarbon')],
    [ore('plateSteel'), ore('craftingFurnace'), ore('plateSteel')]
])

// [Compost] from [Empty Wooden Form][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_compost'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_compost'), [
    [ore('boltWood'), null, ore('boltWood')],
    [item('minecraft:ladder'), item('gregtech:meta_item_1:347'), item('minecraft:ladder')],
    [item('gregtech:planks:1'), ore('frameGtTreatedWood'), item('gregtech:planks:1')]
])

// [Canola Press] from [Steel Hull][+5]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_canola_press'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_canola_press'), [
    [item('pyrotech:material:23'), ore('craftingPiston'), item('pyrotech:material:23')],
    [item('gregtech:planks:1'), item('gregtech:steam_casing:2'), item('gregtech:planks:1')],
    [ore('compressed1xCobblestone'), item('actuallyadditions:item_misc:8'), ore('compressed1xCobblestone')]
])

// [Fermenting Barrel] from [Wooden Barrel][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_fermenting_barrel'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_fermenting_barrel'), [
    [item('pyrotech:material:23'), item('pyrotech:barrel_lid'), item('pyrotech:material:23')],
    [ore('glodCrystal'), item('exnihilocreatio:block_barrel0'), ore('glodCrystal')],
    [item('gregtech:planks:1'), item('gregtech:planks:1'), item('gregtech:planks:1')]
])

// [Knife Handle] from [Treated Wood Stick][+1]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:3'))
mods.minecraft.crafting.addShapeless(item('actuallyadditions:item_misc:3'), [ore('stickTreatedWood'), ore('gtceSaws')])

// [Knife Blade] from [Iron Bolt][+1]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:2'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:2'), [
    [null, item('pyrotech:material:19')],
    [null, item('pyrotech:material:19')],
    [null, ore('boltIron')]
])

// [Knife] from [Durable Twine][+3]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_knife'))
mods.minecraft.crafting.addShapeless(item('actuallyadditions:item_knife'), [
    item('actuallyadditions:item_misc:3'), item('actuallyadditions:item_misc:2'), ore('materialPressedwax'), item('pyrotech:material:26')
])

// Bio-Mesh and Fertilizer Tooltip - left in RecipesAndFixes.zs

// [Drill Core] from [Electronic Circuit][+4]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_misc:16'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_misc:16'), [
    [null, ore('plateEnori'), null],
    [ore('wireFineRedAlloy'), ore('circuitLv'), ore('wireFineAluminium')],
    [ore('plateEnori'), item('gregtech:meta_item_1:446'), ore('plateEnori')]
])

// [Drill] from [Drill Core][+5]
def drillHead = item('actuallyadditions:item_drill:3').withNbt(nbt('{Energy:0}'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill:3'))
mods.minecraft.crafting.addShaped(drillHead, [
    [ore('plateDiamatine'), ore('toolHeadDrillDiamond'), ore('plateDiamatine')],
    [item('actuallyadditions:item_misc:8'), item('actuallyadditions:item_misc:16'), item('actuallyadditions:item_misc:8')],
    [item('actuallyadditions:block_crystal:5'), item('forestry:thermionic_tubes:5'), item('actuallyadditions:block_crystal:5')]
])

// [Drill Speed Augment I] from [Restonia Gear][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_speed'))
def sugarIngredient = ore('listAllsugar').or(ore('dustSugar'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_speed'), [
    [ore('plateEnori'), sugarIngredient, ore('plateEnori')],
    [sugarIngredient, ore('gearRestonia'), sugarIngredient],
    [ore('plateEnori'), sugarIngredient, ore('plateEnori')]
])

// [Drill Speed Augment II] from [Cake][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_speed_ii'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_speed_ii'), [
    [ore('plateEnori'), sugarIngredient, ore('plateEnori')],
    [sugarIngredient, item('minecraft:cake'), sugarIngredient],
    [ore('plateEnori'), sugarIngredient, ore('plateEnori')]
])

// [Drill Speed Augment III] from [Diamantine Gear][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_speed_iii'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_speed_iii'), [
    [ore('plateEnori'), ore('gemSugar'), ore('plateEnori')],
    [ore('gemSugar'), ore('gearDiamatine'), ore('gemSugar')],
    [ore('plateEnori'), ore('gemSugar'), ore('plateEnori')]
])

// [Drill Silk Touch Augment] from [Silky Propolis][+3]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_silk_touch'))
def emeradicCrystal = ore('EmeradicCrystal').or(ore('crystalEmeraldic'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_silk_touch'), [
    [ore('plateEnori'), item('forestry:crafting_material:3'), ore('plateEnori')],
    [emeradicCrystal, item('forestry:propolis:3'), emeradicCrystal],
    [ore('plateEnori'), item('forestry:crafting_material:3'), ore('plateEnori')]
])

// [Drill Fortune Augment I] from [Experience Imbue][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_fortune'))
def palisCrystal = ore('PalisCrystal').or(ore('crystalPalis'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_fortune'), [
    [ore('plateEnori'), palisCrystal, ore('plateEnori')],
    [palisCrystal, item('randomthings:imbue:2'), palisCrystal],
    [ore('plateEnori'), palisCrystal, ore('plateEnori')]
])

// [Drill Fortune Augment II (Gives Fortune III!)] from [Experience Imbue][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_fortune_ii'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_fortune_ii'), [
    [ore('plateEnori'), ore('EmpoweredPalisCrystal'), ore('plateEnori')],
    [ore('EmpoweredPalisCrystal'), item('randomthings:imbue:2'), ore('EmpoweredPalisCrystal')],
    [ore('plateEnori'), ore('EmpoweredPalisCrystal'), ore('plateEnori')]
])

// [Drill Block Placing Augment] from [Piston][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_block_placing'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_block_placing'), [
    [ore('plateEnori'), ore('compressed1xStone'), ore('plateEnori')],
    [ore('compressed1xStone'), ore('craftingPiston'), ore('compressed1xStone')],
    [ore('plateEnori'), ore('compressed1xStone'), ore('plateEnori')]
])

// Bio Coal into Carbon Brick and also into Carbon Dust =======
mods.gregtech.compressor.recipeBuilder()
    .inputs(item('actuallyadditions:item_misc:22') * 9)
    .outputs(ore('ingotCarbon').first)
    .duration(200)
    .EUt(4)
    .buildAndRegister()

mods.gregtech.extractor.recipeBuilder()
    .inputs(item('actuallyadditions:item_misc:22'))
    .outputs(ore('dustCarbon').first)
    .duration(80)
    .EUt(4)
    .buildAndRegister()

// Biomass from Plant Balls =======
mods.actuallyadditions.compost.removeByOutput(item('actuallyadditions:item_misc:21'))
mods.actuallyadditions.compost.recipeBuilder()
    .input(item('gregtech:meta_item_1:439'))
    .output(item('actuallyadditions:item_misc:21'))
    .inputDisplay(blockstate('floralchemy:flooded_soil'))
    .outputDisplay(blockstate('minecraft:dirt'))
    .register()

// [Drill Mining Augment I] from [Black Quartz Gear][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_three_by_three'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_three_by_three'), [
    [ore('plateEnori'), ore('lightPlateSteel'), ore('plateEnori')],
    [ore('lightPlateSteel'), ore('gearBlackQuartz'), ore('lightPlateSteel')],
    [ore('plateEnori'), ore('lightPlateSteel'), ore('plateEnori')]
])

// [Drill Mining Augment II] from [Black Quartz Gear][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_drill_upgrade_five_by_five'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_drill_upgrade_five_by_five'), [
    [ore('plateEnori'), ore('lightPlateGoldAlloy'), ore('plateEnori')],
    [ore('lightPlateGoldAlloy'), ore('gearBlackQuartz'), ore('lightPlateGoldAlloy')],
    [ore('plateEnori'), ore('lightPlateGoldAlloy'), ore('plateEnori')]
])

// [Chest To Storage Crate Upgrade] from [Wood Chassis][+2]
def ironLargePlate = item('tconstruct:large_plate').withNbt(nbt('{Material:"iron"}'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_chest_to_crate_upgrade'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_chest_to_crate_upgrade'), [
    [ironLargePlate, ore('endorCrystal'), ironLargePlate],
    [ore('endorCrystal'), item('actuallyadditions:block_misc:4'), ore('endorCrystal')],
    [ironLargePlate, ore('endorCrystal'), ironLargePlate]
])

// [Small To Medium Storage Crate Upgrade] from [Chest To Storage Crate Upgrade][+2]
def electrumLargePlate = item('tconstruct:large_plate').withNbt(nbt('{Material:"electrum"}'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_small_to_medium_crate_upgrade'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_small_to_medium_crate_upgrade'), [
    [electrumLargePlate, ore('empoweredEndorCrystal'), electrumLargePlate],
    [ore('empoweredEndorCrystal'), item('actuallyadditions:item_chest_to_crate_upgrade'), ore('empoweredEndorCrystal')],
    [electrumLargePlate, ore('empoweredEndorCrystal'), electrumLargePlate]
])

// [Medium To Large Storage Crate Upgrade] from [Small To Medium Storage Crate Upgrade][+2]
def diamantineLargePlate = item('tconstruct:large_plate').withNbt(nbt('{Material:"diamantine_crystal"}'))
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:item_medium_to_large_crate_upgrade'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:item_medium_to_large_crate_upgrade'), [
    [diamantineLargePlate, ore('empoweredBlockEndorCrystal'), diamantineLargePlate],
    [ore('empoweredBlockEndorCrystal'), item('actuallyadditions:item_small_to_medium_crate_upgrade'), ore('empoweredBlockEndorCrystal')],
    [diamantineLargePlate, ore('empoweredBlockEndorCrystal'), diamantineLargePlate]
])

// Laser Upgrade Tooltips - left in RecipesAndFixes.zs

// [Fishing Net] from [Resources Fisher][+2]
mods.minecraft.crafting.removeByOutput(item('actuallyadditions:block_fishing_net'))
mods.minecraft.crafting.addShaped(item('actuallyadditions:block_fishing_net'), [
    [ore('stickGold'), ore('glodCrystal'), ore('stickGold')],
    [ore('glodCrystal'), item('industrialforegoing:water_resources_collector'), ore('glodCrystal')],
    [ore('stickGold'), ore('glodCrystal'), ore('stickGold')]
])
