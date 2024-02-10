scoreboard players operation @s selected_slot_d = @s u_selected_slot

scoreboard players set @s[nbt={SelectedItemSlot:0}] u_selected_slot 0
scoreboard players set @s[nbt={SelectedItemSlot:1}] u_selected_slot 1
scoreboard players set @s[nbt={SelectedItemSlot:2}] u_selected_slot 2
scoreboard players set @s[nbt={SelectedItemSlot:3}] u_selected_slot 3
scoreboard players set @s[nbt={SelectedItemSlot:4}] u_selected_slot 4
scoreboard players set @s[nbt={SelectedItemSlot:5}] u_selected_slot 5
scoreboard players set @s[nbt={SelectedItemSlot:6}] u_selected_slot 6
scoreboard players set @s[nbt={SelectedItemSlot:7}] u_selected_slot 7
scoreboard players set @s[nbt={SelectedItemSlot:8}] u_selected_slot 8

execute as @s[scores={u_selected_slot=6..8, selected_slot_d=0..2}] run scoreboard players remove @s u_dhd_page 1
execute as @s[scores={u_selected_slot=0..2, selected_slot_d=6..8}] run scoreboard players add @s u_dhd_page 1

execute as @s[scores={u_dhd_page=4..}] run scoreboard players set @s u_dhd_page 0
execute as @s[scores={u_dhd_page=..-1}] run scoreboard players set @s u_dhd_page 3

scoreboard players operation @s u_selected_glyph = @s u_selected_slot
scoreboard players add @s[scores={u_dhd_page=1}] u_selected_glyph 9
scoreboard players add @s[scores={u_dhd_page=2}] u_selected_glyph 18
scoreboard players add @s[scores={u_dhd_page=3}] u_selected_glyph 27

function universe_dhd:dhd_item

execute as @s[scores={u_address_menu=1,used_u_dhd=1..}] run scoreboard players operation @s p1 = @s u_selected_glyph
execute as @s[scores={u_address_menu=2,used_u_dhd=1..}] run scoreboard players operation @s p2 = @s u_selected_glyph
execute as @s[scores={u_address_menu=3,used_u_dhd=1..}] run scoreboard players operation @s p3 = @s u_selected_glyph
execute as @s[scores={u_address_menu=4,used_u_dhd=1..}] run scoreboard players operation @s p4 = @s u_selected_glyph
execute as @s[scores={u_address_menu=5,used_u_dhd=1..}] run scoreboard players operation @s p5 = @s u_selected_glyph
execute as @s[scores={u_address_menu=6,used_u_dhd=1..}] run scoreboard players operation @s p6 = @s u_selected_glyph
execute as @s[scores={u_address_menu=7,used_u_dhd=1..}] run scoreboard players operation @s p7 = @s u_selected_glyph
execute as @s[scores={u_address_menu=8,used_u_dhd=1..}] run scoreboard players operation @s p8 = @s u_selected_glyph
execute as @s[scores={u_address_menu=9,used_u_dhd=1..}] run scoreboard players operation @s p9 = @s u_selected_glyph

scoreboard players add @s[scores={used_u_dhd=1..}] u_address_menu 1
scoreboard players set @s[scores={used_u_dhd=1..}] used_u_dhd 0



