#Credits to Krutoy, who is the original Author of this Script!
#modloaded botanicadds

# Fix recipe that appears on every item in game
<botanicadds:mana_tesseract>.addTooltip(format.white("Mix it in the Crafting Grid with ") + format.green("Any Item/Block") + format.white(" to set a channel"));

recipes.remove(<botanicadds:mana_tesseract>);
recipes.addHiddenShapeless("mana_tesseract_bind", <botanicadds:mana_tesseract>, [<botanicadds:mana_tesseract:*>, <*>.marked('marked')],
  function(out, ins, cInfo) {
    return out.updateTag({Channel: ins.marked.commandString.hashCode()});
  }, 
null);