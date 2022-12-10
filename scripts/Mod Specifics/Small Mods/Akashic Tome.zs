//Removing Original Recipe as it will be given upon Pack Start

recipes.remove(<akashictome:tome>);

// Book Tooltip
	<akashictome:tome>.addTooltip(format.aqua("All Manuals and Guides in one place!"));
    <akashictome:tome>.addTooltip(format.gray("<Press Shift for more Info>"));
    <akashictome:tome>.addShiftTooltip(format.lightPurple("Mix this tome in the Crafting table with any Guide/Manual to add it."));
	<akashictome:tome>.addShiftTooltip(format.green("Left Click on the Air to Reset."));