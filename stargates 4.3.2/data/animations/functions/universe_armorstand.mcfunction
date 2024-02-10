#cheveron 1
execute as @s[scores={d_animation_3=2}] run function animations:u_cheveron1
#execute as @s[scores={d_animation_3=3}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.universe_spin


execute as @s[scores={d_animation_3=10}] at @s run function animations:u_lightup


#cheveron 2
execute as @s[scores={d_animation_3=42}] run function animations:u_cheveron2

execute as @s[scores={d_animation_3=50}] at @s run function animations:u_lightup

#cheveron 3
execute as @s[scores={d_animation_3=82}] run function animations:u_cheveron3

execute as @s[scores={d_animation_3=90}] at @s run function animations:u_lightup


#cheveron 4
execute as @s[scores={d_animation_3=122}] run function animations:u_cheveron4

execute as @s[scores={d_animation_3=130}] at @s run function animations:u_lightup


#cheveron 5
execute as @s[scores={d_animation_3=162}] run function animations:u_cheveron5

execute as @s[scores={d_animation_3=170}] at @s run function animations:u_lightup


#cheveron 6
execute as @s[scores={d_animation_3=202}] run function animations:u_cheveron6

execute as @s[scores={d_animation_3=210}] at @s run function animations:u_lightup


#cheveron 7
execute as @s[scores={d_animation_3=242,s8=1..}] run function animations:u_cheveron8
execute as @s[scores={d_animation_3=242,s8=0}] run function animations:u_cheveron7

execute as @s[scores={d_animation_3=250}] at @s run function animations:u_lightup


#cheveron 8
execute as @s[scores={d_animation_3=282,s8=1..,s9=0}] run function animations:u_cheveron7
execute as @s[scores={d_animation_3=282,s8=1..,s9=1..}] run function animations:u_cheveron9

execute as @s[scores={d_animation_3=290}] at @s run function animations:u_lightup


#cheveron 9
execute as @s[scores={d_animation_3=322}] run function animations:u_cheveron7

execute as @s[scores={d_animation_3=330}] at @s run function animations:u_lightup


#rotate
function animations:u_spin