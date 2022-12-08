import mods.thaumcraft.Infusion as Infusion;
import mods.abyssalcraft.InfusionRitual as AbyssalInfusion;
import mods.botania.RuneAltar as RunicAltar;

# Mining Dimension Portal
recipes.remove(<utilityworlds:portal_mining>);
Infusion.registerRecipe("utilityworlds:portal_mining", "METALLURGY", <utilityworlds:portal_mining>, 0, [<aspect:chronos> * 100, <aspect:instrumentum> * 80, <aspect:metallum>*80, <aspect:terra>*100], <ore:compressed2xObsidian>, 
[<ore:oreClusterLapis>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:dark_magic_dust>,<actuallyadditions:block_crystal_empowered:1>,<ore:oreClusterLapis>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:white_magic_dust>,<actuallyadditions:block_crystal_empowered:1>]);

# Garden Dimension Portal
recipes.remove(<utilityworlds:portal_garden>);
// Infusion.registerRecipe("utilityworlds:portal_garden", "METALLURGY", <utilityworlds:portal_garden>, 0, [<aspect:chronos> * 100, <aspect:anteanus> * 80, <aspect:herba>*80, <aspect:terra>*100], <thaumcraft:mechanism_complex>, 
// [<ore:oreClusterEmerald>,<ore:empoweredBlockEndorCrystal>,<contenttweaker:blackened_spirit>,<ore:empoweredBlockEndorCrystal>,<ore:oreClusterEmerald>,<ore:empoweredBlockEndorCrystal>,<contenttweaker:arboreal_essence>,<ore:empoweredBlockEndorCrystal>]);

RunicAltar.addRecipe(<utilityworlds:portal_garden>,[<contenttweaker:rune_of_teleportation>,<ore:empoweredBlockEndorCrystal>,<contenttweaker:blackened_spirit>,<ore:empoweredBlockEndorCrystal>,<contenttweaker:rune_of_summer>,<ore:empoweredBlockEndorCrystal>,<contenttweaker:arboreal_essence>,<ore:empoweredBlockEndorCrystal>], 10000);

# Void Dimension Portal
recipes.remove(<utilityworlds:portal_void>);
// Infusion.registerRecipe("utilityworlds:portal_void", "METALLURGY", <utilityworlds:portal_void>, 0, [<aspect:chronos> * 100, <aspect:machina> * 80, <aspect:vacuos>*80, <aspect:terra>*100], <chisel:energizedvoidstone:5>, 
// [<ore:oreClusterRedstone>,<actuallyadditions:block_crystal_empowered:3>,<quantumflux:voidbucket>,<actuallyadditions:block_crystal_empowered:3>,<ore:oreClusterRedstone>,<actuallyadditions:block_crystal_empowered:3>,<contenttweaker:suppression_core>,<actuallyadditions:block_crystal_empowered:3>]);

AbyssalInfusion.addRitual("voidDimensionPortal", 3, -1, 10000, true, <utilityworlds:portal_void>, <ore:compressed2xObsidian>                  , 
[<ore:oreClusterRedstone>,<actuallyadditions:block_crystal_empowered:3>,<quantumflux:voidbucket>,<actuallyadditions:block_crystal_empowered:3>,<ore:oreClusterRedstone>,<actuallyadditions:block_crystal_empowered:3>,<contenttweaker:suppression_core>,<actuallyadditions:block_crystal_empowered:3>]);
