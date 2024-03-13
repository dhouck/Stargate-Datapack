scoreboard players operation @s m_rotate_dif = @s m_ring_loc
execute as @s[scores={m_rotate_dif=..-180}] at @s run scoreboard players add @s m_rotate_dif 360
execute as @s[scores={m_rotate_dif=180..}] at @s run scoreboard players remove @s m_rotate_dif 360
scoreboard players set @s d_animation_1 325

execute as @s at @s run playsound minecraft:stargates.milky_way_ring_spin block @a[distance=0..18] ~ ~ ~ .5