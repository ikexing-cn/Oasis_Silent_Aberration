#loader contenttweaker
#priority 258
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;
import mods.contenttweaker.MaterialSystem;

static partBuild as string[string] = {
    item : "clusterBroken",
    item : "crudeDust",
    item : "crudeIngot",
};

static partBuild2 as string[string] = {
    item : "pureFragments",
    item : "unformedIngot",
    osaFluidType : "metalAlchemyFluid",
};

for builder in partBuild.entrySet {
    val partBuilder as PartBuilder = MaterialSystem.getPartBuilder();
    partBuilder.setName(builder.value);
    partBuilder.setPartType(MaterialSystem.getPartType(builder.key));
    partBuilder.setOreDictName(builder.value);
    partBuilder.build();
}

for builder2 in partBuild2.entrySet {
    val partBuilder2 as PartBuilder = MaterialSystem.getPartBuilder();
    partBuilder2.setName(builder2.value);
    partBuilder2.setPartType(MaterialSystem.getPartType(builder2.key));
   if (builder2.key != "osaFluidType" || builder2.key != "fluid" ||builder2.key != "minecraft" ) { 
       partBuilder2.setOreDictName(builder2.value);
   }
    partBuilder2.build();
}