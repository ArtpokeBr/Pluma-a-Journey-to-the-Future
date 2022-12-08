/*

import crafttweaker.item.IItemStack;
import moretweaker.railcraft.RollingMachine;

# Removing Unwanted Recipes  ===================================

var RollingRemovals as IItemStack[] = [
];
for i in RollingRemovals {
RollingMachine.remove(i);
}


# Rolling Machine Recipes  ===================================

//Nickel Electrode
RollingMachine.remove(<railcraft:charge:6>);
RollingMachine.addShaped(<railcraft:charge:6>, [
    [null, <ore:plateNickel>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:plateNickel>, null]
    ], 40);

//Iron Electrode
RollingMachine.remove(<railcraft:charge:7>);
RollingMachine.addShaped(<railcraft:charge:7>, [
    [null, <ore:plateIron>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:plateIron>, null]
    ], 40);

//Zinc Electrode
RollingMachine.remove(<railcraft:charge:8>);
RollingMachine.addShaped(<railcraft:charge:8>, [
    [null, <ore:plateZinc>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:plateZinc>, null]
    ], 40);

//Carbon Electrode
RollingMachine.remove(<railcraft:charge:9>);
RollingMachine.addShaped(<railcraft:charge:9>, [
    [null, <ore:dustCoal>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:dustCoal>, null]
    ], 40);

//Silver Electrode
RollingMachine.remove(<railcraft:charge:10>);
RollingMachine.addShaped(<railcraft:charge:10>, [
    [null, <ore:plateSilver>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:plateSilver>, null]
    ], 40);

//Obsidian Electrode
RollingMachine.addShaped(<contenttweaker:obsidianelectrode>, [
    [null, <ore:plateObsidian>, null], 
    [null, <forestry:thermionic_tubes:4>, null], 
    [null, <ore:plateObsidian>, null]
    ], 40);

//Large Spool
RollingMachine.remove(<railcraft:charge:4>);
RollingMachine.addShaped(<railcraft:charge:4> * 2, [
    [<ore:plateSteel>, <magneticraft:multiblock_parts:4>, <ore:plateSteel>], 
    [<magneticraft:multiblock_parts:4>, <ore:ingotCobalt>, <magneticraft:multiblock_parts:4>], 
    [<ore:plateSteel>, <magneticraft:multiblock_parts:4>, <ore:plateSteel>]
    ], 80);

//Medium Spool
recipes.remove(<railcraft:charge:3>);
RollingMachine.remove(<railcraft:charge:3>);
RollingMachine.addShaped(<railcraft:charge:3> * 4, [
    [<ore:plateIron>, <magneticraft:crafting:3>, <ore:plateIron>], 
    [<magneticraft:crafting:3>, <ore:stickBrass>, <magneticraft:crafting:3>], 
    [<ore:plateIron>, <magneticraft:crafting:3>, <ore:plateIron>]
    ], 60);

//Small Spool
recipes.remove(<railcraft:charge:2>);
RollingMachine.remove(<railcraft:charge:2>);
RollingMachine.addShaped(<railcraft:charge:2> * 6, [
    [<ore:plateTin>, <magneticraft:copper_coil>, <ore:plateTin>], 
    [<magneticraft:copper_coil>, <ore:stickCopper>, <magneticraft:copper_coil>], 
    [<ore:plateTin>, <magneticraft:copper_coil>, <ore:plateTin>]
    ], 60);    

//Shunting Wire
RollingMachine.remove(<railcraft:wire>);
RollingMachine.addShaped(<railcraft:wire> * 8, [
    [<ore:plateLead>, <ore:paper>, <ore:plateLead>], 
    [<ore:paper>, <railcraft:charge:4>, <ore:paper>], 
    [<ore:plateLead>, <ore:paper>, <ore:plateLead>]
    ], 60);  

*/