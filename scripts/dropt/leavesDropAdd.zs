import mods.dropt.Dropt;

import crafttweaker.oredict.IOreDictEntry;

for leaf in oreDict.entries {
    var leaves as IOreDictEntry = oreDict.get("treeLeaves");
    for Ileaves in leaves.items {
        if(Ileaves.definition.owner == "thebetweenlands") {
            Dropt.list("grass_add")
                .add(Dropt.rule()
                .matchBlocks([Ileaves.definition.id ~ ":" ~ Ileaves.metadata])
                .matchDrops([<minecraft:stick>])
                .replaceStrategy("REPLACE_ITEMS")
                .addDrop(Dropt.drop()
                    .items([<item:thebetweenlands:items_misc:20>])
                )
            );
        }
    }
}