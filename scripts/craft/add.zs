#loader crafttweaker reloadableevents

import crafttweaker.item.IIngredient;

//event

//other

vanilla.seeds.addSeed(<item:zentweaker:plant_fibre> % 12);
vanilla.seeds.addSeed(<item:minecraft:stick> % 7);

//craft

recipes.addShapedMirrored(<zentweaker:flint_axe>, [
    [<tconstruct:shard>.withTag({Material: "flint"}).onlyWithTag({Material: "flint"}), <ore:stringAny>],
    [<tconstruct:shard>.withTag({Material: "flint"}).onlyWithTag({Material: "flint"}), <ore:stickWood>],]);
    
recipes.addShapeless(<zentweaker:plant_string>, [<zentweaker:plant_fibre>,<zentweaker:plant_fibre>,<zentweaker:plant_fibre>]);

recipes.addShapeless(<item:tconstruct:soil:0> * 4,[<item:thebetweenlands:swamp_dirt>,<item:thebetweenlands:sap_ball>,<item:thebetweenlands:mud>,<item:thebetweenlands:silt>]);

var output as IIngredient[] = [
    <ore:ingotIron>,
    <ore:ingotGold>,
    <ore:ingotAbyssalnite>,
    <ore:ingotLiquifiedCoralium>,
    <ore:ingotDreadium>,
    <ore:ingotTin>,
    <ore:ingotAstralStarmetal>,
    <ore:ingotCopper>,
    <ore:ingotAluminium>,
    <ore:ingotSilver>,
    <ore:ingotNickel>,
    <ore:ingotUranium>,
    <ore:ingotConstantan>,
    <ore:ingotElectrum>,
    <ore:ingotSteel>,
    <ore:ingotPrimordial>,
    <ore:ingotBoundMetal>,
    <ore:ingotSentientMetal>,
    <ore:ingotSyrmorite>,
    <ore:ingotOctine>,
    <ore:ingotCobalt>,
    <ore:ingotArdite>,
    ];

for i ,outputs in output {
    furnace.remove(outputs);}