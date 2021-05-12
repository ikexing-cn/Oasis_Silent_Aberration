#loader crafttweaker reloadableevents

import crafttweaker.item.IIngredient;

var removes as IIngredient[] = [
];

//minecraft

for i , remove in removes
{
    recipes.remove(remove);
}
