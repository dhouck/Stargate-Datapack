tag @s add stargate.current_shutdown

# Not strictly needed but helps keep scoreboard clean
execute as @s[tag=!outgoing] as @e if score @s travel_cooldown = @e[tag=stargate.current_shutdown,limit=1] connection_id run scoreboard players reset @s travel_cooldown

scoreboard players set @s stargate_state 0
scoreboard players set @s r_stargate_state 0
scoreboard players set @s connection_id 0
tag @s remove outgoing
tag @s remove e_off
tag @s remove shutdown
tag @s remove on

execute as @s[tag=milky_way] at @s run function stargates:milky_way_shutdown
execute as @s[tag=pegasus] at @s run function stargates:pegasus_shutdown
execute as @s[tag=universe] at @s run function stargates:universe_shutdown

tag @s remove stargate.current_shutdown