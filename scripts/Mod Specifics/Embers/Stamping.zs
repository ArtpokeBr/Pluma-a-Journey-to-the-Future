import mods.embers.Stamper as Stamper;
import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Embers Stamping Script                                                                                                           //
//			         																														 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Embers' copper/silver/lead/dawnstone materials (and their plates/ingots) are configured as
// "SMART" registration in config/Embers/material.cfg, which skips registering them entirely
// because GregTech is loaded. Those items don't exist in this pack (use the <ore:...> tags
// GregTech provides instead), so their removals below were always dead no-ops and are removed.
var StampingRemovals as IItemStack[] = [
// <embers:plate_iron>,
// <embers:plate_gold>,
<minecraft:blaze_powder>*4,
<minecraft:gold_ingot>,
<minecraft:iron_ingot>,
<embers:dust_ash>,
];
for i in StampingRemovals {
Stamper.remove(i);
}

//Alchemical Nautilus
Stamper.add(<contenttweaker:alchemical_nautilus>, <liquid:alchemical_redstone>*1500, <ore:plateEmeradicEmpowered>, <fossil:shell>);