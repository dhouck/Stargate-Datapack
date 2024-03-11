kill @e[type=minecraft:item,nbt={Item: {id: "minecraft:jukebox"}},distance=0..1,limit=1]
execute as @s[tag=pegasus] run summon item ~ ~ ~ {Item: {id:"minecraft:bat_spawn_egg",Count:1b, tag: {CustomModelData:1, display: {Name: '{"text":"Pegasus DHD", "italic": "false"}'}}}}
execute as @s[tag=milky_way] run summon item ~ ~ ~ {Item: {id:"minecraft:bat_spawn_egg",Count:1b, tag: {CustomModelData:2, display: {Name: '{"text":"Milky Way DHD", "italic": "false"}'}}}}
kill @s
