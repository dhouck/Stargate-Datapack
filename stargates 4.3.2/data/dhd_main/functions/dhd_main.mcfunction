# Spawning

execute as @a[scores={spawn_dhd=1..},y_rotation=-44..45] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","pegasus","new"],brightness:{sky:15,block:15},Rotation:[0f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=46..135] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","pegasus","new"],brightness:{sky:15,block:15},Rotation:[90f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=136..225] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","pegasus","new"],brightness:{sky:15,block:15},Rotation:[180f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=226..315] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","pegasus","new"],brightness:{sky:15,block:15},Rotation:[270f]}


execute as @a[scores={spawn_dhd=1..},y_rotation=-44..45] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","milky_way","new"],brightness:{sky:15,block:15},Rotation:[0f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=46..135] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","milky_way","new"],brightness:{sky:15,block:15},Rotation:[90f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=136..225] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","milky_way","new"],brightness:{sky:15,block:15},Rotation:[180f]}

execute as @a[scores={spawn_dhd=1..},y_rotation=226..315] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["dhd","milky_way","new"],brightness:{sky:15,block:15},Rotation:[270f]}

kill @e[type=bat,name="Milky Way DHD"]
kill @e[type=bat,name="Pegasus DHD"]

scoreboard players set @a[scores={spawn_dhd=1..}] spawn_dhd 0

execute as @e[tag=dhd,tag=new] at @s run scoreboard players set @s dhd_menu 0
execute as @e[tag=dhd,tag=new] at @s run setblock ~ ~ ~ minecraft:jukebox[has_record=true]{RecordStartTick: -45600L, IsPlaying: false}
execute as @e[tag=dhd,tag=new,tag=pegasus] run loot replace entity @s container.0 loot stargates:pegasus_dhd
execute as @e[tag=dhd,tag=new,tag=milky_way] run loot replace entity @s container.0 loot stargates:milky_way_dhd
execute as @e[tag=dhd,tag=new] at @s run tag @s remove new

# Killing
# TODO: Replace with a predicate check
execute as @e[tag=dhd] at @s unless block ~ ~ ~ minecraft:jukebox[has_record=true]{RecordStartTick: -45600L, IsPlaying: false} run function dhd_main:kill
execute as @e[tag=dhd] at @s if data block ~ ~ ~ RecordItem run function dhd_main:kill

# Dialing
execute as @a[scores={player_input=1..}] at @s run function dhd_main:player_io
execute as @e[tag=dhd] at @s run function dhd_main:dial
scoreboard players set @a player_input 0
