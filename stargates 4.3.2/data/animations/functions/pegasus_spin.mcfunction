execute as @s[scores={p_rotate_dif=..-1}] at @s run scoreboard players remove @s r 10
execute as @s[scores={p_rotate_dif=..-1}] at @s run scoreboard players add @s p_rotate_dif 10
execute as @s[scores={p_rotate_dif=1..}] at @s run scoreboard players add @s r 10
execute as @s[scores={p_rotate_dif=1..}] at @s run scoreboard players remove @s p_rotate_dif 10
scoreboard players remove @s[scores={r=360..}] r 360
scoreboard players add @s[scores={r=..-1}] r 360

execute if entity @s[scores={p_rotate_dif=0},tag=!done] run tag @e[tag=stargate,tag=pegasus,tag=ctrl,distance=0..0.1] remove cheveron_encoding
tag @s[scores={p_rotate_dif=0},tag=!setup] add done