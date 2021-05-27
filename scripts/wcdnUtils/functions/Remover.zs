#priority 2047
import crafttweaker.item.IItemStack;

import mods.immersiveengineering.AlloySmelter as AlloySmelter;
import mods.immersiveengineering.ArcFurnace as ArcFurnace;
import mods.immersiveengineering.MetalPress as MetalPress;

import mods.embers.Stamper as Stamper;

function removeMetalByOutput(output as IItemStack) {
    recipes.remove(output);
    furnace.remove(output);
    AlloySmelter.removeRecipe(output);
    ArcFurnace.removeRecipe(output);
    MetalPress.removeRecipe(output);
    Stamper.remove(output);
}