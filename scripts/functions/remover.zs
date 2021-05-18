#priority 0
import crafttweaker.item.IItemStack;

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.MetalPress;

import mods.embers.Stamper;

function removeMetalByOutput (output as IItemStack) {
    mods.immersiveengineering.ArcFurnace.removeRecipe(output);
    mods.immersiveengineering.MetalPress.removeRecipe(output);

    furnace.remove(output);
    recipes.remove(output);

    mods.embers.Stamper.remove(output);
}