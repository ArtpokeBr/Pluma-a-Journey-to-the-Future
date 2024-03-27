#loader multiblocked

// https://github.com/CleanroomMC/Multiblocked/wiki/CraftTweaker-RecipeBuilder

//Bio Fabricator Recipes ==========================================================================
var bio_fabricator = <mbd:recipe_map:bio_fabricator>;

//Sheep	
bio_fabricator.start()
    .inputItems(<fossil:sheep_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
			 <minecraft:wool> * 4,
            <ore:lard>.firstItem * 2,
	        <pyrotech:hide_sheep_sheared>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Pig	
bio_fabricator.start()
    .inputItems(<fossil:pig_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:porkchop> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:hide_pig>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Cow
bio_fabricator.start()
    .inputItems(<fossil:cow_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:beef> * 2,
			 <ore:lard>.firstItem * 3,
	         <minecraft:bone> * 2,
             <pyrotech:pelt_cow>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Horse
bio_fabricator.start()
    .inputItems(<fossil:horse_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Donkey
bio_fabricator.start()
    .inputItems(<fossil:donkey_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 2,
             <pyrotech:pelt_horse>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Chicken
bio_fabricator.start()
    .inputItems(<fossil:chicken_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:chicken>,
	         <minecraft:feather> * 2,
             <minecraft:egg>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Parrot
bio_fabricator.start()
    .inputItems(<fossil:parrot_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:chicken>,
	         <minecraft:feather> * 4)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Polar Bear
bio_fabricator.start()
    .inputItems(<fossil:polarbear_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:fish> * 2,
	         <minecraft:bone> * 2,
            <ore:lard>.firstItem * 3,
             <pyrotech:pelt_polar_bear>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Rabbit
bio_fabricator.start()
    .inputItems(<fossil:rabbit_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:rabbit> * 1,
	         <minecraft:rabbit_foot> * 1,
            <minecraft:bone> * 1,
             <minecraft:rabbit_hide>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Llama
bio_fabricator.start()
    .inputItems(<fossil:llama_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<minecraft:mutton> * 2,
	         <minecraft:bone> * 2,
             <ore:lard>.firstItem * 2,
             <pyrotech:hide_llama>)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Nautilus
bio_fabricator.start()
    .inputItems(<fossil:nautilus_dna>)
    .inputFluids(<liquid:distilled_water> * 500)
    .inputFluids(<liquid:mutagen> * 500)
    .outputItems(<fossil:shell>*2,
	         <fossil:bio_goo>*2)
    .duration(500)
    .perTick(true)
    .inputEU(250)
.buildAndRegister();

//Fossil Ore Processing Plant Recipes ==========================================================================
var fossil_ore_processing_plant = <mbd:recipe_map:fossil_ore_processing_plant>;

//Main Recipe
fossil_ore_processing_plant.start()
    .duration(300)
    .inputItems(<ore:oreBasaltFossil>)
    .inputFluids(<liquid:distilled_water>*1000)
    .outputItems(<ore:dustFossil>.firstItem*4)
	.outputItems(0.75, <fossil:biofossil>)
	.outputItems(0.75, <fossil:plant_fossil>)
	.outputItems(0.50, <fossil:skull_block>)
	.outputItems(0.30, <fossil:relic_scrap>)
    .outputItems(0.20, <fossil:scarab_gem>)
    .perTick(true)
    .inputEU(120)
.buildAndRegister();