//Fixing Candles
recipes.remove(<quark:candle:0>);
recipes.addShaped(<quark:candle:0> * 2, [[null, <ore:string>, null], [null, <ore:lard>, null],[null, <ore:lard>, null]]);

// Iron Chain
recipes.remove(<quark:chain>);
recipes.addShaped(<quark:chain> * 1, [[null, <ore:ringIron>, <ore:ringIron>], [null, <ore:ringIron>, null],[<ore:ringIron>, null, null]]);
