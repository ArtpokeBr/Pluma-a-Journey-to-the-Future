#modloaded thaumcraft modtweaker
import crafttweaker.item.IItemStack;

/*
 █████╗ ███████╗██████╗ ███████╗ ██████╗████████╗███████╗
██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔════╝
███████║███████╗██████╔╝█████╗  ██║        ██║   ███████╗
██╔══██║╚════██║██╔═══╝ ██╔══╝  ██║        ██║   ╚════██║
██║  ██║███████║██║     ███████╗╚██████╗   ██║   ███████║
╚═╝  ╚═╝╚══════╝╚═╝     ╚══════╝ ╚═════╝   ╚═╝   ╚══════╝
*/

// Fixing some Aspect Issues in Thaumcraft (items not containing some of them)

################ AbyssalCraft ################################################################################################

//Refined Coralium Ingot
<abyssalcraft:cingot>.setAspects(<aspect:coralos>*6, <aspect:metallum>*4, <aspect:perditio>*2);

//Coralium Gem (tiny to huge)
<abyssalcraft:coralium>.setAspects(<aspect:coralos>*2, <aspect:vitreus>*2);
<abyssalcraft:ccluster2>.setAspects(<aspect:coralos>*4, <aspect:vitreus>*4);
<abyssalcraft:ccluster3>.setAspects(<aspect:coralos>*6, <aspect:vitreus>*6);
<abyssalcraft:ccluster4>.setAspects(<aspect:coralos>*8, <aspect:vitreus>*8);
<abyssalcraft:ccluster5>.setAspects(<aspect:coralos>*10, <aspect:vitreus>*10);
<abyssalcraft:ccluster6>.setAspects(<aspect:coralos>*12, <aspect:vitreus>*12);
<abyssalcraft:ccluster7>.setAspects(<aspect:coralos>*14, <aspect:vitreus>*14);
<abyssalcraft:ccluster8>.setAspects(<aspect:coralos>*16, <aspect:vitreus>*16);
<abyssalcraft:ccluster9>.setAspects(<aspect:coralos>*18, <aspect:vitreus>*18);

//Chunk of Coralium
<abyssalcraft:cchunk>.setAspects(<aspect:coralos>*8, <aspect:terra>*6, <aspect:perditio>*4);

//Coralium Pearl
<abyssalcraft:cpearl>.setAspects(<aspect:coralos>*6, <aspect:vitreus>*4);

//Crystallized Coralium
<abyssalcraft:crystal:13>.setAspects(<aspect:coralos>*8);

//Bucket of Liquid Coralium and Refined Coralium
<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}).setAspects(<aspect:coralos>*6, <aspect:vacuos>*5);
<forge:bucketfilled>.withTag({FluidName: "moltenrefinedcoralium", Amount: 1000}).setAspects(<aspect:coralos>*6, <aspect:vacuos>*5);

//Tainted Soil
<natura:nether_tainted_soil>.setAspects(<aspect:vitium>*15, <aspect:terra>*10);
<natura:nether_tainted_soil:1>.setAspects(<aspect:vitium>*15, <aspect:terra>*10);
<natura:nether_tainted_soil:2>.setAspects(<aspect:vitium>*15, <aspect:terra>*10);