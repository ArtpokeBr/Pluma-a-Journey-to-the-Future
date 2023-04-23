import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting as Casting;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;
import mods.astralsorcery.Altar;
import mods.nuclearcraft.Melter;

//Function to add recipes automatically for Gears and Plates created with Contenttweaker.
function makeContenttweakerIntegration (inputMaterial as IItemStack, plate as IItemStack, gear as IItemStack, additionalStick as IItemStack){  


        //Making the Plates
        bender.recipeBuilder()
            .inputs(inputMaterial)
            .circuit(0)
            .outputs(plate)
            .duration(140)
            .EUt(24)
        .buildAndRegister();

        alloy.recipeBuilder()
            .inputs(inputMaterial * 2)
            .notConsumable(<gregtech:meta_item_1:12>) 
            .outputs(plate)
            .duration(800)
            .EUt(32)
        .buildAndRegister();

        extruder.recipeBuilder()
            .inputs(inputMaterial * 1)
            .notConsumable(<gregtech:meta_item_1:31>)
            .outputs(plate)
            .duration(80)
            .EUt(60)
            .buildAndRegister();



        //Making the Gears
        recipes.addShaped(gear * 1, 
        [[additionalStick, plate, additionalStick], 
        [plate, <ore:gtceWrenches>, plate], 
        [additionalStick, plate, additionalStick]]);

        alloy.recipeBuilder()
        .inputs(inputMaterial * 8)
        .notConsumable(<gregtech:meta_item_1:13>) 
        .outputs(gear)
        .duration(1000)
        .EUt(32)
        .buildAndRegister();

        extruder.recipeBuilder()
        .inputs(inputMaterial * 4)
        .notConsumable(<gregtech:meta_item_1:52>)
        .outputs(gear)
        .duration(80)
        .EUt(60)
        .buildAndRegister();  
}

//Function to add Block Recipes for a resource that contains a block, but it block doesn't follow the GT way of things.

function makeBlockIntegration (inputMaterial as IItemStack, outputBlock as IItemStack, fluidMaterial as ILiquidStack){

        alloy.recipeBuilder()
        .inputs(inputMaterial * 9)
        .notConsumable(<gregtech:meta_item_1:18>) 
        .outputs(outputBlock)
        .duration(5)
        .EUt(28)
        .buildAndRegister();

        extractor.recipeBuilder()
        .inputs(outputBlock)
        .fluidOutputs(fluidMaterial*1296)
        .duration(504)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 1296)
        .notConsumable(<gregtech:meta_item_1:18>) 
        .outputs(outputBlock)
        .duration(56)
        .EUt(7)
        .buildAndRegister();

        compressor.recipeBuilder()
        .inputs(inputMaterial * 9)
        .outputs(outputBlock)
        .duration(300)
        .EUt(2)
        .buildAndRegister();

        extruder.recipeBuilder()
        .inputs(inputMaterial * 9)
        .notConsumable(<gregtech:meta_item_1:43>) 
        .outputs(outputBlock)
        .duration(10)
        .EUt(56)
        .buildAndRegister();
}

function makeBlockIntegrationWithoutFluid (inputMaterial as IItemStack, outputBlock as IItemStack){

        alloy.recipeBuilder()
        .inputs(inputMaterial * 9)
        .notConsumable(<gregtech:meta_item_1:18>) 
        .outputs(outputBlock)
        .duration(5)
        .EUt(28)
        .buildAndRegister();

        compressor.recipeBuilder()
        .inputs(inputMaterial * 9)
        .outputs(outputBlock)
        .duration(300)
        .EUt(2)
        .buildAndRegister();

        extruder.recipeBuilder()
        .inputs(inputMaterial * 9)
        .notConsumable(<gregtech:meta_item_1:43>) 
        .outputs(outputBlock)
        .duration(10)
        .EUt(56)
        .buildAndRegister();
}
function makeBlockIntegrationSimple (inputMaterial as IItemStack, outputBlock as IItemStack){

        compressor.recipeBuilder()
        .inputs(inputMaterial * 9)
        .outputs(outputBlock)
        .duration(300)
        .EUt(2)
        .buildAndRegister();

}

