# Ported from DJ2 with Permition from Waitingldly

import dj2addons.botania.Brews;
import dj2addons.botania.Brew;

# Saturation Brew
Brews.addBrewRecipe(
    Brews.makeBrew(
        "dj2addons.saturegen",
        "dj2addons.brew.saturegen",
        100000,
        16262179,
        <potion:dj2addons:saturegen>.makePotionEffect(20 * 60 * 60 * 2, 0) // brew will last an hour
    ),
    [<minecraft:nether_wart>, <totemic:cooked_buffalo_meat>, <harvestcraft:thankfuldinneritem>, <harvestcraft:gourmetbeefburgeritem>, <harvestcraft:meatfeastpizzaitem>]
);

# Warp Ward Brew
mods.botania.Brew.removeRecipe("warpWard");
Brews.addBrewRecipe(
    Brews.makeBrew(
        "thaumcraft:warpward",
        "Sane Thoughts",
        100000,
        16503291,
        <potion:thaumcraft:warpward>.makePotionEffect(20 * 60 * 60 * 2, 0) // brew will last an hour
    ),
    [<minecraft:nether_wart>, <thaumcraft:salis_mundus>, <thaumcraft:bath_salts>, <thaumcraft:sanity_soap>, <contenttweaker:conducted_impetus>, <thaumcraft:sanity_checker>]
);