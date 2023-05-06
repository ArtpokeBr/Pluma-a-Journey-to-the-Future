import mods.thaumcraft.ArcaneWorkbench as ArcaneWorkbench;

# [Ender Tank] from [HV Pump][+11]
<enderstorage:ender_storage:1>.addTooltip(format.white("Also able to ") + format.green("Transfer Mekanism Gasses."));
<enderstorage:ender_storage:1>.addTooltip(format.white("And Capable of ") + format.blue("Auto Exporting up to 1024 mb/t."));
recipes.remove(<enderstorage:ender_storage:1>);
ArcaneWorkbench.registerShapedRecipe(
  "enderstorage:ender_storage_1", # Name
  "TAR_MITHRILLIUM", # Research
  100, # Vis cost
  [<aspect:aer> * 10, <aspect:terra> * 10, <aspect:aqua> * 10, <aspect:ignis> * 10, <aspect:perditio> * 10, <aspect:ordo> * 10, ],
  <enderstorage:ender_storage:1>, # Output
  Grid(["pretty",
  "/ W /",
  "□ C □",
  "/ п /"], {
  "/": <ore:rodBlaze>,                  # Blaze Rod
  "W": <quark:quilted_wool>,            # White Quilted Wool
  "□": <ore:lightPlateRefinedObsidian>, # Light Refined Obsidian Plate
  "C": <gregtech:meta_item_1:144>,      # HV Pump
  "п": <ore:plateMithrillium>,          # Mithrillium Plate
}).shaped());

# [Ender Chest] from [HV Robot Arm][+11]
recipes.remove(<enderstorage:ender_storage>);
ArcaneWorkbench.registerShapedRecipe(
  "enderstorage:ender_storage", # Name
  "TAR_MITHRILLIUM", # Research
  100, # Vis cost
  [<aspect:aer> * 10, <aspect:terra> * 10, <aspect:aqua> * 10, <aspect:ignis> * 10, <aspect:perditio> * 10, <aspect:ordo> * 10, ],
  <enderstorage:ender_storage>, # Output
  Grid(["pretty",
  "/ W /",
  "□ c □",
  "/ п /"], {
  "/": <ore:rodBlaze>,                  # Blaze Rod
  "W": <quark:quilted_wool>,            # White Quilted Wool
  "□": <ore:lightPlateRefinedObsidian>, # Light Refined Obsidian Plate
  "c": <gregtech:meta_item_1:189>,      # HV Robot Arm
  "п": <ore:plateMithrillium>,          # Mithrillium Plate
}).shaped());

# [Ender Pouch] from [Hand of Ender][+10]
recipes.remove(<enderstorage:ender_pouch>);
ArcaneWorkbench.registerShapedRecipe(
  "enderstorage:ender_pouch", # Name
  "TAR_MITHRILLIUM", # Research
  50, # Vis cost
  [<aspect:aer> * 5, <aspect:terra> * 5, <aspect:aqua> * 5, <aspect:ignis> * 5, <aspect:ordo> * 5, <aspect:perditio> * 5, ],
  <enderstorage:ender_pouch>, # Output
  Grid(["pretty",
  "▲ M ▲",
  "M H M",
  "▲ W ▲"], {
  "▲": <ore:dustBlaze>,                  # Blaze Powder
  "M": <contenttweaker:magical_leather>, # Magical Leather
  "H": <botania:enderhand>,              # Hand of Ender
  "W": <quark:quilted_wool>,             # White Quilted Wool
}).shaped());