function makeFluidIngotIntegration (inputMaterial as IItemStack, fluidMaterial as ILiquidStack){

        extractor.recipeBuilder()
        .inputs(inputMaterial)
        .fluidOutputs(fluidMaterial*144)
        .duration(56)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 144)
        .notConsumable(<gregtech:meta_item_1:16>) 
        .outputs(inputMaterial)
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

function makeFluidNuggetIntegration(inputMaterial as IItemStack, fluidMaterial as ILiquidStack){

        extractor.recipeBuilder()
        .inputs(inputMaterial)
        .fluidOutputs(fluidMaterial*16)
        .duration(4)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 16)
        .notConsumable(<gregtech:meta_item_1:19>) 
        .outputs(inputMaterial)
        .duration(12)
        .EUt(7)
        .buildAndRegister();
}

function makeDustIntegration(inputIngot as IItemStack, inputBlock as IItemStack, outputDust as IItemStack){

        macerator.recipeBuilder()
        .inputs(inputIngot)
        .outputs(outputDust*1)
        .duration(56)
        .EUt(2)
        .buildAndRegister();

        macerator.recipeBuilder()
        .inputs(inputBlock)
        .outputs(outputDust*9)
        .duration(56)
        .EUt(2)
        .buildAndRegister();
}

function makeFluidPlateIntegration (inputMaterial as IItemStack, fluidMaterial as ILiquidStack){

        extractor.recipeBuilder()
        .inputs(inputMaterial)
        .fluidOutputs(fluidMaterial*144)
        .duration(56)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 144)
        .notConsumable(<gregtech:meta_item_1:12>) 
        .outputs(inputMaterial)
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

function makeFluidGearIntegration (inputMaterial as IItemStack, fluidMaterial as ILiquidStack){

        extractor.recipeBuilder()
        .inputs(inputMaterial)
        .fluidOutputs(fluidMaterial*576)
        .duration(224)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 576)
        .notConsumable(<gregtech:meta_item_1:13>) 
        .outputs(inputMaterial)
        .duration(100)
        .EUt(7)
        .buildAndRegister();
}

function makeGregTechMaterialFluidIntegration (inputIngot as IItemStack, inputNugget as IItemStack, inputBlock as IItemStack, inputPlate as IItemStack, inputGear as IItemStack, fluidMaterial as ILiquidStack){

        # Ingot
        extractor.recipeBuilder()
        .inputs(inputIngot)
        .fluidOutputs(fluidMaterial*144)
        .duration(56)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 144)
        .notConsumable(<gregtech:meta_item_1:16>) 
        .outputs(inputIngot)
        .duration(20)
        .EUt(7)
        .buildAndRegister();


        # Block
        extractor.recipeBuilder()
        .inputs(inputBlock)
        .fluidOutputs(fluidMaterial*1296)
        .duration(504)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 1296)
        .notConsumable(<gregtech:meta_item_1:18>) 
        .outputs(inputBlock)
        .duration(56)
        .EUt(7)
        .buildAndRegister();


        # Nugget
        extractor.recipeBuilder()
        .inputs(inputNugget)
        .fluidOutputs(fluidMaterial*16)
        .duration(4)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 16)
        .notConsumable(<gregtech:meta_item_1:19>) 
        .outputs(inputNugget)
        .duration(12)
        .EUt(7)
        .buildAndRegister();


        # Plate
        extractor.recipeBuilder()
        .inputs(inputPlate)
        .fluidOutputs(fluidMaterial*144)
        .duration(56)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 144)
        .notConsumable(<gregtech:meta_item_1:12>) 
        .outputs(inputPlate)
        .duration(20)
        .EUt(7)
        .buildAndRegister();


        # Gear
        extractor.recipeBuilder()
        .inputs(inputGear)
        .fluidOutputs(fluidMaterial*576)
        .duration(224)
        .EUt(30)
        .buildAndRegister();

        solidifier.recipeBuilder()
        .fluidInputs(fluidMaterial * 576)
        .notConsumable(<gregtech:meta_item_1:13>) 
        .outputs(inputGear)
        .duration(100)
        .EUt(7)
        .buildAndRegister();
}

