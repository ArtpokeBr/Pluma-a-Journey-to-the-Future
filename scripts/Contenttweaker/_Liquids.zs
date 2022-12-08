#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

// Ghastlycerin ================================================================================

var ghastlycerin = VanillaFactory.createFluid("ghastlycerin", Color.fromHex("9cff75"));
ghastlycerin.luminosity = 1;
ghastlycerin.viscosity = 40000;
ghastlycerin.register();

// Liquid Mana ================================================================================

var liquid_mana = VanillaFactory.createFluid("liquid_mana", Color.fromHex("6ba0ff"));
liquid_mana.temperature = 1200;
liquid_mana.gaseous = false;
liquid_mana.density = 1001;
liquid_mana.luminosity = 15;
liquid_mana.viscosity = 300;
liquid_mana.stillLocation = "contenttweaker:fluids/liquid_mana";
liquid_mana.flowingLocation = "contenttweaker:fluids/liquid_mana_flowing";
liquid_mana.register();

// Nacre ================================================================================

var nacre = VanillaFactory.createFluid("nacre", Color.fromHex("e6efff"));
nacre.temperature = 120;
nacre.gaseous = false;
nacre.density = 1001;
nacre.luminosity = 15;
nacre.viscosity = 300;
nacre.stillLocation = "contenttweaker:fluids/nacre";
nacre.flowingLocation = "contenttweaker:fluids/nacre_flowing";
nacre.register();