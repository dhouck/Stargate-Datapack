execute if entity @s[scores={d_animation_2=3}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=13}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=23}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=33}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=43}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=53}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=63}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=73}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin

execute if entity @s[scores={d_animation_2=83}] as @e[type=armor_stand,tag=stargate,tag=pegasus,tag=ring_light,tag=!in_setup,distance=0..1] at @s run function animations:pegasus_spin


execute as @s[scores={d_animation_2=2}] at @s run function animations:pegasus_cheveron1
execute as @s[scores={d_animation_2=4}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=4}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=4}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=2,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=12}] at @s run function animations:pegasus_cheveron2
execute as @s[scores={d_animation_2=14}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=14}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=14}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=3,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=22}] at @s run function animations:pegasus_cheveron3
execute as @s[scores={d_animation_2=24}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=24}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=24}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=4,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=32}] at @s run function animations:pegasus_cheveron4
execute as @s[scores={d_animation_2=34}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=34}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=34}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=7,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=42}] at @s run function animations:pegasus_cheveron5
execute as @s[scores={d_animation_2=44}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=44}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=44}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=8,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=52}] at @s run function animations:pegasus_cheveron6
execute as @s[scores={d_animation_2=54}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=54}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=54}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=9,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=62,s8=0}] at @s run function animations:pegasus_cheveron7
execute as @s[scores={d_animation_2=64}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=64}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=64,s8=0}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=1,distance=0..0.1] remove off
execute as @s[scores={d_animation_2=64,s8=0}] at @s run scoreboard players set @s d_animation_2 95

execute as @s[scores={d_animation_2=62,s8=1..}] at @s run function animations:pegasus_cheveron8
execute as @s[scores={d_animation_2=64,s8=1..}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=5,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=72,s9=0,s8=1..}] at @s run function animations:pegasus_cheveron7_2
execute as @s[scores={d_animation_2=74}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=74}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=74,s9=0,s8=1..}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=1,distance=0..0.1] remove off
execute as @s[scores={d_animation_2=74,s9=0,s8=1..}] at @s run scoreboard players set @s d_animation_2 95

execute as @s[scores={d_animation_2=72,s9=1..}] at @s run function animations:pegasus_cheveron9
execute as @s[scores={d_animation_2=74,s9=1..}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=6,distance=0..0.1] remove off

execute as @s[scores={d_animation_2=82}] at @s run function animations:pegasus_cheveron7
execute as @s[scores={d_animation_2=84}] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_dial
execute as @s[scores={d_animation_2=84}] at @s run playsound minecraft:stargates.pegasus_lock block @a[distance=0..18] ~ ~ ~
execute as @s[scores={d_animation_2=84}] at @s run tag @e[tag=stargate,tag=cheveron,tag=pegasus,tag=1,distance=0..0.1] remove off



scoreboard players add @s[scores={d_animation_2=1..},tag=!cheveron_encoding] d_animation_2 1