function makeGemIntegration (inputGem as IItemStack, outputDust as IItemStack, outputFlawless as IItemStack, outputFluid as ILiquidStack){

        #Gem
        <recipemap:implosion_compressor>.recipeBuilder()
        .inputs(outputDust * 4)
        .property("explosives", 2)
        .outputs(inputGem)
        .duration(20)
        .EUt(30)
        .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
        .inputs(outputDust)
        .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
        .outputs(inputGem)
        .duration(24)
        .EUt(100)
        .buildAndRegister();

        // <recipemap:autoclave>.recipeBuilder()
        // .inputs(outputDust)
        // .fluidInputs(<liquid:distilled_water> * 200)
        // .outputs(inputGem)
        // .duration(24)
        // .EUt(2000)
        // .buildAndRegister();

        // <recipemap:autoclave>.recipeBuilder()
        // .inputs(outputDust)
        // .fluidInputs(<liquid:water> * 200)
        // .outputs(inputGem)
        // .duration(4000)
        // .EUt(24)
        // .buildAndRegister();

        #Dust
        macerator.recipeBuilder()
        .inputs(inputGem)
        .outputs(outputDust)
        .duration(196)
        .EUt(2)
        .buildAndRegister();

        #Flawless
        engraver.recipeBuilder()
        .inputs(inputGem*2)
        .notConsumable(<ore:craftingLensWhite>)
        .outputs(outputFlawless)
        .duration(600)
        .EUt(240)
        .buildAndRegister();

        #Fluid
        extractor.recipeBuilder()
        .inputs(inputGem)
        .fluidOutputs(outputFluid*144)
        .duration(56)
        .EUt(30)
        .buildAndRegister();

}

///////////////////////////////////////
//  Resources Ported from MorePlates //
///////////////////////////////////////

//Enori
makeContenttweakerIntegration(<ore:EnoriCrystal>.firstItem, <ore:plateEnori>.firstItem, <ore:gearEnori>.firstItem, <tconstruct:tool_rod>.withTag({Material: "enori_crystal"}));

//Restonia
makeContenttweakerIntegration(<ore:RestoniaCrystal>.firstItem, <ore:plateRestonia>.firstItem, <ore:gearRestonia>.firstItem, <tconstruct:tool_rod>.withTag({Material: "restonia_crystal"}));

//Void
makeContenttweakerIntegration(<ore:AAVoidCrystal>.firstItem, <ore:plateAAVoid>.firstItem, <ore:gearAAVoid>.firstItem, <tconstruct:tool_rod>.withTag({Material: "void_crystal"}));

//Emeradic
makeContenttweakerIntegration(<ore:EmeradicCrystal>.firstItem, <ore:plateEmeradic>.firstItem, <ore:gearEmeradic>.firstItem, <tconstruct:tool_rod>.withTag({Material: "emeraldic_crystal"}));

//Diamatine
makeContenttweakerIntegration(<ore:DiamantineCrystal>.firstItem, <ore:plateDiamatine>.firstItem, <ore:gearDiamatine>.firstItem, <tconstruct:tool_rod>.withTag({Material: "diamantine_crystal"}));

//Palis
makeContenttweakerIntegration(<ore:PalisCrystal>.firstItem, <ore:platePalis>.firstItem, <ore:gearPalis>.firstItem, <tconstruct:tool_rod>.withTag({Material: "palis_crystal"}));

//Fiery
recipes.remove(<ore:blockFiery>.firstItem);
makeContenttweakerIntegration(<ore:ingotFiery>.firstItem, <ore:plateFiery>.firstItem, <ore:gearFiery>.firstItem, <tconstruct:tool_rod>.withTag({Material: "fierymetal"}));
makeBlockIntegration(<ore:ingotFiery>.firstItem, <ore:blockFiery>.firstItem, <liquid:fierymetal>);
makeFluidIngotIntegration(<ore:ingotFiery>.firstItem, <liquid:fierymetal>);

//Ironwood
recipes.remove(<twilightforest:block_storage>);
makeContenttweakerIntegration(<ore:ingotIronwood>.firstItem, <ore:plateIronwood>.firstItem, <ore:gearIronwood>.firstItem, <tconstruct:tool_rod>.withTag({Material: "livingwood"}));
makeBlockIntegrationWithoutFluid(<ore:ingotIronwood>.firstItem, <twilightforest:block_storage>);

