execute as @s[scores={iris_state=38}] run playsound minecraft:stargates.milky_way_iris_open block @a[distance=0..18]

execute as @s[scores={iris_state=1}] run kill @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate]

execute as @s[scores={iris_state=1}] if entity @e[tag=stargate,tag=event_horizon,distance=0..0.5] run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=15] replace barrier
execute as @s[scores={iris_state=1}] unless entity @e[tag=stargate,tag=event_horizon,distance=0..0.5] run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=0] replace barrier

execute as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] at @s run tp @s ~ ~ ~ ~ ~-1
scoreboard players remove @s iris_state 1