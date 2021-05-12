#loader crafttweaker reloadableevents
#priority 0

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;

var importantBlock as IItemStack[] = [
    <minecraft:grass_path>,
    <minecraft:gravel>,
    <minecraft:dirt:*>,
    <minecraft:sand:*>,
    <minecraft:mycelium>,
    <minecraft:grass>,
    <minecraft:ice>,
    <minecraft:packed_ice>,
    <futuremc:blue_ice>,
    <minecraft:farmland>,
    <thebetweenlands:mud>,
    <thebetweenlands:swamp_grass>,
    <thebetweenlands:swamp_dirt>,
    <thebetweenlands:coarse_swamp_dirt>,
    <thebetweenlands:compacted_mud>,
    <thebetweenlands:dead_grass>
    ];

for i , block in importantBlock {
    block.asBlock().definition.setHarvestLevel("",0);
}

events.onPlayerBreakSpeed(function(event as PlayerBreakSpeedEvent) {
    if(event.block.definition.harvestTool.isEmpty) return; 
    else {
        if(isNull(event.player.currentItem)) event.cancel();
        else {
            if(event.block.definition.isToolEffective(event.player.currentItem.toolClasses[0], event.blockState)) return; 
            else event.cancel();
            
        }
    }
});
