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
