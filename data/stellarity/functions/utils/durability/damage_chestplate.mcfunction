
#modify item
data modify storage stellarity:temp object set from entity @s Inventory[{Slot:102b}]
execute unless data storage stellarity:temp object.tag.stellar_durability{init:1b} run function stellarity:utils/durability/init_item

function stellarity:utils/durability/change_durability
data remove storage stellarity:temp object.tag.display.Lore[-1]

#destroy item if broken
item modify entity @s armor.chest stellarity:append_durability_lore
execute if score $player.out_0 stellarity.misc matches -1..0 at @s run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $player.out_0 stellarity.misc matches 0 run item replace entity @s armor.chest with minecraft:air