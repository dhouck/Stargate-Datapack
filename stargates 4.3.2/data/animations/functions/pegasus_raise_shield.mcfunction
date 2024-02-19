execute as @s[scores={iris_state=2},tag=X_P] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=X_N] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=Z_P] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f, 1f],Marker:1}

execute as @s[scores={iris_state=2},tag=Z_N] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stargate","iris","pegasus"],ArmorItems:[{},{},{},{id:"netherite_ingot",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f, 1f],Marker:1}

execute as @s[scores={iris_state=2}] run playsound minecraft:stargates.pegasus_shield_activation block @a[distance=0..18]

execute as @s[scores={iris_state=2}] run fill ^-2 ^3 ^ ^2 ^-1 ^ barrier replace minecraft:light

scoreboard players add @s iris_state 1