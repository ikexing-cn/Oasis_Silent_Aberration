#loader contenttweaker
#priority 256

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;

import scripts.cot.system.partSystem as IPS;

val  materialBuild as int[string] = {
    Copper : 0xe9893a ,
    Gold : 0xcacb6e,
    Abyssalnite : 0x5722A0,

};

val alloyBuild as int[string] = {
    Bronze : 0xe9b23a
};

for materialBuilders in materialBuild.entrySet {
    val materialBuilder as MaterialBuilder = MaterialSystem.getMaterialBuilder();
    materialBuilder.setName(materialBuilders.key);
    materialBuilder.setColor(materialBuilders.value);
    for parts in IPS.partBuild.entrySet {
    materialBuilder.build().registerPart(parts.value);
    }
    for parts2 in IPS.partBuild2.entrySet {
    materialBuilder.build().registerPart(parts2.value);
    }
}
for alloyBuilders in materialBuild.entrySet {
    val alloyBuilder as MaterialBuilder = MaterialSystem.getMaterialBuilder();
    alloyBuilder.setName(alloyBuilders.key);
    alloyBuilder.setColor(alloyBuilders.value);
    for parts2 in IPS.partBuild2.entrySet {
    alloyBuilder.build().registerPart(parts2.value);
    }
}