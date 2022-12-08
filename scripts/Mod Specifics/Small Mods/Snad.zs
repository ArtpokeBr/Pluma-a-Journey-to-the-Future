//Normal Snad
recipes.remove(<snad:snad>);
mixer.recipeBuilder()
	.inputs(<ore:compressed1xSand>, <ore:dustSmallRedstone>, <ore:dustQuartzSand>, <roots:infernal_bulb>)
    .outputs(<snad:snad>) 
	.duration(80)
	.EUt(8)
.buildAndRegister();

//Red Snad
recipes.remove(<snad:snad:1>);
mixer.recipeBuilder()
	.inputs(<ore:compressed1xSand>, <ore:dustSmallRedstone>, <ore:dustRedSand>, <roots:infernal_bulb>)
    .outputs(<snad:snad:1>) 
	.duration(80)
	.EUt(8)
.buildAndRegister();