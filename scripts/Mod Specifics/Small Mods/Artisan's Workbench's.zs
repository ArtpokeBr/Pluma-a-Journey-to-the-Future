import mods.artisanworktables.builder.RecipeBuilder;

// Basic Worktable
recipes.remove(<artisanworktables:worktable:5>);
recipes.addShaped(<artisanworktables:worktable:5> * 1, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<ore:gtceHardHammers>, <gregtech:machine:1647>, <ore:gtceSaws>],[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>]]);
recipes.addShaped(<artisanworktables:worktable:5> * 1, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<ore:gtceSaws>, <gregtech:machine:1647>, <ore:gtceHardHammers>],[<contenttweaker:searedplate>, null, <contenttweaker:searedplate>]]);

// Blacksmith's Worktable
recipes.remove(<artisanworktables:worktable:3>);
recipes.addShaped(<artisanworktables:worktable:3> * 1, [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], [<ore:frameGtSteel>, <ore:blockSteel>, <ore:frameGtSteel>],[<ore:plateStone>, <ore:gtceHardHammers>, <ore:plateStone>]]);


// Toolbox
recipes.remove(<artisanworktables:toolbox>);
recipes.addShaped(<artisanworktables:toolbox> * 1, [[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], [<contenttweaker:searedplate>, <ore:chest>, <contenttweaker:searedplate>],[<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]]);

// Mechanical Toolbox
recipes.remove(<artisanworktables:mechanical_toolbox>);
recipes.addShaped(<artisanworktables:mechanical_toolbox> * 1, [[<ore:gearIron>, <ore:plateTreatedWood>, <ore:gearIron>], [<ore:plateTreatedWood>, <artisanworktables:toolbox>, <ore:plateTreatedWood>],[<ore:gearIron>, <ore:plateTreatedWood>, <ore:gearIron>]]);

//Mage's Worktable
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateEnergeticSilver>, <actuallyadditions:block_crystal_cluster_lapis>, <ore:plateEnergeticSilver>],
    [<ore:lightPlateBlueAlloy>, <artisanworktables:worktable:5>, <ore:lightPlateBlueAlloy>],
    [<ore:stickDarkSteel>, null, <ore:stickDarkSteel>]])
  .addTool(<ore:artisansBurner>, 15)
  .addOutput(<artisanworktables:worktable:7>)
.create();