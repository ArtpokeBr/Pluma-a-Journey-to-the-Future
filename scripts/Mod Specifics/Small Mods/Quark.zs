import crafttweaker.item.IItemStack;

//Fixing Candles
recipes.remove(<quark:candle:0>);
recipes.addShaped(<quark:candle:0> * 2, [[null, <ore:string>, null], [null, <ore:lard>, null],[null, <ore:lard>, null]]);

// Iron Chain
recipes.remove(<quark:chain>);
recipes.addShaped(<quark:chain> * 1, [[null, <ore:ringIron>, <ore:ringIron>], [null, <ore:ringIron>, null],[<ore:ringIron>, null, null]]);

// Quark's Crystals

# White
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_white>*144)
    .outputs(<quark:crystal>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Red
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_red>*144)
    .outputs(<quark:crystal:1>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Orange
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_orange>*144)
    .outputs(<quark:crystal:2>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Yellow
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_yellow>*144)
    .outputs(<quark:crystal:3>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Green
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_lime>*144)
    .outputs(<quark:crystal:4>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Cyan
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_cyan>*144)
    .outputs(<quark:crystal:5>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Blue
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_blue>*144)
    .outputs(<quark:crystal:6>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Magenta
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_magenta>*144)
    .outputs(<quark:crystal:7>)
    .duration(300)
    .EUt(4)
.buildAndRegister();

#Black
chemical_reactor.recipeBuilder()
    .circuit(13)
    .fluidInputs(<liquid:borosilicate_glass>*576, <liquid:dye_black>*144)
    .outputs(<quark:crystal:8>)
    .duration(300)
    .EUt(4)
.buildAndRegister();
