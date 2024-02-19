execute as @e[scores={iris_state=5}] run playsound minecraft:stargates.pegasus_shield_deactivation block @a[distance=0..18]

execute as @e[scores={iris_state=1}] run kill @e[tag=iris,distance=0..0.5,tag=pegasus,tag=stargate]

execute as @s[scores={iris_state=1}] if entity @e[tag=stargate,tag=event_horizon,distance=0..0.5] run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=15] replace barrier
execute as @s[scores={iris_state=1}] unless entity @e[tag=stargate,tag=event_horizon,distance=0..0.5] run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=0] replace barrier

scoreboard players remove @s iris_state 1