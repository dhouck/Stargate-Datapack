scoreboard players set @s[nbt={SelectedItemSlot:0}] u_selected_glyph 0
scoreboard players set @s[nbt={SelectedItemSlot:1}] u_selected_glyph 1
scoreboard players set @s[nbt={SelectedItemSlot:2}] u_selected_glyph 0
scoreboard players set @s[nbt={SelectedItemSlot:3}] u_selected_glyph 1
scoreboard players set @s[nbt={SelectedItemSlot:4}] u_selected_glyph 0
scoreboard players set @s[nbt={SelectedItemSlot:5}] u_selected_glyph 1
scoreboard players set @s[nbt={SelectedItemSlot:6}] u_selected_glyph 0
scoreboard players set @s[nbt={SelectedItemSlot:7}] u_selected_glyph 1
scoreboard players set @s[nbt={SelectedItemSlot:8}] u_selected_glyph 0

# replaceitem entity @s[scores={u_selected_glyph=0}] weapon.offhand minecraft:snowball{CustomModelData:37,display:{Name:"[{\"text\":\"Remote DHD\"}]",Lore:["{\"text\":\"Remote_DHD\"}"]}}
# replaceitem entity @s[scores={u_selected_glyph=1}] weapon.offhand minecraft:snowball{CustomModelData:38,display:{Name:"[{\"text\":\"Remote DHD\"}]",Lore:["{\"text\":\"Remote_DHD\"}"]}}

scoreboard players set @s[scores={u_selected_glyph=0,used_u_dhd=1..}] u_address_menu -1
scoreboard players set @s[scores={u_selected_glyph=1,used_u_dhd=1..}] u_address_menu 1

scoreboard players set @s used_u_dhd 0
