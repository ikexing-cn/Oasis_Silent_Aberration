#loader contenttweaker
#priority 257

import scripts.cot.system.partSystem as IPS;

val  metalBuild as int[string] = {
    Copper : 0xe9893a ,
    Gold : 0xcacb6e,
    Abyssalnite : 0x5722A0,

};

val alloyBuild as int[string] = {
    Bronze : 0xe9b23a
};

for metal, color in metalBuild {
        IMetalBuilder.registerParts(IPS.partBuild);
        IMetalBuilder.registerParts(IPS.partBuild2);
    print(metal);
}
for alloy, color in alloyBuild {
    val IAlloyBuilder as Material = alloyBuilder.build();
        IAlloyBuilder.registerParts(IPS.partBuild2);
}