#modloaded vaultopic

// Vault Searcher
recipes.remove(<vaultopic:vault_searcher>);
recipes.addShapedMirrored(<vaultopic:vault_searcher> * 2, [[<ore:blockRedstone>, <pyrotech:material:5>, null], [<pyrotech:material:5>, <pyrotech:material:19>, null],[null, null, null]]);

// V.I.E.W. (Vaultopic Inventory Explorer Workbot)
recipes.remove(<vaultopic:view_small>);
recipes.addShaped(<vaultopic:view_small> * 1, [[<vaultopic:vault_searcher>, <ore:plateRedAlloy>, <vaultopic:vault_searcher>], [<ore:plateRedAlloy>, <minecraft:compass>, <ore:plateRedAlloy>],[<vaultopic:vault_searcher>, <ore:plateRedAlloy>, <vaultopic:vault_searcher>]]);

// V.I.E.W. X (Vaultopic Inventory Explorer Workbot eXtended)
recipes.remove(<vaultopic:view_big>);
chemical_bath.recipeBuilder()
    .inputs(<vaultopic:view_small>)
    .fluidInputs(<liquid:blue_alloy> * 576)
    .outputs(<vaultopic:view_big>)
    .duration(300)
    .EUt(8)
.buildAndRegister();

// V.I.C.E. (Vaultopic Item Crafting Entity)
recipes.remove(<vaultopic:vice>);
compressor.recipeBuilder()
    .inputs(<vaultopic:view_big>)
    .outputs(<vaultopic:vice>)
    .duration(400)
    .EUt(16)
.buildAndRegister();
