scoreboard players set @s d_animation_3 0
scoreboard players set @s u_rotate_dif 0
scoreboard players set @s stargate_state 0
scoreboard players set @s r_stargate_state 0
scoreboard players set @s connection_id 0
kill @e[tag=cheveron_light,tag=universe,distance=0..0.1]
tag @s remove outgoing
tag @s remove e_off
tag @s remove shutdown