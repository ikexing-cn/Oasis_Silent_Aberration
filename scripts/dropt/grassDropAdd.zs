import mods.dropt.Dropt;

Dropt.list("grass_add")
    .add(Dropt.rule()
    .matchBlocks(["thebetweenlands:swamp_double_tallgrass", "thebetweenlands:swamp_tallgrass"])
    .replaceStrategy("ADD")
    .addDrop(Dropt.drop()
        .selector(Dropt.weight(85)) 
        )
    .addDrop(Dropt.drop()
        .selector(Dropt.weight(15))
        .items([<item:pyrotech:material:12>])
        )
);