import crafttweaker.item.IItemStack;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			Actually Additions Script - display names, tooltips, and misc fixes with no GroovyScript equivalent                             //
//			(recipes moved to groovy/postInit/actually_additions/recipes_and_fixes.groovy)                                                  //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Replacing all Black Quartz Ocurrences withe the Correct one.
recipes.replaceAllOccurences(<actuallyadditions:item_misc:5>, <gregtech:meta_gem:32000>);

# Book Tooltip ================

<actuallyadditions:item_booklet>.addTooltip(format.green("Please note that some Items/Blocks from the Mod are Disabled."));

# Wood Casing Rework =======================

<actuallyadditions:block_misc:4>.displayName = "Wood Chassis";

# Iron Casing and Normal Casing Rework =======================

<actuallyadditions:block_misc:9>.displayName = "Iron Chassis";
<actuallyadditions:block_misc:7>.displayName = "Steel Chassis";
<actuallyadditions:block_misc:8>.displayName = "Ender Chassis";

# Renaming Atomic Reconstructor
<actuallyadditions:block_atomic_reconstructor>.addTooltip(format.darkPurple("A Special machine that can Reconstruct Materials"));

//Renaming Diamatine to Diamantine
<actuallyadditions:item_crystal:2>.displayName = "Diamantine Crystal";
<actuallyadditions:block_crystal:2>.displayName = "Diamantine Crystal Block";
<actuallyadditions:block_crystal_empowered:2>.displayName = "Empowered Diamantine Crystal Block";
<actuallyadditions:item_crystal_empowered:2>.displayName = "Empowered Diamantine Crystal";

//Worm Tooltip
<actuallyadditions:item_worm>.addTooltip(format.red("Can only be bough in the Shop. And it lives for about 1 Hour."));

//Greenhouse Glass

<actuallyadditions:block_greenhouse_glass>.displayName = "Greenhouse Glass MKI";
<actuallyadditions:block_greenhouse_glass>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<actuallyadditions:block_greenhouse_glass>.addShiftTooltip(format.aqua("This Glass actually can be place above Crops/Saplings to increse their Growth Speed."));
<actuallyadditions:block_greenhouse_glass>.addShiftTooltip(format.aqua("Also, you can stack them to increse the speed even more!"));

// Storage Crate Keeper (Recipe Removed in Removals.zs)
<actuallyadditions:item_crate_keeper>.addTooltip(format.green("Shift + Right Click to carry a Crate,") + format.white(" you don't actually need this Upgrade!"));

# Bio-Mesh and Fertilizer Tooltip
<actuallyadditions:item_misc:1>.addTooltip(format.gray("<Press Shift for more Info>"));
<actuallyadditions:item_misc:1>.addShiftTooltip(format.white("Use an ") + format.darkAqua("Actually Additions Knife ") + format.white("with ") + format.green("Any Food Item " ) + format.white("to obtain a varied amount of this item."));
<actuallyadditions:item_fertilizer>.addTooltip(format.white("Works just like ") + format.green("Bonemeal."));

<actuallyadditions:item_laser_upgrade_range>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<actuallyadditions:item_laser_upgrade_range>.addShiftTooltip(format.aqua("Unfortunatly due to a Bug when Applying this Upgrade,") + format.red(" always Right Click with 2 in your hand."));

<actuallyadditions:item_laser_upgrade_invisibility>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<actuallyadditions:item_laser_upgrade_invisibility>.addShiftTooltip(format.aqua("Unfortunatly due to a Bug when Applying this Upgrade,") + format.red(" always Right Click with 2 in your hand."));
