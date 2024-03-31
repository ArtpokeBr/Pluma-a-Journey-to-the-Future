import mods.embers.Stamper as Stamper;
import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Embers Stamping Script                                                                                                           //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


var StampingRemovals as IItemStack[] = [
// <embers:plate_iron>,
// <embers:plate_gold>,
<embers:plate_lead>,
<embers:plate_silver>,
<embers:plate_copper>,
<embers:ingot_lead>,
<embers:ingot_silver>,
<embers:ingot_copper>,
<minecraft:blaze_powder>*4,
<embers:plate_dawnstone>,
<minecraft:gold_ingot>,
<minecraft:iron_ingot>,
<embers:dust_ash>,
<embers:ingot_dawnstone>,
];
for i in StampingRemovals {
Stamper.remove(i);
}

//Alchemical Nautilus
Stamper.add(<contenttweaker:alchemical_nautilus>, <liquid:alchemical_redstone>*1500, <ore:plateEmeradicEmpowered>, <fossil:shell>);