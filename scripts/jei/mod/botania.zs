#priority 950
#modloaded botania

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;

//Info about Flowers can be found at https://ftb.fandom.com/wiki/Flowers_(Botania)

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
var x = <assembly:petro_petunia>;
x.addJEICatalyst(<botania:specialflower>.withTag({type: "petro_petunia"}));
x.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "petro_petunia"}));
x.setJEIFluidSlot(0, 0, 'liquid_input');
x.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
x.setJEIItemSlot(2, 0, 'output0');

for fluid, arr in {
/*Inject_js(
Object.entries(
  config('config/acronym/floralchemy.cfg').fuelvalues
).map(([fluid, {burnTime, powerPreTick}]) => 
  [fluid, ((20*60) / burnTime * 1000) | 0, powerPreTick * burnTime]
).sort((a, b) => b[2] - a[2])
.map(([fluid, consumption, manaTotal]) =>
  `  ${('"'+fluid+'":').padEnd(16)}[${consumption}, ${manaTotal}],`
))*/
   "rocket_fuel":   [500, 480000],
   "empoweredoil": [1200, 100000],
   "refined_fuel": [1411, 85000],
   "diesel":       [3428, 17500],
   "crystaloil":   [3428, 17500],
   "bio_diesel":    [4800, 12500],
   "biomass":      [4800, 12500],
   "canolaoil":    [8000, 7500],
    "oil":          [12000, 5000],
/**/
} as int[][string] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  x.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireFluid('liquid_input', game.getLiquid(fluid) * consumption)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var y = <assembly:endoflame>;
y.addJEICatalyst(<botania:specialflower>.withTag({type: "endoflame"}));
y.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "endoflame"}));
y.setJEIItemSlot(0, 0, 'item_input');
y.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
y.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <actuallyadditions:item_misc:10>:   [1, 300],  
   <minecraft:coal>:   [1, 2400],
   <ore:blockCoal>.firstItem:   [1, 21600],
   <actuallyadditions:item_misc:11>:   [1, 300],  
   <minecraft:coal:1>:   [1, 2400],
   <ore:blockCharcoal>.firstItem:   [1, 21600],
   //<ore:fuelCoke>.firstItem:   [1, 4800],
   //<ore:blockFuelCoke>.firstItem:   [1, 43200],
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  y.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var entropinnyum = <assembly:entropinnyum>;
entropinnyum.addJEICatalyst(<botania:specialflower>.withTag({type: "entropinnyum"}));
entropinnyum.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "entropinnyum"}));
entropinnyum.setJEIItemSlot(0, 0, 'item_input');
entropinnyum.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
entropinnyum.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <minecraft:tnt>:   [1, 6500],
   <appliedenergistics2:tiny_tnt>:   [1, 6500],
   <minecraft:skull:4>:   [1, 6500],
   <ic2:te:1>:   [1, 6500],
   <mekanism:obsidiantnt>:   [1, 6500],
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  entropinnyum.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var thermalily = <assembly:thermalily>;
thermalily.addJEICatalyst(<botania:specialflower>.withTag({type: "thermalily"}));
thermalily.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "thermalily"}));
thermalily.setJEIFluidSlot(0, 0, 'liquid_input');
thermalily.setJEIDecoration(1,0,"duration", SlotVisual.arrowRight());
thermalily.setJEIItemSlot(2, 0, 'output0');
thermalily.setJEIDurationSlot(4,0,"cooldown", scripts.jei.requious.getVisSlots(5,1));


for fluid, arr in {
   "lava":   [1000, 18000],
/**/
} as int[][string] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  thermalily.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireFluid('liquid_input', game.getLiquid(fluid) * consumption)
  .requireDuration("cooldown", 6000)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var gourmaryllis = <assembly:gourmaryllis>;
gourmaryllis.addJEICatalyst(<botania:specialflower>.withTag({type: "gourmaryllis"}));
gourmaryllis.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "gourmaryllis"}));
gourmaryllis.setJEIItemSlot(0, 0, 'item_input');
gourmaryllis.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
gourmaryllis.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <minecraft:bread>:   [1, 857],
   <harvestcraft:hamburgeritem>:   [1, 3937],
   <minecraft:cooked_fish:1>:   [1, 1417],
   <actuallyadditions:item_food:17>:   [1, 630],
   <forestry:honeyed_slice>:   [1, 1417],
   <thaumcraft:triple_meat_treat>:   [1, 1417],
   
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  gourmaryllis.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces Aprox. "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var kekimurus = <assembly:kekimurus>;
kekimurus.addJEICatalyst(<botania:specialflower>.withTag({type: "kekimurus"}));
kekimurus.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "kekimurus"}));
kekimurus.setJEIItemSlot(0, 0, 'item_input');
kekimurus.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
kekimurus.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <minecraft:cake>:   [1, 12600],
   
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  kekimurus.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var hydroangeas = <assembly:hydroangeas>;
hydroangeas.addJEICatalyst(<botania:specialflower>.withTag({type: "hydroangeas"}));
hydroangeas.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "hydroangeas"}));
hydroangeas.setJEIFluidSlot(0, 0, 'liquid_input');
hydroangeas.setJEIDecoration(1,0,"duration", SlotVisual.arrowRight());
hydroangeas.setJEIItemSlot(2, 0, 'output0');
hydroangeas.setJEIDurationSlot(4,0,"cooldown", scripts.jei.requious.getVisSlots(5,1));


for fluid, arr in {
   "water":   [1000, 1333],
/**/
} as int[][string] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  hydroangeas.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces Aprox. "~manaTotal~" Mana per source block."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireFluid('liquid_input', game.getLiquid(fluid) * consumption)
  .requireDuration("cooldown", 72000)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var munchdew = <assembly:munchdew>;
