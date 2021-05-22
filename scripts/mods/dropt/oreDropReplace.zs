#priority -1
import mods.dropt.Dropt;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

for oreDrop in oreDict.entries {
    var oreDicts as string = oreDrop.name;
    if(oreDicts has "cluster") {
        var oreCluster as string = oreDicts.substring("cluster".length);
        var oreClusters as IItemStack = oreDict.get("cluster" ~ oreCluster).firstItem;
        var oreBlock as IOreDictEntry = oreDict.get("ore" ~ oreCluster);
        for i, block in oreBlock.items {
            Dropt.list("ore_drop"~i)
            .add(Dropt.rule()
            .matchBlocks([block.definition.id ~ ":" ~ block.metadata])
            .matchDrops([block.definition.makeStack(block.metadata)])
            .replaceStrategy("REPLACE_ITEMS")
            .addDrop(Dropt.drop()
                .items([oreClusters])
                )
            .addDrop(Dropt.drop()
                .selector(Dropt.weight(5))
                .items([oreClusters])
                )
            );
        }
        var oreNetherBlock as IOreDictEntry = oreDict.get("oreNether" ~ oreCluster);
        for i, block in oreNetherBlock.items {
            Dropt.list("ore_nether_drop"~i)
            .add(Dropt.rule()
            .matchBlocks([block.definition.id ~ ":" ~ block.metadata])
            .matchDrops([block.definition.makeStack(block.metadata)])
            .replaceStrategy("REPLACE_ITEMS")
            .addDrop(Dropt.drop()
                .items([oreClusters])
                )
            .addDrop(Dropt.drop()
                .selector(Dropt.weight(25))
                .items([oreClusters])
                )
            );
        }var oreEndBlock as IOreDictEntry = oreDict.get("oreEnd" ~ oreCluster);
        for i, block in oreEndBlock.items {
            Dropt.list("ore_end_drop"~i)
            .add(Dropt.rule()
            .matchBlocks([block.definition.id ~ ":" ~ block.metadata])
            .matchDrops([block.definition.makeStack(block.metadata)])
            .replaceStrategy("REPLACE_ITEMS")
            .addDrop(Dropt.drop()
                .items([oreClusters])
                )
            .addDrop(Dropt.drop()
                .selector(Dropt.weight(30))
                .items([oreClusters])
                )
            );
        }
    }
}

Dropt.list("oreCoralium")
    .add(Dropt.rule()
    .matchBlocks(["abyssalcraft:coraliumore", "abyssalcraft:abycorore"])
    .addDrop(Dropt.drop().items([<jaopca:item_clusterliquifiedcoralium>]))
    .addDrop(Dropt.drop().selector(Dropt.weight(5)).items([<jaopca:item_clusterliquifiedcoralium>]))
);
