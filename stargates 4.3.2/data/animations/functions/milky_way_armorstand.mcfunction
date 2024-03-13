#chevron 1
execute as @s[scores={d_animation_1=2}] run function animations:mw_chevron1

execute as @s[scores={d_animation_1=5}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=10}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=10}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=10}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=2] remove off
execute as @s[scores={d_animation_1=30}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 2
execute as @s[scores={d_animation_1=42}] run function animations:mw_chevron2

execute as @s[scores={d_animation_1=45}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=50}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=50}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=50}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=3] remove off
execute as @s[scores={d_animation_1=70}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 3
execute as @s[scores={d_animation_1=82}] run function animations:mw_chevron3

execute as @s[scores={d_animation_1=85}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=90}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=90}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=90}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=4] remove off
execute as @s[scores={d_animation_1=110}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 4
execute as @s[scores={d_animation_1=122}] run function animations:mw_chevron4

execute as @s[scores={d_animation_1=125}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=130}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=130}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=130}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=7] remove off
execute as @s[scores={d_animation_1=150}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 5
execute as @s[scores={d_animation_1=162}] run function animations:mw_chevron5

execute as @s[scores={d_animation_1=165}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=170}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=170}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=170}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=8] remove off
execute as @s[scores={d_animation_1=190}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 6
execute as @s[scores={d_animation_1=202}] run function animations:mw_chevron6

execute as @s[scores={d_animation_1=205}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=210}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=210}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=210}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=9] remove off
execute as @s[scores={d_animation_1=230}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off


#chevron 7
execute as @s[scores={d_animation_1=242,s8=1..}] run function animations:mw_chevron8
execute as @s[scores={d_animation_1=242,s8=0}] run function animations:mw_chevron7

execute as @s[scores={d_animation_1=245}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=250}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=250,s8=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=250,s8=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=5] remove off
execute as @s[scores={d_animation_1=270,s8=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off

execute as @s[scores={d_animation_1=250,s8=0}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off


#chevron 8
execute as @s[scores={d_animation_1=282,s8=1..,s9=0}] run function animations:mw_chevron7
execute as @s[scores={d_animation_1=282,s8=1..,s9=1..}] run function animations:mw_chevron9

execute as @s[scores={d_animation_1=285}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=290}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=290,s8=1..,s9=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off
execute as @s[scores={d_animation_1=290,s8=1..,s9=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=6] remove off
execute as @s[scores={d_animation_1=310,s8=1..,s9=1..}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] add off

execute as @s[scores={d_animation_1=290,s8=1..,s9=0}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off

#chevron 9
execute as @s[scores={d_animation_1=322}] run function animations:mw_chevron7

execute as @s[scores={d_animation_1=325}] run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_ring_spin

execute as @s[scores={d_animation_1=330}] at @s run playsound minecraft:stargates.milky_way_chevron_lock block @a[distance=0..18] ~ ~ ~ .5
execute as @s[scores={d_animation_1=330}] at @s run tag @e[type=armor_stand,tag=chevron,tag=milky_way,distance=0..0.1,tag=1] remove off


#rotate
function animations:mw_spin