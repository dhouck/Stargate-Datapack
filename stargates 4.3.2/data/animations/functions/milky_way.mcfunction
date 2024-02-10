execute as @e[type=armor_stand,tag=stargate,tag=milky_way,tag=ctrl,scores={d_animation_1=1..}] at @s run function animations:milky_way_armorstand
scoreboard players remove @e[tag=stargate,tag=milky_way,tag=ctrl,scores={m_ring_loc=359..}] m_ring_loc 360
scoreboard players add @e[tag=stargate,tag=milky_way,tag=ctrl,scores={m_ring_loc=..0}] m_ring_loc 360

execute as @e[tag=stargate,tag=milky_way,tag=ctrl] at @s run scoreboard players operation @e[tag=stargate,tag=milky_way,tag=ring,distance=0..0.5,limit=1] r = @s m_ring_loc