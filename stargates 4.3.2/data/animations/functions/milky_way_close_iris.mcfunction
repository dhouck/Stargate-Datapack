execute as @s[scores={iris_state=2},tag=X_P] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=X_N] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=Z_P] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=Z_N] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","milky_way"],ArmorItems:[{},{},{},{id:"blaze_rod",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f],Marker:1}

execute as @s[scores={iris_state=2}] run playsound minecraft:stargates.milky_way_iris_close block @a[distance=0..18]

execute as @s[scores={iris_state=2}] run fill ^-2 ^3 ^ ^2 ^-1 ^ barrier replace minecraft:light

execute as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] at @s run tp @s ~ ~ ~ ~ ~1
scoreboard players add @s iris_state 1
