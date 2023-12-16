#priority 4000

val localizationMap as string[string][string] = {
  en_us: {
    'ic2.dust.coal'            : 'Blackened Fruit',
    'ic2.dust.ender_pearl'     : 'Spectral Fruit',
    'ic2.dust.small_tin'       : 'Tiny Fruit',
    'ic2.dust.small_copper'    : 'Coppery Fruit',
    'ic2.dust.small_diamond'   : 'Gelided Fruit',
    'ic2.dust.small_gold'      : 'Golden Fruit',
    'ic2.dust.small_iron'      : 'Irony Fruit',
    'ic2.dust.small_lead'      : 'Leaden Fruit',
    'ic2.dust.small_silver'    : 'Silvery Fruit',
    'ic2.dust.sulfur'          : 'Fiery Fruit',
    'ic2.crop_res.coffee_beans': 'Arabica',
  }
};

for lang, entries in localizationMap {
  for f, l in entries {
    game.setLocalization(lang, f, l);
  }
}