tag @e[tag=stargate,tag=ctrl] add destroy

execute as @e[tag=stargate,tag=ctrl,tag=7x7,tag=X] at @s positioned ~ ~-0.9 ~ if block ~0 ~-1 ~ minecraft:barrier if block ~1 ~-1 ~ minecraft:barrier if block ~2 ~-1 ~ minecraft:barrier if block ~3 ~-1 ~ minecraft:barrier if block ~3 ~1 ~ minecraft:barrier if block ~3 ~2 ~ minecraft:barrier if block ~3 ~3 ~ minecraft:barrier if block ~3 ~4 ~ minecraft:barrier if block ~3 ~5 ~ minecraft:barrier if block ~2 ~5 ~ minecraft:barrier if block ~1 ~5 ~ minecraft:barrier if block ~0 ~5 ~ minecraft:barrier if block ~-1 ~5 ~ minecraft:barrier if block ~-2 ~5 ~ minecraft:barrier if block ~-3 ~5 ~ minecraft:barrier if block ~-3 ~4 ~ minecraft:barrier if block ~-3 ~3 ~ minecraft:barrier if block ~-3 ~2 ~ minecraft:barrier if block ~-3 ~1 ~ minecraft:barrier if block ~-3 ~-1 ~ minecraft:barrier if block ~-2 ~-1 ~ minecraft:barrier if block ~-1 ~-1 ~ minecraft:barrier run tag @s remove destroy

execute as @e[tag=stargate,tag=ctrl,tag=7x7,tag=Z] at @s positioned ~ ~-0.9 ~ if block ~ ~-1 ~0 minecraft:barrier if block ~ ~-1 ~1 minecraft:barrier if block ~ ~-1 ~2 minecraft:barrier if block ~ ~-1 ~3 minecraft:barrier if block ~ ~1 ~3 minecraft:barrier if block ~ ~2 ~3 minecraft:barrier if block ~ ~3 ~3 minecraft:barrier if block ~ ~4 ~3 minecraft:barrier if block ~ ~5 ~3 minecraft:barrier if block ~ ~5 ~2 minecraft:barrier if block ~ ~5 ~1 minecraft:barrier if block ~ ~5 ~0 minecraft:barrier if block ~ ~5 ~-1 minecraft:barrier if block ~ ~5 ~-2 minecraft:barrier if block ~ ~5 ~-3 minecraft:barrier if block ~ ~4 ~-3 minecraft:barrier if block ~ ~3 ~-3 minecraft:barrier if block ~ ~2 ~-3 minecraft:barrier if block ~ ~1 ~-3 minecraft:barrier if block ~ ~-1 ~-3 minecraft:barrier if block ~ ~-1 ~-2 minecraft:barrier if block ~ ~-1 ~-1 minecraft:barrier run tag @s remove destroy


execute as @e[tag=stargate,tag=ctrl,tag=5x5,tag=X] at @s if block ~2 ~0 ~ minecraft:barrier if block ~-2 ~0 ~ minecraft:barrier if block ~2 ~1 ~ minecraft:barrier if block ~-2 ~1 ~ minecraft:barrier if block ~2 ~2 ~ minecraft:barrier if block ~-2 ~2 ~ minecraft:barrier if block ~-2 ~3 ~ minecraft:barrier if block ~-1 ~3 ~ minecraft:barrier if block ~0 ~3 ~ minecraft:barrier if block ~1 ~3 ~ minecraft:barrier if block ~2 ~3 ~ minecraft:barrier run tag @s remove destroy


execute as @e[tag=stargate,tag=ctrl,tag=5x5,tag=Z] at @s if block ~ ~0 ~2 minecraft:barrier if block ~ ~0 ~-2 minecraft:barrier if block ~ ~1 ~2 minecraft:barrier if block ~ ~1 ~-2 minecraft:barrier if block ~ ~2 ~2 minecraft:barrier if block ~ ~2 ~-2 minecraft:barrier if block ~ ~3 ~-2 minecraft:barrier if block ~ ~3 ~-1 minecraft:barrier if block ~ ~3 ~0 minecraft:barrier if block ~ ~3 ~1 minecraft:barrier if block ~ ~3 ~2 minecraft:barrier run tag @s remove destroy

tag @e[tag=stargate,tag=ctrl,tag=orlin,tag=damage_gate_now] add destroy

execute as @e[tag=stargate,tag=ctrl,tag=destroy] at @s run function deconstructor:stargates/main_destroy
