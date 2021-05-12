#loader crafttweaker reloadableevents

var magic as string[] = [
    "wizardryfates"
];
for i, magics in magic{
    mods.compatskills.ModLock.addModLock(magics, "reskillable:magic|2");
    mods.ItemStages.stageModItems("magic", magics);
}


