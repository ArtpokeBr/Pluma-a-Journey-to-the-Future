import mods.botania.ManaInfusion as ManaInfusion;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Botania Mana Script                                                                                                              //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//100% = 1,000,000

# Manasteel Ingot
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<ore:ingotManasteel>.firstItem, <ore:ingotBlueSteel>.firstItem, 5000);

# Block of Manasteel
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<ore:blockManasteel>.firstItem, <ore:blockBlueSteel>.firstItem, 45000);

# Mana Pearl
ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <contenttweaker:hyper_pearl>, 10000);

# Mana Diamond
ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <quantumflux:craftingpiece:6>, 15000);

# Block of Mana Diamond
ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.addInfusion(<botania:storage:3>, <contenttweaker:hyper_diamond_block>, 135000);

# Managlass
ManaInfusion.removeRecipe(<botania:managlass>);
ManaInfusion.addInfusion(<botania:managlass>, <appliedenergistics2:quartz_vibrant_glass>, 5000);

# Mana Infused String
ManaInfusion.removeRecipe(<botania:manaresource:16>);
ManaInfusion.addInfusion(<botania:manaresource:16>, <evilcraft:golden_string>, 3000);

# Mana Powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);

ManaInfusion.addInfusion(<botania:manaresource:23>, <evilcraft:dull_dust>, 3000);
ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:dustDreadium>, 3000);
ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:dustAbyssalnite>, 3000);

