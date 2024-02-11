import mods.astralsorcery.Lightwell as Lightwell;

//Starlight
Lightwell.removeLiquefaction(<astralsorcery:itemcraftingcomponent>, null);
Lightwell.addLiquefaction(<ore:gemAquamarine>.firstItem, <liquid:astralsorcery.liquidstarlight>, 1.5, 15, 0);

//Liquid Nighmares
Lightwell.addLiquefaction(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), <liquid:liquid_nightmares>, 1.0, 3, 0);
Lightwell.addLiquefaction(<thaumadditions:vis_pod>.withTag({Aspect: "perditio"}), <liquid:liquid_nightmares>, 1.0, 6, 0);
Lightwell.addLiquefaction(<contenttweaker:condensed_vis_crystal_perditio>, <liquid:liquid_nightmares>, 1.5, 18, 0);

