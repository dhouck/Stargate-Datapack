execute as @e[tag=stargate,tag=ctrl,scores={w_animation=1..}] run function animations:general_wormhole_animation

#Milky Way Iris
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way,tag=X_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f],Marker:1}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way,tag=X_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f],Marker:1}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way,tag=Z_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f],Marker:1}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way,tag=Z_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f],Marker:1}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=milky_way] at @s run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_iris
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way] at @s run playsound minecraft:stargates.milky_way_iris block @a[distance=0..18]

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=38},tag=milky_way] at @s run playsound minecraft:stargates.milky_way_iris block @a[distance=0..18]
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=39},tag=milky_way] at @s run stopsound @a[distance=0..18] block minecraft:stargates.milky_way_iris

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=milky_way] at @s run kill @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate]
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=milky_way] at @s run fill ^-2 ^4 ^ ^2 ^-1 ^ barrier replace minecraft:structure_void
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=milky_way] at @s run fill ^-2 ^4 ^ ^2 ^-1 ^ minecraft:structure_void replace barrier

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2..},tag=milky_way] at @s as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s Rotation[1]

execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] at @s run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] run scoreboard players add @s iris_state 1

execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] at @s run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run scoreboard players add @s iris_state 1

execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=1..39}] at @s unless block ^ ^-3 ^ minecraft:redstone_torch[lit=true] unless block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] at @s run tp @s ~ ~ ~ ~ ~-1
execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=1..39}] at @s unless block ^ ^-3 ^ minecraft:redstone_torch[lit=true] unless block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run scoreboard players remove @s iris_state 1


#Pegasus Shield Animation
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus,tag=X_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f]}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus,tag=X_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f]}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus,tag=Z_P] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f]}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus,tag=Z_N] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f]}

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=pegasus] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_shield_activation
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus] at @s run playsound minecraft:stargates.pegasus_shield_activation block @a[distance=0..18]
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=6},tag=pegasus] at @s run stopsound @a[distance=0..18] block minecraft:stargates.pegasus_pegasus_shield_deactivation
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=5},tag=pegasus] at @s run playsound minecraft:stargates.pegasus_pegasus_shield_deactivation block @a[distance=0..18]

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 1
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=3},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 2
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=4},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 3
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=5},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 4

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus] at @s run fill ^-2 ^4 ^ ^2 ^-1 ^ barrier replace minecraft:structure_void
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=pegasus] at @s run fill ^-2 ^4 ^ ^2 ^-1 ^ minecraft:structure_void replace barrier
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=1},tag=pegasus] at @s run kill @e[tag=iris,distance=0..0.5,tag=pegasus,tag=stargate]

execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=0..5}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] run scoreboard players add @s iris_state 1
execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=0..5}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run scoreboard players add @s iris_state 1
execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=1..6}] at @s unless block ^ ^-3 ^ minecraft:redstone_torch[lit=true] unless block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run scoreboard players remove @s iris_state 1


execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=0}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] run scoreboard players set @s stargate_state 1
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=0}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run scoreboard players add @s stargate_state 1