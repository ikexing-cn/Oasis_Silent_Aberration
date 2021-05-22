#loader contenttweaker
#priority 258

import scripts.grassUtils.classes.MaterialSystemHelper as MSH;


static partBuild as string[string] = {
    "clusterBroken" : "cluster_broken",
    "crudeDust" : "crude_dust",
    "crudeIngot" : "crude_ingot",
    "pureFragments" : "pure_fragments",
    "unformedIngot" : "unformed_ingot",
};

for ODname, name in partBuild {
    part.partCreator("item", name, ODname);
    MSH.registerNormalPart(name, "item", false);
}