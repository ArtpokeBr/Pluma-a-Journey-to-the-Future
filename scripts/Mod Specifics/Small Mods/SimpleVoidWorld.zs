# [Portal to the void] from [Void Bucket][+2]
recipes.removeByRecipeName("simplevoidworld:portal");
craft.make(<simplevoidworld:portal>, ["pretty",
  "P * P",
  "* ~ *",
  "P * P"], {
  "P": <stygian:endobsidian>,        # Porphyry 
  "*": <ore:EmpoweredAAVoidCrystal>, # Empowered Void Crystal
  "~": <quantumflux:voidbucket>,     # Void Bucket
});

