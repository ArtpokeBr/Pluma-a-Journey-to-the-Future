import mods.astralsorcery.StarlightInfusion as StarlightInfusion;

#Removing Ore Processing with Infusion
StarlightInfusion.removeInfusion(<minecraft:diamond>*4);
StarlightInfusion.removeInfusion(<minecraft:emerald>*4);
StarlightInfusion.removeInfusion(<minecraft:redstone_block>);
StarlightInfusion.removeInfusion(<minecraft:lapis_block>);
StarlightInfusion.removeInfusion(<minecraft:iron_ingot>*3);
StarlightInfusion.removeInfusion(<minecraft:gold_ingot>*3);
StarlightInfusion.removeInfusion(<astralsorcery:blockinfusedwood:6>);
StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);

#Blessed Starmetal
StarlightInfusion.addInfusion(<gregtech:meta_block_compressed_2004:9>, <astraladditions:block_starmetal>, false, 1.0, 120);
StarlightInfusion.addInfusion(<gregtech:meta_ingot:32073>, <astralsorcery:itemcraftingcomponent:1>, false, 1.0, 60);
StarlightInfusion.addInfusion(<gregtech:meta_dust:32073>, <astralsorcery:itemcraftingcomponent:2>, false, 1.0, 60);