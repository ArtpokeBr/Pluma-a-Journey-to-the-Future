///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Natura Script                                                                                                                    //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Extracting Resources out of Clouds! ==============================

// Sulfur Cloud
<natura:clouds:3>.clearTooltip();
<natura:clouds:3>.addTooltip(format.gray("So light and Fluffy!"));
<natura:clouds:3>.addTooltip(format.gray("Use an Extractor to convert into Small Sulfur"));

extractor.recipeBuilder()
    .inputs(<natura:clouds:3>)
    .outputs(<ore:dustSmallSulfur>.firstItem)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

// Ash Cloud
recipes.removeByRecipeName("natura:common/charcoal");

<natura:clouds:2>.clearTooltip();
<natura:clouds:2>.addTooltip(format.gray("So light and Fluffy!"));
<natura:clouds:2>.addTooltip(format.gray("Use an Extractor to convert into Ashes"));

extractor.recipeBuilder()
    .inputs(<natura:clouds:2>)
    .outputs(<ore:dustSmallCharcoal>.firstItem)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

// Dark Cloud
extractor.recipeBuilder()
    .inputs(<natura:clouds:1>)
    .outputs(<ore:dustSmallDarkAsh>.firstItem)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

// Cloud
extractor.recipeBuilder()
    .inputs(<natura:clouds>)
    .outputs(<ore:dustSmallIce>.firstItem)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

//Tainted Soil
mixer.recipeBuilder()
    .inputs(<twilightforest:uberous_soil>, <thaumicaugmentation:taint_flower>*3)
    .outputs(<natura:nether_tainted_soil>)
    .duration(200)
    .EUt(100)
.buildAndRegister();
