execute as @e[type=minecraft:armor_stand,tag=stargate,tag=cheveron,tag=pegasus,tag=off] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:11}}]}
execute as @e[type=minecraft:armor_stand,tag=stargate,tag=cheveron,tag=pegasus,tag=!off] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:6}}]}