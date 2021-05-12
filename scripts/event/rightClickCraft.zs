#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;
import crafttweaker.text.ITextComponent;
import crafttweaker.block.IBlockState;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
{
    if(!isNull(event.item) && event.item.definition.id == "minecraft:flint" && event.block.definition.isToolEffective("pickaxe", event.blockState)) {
        event.world.playSound("minecraft:block.stone.break", "block", event.player.position, 2, 1);
        if(!event.world.remote && event.world.random.nextInt(1, 9) <= 5) {
            event.player.currentItem.mutable().shrink(1);
            event.player.give(<tconstruct:shard>.withTag({Material: "flint"}));
            ITextComponent.fromTranslation("text.success");
        }else {
            event.player.currentItem.mutable().shrink(1);
            ITextComponent.fromTranslation("text.fail");}
}}});

