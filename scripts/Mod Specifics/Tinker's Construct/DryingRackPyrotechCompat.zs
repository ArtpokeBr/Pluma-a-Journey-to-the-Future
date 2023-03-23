import crafttweaker.item.IItemStack;
import mods.pyrotech.CrudeDryingRack as DryingRack;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														                                                                 //
//			Tconstruct Drying Rack Recipes to Pyrotech                                                                                           //
//			         																													 	                                                                 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var DryingRemovals as IItemStack[] = [
<tconstruct:edible:10>,
<tconstruct:edible:11>,
<tconstruct:edible:12>,
<tconstruct:edible:13>,
<tconstruct:edible:14>,
<tconstruct:edible:15>,
<tconstruct:edible:20>,
<tconstruct:edible:21>,
<tconstruct:edible:22>,
<tconstruct:edible:23>,
<tconstruct:edible:30>,
<tconstruct:edible:31>,
<tconstruct:edible:32>,
<tconstruct:edible:33>,
<tconstruct:edible:34>,
<tconstruct:materials:2>,
<minecraft:sponge>,
<minecraft:deadbush>
];
for i in DryingRemovals {  
mods.tconstruct.Drying.removeRecipe(i);
}

#### Jerkys ####

//MonsterJerky
DryingRack.addRecipe(
  "MonsterJerky",
  <tconstruct:edible:10>,
  <minecraft:rotten_flesh>,
  16000,
  false
);

//BeefJerky
DryingRack.addRecipe(
  "BeefJerky",
  <tconstruct:edible:11>,
  <minecraft:beef>,
  16000,
  false
);

//ChickenJerky
DryingRack.addRecipe(
  "ChickenJerky",
  <tconstruct:edible:12>,
  <minecraft:chicken>,
  16000,
  false
);

//BaconJerky
DryingRack.addRecipe(
  "BaconJerky",
  <tconstruct:edible:13>,
  <minecraft:porkchop>,
  16000,
  false
);

//MuttonJerky
DryingRack.addRecipe(
  "MuttonJerky",
  <tconstruct:edible:14>,
  <minecraft:mutton>,
  16000,
  false
);

//RabbitJerky
DryingRack.addRecipe(
  "RabbitJerky",
  <tconstruct:edible:15>,
  <minecraft:rabbit>,
  16000,
  false
);

//FishJerky
DryingRack.addRecipe(
  "FishJerky",
  <tconstruct:edible:20>,
  <minecraft:fish>,  
  16000,
  false
);

//SalmonJerky
DryingRack.addRecipe(
  "SalmonJerky",
  <tconstruct:edible:21>,
  <minecraft:fish:1>,  
  16000,
  false
);

//Clowfish Jerky
DryingRack.addRecipe(
  "Clowfish Jerky",
  <tconstruct:edible:22>,
  <minecraft:fish:2>,  
  16000,
  false
);

//FuguJerky
DryingRack.addRecipe(
  "FuguJerky",
  <tconstruct:edible:23>,
  <minecraft:fish:3>,  
  16000,
  false
);

//GreenSlimeDrop
DryingRack.addRecipe(
  "GreenSlimeDrop",
  <tconstruct:edible:30>,
  <minecraft:slime_ball>,  
  16000,
  false
);

//BlueSlimeDrop
DryingRack.addRecipe(
  "BlueSlimeDrop",
  <tconstruct:edible:31>,
  <tconstruct:edible:1>,  
  16000,
  false
);

//PurpleSlimeDrop
DryingRack.addRecipe(
  "PurpleSlimeDrop",
  <tconstruct:edible:32>,
  <tconstruct:edible:2>,  
  16000,
  false
);

//BloodSlimeDrop
DryingRack.addRecipe(
  "BloodSlimeDrop",
  <tconstruct:edible:33>,
  <tconstruct:edible:3>, 
  16000,
  false
);

//OrangeSlimeDrop
DryingRack.addRecipe(
  "OrangeSlimeDrop",
  <tconstruct:edible:34>,
  <tconstruct:edible:4>,  
  16000,
  false
);

//DryedBrick
DryingRack.addRecipe(
  "DryedBrick",
  <tconstruct:materials:2>,
  <pyrotech:material:24>,  
  8000,
  false
);

//DryedClay
DryingRack.addRecipe(
  "DryedClay",
  <tconstruct:dried_clay>,
  <minecraft:clay>,  
  16000,
  false
);

//Spaghetti
DryingRack.addRecipe(
  "MomsSpaghetti",
  <tconstruct:spaghetti:2>,
  <tconstruct:spaghetti:1>,  
  16000,
  false
);