//Knightmetal
recipes.remove(<ore:blockKnightmetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotKnightmetal>.firstItem, <ore:plateKnightmetal>.firstItem, <ore:gearKnightmetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "knightmetal"}));
makeBlockIntegration(<ore:ingotKnightmetal>.firstItem, <ore:blockKnightmetal>.firstItem, <liquid:knightmetal>);
makeFluidIngotIntegration(<ore:ingotKnightmetal>.firstItem, <liquid:knightmetal>);

//Energetic Silver
makeContenttweakerIntegration(<ore:ingotEnergeticSilver>.firstItem, <ore:plateEnergeticSilver>.firstItem, <ore:gearEnergeticSilver>.firstItem, <tconstruct:tool_rod>.withTag({Material: "silver"}));

//Melodic Alloy
makeContenttweakerIntegration(<ore:ingotMelodicAlloy>.firstItem, <ore:plateMelodicAlloy>.firstItem, <ore:gearMelodicAlloy>.firstItem, <ore:stickEndSteel>.firstItem);

//Crystalline Pink Slime
makeContenttweakerIntegration(<ore:ingotCrystallinePinkSlime>.firstItem, <ore:plateCrystallinePinkSlime>.firstItem, <ore:gearCrystallinePinkSlime>.firstItem, <ore:stickChrome>.firstItem);

//Dark Soularium
makeContenttweakerIntegration(<simplyjetpacks:metaitemmods:12>, <ore:plateDarkSoularium>.firstItem, <ore:gearDarkSoularium>.firstItem, <ore:stickSoularium>.firstItem);

//Constantan (Uses the Contenttweaker Function aswell, besides not being added by Contentttweaker.)
makeContenttweakerIntegration(<ore:ingotConstantan>.firstItem, <ore:plateConstantan>.firstItem, <ore:gearConstantan>.firstItem, <tconstruct:tool_rod>.withTag({Material: "bronze"}));

recipes.remove(<thermalfoundation:material:292>);
recipes.remove(<thermalfoundation:storage_alloy:4>);

makeBlockIntegration(<ore:ingotConstantan>.firstItem, <ore:blockConstantan>.firstItem, <liquid:constantan>);

//Arctic Fur
recipes.remove(<twilightforest:block_storage:3>);
makeBlockIntegrationSimple(<twilightforest:arctic_fur>, <twilightforest:block_storage:3>);

//Caminite
recipes.remove(<twilightforest:block_storage:4>);
makeBlockIntegrationSimple(<ore:carminite>.firstItem, <twilightforest:block_storage:4>);

//Steelleaf
recipes.remove(<ore:blockSteeleaf>.firstItem);
makeBlockIntegrationWithoutFluid(<ore:ingotSteeleaf>.firstItem, <ore:blockSteeleaf>.firstItem);

// Botania Quartz ===============================

# Lavender
makeContenttweakerIntegration(<ore:quartzLavender>.firstItem, <ore:plateLavenderQuartz>.firstItem, <ore:gearLavenderQuartz>.firstItem, <ore:stickCertusQuartz>.firstItem);

# Elven
makeContenttweakerIntegration(<ore:quartzElven>.firstItem, <ore:plateElvenQuartz>.firstItem, <ore:gearElvenQuartz>.firstItem, <ore:stickQuartzite>.firstItem);

# Mana
makeContenttweakerIntegration(<ore:quartzMana>.firstItem, <ore:plateManaQuartz>.firstItem, <ore:gearManaQuartz>.firstItem, <ore:stickCertusQuartz>.firstItem);

# Red
makeContenttweakerIntegration(<ore:quartzRed>.firstItem, <ore:plateRedQuartz>.firstItem, <ore:gearRedQuartz>.firstItem, <ore:stickNetherQuartz>.firstItem);

# Blaze
makeContenttweakerIntegration(<ore:quartzBlaze>.firstItem, <ore:plateBlazeQuartz>.firstItem, <ore:gearBlazeQuartz>.firstItem, <ore:stickNetherQuartz>.firstItem);

