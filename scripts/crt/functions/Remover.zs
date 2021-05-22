#priority 255
import crafttweaker.item.IItemStack;

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.AlloySmelter;

import mods.embers.Stamper;

import mods.pyrotech.Bloomery;

function removeMetalByOutput (output as IItemStack) {
    mods.immersiveengineering.ArcFurnace.removeRecipe(output);
    mods.immersiveengineering.MetalPress.removeRecipe(output);
    mods.immersiveengineering.AlloySmelter.removeRecipe(output);

    furnace.remove(output);
    recipes.remove(output);

    mods.embers.Stamper.remove(output);
}
