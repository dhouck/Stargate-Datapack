scoreboard players operation @s s6 *= @s mtply_10
function animations:pegasus_light

scoreboard players operation @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] r = @s s6
tp @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] ~ ~ ~
scoreboard players set @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] p_rotate_dif 320
scoreboard players operation @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] p_rotate_dif -= @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] r
scoreboard players remove @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1,scores={p_rotate_dif=0..}] p_rotate_dif 360
tag @e[tag=stargate,tag=pegasus,tag=ring_light,tag=in_setup,distance=0..1] remove in_setup
scoreboard players operation @s s6 /= @s mtply_10
scoreboard players add @s d_animation_2 1
tag @s add cheveron_encoding

execute as @s at @s run playsound minecraft:stargates.pegasus_dial block @a[distance=0..18] ~ ~ ~