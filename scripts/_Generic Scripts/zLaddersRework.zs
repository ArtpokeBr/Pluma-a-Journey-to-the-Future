import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Ladders Rework                                                                                                                     //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    # [Wildwood Ladder]
     craft.remake(<roots:wildwood_ladder>*2, ["pretty",
        "& M &",
        "& D &",
        "& H &"], {
        "&": <ore:rootsBarkWildwood>, # Wildwood Bark
        "M": <ore:gtceSoftHammers>, # Wood Soft Mallet
        "D": <ore:boltWood>,  # Wood Bolt
        "H": <ore:gtceHardHammers>, # Iron Hammer
    });
	assembler.recipeBuilder()
		.inputs(<ore:rootsBarkWildwood> * 7)
        .circuit("7")
		.outputs(<roots:wildwood_ladder> * 2)   
		.duration(20)
		.EUt(1)
	.buildAndRegister();
    
    # [Metal Ladder from Twilight Forest]
     craft.remake(<twilightforest:iron_ladder>*2, ["pretty",
        "& M &",
        "& D &",
        "& H &"], {
        "&": <ore:stickConstructionAlloy>, # Iron Alloy Rod
        "M": <ore:gtceSoftHammers>, # Wood Soft Mallet
        "D": <ore:boltConstructionAlloy>,  # Iron Alloy Bolt
        "H": <ore:gtceHardHammers>, # Iron Hammer
    });
	assembler.recipeBuilder()
		.inputs(<ore:stickConstructionAlloy> * 7)
        .circuit("7")
		.outputs(<twilightforest:iron_ladder> * 2)   
		.duration(20)
		.EUt(1)
	.buildAndRegister();

    # [Stone Ladder from Tinkers]
     craft.remake(<tconstruct:stone_ladder>*3, ["pretty",
        "& M &",
        "& D &",
        "& H &"], {
        "&": <ore:stickStone>, # Stone Rod
        "M": <ore:gtceSoftHammers>, # Wood Soft Mallet
        "D": <ore:rock>,  # Pyrotech Rock
        "H": <ore:gtceHardHammers>, # Iron Hammer
    });
	assembler.recipeBuilder()
		.inputs(<ore:stickStone> * 7)
        .circuit("7")
		.outputs(<tconstruct:stone_ladder> * 3)   
		.duration(20)
		.EUt(1)
	.buildAndRegister();

    # [Dark Steel Ladder] from [Dark Steel Bolt][+3]
        craft.remake(<enderio:block_dark_steel_ladder>*2, ["pretty",
            "& M &",
            "& D &",
            "& H &"], {
            "&": <ore:stickDarkSteel>, # Dark Steel Rod
            "M": <ore:gtceSoftHammers>, # Wood Soft Mallet
            "D": <ore:boltDarkSteel>,  # Dark Steel Bolt
            "H": <ore:gtceHardHammers>, # Iron Hammer
        });
		assembler.recipeBuilder()
			.inputs(<ore:stickDarkSteel> * 7)
            .circuit("7")
			.outputs(<enderio:block_dark_steel_ladder> * 2)   
			.duration(20)
			.EUt(1)
		.buildAndRegister();
    