munchdew.addJEICatalyst(<botania:specialflower>.withTag({type: "munchdew"}));
munchdew.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "munchdew"}));
munchdew.setJEIItemSlot(0, 0, 'item_input');
munchdew.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
munchdew.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <minecraft:leaves>:   [1, 160],
   
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  munchdew.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per Leaf."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var narslimmus = <assembly:narslimmus>;
narslimmus.addJEICatalyst(<botania:specialflower>.withTag({type: "narslimmus"}));
narslimmus.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "narslimmus"}));
narslimmus.setJEIItemSlot(0, 0, 'item_input');
narslimmus.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
narslimmus.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <draconicevolution:mob_soul>.withTag({EntityName: "minecraft:slime"}):   [1, 2400],
   
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  narslimmus.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per Small Natural Slime."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var rafflowsia = <assembly:rafflowsia>;
rafflowsia.addJEICatalyst(<botania:specialflower>.withTag({type: "rafflowsia"}));
rafflowsia.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "rafflowsia"}));
rafflowsia.setJEIItemSlot(0, 0, 'item_input');
rafflowsia.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
rafflowsia.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <botania:flower:2>:   [1, 2100],
   <botania:flower>:   [1, 2100],
   <botania:flower:5>:   [1, 2100],
   
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  rafflowsia.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per different Botania Flower."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var arcanerose = <assembly:arcanerose>;
arcanerose.addJEICatalyst(<botania:specialflower>.withTag({type: "arcanerose"}));
arcanerose.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "arcanerose"}));
arcanerose.setJEIItemSlot(0, 0, 'item_input');
arcanerose.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
arcanerose.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <actuallyadditions:item_solidified_experience>.withTag({RepairCost: 0, display: {Name: "Experience Orb"}}):   [1, 35],
   <minecraft:skull:3>.withTag({RepairCost: 0, SkullOwner: "Artpoke_", display: {Name: "Experience from Player"}}):   [1, 50],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  arcanerose.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var shulk_me_not = <assembly:shulk_me_not>;
shulk_me_not.addJEICatalyst(<botania:specialflower>.withTag({type: "shulk_me_not"}));
shulk_me_not.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "shulk_me_not"}));
shulk_me_not.setJEIItemSlot(0, 0, 'item_input');
shulk_me_not.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
shulk_me_not.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
   <draconicevolution:mob_soul>.withTag({EntityName: "minecraft:shulker"}):   [1, 75000],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  shulk_me_not.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var spectrolus = <assembly:spectrolus>;
spectrolus.addJEICatalyst(<botania:specialflower>.withTag({type: "spectrolus"}));
spectrolus.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "spectrolus"}));
spectrolus.setJEIItemSlot(0, 0, 'item_input');
spectrolus.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
spectrolus.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
  <minecraft:wool:*>:   [1, 1200],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  spectrolus.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per Correct Wool."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var dandelifeon = <assembly:dandelifeon>;
dandelifeon.addJEICatalyst(<botania:specialflower>.withTag({type: "dandelifeon"}));
dandelifeon.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "dandelifeon"}));
dandelifeon.setJEIItemSlot(0, 0, 'item_input');
dandelifeon.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
dandelifeon.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
  <botania:cellblock>:   [1, 36000],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  dandelifeon.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces a Maximum of "~manaTotal~" Mana at once."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var ba_lightning_flower = <assembly:ba_lightning_flower>;
ba_lightning_flower.addJEICatalyst(<botania:specialflower>.withTag({type: "ba_lightning_flower"}));
ba_lightning_flower.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "ba_lightning_flower"}));
ba_lightning_flower.setJEIItemSlot(0, 0, 'item_input');
ba_lightning_flower.setJEIDecoration(1,0,"duration", SlotVisual.arrowRight());
ba_lightning_flower.setJEIItemSlot(2, 0, 'output0');
ba_lightning_flower.setJEIDurationSlot(4,0,"cooldown", scripts.jei.requious.getVisSlots(5,1));


for item, arr in {
   <evilcraft:lightning_grenade>:   [1, 20000],
/**/
} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  ba_lightning_flower.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces Aprox. "~manaTotal~" Mana per Lightning Strike."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem('item_input', item * consumption)
  .requireDuration("cooldown", 1000)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var ba_snow_flower = <assembly:ba_snow_flower>;
ba_snow_flower.addJEICatalyst(<botania:specialflower>.withTag({type: "ba_snow_flower"}));
ba_snow_flower.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "ba_snow_flower"}));
ba_snow_flower.setJEIItemSlot(0, 0, 'item_input');
ba_snow_flower.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
ba_snow_flower.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
  <minecraft:snow_layer>:   [1, 200],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  ba_snow_flower.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per tick while Snowing."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------

var ba_rain_flower = <assembly:ba_rain_flower>;
ba_rain_flower.addJEICatalyst(<botania:specialflower>.withTag({type: "ba_rain_flower"}));
ba_rain_flower.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "ba_rain_flower"}));
ba_rain_flower.setJEIItemSlot(0, 0, 'item_input');
ba_rain_flower.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
ba_rain_flower.setJEIItemSlot(2, 0, 'output0');

for item, arr in {
  <forestry:iodine_capsule>:   [1, 200],

} as int[][IItemStack] {
  val consumption = arr[0];
  val manaTotal = arr[1];
  ba_rain_flower.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addItemOutput('output0',
      <botania:manatablet>.withTag({mana: min(500000, manaTotal), display:{Name:"§b Produces "~manaTotal~" Mana per tick while Raining."}})
      * (manaTotal / 500000 + 1)
    );
  })
  .requireItem("item_input", item * consumption) 
  );
}

