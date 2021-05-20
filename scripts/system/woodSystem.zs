#priority 1
import mods.pyrotech.Chopping;
import mods.pyrotech.BrickSawmill;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var logDictAdd as IItemStack[] = [
    <aether:skyroot_log>,
    <aether:dark_skyroot_log>,
    <aether:light_skyroot_log>,
    <aether:therawood_log>
];
var plankDictAdd as IItemStack[] = [
    <aether:skyroot_planks>,
    <aether:dark_skyroot_planks>,
    <aether:light_skyroot_planks>,
    <aether:therawood_planks>
];

var slabDictAdd as IItemStack[] = [
    <aether:skyroot_slab>,
    <aether:greatroot_slab>,
    <aether:wisproot_slab>,
    <aether:therawood_slab>
];

for adds in logDictAdd {
    <ore:logWood>.add(adds);
}
for adds in plankDictAdd {
    <ore:plankWood>.add(adds);
}

for adds in slabDictAdd {
    <ore:slabWood>.add(adds);
}

for i, item in <ore:plankWood>.items{
    for recipe in recipes.getRecipesFor(item){
        var rec1D as IIngredient[] = recipe.ingredients1D;
        if(rec1D.length == 1){
            for wood in rec1D[0].items{
                if(<ore:logWood>.matches(wood)){
                recipes.removeByRecipeName(recipe.fullResourceDomain);
                var input_name as string = wood.definition.id ~ wood.metadata;
                Chopping.addRecipe("log_to_plank_" ~ input_name.replace(":", "_"), recipe.output, wood, true);
                }
            }
        }
    }
}

for i, item in <ore:slabWood>.items{
    for recipe in recipes.getRecipesFor(item){
        var rec1D as IIngredient[] = recipe.ingredients1D;
        if(rec1D.length == 3){
            for plank in rec1D[0].items{
                if(<ore:plankWood>.matches(plank)){
                recipes.removeByRecipeName(recipe.fullResourceDomain);
                var input_name as string = plank.definition.id ~ plank.metadata;
                Chopping.addRecipe("plank_to_slab_" ~ input_name.replace(":", "_"), recipe.output, plank, true);
                }
            }
        }
    }
}