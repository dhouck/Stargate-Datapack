scoreboard players set @s d_animation_2 0
scoreboard players set @s stargate_state 0
scoreboard players set @s r_stargate_state 0
scoreboard players set @s connection_id 0
tag @s remove cheveron_encoding
kill @e[tag=ring_light,distance=0..0.1]
tag @e[tag=cheveron,tag=pegasus,distance=0..0.1] add off
tag @s remove outgoing
tag @s remove e_off
tag @e[tag=stargate,tag=pegasus,tag=animation,distance=0..0.5] remove on
tag @s remove shutdown