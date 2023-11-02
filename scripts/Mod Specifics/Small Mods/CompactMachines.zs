# [Miniaturization Field Projector]*4 from [MV Circuit][+6]
recipes.removeByRecipeName("compactmachines3:fieldprojector");
craft.make(<compactmachines3:fieldprojector> * 4, ["pretty",
  "o п T",
  "A : A",
  "□ P □"], {
  "o": <ore:craftingToolScrewdriver> | <ore:gtceScrewdrivers>, # Neutronium Screwdriver
  "п": <ore:plateDenseEnergeticAlloy>,           # Dense Energetic Alloy Plate
  "T": <ore:craftingToolFile> | <ore:gtceFiles>, # Neutronium File
  "A": <ore:screwAluminium>,                     # Aluminium Screw
  ":": <ore:circuitMv>,                          # MV Circuit
  "□": <ore:plateDarkSteel>,                     # Dark Steel Plate
  "P": <compactmachines3:psd>.reuse(),           # Personal Shrinking Device
});

# [Personal Shrinking Device] from [Computer Monitor][+4]
recipes.removeByRecipeName("compactmachines3:psd");
craft.make(<compactmachines3:psd>, ["pretty",
  "□ L □",
  ": C :",
  "□ m □"], {
  "□": <ore:lightPlateAluminium>,    # Light Aluminium Plate
  "L": <gregtech:meta_item_1:232>,   # LV Sensor
  ":": <ore:circuitLv>,              # LV Circuit
  "C": <gregtech:meta_item_1:307>,   # Computer Monitor
  "m": <projectred-illumination:light_button>, # White Illumar Button
});

# [ME Capability Adapter] from [ME Interface][+2]
recipes.removeByRecipeName("rf-capability-adapter:aecapabilityadapter");
craft.make(<rf-capability-adapter:aecapabilityadapter>, ["pretty",
  "□ E □",
  "E M E",
  "□ E □"], {
  "□": <ore:plateHslaSteel>,                  # HSLA Steel Plate
  "E": <contenttweaker:estimation_processor>, # Estimation Processor
  "M": <appliedenergistics2:interface>,       # ME Interface
});