#loader contenttweaker
#norun

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;

val  materialBuild as int[string] = {
    copper : 0xe9893a ,
    bronze : 0xe9b23a
};

val parts as string[] = [
        "ingot",
        "plate",
        "molten",
        "block",
        "ore",
        "nugget",
        "dust",
        "cluster"
];

for builder in materialBuild.entrySet {
    val materialBuilder as MaterialBuilder = MaterialSystem.getMaterialBuilder();
    materialBuilder.setName(builder.key);
    materialBuilder.setColor(builder.value);
    materialBuilder.build().registerParts(parts);
    
}