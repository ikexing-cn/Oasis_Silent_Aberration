#loader contenttweaker
#priority 257

import scripts.grassUtils.CotUtils;
import scripts.wcdnUtils.functions.Getter as getter;

print(getter.metalGetter()[0]);

val partBuild as string[] = ["cluster_broken", "crude_dust", "crude_ingot", "pure_fragments", "unformed_ingot",];

val  metalBuild as int[string] = {
    Copper : 0xe9893a ,
    Gold : 0xcacb6e,
    Abyssalnite : 0x5722A0,

};

val alloyBuild as int[string] = {
    Bronze : 0xe9b23a
};

for metals, color in metalBuild {
    val metal = CotUtils.getMaterialSystemHelper(0);
        metal.registerMaterial(metals, color);
}

for alloys, color in alloyBuild {
    val alloy = CotUtils.getMaterialSystemHelper(1);
        alloy.registerMaterial(alloys, color);
}

for name in partBuild {
    for meatal in metalBuild {
        val part = CotUtils.getMaterialSystemHelper(2);
            part.registerNormalPart(name, "item", false);
            part.registerMaterialPartsByMaterial(meatal);
    }
}