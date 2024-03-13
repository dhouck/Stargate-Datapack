scoreboard players operation @s s6 *= @s mtply_10
scoreboard players operation @s m_rotate_dif = @s m_ring_loc
scoreboard players operation @s m_rotate_dif -= @s s6
execute as @s[scores={m_rotate_dif=..-181}] at @s run scoreboard players add @s m_rotate_dif 360
execute as @s[scores={m_rotate_dif=181..}] at @s run scoreboard players remove @s m_rotate_dif 360
scoreboard players operation @s s6 /= @s mtply_10
scoreboard players add @s d_animation_1 1

execute as @s at @s run playsound minecraft:stargates.milky_way_ring_spin block @a[distance=0..18] ~ ~ ~ .5