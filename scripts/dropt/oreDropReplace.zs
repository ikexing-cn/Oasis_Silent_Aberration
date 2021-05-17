import mods.dropt.Dropt;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

for oreDrop in oreDict.entries {
    var oreDicts as string = oreDrop.name;
    if(oreDicts has "cluster") {
        var oreCluster as string = oreDicts.substring("cluster".length);
        var oreClusters as IItemStack = oreDict.get("cluster" ~ oreCluster).firstItem;
        var oreBlock as IOreDictEntry = oreDict.get("ore" ~ oreCluster);
        for block in oreBlock.items {
            print(block.metadata);
            Dropt.list("ore_drop")
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
        for block in oreNetherBlock.items {
            print(block.metadata);
            Dropt.list("ore_nether_drop")
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
        for block in oreEndBlock.items {
            print(block.metadata);
            Dropt.list("ore_end_drop")
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

