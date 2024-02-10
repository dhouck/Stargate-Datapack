
scoreboard players operation @s u_rotate_dif = @s r
scoreboard players set @s universe_symbol 1
function animations:universe_symbols
scoreboard players operation @s u_rotate_dif -= @s universe_symbol
execute as @s[scores={u_rotate_dif=..-181}] at @s run scoreboard players add @s u_rotate_dif 360
execute as @s[scores={u_rotate_dif=181..}] at @s run scoreboard players remove @s u_rotate_dif 360

scoreboard players set @s d_animation_3 325

execute as @s at @s run playsound minecraft:stargates.universe_spin block @a[distance=0..18] ~ ~ ~ .4