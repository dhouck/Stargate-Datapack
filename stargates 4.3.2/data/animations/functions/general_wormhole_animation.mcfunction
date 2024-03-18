# Initial animation setup
execute as @s[scores={w_animation=1}] run tag @s add e_off

execute as @s[tag=7x7,scores={w_animation=1}] at @s run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=15] replace #minecraft:replaceable
execute as @s[tag=5x5,scores={w_animation=1}] at @s run fill ^-1 ^2 ^ ^1 ^-1 ^ minecraft:light[level=15] replace #minecraft:replaceable

execute as @s[scores={w_animation=1},tag=7x7,tag=X_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"gold_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=7x7,tag=X_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"gold_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=7x7,tag=Z_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"gold_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=7x7,tag=Z_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"gold_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f],Marker:true}


execute as @s[scores={w_animation=1},tag=5x5,tag=X_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"brick",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=5x5,tag=X_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"brick",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=5x5,tag=Z_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"brick",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f],Marker:true}

execute as @s[scores={w_animation=1},tag=5x5,tag=Z_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","event_horizon"],ArmorItems:[{},{},{},{id:"brick",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f],Marker:true}

# Startup animation
execute as @e[tag=event_horizon,tag=stargate] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s Rotation[1]

execute as @s[scores={w_animation=1..25}] at @s as @e[tag=event_horizon,tag=stargate,distance=0..0.5] at @s run tp @s ~ ~ ~ ~ ~1
execute as @s[scores={w_animation=1}] at @s run playsound minecraft:stargates.stargate_event_horizon block @a[distance=0..16]

execute as @s[scores={w_animation=1..25}] run scoreboard players add @s w_animation 1

execute as @s[scores={w_animation=9..23},tag=7x7] at @s positioned ^ ^ ^1 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh
execute as @s[scores={w_animation=13..19},tag=7x7] at @s positioned ^ ^ ^2 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh
execute as @s[scores={w_animation=15..17},tag=7x7] at @s positioned ^ ^ ^3 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh

execute as @s[scores={w_animation=9..23},tag=5x5] at @s positioned ^ ^ ^1 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh
execute as @s[scores={w_animation=13..19},tag=5x5] at @s positioned ^ ^ ^1.5 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh
execute as @s[scores={w_animation=15..17},tag=5x5] at @s positioned ^ ^ ^2 as @e[tag=!stargate,tag=!sg_override,distance=0..1] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:kawoosh

# Iris
execute as @s[scores={w_animation=58..75}] at @s as @e[tag=event_horizon,tag=stargate,distance=0..0.5] at @s run tp @s ~ ~ ~ ~ ~1
execute as @s[scores={w_animation=58..75}] run scoreboard players add @s w_animation 1

execute as @s[scores={w_animation=76}] at @s as @e[tag=event_horizon,tag=stargate,distance=0..0.5] at @s run tp @s ~ ~ ~ ~ ~-50
execute as @s[scores={w_animation=76}] run scoreboard players remove @s w_animation 50


execute as @s[scores={w_animation=8,iris_state=1..}] at @s as @e[tag=event_horizon,tag=stargate,distance=0..0.5] at @s run tp @s ~ ~ ~ ~ ~50
execute as @s[scores={w_animation=8,iris_state=1..}] run scoreboard players add @s w_animation 50

# Shutdown
execute as @s[scores={w_animation=26..},tag=!e_off] at @s as @e[tag=event_horizon,tag=stargate,distance=0..0.5] at @s run tp @s ~ ~ ~ ~ ~1
execute as @s[scores={w_animation=26..},tag=!e_off] run scoreboard players add @s w_animation 1

execute as @s[scores={w_animation=27}] at @s run playsound minecraft:stargates.milky_way_deactivation block @a[distance=0..16]

execute as @s[scores={w_animation=34}] at @s run kill @e[tag=event_horizon,tag=stargate,distance=0..0.5]
execute as @s[tag=7x7,scores={w_animation=34}] at @s run fill ^-2 ^3 ^ ^2 ^-1 ^ minecraft:light[level=0] replace minecraft:light
execute as @s[tag=5x5,scores={w_animation=34}] at @s run fill ^-1 ^2 ^ ^1 ^-1 ^ minecraft:light[level=0] replace minecraft:light
execute as @s[scores={w_animation=34..49}] at @s run scoreboard players set @s w_animation 0
