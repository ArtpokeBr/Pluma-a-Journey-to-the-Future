#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

# Blood Orb Variables
global blood_orb_at_least_tier_1 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_2 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_3 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_4 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_5 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_6 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