# Sunny
makeContenttweakerIntegration(<ore:quartzSunny>.firstItem, <ore:plateSunnyQuartz>.firstItem, <ore:gearSunnyQuartz>.firstItem, <ore:stickQuartzite>.firstItem);

//AbyssalCraft Materials
makeFluidIngotIntegration(<ore:ingotDreadium>.firstItem, <liquid:moltendreadium>);
makeFluidIngotIntegration(<ore:ingotAbyssalnite>.firstItem, <liquid:moltenabyssalnite>);
makeFluidIngotIntegration(<ore:ingotLiquifiedCoralium>.firstItem, <liquid:moltenrefinedcoralium>);

makeBlockIntegration(<ore:ingotDreadium>.firstItem, <ore:blockDreadium>.firstItem, <liquid:moltendreadium>);
makeBlockIntegration(<ore:ingotAbyssalnite>.firstItem, <ore:blockAbyssalnite>.firstItem, <liquid:moltenabyssalnite>);
makeBlockIntegration(<ore:ingotLiquifiedCoralium>.firstItem, <ore:blockLiquifiedCoralium>.firstItem, <liquid:moltenrefinedcoralium>);


makeFluidNuggetIntegration(<ore:nuggetDreadium>.firstItem, <liquid:moltendreadium>);
makeFluidNuggetIntegration(<ore:nuggetAbyssalnite>.firstItem, <liquid:moltenabyssalnite>);
makeFluidNuggetIntegration(<ore:nuggetLiquifiedCoralium>.firstItem, <liquid:moltenrefinedcoralium>);

makeDustIntegration(<ore:ingotDreadium>.firstItem, <ore:blockDreadium>.firstItem, <ore:dustDreadium>.firstItem);
makeDustIntegration(<ore:ingotAbyssalnite>.firstItem, <ore:blockAbyssalnite>.firstItem, <ore:dustAbyssalnite>.firstItem);
makeDustIntegration(<ore:ingotLiquifiedCoralium>.firstItem, <ore:blockLiquifiedCoralium>.firstItem, <ore:dustLiquifiedCoralium>.firstItem);

//Extra Utils 2 Materials =====================

# Enchanted
recipes.remove(<extrautils2:simpledecorative>);
makeContenttweakerIntegration(<ore:ingotEnchantedMetal>.firstItem, <ore:plateEnchanted>.firstItem, <ore:gearEnchanted>.firstItem, <tconstruct:tool_rod>.withTag({Material: "xu_enchanted_metal"}));
makeFluidIngotIntegration (<ore:ingotEnchantedMetal>.firstItem, <liquid:xu_enchanted_metal>);
makeBlockIntegration(<ore:ingotEnchantedMetal>.firstItem, <ore:blockEnchantedMetal>.firstItem, <liquid:xu_enchanted_metal>);

# Demon
recipes.remove(<extrautils2:simpledecorative:1>);
makeContenttweakerIntegration(<ore:ingotDemonicMetal>.firstItem, <ore:plateDemonic>.firstItem, <ore:gearDemonic>.firstItem, <tconstruct:tool_rod>.withTag({Material: "xu_demonic_metal"}));
makeFluidIngotIntegration (<ore:ingotDemonicMetal>.firstItem, <liquid:xu_demonic_metal>);
makeBlockIntegration(<ore:ingotDemonicMetal>.firstItem, <ore:blockDemonicMetal>.firstItem, <liquid:xu_demonic_metal>);

# Evil Infused
recipes.remove(<extrautils2:simpledecorative:2>);
makeContenttweakerIntegration(<ore:ingotEvilMetal>.firstItem, <ore:plateEvilInfused>.firstItem, <ore:gearEvilInfused>.firstItem, <tconstruct:tool_rod>.withTag({Material: "xu_evil_metal"}));
makeFluidIngotIntegration (<ore:ingotEvilMetal>.firstItem, <liquid:xu_evil_metal>);
makeBlockIntegration(<ore:ingotEvilMetal>.firstItem, <ore:blockEvilMetal>.firstItem, <liquid:xu_evil_metal>);

////////////////////////////////////////////////////////
//  Resources Ported from MorePlates (Empowered Ones) //
////////////////////////////////////////////////////////

