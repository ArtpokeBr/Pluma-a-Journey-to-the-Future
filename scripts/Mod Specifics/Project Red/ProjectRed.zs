///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//			         																														 //
//			ProjectRed Script                                                                                                                //
//			         																													 	 //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//OreDicting Silicon
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);

// Red Alloy Wire
recipes.remove(<projectred-transmission:wire>);
recipes.addShapeless("RedAlloyWirePR",<projectred-transmission:wire>,[<ore:wireGtSingleRedAlloy>]);
recipes.addShapeless("RedAlloyWirePR_1",<ore:wireGtSingleRedAlloy>.firstItem,[<projectred-transmission:wire>]);