#priority 254
import crafttweaker.oredict.IOreDictEntry;
import scripts.wcdnUtils.functions.Remover as remover;
import crafttweaker.item.IItemDefinition;

import scripts.wcdnUtils.functions.Getter as getter;

var removePartList as string[] = [
    "ingot",
    "plate",
    "gear",
    "block",
    "stick",
    "blockSheetmetal",
    "slabSheetmetal",
    "nugget"
];


for part in removePartList {
    for metal in getter.metalGetter() {
        var removes = getter.odNameToIItemStack(part ~ metal);
        for IRemove in removes{
            remover.removeMetalByOutput(IRemove.definition.makeStack(IRemove.metadata));
        }
    }
}
