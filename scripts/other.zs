#loader crafttweaker reloadableevents

mods.initialinventory.InvHandler.addStartingItem(<pouchofunknown:pouch>.withTag({Inventory: [
    { id: "tconstruct:book", Count: 1 as byte, Damage: 0 as short},
    { id: "conarm:book", Count: 1 as byte, Damage: 0 as short},
    { id: "botania:lexicon", Count: 1 as byte, Damage: 0 as short}
    ]}));

mods.initialinventory.InvHandler.addStartingItem(<patchouli:guide_book:0>.withTag({"patchouli:book": "patchouli:modpack_book"}));