//Diamantine
makeContenttweakerIntegration(<ore:EmpoweredDiamantineCrystal>.firstItem, <ore:plateDiamatineEmpowered>.firstItem, <ore:gearDiamatineEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "diamantine_crystal"}));

//Emeradic
makeContenttweakerIntegration(<ore:EmpoweredEmeradicCrystal>.firstItem, <ore:plateEmeradicEmpowered>.firstItem, <ore:gearEmeradicEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "emeraldic_crystal"}));

//Enori
makeContenttweakerIntegration(<ore:EmpoweredEnoriCrystal>.firstItem, <ore:plateEnoriEmpowered>.firstItem, <ore:gearEnoriEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "enori_crystal"}));

//Palis
makeContenttweakerIntegration(<ore:EmpoweredPalisCrystal>.firstItem, <ore:platePalisEmpowered>.firstItem, <ore:gearPalisEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "palis_crystal"}));

//Restonia
makeContenttweakerIntegration(<ore:EmpoweredRestoniaCrystal>.firstItem, <ore:plateRestoniaEmpowered>.firstItem, <ore:gearRestoniaEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "restonia_crystal"}));

//Void
makeContenttweakerIntegration(<ore:EmpoweredAAVoidCrystal>.firstItem, <ore:plateAAVoidEmpowered>.firstItem, <ore:gearAAVoidEmpowered>.firstItem, <tconstruct:tool_rod>.withTag({Material: "void_crystal"}));

// Tinker's Evolution Materials

//Bound Metal
recipes.remove(<ore:gearBoundMetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotBoundMetal>.firstItem, <ore:plateBoundMetal>.firstItem, <ore:gearBoundMetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "bound_metal"}));
makeDustIntegration(<ore:ingotBoundMetal>.firstItem, <ore:blockBoundMetal>.firstItem, <ore:dustBoundMetal>.firstItem);
makeBlockIntegration(<ore:ingotBoundMetal>.firstItem, <ore:blockBoundMetal>.firstItem, <liquid:bound_metal>);
makeFluidIngotIntegration(<ore:ingotBoundMetal>.firstItem, <liquid:bound_metal>);
makeFluidNuggetIntegration(<ore:nuggetBoundMetal>.firstItem, <liquid:bound_metal>);

//Draconic Metal
recipes.remove(<ore:gearDraconicMetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotDraconicMetal>.firstItem, <ore:plateDraconicMetal>.firstItem, <ore:gearDraconicMetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "draconic_metal"}));
makeDustIntegration(<ore:ingotDraconicMetal>.firstItem, <ore:blockDraconicMetal>.firstItem, <ore:dustDraconicMetal>.firstItem);
makeBlockIntegration(<ore:ingotDraconicMetal>.firstItem, <ore:blockDraconicMetal>.firstItem, <liquid:draconic_metal>);
makeFluidIngotIntegration(<ore:ingotDraconicMetal>.firstItem, <liquid:draconic_metal>);
makeFluidNuggetIntegration(<ore:nuggetDraconicMetal>.firstItem, <liquid:draconic_metal>);

//Chaotic Metal
recipes.remove(<ore:gearChaoticMetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotChaoticMetal>.firstItem, <ore:plateChaoticMetal>.firstItem, <ore:gearChaoticMetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "chaotic_metal"}));
makeDustIntegration(<ore:ingotChaoticMetal>.firstItem, <ore:blockChaoticMetal>.firstItem, <ore:dustChaoticMetal>.firstItem);
makeBlockIntegration(<ore:ingotChaoticMetal>.firstItem, <ore:blockChaoticMetal>.firstItem, <liquid:chaotic_metal>);
makeFluidIngotIntegration(<ore:ingotChaoticMetal>.firstItem, <liquid:chaotic_metal>);
makeFluidNuggetIntegration(<ore:nuggetChaoticMetal>.firstItem, <liquid:chaotic_metal>);

