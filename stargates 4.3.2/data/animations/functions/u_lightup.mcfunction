execute if entity @s[tag=X_P] run summon armor_stand ^ ^ ^0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:9}}],HandItems:[{},{}],CustomName:"{\"text\":\"sg_light\"}",Pose:{Head:[90f,0f,0f]},Tags:["stargate","universe","cheveron_light","r_enabled"],Rotation:[0f]}

execute if entity @s[tag=X_N] run summon armor_stand ^ ^ ^0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:9}}],HandItems:[{},{}],CustomName:"{\"text\":\"sg_light\"}",Pose:{Head:[90f,0f,0f]},Tags:["stargate","universe","cheveron_light","r_enabled"],Rotation:[180f]}

execute if entity @s[tag=Z_P] run summon armor_stand ^ ^ ^0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:9}}],HandItems:[{},{}],CustomName:"{\"text\":\"sg_light\"}",Pose:{Head:[90f,0f,0f]},Tags:["stargate","universe","cheveron_light","r_enabled"],Rotation:[90f]}

execute if entity @s[tag=Z_N] run summon armor_stand ^ ^ ^0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:9}}],HandItems:[{},{}],CustomName:"{\"text\":\"sg_light\"}",Pose:{Head:[90f,0f,0f]},Tags:["stargate","universe","cheveron_light","r_enabled"],Rotation:[270f]}

execute as @s at @s run stopsound @a[distance=0..18] block minecraft:stargates.universe_spin
execute as @s at @s run playsound minecraft:stargates.universe_lock block @a[distance=0..18] ~ ~ ~ .4