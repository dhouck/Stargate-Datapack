function connection:redstone

# Outbound
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=1..400}] at @s run function connection:main_stargate_state
# Inbound
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=2000..}] at @s run function connection:main_stargate_state
# Shutdown
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=1000..1040}] at @s run function connection:main_stargate_state


function connection:player_transport

execute as @e[scores={travel_cooldown=100}] run scoreboard players set @s travel_cooldown 0
execute as @e[scores={travel_cooldown=1..}] at @s unless block ~ ~ ~ minecraft:light run scoreboard players add @s travel_cooldown 1