//Wyvern Metal
recipes.remove(<ore:gearWyvernMetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotWyvernMetal>.firstItem, <ore:plateWyvernMetal>.firstItem, <ore:gearWyvernMetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "wyvern_metal"}));
makeDustIntegration(<ore:ingotWyvernMetal>.firstItem, <ore:blockWyvernMetal>.firstItem, <ore:dustWyvernMetal>.firstItem);
makeBlockIntegration(<ore:ingotWyvernMetal>.firstItem, <ore:blockWyvernMetal>.firstItem, <liquid:wyvern_metal>);
makeFluidIngotIntegration(<ore:ingotWyvernMetal>.firstItem, <liquid:wyvern_metal>);
makeFluidNuggetIntegration(<ore:nuggetWyvernMetal>.firstItem, <liquid:wyvern_metal>);

//Primordial Metal
recipes.remove(<ore:gearPrimordial>.firstItem);
makeContenttweakerIntegration(<ore:ingotPrimordial>.firstItem, <ore:platePrimordial>.firstItem, <ore:gearPrimordial>.firstItem, <tconstruct:tool_rod>.withTag({Material: "primal_metal"}));
makeDustIntegration(<ore:ingotPrimordial>.firstItem, <ore:blockPrimordial>.firstItem, <ore:dustPrimordial>.firstItem);
makeBlockIntegration(<ore:ingotPrimordial>.firstItem, <ore:blockPrimordial>.firstItem, <liquid:primal_metal>);
makeFluidIngotIntegration(<ore:ingotPrimordial>.firstItem, <liquid:primal_metal>);
makeFluidNuggetIntegration(<ore:nuggetPrimordial>.firstItem, <liquid:primal_metal>);

//Sentient Metal
recipes.remove(<ore:gearSentientMetal>.firstItem);
makeContenttweakerIntegration(<ore:ingotSentientMetal>.firstItem, <ore:plateSentientMetal>.firstItem, <ore:gearSentientMetal>.firstItem, <tconstruct:tool_rod>.withTag({Material: "sentient_metal"}));
makeDustIntegration(<ore:ingotSentientMetal>.firstItem, <ore:blockSentientMetal>.firstItem, <ore:dustSentientMetal>.firstItem);
makeBlockIntegration(<ore:ingotSentientMetal>.firstItem, <ore:blockSentientMetal>.firstItem, <liquid:sentient_metal>);
makeFluidIngotIntegration(<ore:ingotSentientMetal>.firstItem, <liquid:sentient_metal>);
makeFluidNuggetIntegration(<ore:nuggetSentientMetal>.firstItem, <liquid:sentient_metal>);

//Mana Infused Ingot -----> Mithril

//Mithril (Uses the Contenttweaker Function aswell, besides not being added by Contentttweaker.)
recipes.remove(<thermalfoundation:material:264>);
makeContenttweakerIntegration(<ore:ingotMithril>.firstItem, <ore:plateMithril>.firstItem, <ore:gearMithril>.firstItem, <tconstruct:tool_rod>.withTag({Material: "cobalt"}));
makeBlockIntegrationWithoutFluid (<ore:ingotMithril>.firstItem, <ore:blockMithril>.firstItem);
makeDustIntegration(<ore:ingotMithril>.firstItem, <ore:blockMithril>.firstItem, <ore:dustMithril>.firstItem);

##### Fixing Materials from Advanced Rocketry ##### =========================

//Titanium Aluminide
makeContenttweakerIntegration (<ore:ingotTitaniumAluminide>.firstItem, <ore:plateTitaniumAluminide>.firstItem, <ore:gearTitaniumAluminide>.firstItem, <ore:stickTitaniumAluminide>.firstItem);
makeDustIntegration(<ore:ingotTitaniumAluminide>.firstItem, <ore:blockTitaniumAluminide>.firstItem, <ore:dustTitaniumAluminide>.firstItem);

extruder.recipeBuilder()
    .inputs([<ore:ingotTitaniumAluminide>])
    .notConsumable(<gregtech:meta_item_1:32>)
    .outputs(<ore:stickTitaniumAluminide>.firstItem * 2)
    .duration(214)
    .EUt(48)
.buildAndRegister();

//Titanium Iridium
makeContenttweakerIntegration (<ore:ingotTitaniumIridium>.firstItem, <ore:plateTitaniumIridium>.firstItem, <ore:gearTitaniumIridium>.firstItem, <ore:stickTitaniumIridium>.firstItem);
makeDustIntegration(<ore:ingotTitaniumIridium>.firstItem, <ore:blockTitaniumIridium>.firstItem, <ore:dustTitaniumIridium>.firstItem);

