#loader crafttweaker reloadableevents

import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import mods.ctutils.utils.Math;

for plankRecipe in recipes.getRecipesFor(<ore:plankWood>) {
    var rec1D as IIngredient[] = plankRecipe.ingredients1D;
    for i in rec1D[0].items {
        if(<ore:logWood>.matches(i)) {
            rec1D += <item:tconstruct:hatchet>.anyDamage().transformDamage(1).marked("l");
            recipes.removeByRecipeName(plankRecipe.fullResourceDomain);
            recipes.addShapeless(plankRecipe.getName(), plankRecipe.output, rec1D, 
            function(out,ins,info) {
                var levelInt = ins.l.tag.StatsOriginal.HarvestLevel.asInt();
                var level = 1 + Math.clamp(levelInt, 1, 3);
                return out * level;
            }, null);
        }
    }
}

for slabWoodRecipe in recipes.getRecipesFor(<ore:slabWood>) {
    var rec2D as IIngredient[][] = slabWoodRecipe.ingredients2D;
    for i in rec2D[0][0].items {
        if(<ore:plankWood>.matches(i)) {
            var plank as IIngredient[] = [rec2D[0][0], <item:tconstruct:hatchet>.anyDamage().transformDamage(1).marked("l")];
            recipes.removeByRecipeName(slabWoodRecipe.fullResourceDomain);
            recipes.addShapeless(slabWoodRecipe.getName(), slabWoodRecipe.output, plank, 
            function(out,ins,info) {
                return ins.l.tag.StatsOriginal.HarvestLevel.asInt() >= 2 ? out * 2 : out * 1;
            }, null);

        }
    }
}