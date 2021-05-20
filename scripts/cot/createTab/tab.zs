#loader contenttweaker
#priority 256
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val logoItem as Item = VanillaFactory.createItem("logo_item");
logoItem.register();

val OSATab as CreativeTab = VanillaFactory.createCreativeTab("osa", <item:contenttweaker:logo_item>);
OSATab.register();

