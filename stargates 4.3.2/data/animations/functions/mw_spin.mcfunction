scoreboard players add @s[scores={m_rotate_dif=0},tag=!spin] d_animation_1 1
tag @s[scores={m_rotate_dif=1..}] add spin
tag @s[scores={m_rotate_dif=..-1}] add spin
execute as @s[scores={d_animation_1=1..,m_rotate_dif=..-1},tag=spin] at @s run scoreboard players add @s m_ring_loc 1
execute as @s[scores={d_animation_1=1..,m_rotate_dif=..-1},tag=spin] at @s run scoreboard players add @s m_rotate_dif 1
execute as @s[scores={d_animation_1=1..,m_rotate_dif=1..},tag=spin] at @s run scoreboard players remove @s m_ring_loc 1
execute as @s[scores={d_animation_1=1..,m_rotate_dif=1..},tag=spin] at @s run scoreboard players remove @s m_rotate_dif 1
tag @s[scores={m_rotate_dif=0}] remove spin