extruder.recipeBuilder()
    .inputs([<ore:ingotTitaniumIridium>])
    .notConsumable(<gregtech:meta_item_1:32>)
    .outputs(<ore:stickTitaniumIridium>.firstItem * 2)
    .duration(214)
    .EUt(48)
.buildAndRegister();

// ============== //

// # Starmetal
recipes.remove(<astraladditions:block_starmetal>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/block_starmetal");
mods.nuclearcraft.Melter.removeRecipeWithInput(<ore:ingotStarmetal>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<ore:nuggetStarmetal>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<ore:blockStarmetal>);

makeBlockIntegrationWithoutFluid (<ore:ingotAstralStarmetal>.firstItem, <ore:blockAstralStarmetal>.firstItem);
makeDustIntegration(<ore:ingotAstralStarmetal>.firstItem, <ore:blockAstralStarmetal>.firstItem, <ore:dustAstralStarmetal>.firstItem);

# Vibrant Alloy
// makeGregTechMaterialFluidIntegration (<ore:ingotVibrantAlloy>.firstItem, <ore:nuggetVibrantAlloy>.firstItem, <ore:blockVibrantAlloy>.firstItem, <ore:plateVibrantAlloy>.firstItem, <ore:gearVibrantAlloy>.firstItem, <liquid:vibrant_alloy>);

# Infinity
makeBlockIntegration(<ore:ingotInfinityMetal>.firstItem, <ore:blockInfinityMetal>.firstItem, <liquid:infinity_metal>);
makeFluidIngotIntegration(<ore:ingotInfinityMetal>.firstItem, <liquid:infinity_metal>);
makeFluidNuggetIntegration(<ore:nuggetInfinityMetal>.firstItem, <liquid:infinity_metal>);
makeFluidPlateIntegration (<ore:plateInfinityMetal>.firstItem, <liquid:infinity_metal>);
makeFluidGearIntegration (<ore:gearInfinityMetal>.firstItem, <liquid:infinity_metal>);
//makeDustIntegration(<ore:ingotInfinityMetal>.firstItem, <ore:blockInfinityMetal>.firstItem, <ore:dustInfinityMetal>.firstItem);

# Aluminum Brass
makeBlockIntegration(<ore:ingotAlubrass>.firstItem, <ore:blockAlubrass>.firstItem, <liquid:alubrass>);
makeFluidIngotIntegration(<ore:ingotAlubrass>.firstItem, <liquid:alubrass>);
makeFluidNuggetIntegration(<ore:nuggetAlubrass>.firstItem, <liquid:alubrass>);

# Thaumium
makeBlockIntegration(<ore:ingotThaumium>.firstItem, <ore:blockThaumium>.firstItem, <liquid:thaumium>);
makeFluidIngotIntegration(<ore:ingotThaumium>.firstItem, <liquid:thaumium>);
makeFluidNuggetIntegration(<ore:nuggetThaumium>.firstItem, <liquid:thaumium>);
makeFluidPlateIntegration (<ore:plateThaumium>.firstItem, <liquid:thaumium>);
makeFluidGearIntegration (<ore:gearThaumium>.firstItem, <liquid:thaumium>);

# Void
makeBlockIntegration(<ore:ingotVoid>.firstItem, <ore:blockVoid>.firstItem, <liquid:void_metal>);
makeFluidIngotIntegration(<ore:ingotVoid>.firstItem, <liquid:void_metal>);
makeFluidNuggetIntegration(<ore:nuggetVoid>.firstItem, <liquid:void_metal>);
makeFluidPlateIntegration (<ore:plateVoid>.firstItem, <liquid:void_metal>);
makeFluidGearIntegration (<ore:gearVoid>.firstItem, <liquid:void_metal>);

// # Aquamarine
// makeGemIntegration(<ore:gemAquamarine>.firstItem, <ore:dustAquamarine>.firstItem, <ore:gemFlawlessAquamarine>.firstItem, <liquid:aquamarine>);