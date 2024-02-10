execute as @e[type=armor_stand,tag=stargate,tag=universe,tag=ctrl,scores={d_animation_3=1..}] at @s run function animations:universe_armorstand

execute as @e[tag=universe,tag=ctrl,scores={stargate_state=1..}] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute as @e[tag=universe,tag=ctrl,scores={stargate_state=1..},tag=!on_sound] at @s run playsound minecraft:stargates.universe_gate_on block @a[distance=0..18]
execute as @e[tag=universe,tag=ctrl,scores={stargate_state=1..},tag=!on_sound] at @s run tag @s add on_sound
execute as @e[tag=universe,tag=ctrl,scores={stargate_state=0},tag=on_sound] at @s run playsound minecraft:stargates.universe_gate_off block @a[distance=0..18]
execute as @e[tag=universe,tag=ctrl,scores={stargate_state=0},tag=on_sound] at @s run tag @s remove on_sound

execute as @e[tag=universe,tag=ctrl,tag=!on,scores={stargate_state=0}] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set value 8