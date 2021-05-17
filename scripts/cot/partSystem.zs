#norun
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;

import mods.contenttweaker.MaterialSystem;


val partBuild as string[string] = {
    item : "cluster"
};



for builder in partBuild.entrySet {
    val partBuilder as PartBuilder = MaterialSystem.getPartBuilder();
    partBuilder.setName(builder.value);
    partBuilder.setPartType(MaterialSystem.getPartType(builder.key));
    partBuilder.build();
}