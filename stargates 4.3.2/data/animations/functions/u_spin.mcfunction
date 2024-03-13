scoreboard players add @s[scores={u_rotate_dif=0},tag=!spin] d_animation_3 1
tag @s[scores={u_rotate_dif=1..}] add spin
tag @s[scores={u_rotate_dif=..-1}] add spin
execute as @s[scores={d_animation_3=1..,u_rotate_dif=..-1},tag=spin] at @s run scoreboard players add @s r 1
execute as @s[scores={d_animation_3=1..,u_rotate_dif=..-1},tag=spin] at @s run scoreboard players add @e[type=armor_stand,tag=stargate,tag=universe,tag=chevron_light] r 1
execute as @s[scores={d_animation_3=1..,u_rotate_dif=..-1},tag=spin] at @s run scoreboard players add @s u_rotate_dif 1
execute as @s[scores={d_animation_3=1..,u_rotate_dif=1..},tag=spin] at @s run scoreboard players remove @s r 1
execute as @s[scores={d_animation_3=1..,u_rotate_dif=1..},tag=spin] at @s run scoreboard players remove @e[type=armor_stand,tag=stargate,tag=universe,tag=chevron_light] r 1
execute as @s[scores={d_animation_3=1..,u_rotate_dif=1..},tag=spin] at @s run scoreboard players remove @s u_rotate_dif 1
scoreboard players remove @e[type=armor_stand,tag=universe,scores={r=359..}] r 360
scoreboard players add @e[type=armor_stand,tag=universe,scores={r=..0}] r 360
tag @s[scores={u_rotate_dif=0}] remove spin