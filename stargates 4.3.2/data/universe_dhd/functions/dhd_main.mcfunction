tag @a remove has_u_dhd
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:snowball", tag:{display:{Name:"[{\"text\":\"Remote DHD\"}]",Lore:["{\"text\":\"Remote_DHD\"}"]}}}]}] add has_u_dhd

execute as @a[tag=has_u_dhd,scores={u_address_menu=1..}] run function universe_dhd:dhd_menu_dial
execute as @a[tag=has_u_dhd,scores={u_address_menu=0}] run function universe_dhd:dhd_home