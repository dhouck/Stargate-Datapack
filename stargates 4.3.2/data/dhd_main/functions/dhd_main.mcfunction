execute as @a[scores={spawn_dhd=1..},y_rotation=-44..45] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","pegasus","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=46..135] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","pegasus","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=136..225] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","pegasus","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=226..315] at @s as @e[type=bat,name="Pegasus DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","pegasus","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f],DisabledSlots:1579032}


execute as @a[scores={spawn_dhd=1..},y_rotation=-44..45] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","milky_way","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:2}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[0f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=46..135] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","milky_way","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:2}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[90f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=136..225] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","milky_way","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:2}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[180f],DisabledSlots:1579032}

execute as @a[scores={spawn_dhd=1..},y_rotation=226..315] at @s as @e[type=bat,name="Milky Way DHD",distance=0..6,limit=1,sort=nearest] at @s positioned ~ ~.5 ~ align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhd","milky_way","new"],ArmorItems:[{},{},{},{id:"bat_spawn_egg",Count:1b,tag:{CustomModelData:2}}],HandItems:[{},{}],NoGravity:1,Pose:{Head:[0f,0f,0f]},Invisible:1,NoBasePlate:1,Rotation:[270f],DisabledSlots:1579032}

kill @e[type=bat,name="Milky Way DHD"]
kill @e[type=bat,name="Pegasus DHD"]

scoreboard players set @a[scores={spawn_dhd=1..}] spawn_dhd 0

execute as @e[tag=dhd,tag=new] at @s run scoreboard players set @s dhd_menu 0
execute as @e[tag=dhd,tag=new] at @s run setblock ~ ~ ~ minecraft:barrel
execute as @e[tag=dhd,tag=new] at @s run tag @s remove new

execute as @e[tag=dhd] at @s unless block ~ ~ ~ minecraft:barrel run kill @e[type=minecraft:item,nbt={Item: {id: "minecraft:barrel"}},distance=0..1,limit=1]
execute as @e[tag=dhd] at @s unless block ~ ~ ~ minecraft:barrel run kill @e[type=minecraft:item,nbt={Item: {id: "minecraft:dirt"}},distance=0..1,limit=9]
execute as @e[tag=dhd,tag=pegasus] at @s unless block ~ ~ ~ minecraft:barrel run summon item ~ ~ ~ {Item: {id:"minecraft:bat_spawn_egg",Count:1b, tag: {CustomModelData:1, display: {Name: '{"text":"Pegasus DHD", "italic": "false"}'}}}}
execute as @e[tag=dhd,tag=milky_way] at @s unless block ~ ~ ~ minecraft:barrel run summon item ~ ~ ~ {Item: {id:"minecraft:bat_spawn_egg",Count:1b, tag: {CustomModelData:2, display: {Name: '{"text":"Milky Way DHD", "italic": "false"}'}}}}
execute as @e[tag=dhd] at @s unless block ~ ~ ~ minecraft:barrel run kill @s

execute as @a[scores={open_dhd=1..}] at @s run tag @e[tag=dhd,distance=0..7] add find_addr
scoreboard players set @e[scores={open_dhd=1..}] open_dhd 0

execute as @e[tag=find_addr,tag=dhd] at @s run data merge block ~ ~ ~ {Items:[]}
execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.16 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr8
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 8"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.15 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr6
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 6"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.14 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr5
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 5"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.13 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr4
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 4"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.12 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr3
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 3"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.11 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr2
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 2"}'

execute as @e[tag=find_addr,tag=dhd] at @s run item replace block ~ ~ ~ container.10 with dirt
execute as @e[tag=find_addr,tag=dhd] at @s run scoreboard players operation @s s1 = @e[tag=stargate,tag=ctrl,distance=0..15,limit=1,sort=nearest] addr1
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run function dhd_main:m_symbol
execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run function dhd_main:p_symbol
execute as @e[tag=find_addr,tag=dhd] at @s run data modify block ~ ~ ~ Items[0].tag.display.Name set value '{"text":"Cheveron 1"}'

execute as @e[tag=find_addr,tag=dhd,tag=pegasus] at @s run item replace block ~ ~ ~ container.0 with dirt{CustomModelData:1001, display: {Name: '{"text":""}'}}
execute as @e[tag=find_addr,tag=dhd,tag=milky_way] at @s run item replace block ~ ~ ~ container.0 with dirt{CustomModelData:1000, display: {Name: '{"text":""}'}}

tag @e[tag=dhd,tag=find_addr] remove find_addr


execute as @e[tag=dhd] at @s if entity @p[scores={player_input=101..102},distance=0..2] run scoreboard players set @s dhd_menu 0
execute as @e[tag=dhd] at @s if entity @p[scores={player_input=102},distance=0..2] as @e[tag=stargate,tag=ctrl,distance=0..10,limit=1,sort=nearest] at @s run function deconstructor:stargates/main_destroy 

execute as @e[tag=dhd,scores={dhd_menu=0..8}] at @s run function dhd_main:menu

execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p1 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p2 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p3 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p4 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p5 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p6 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p8 0
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players set @s p9 0
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p1 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=1}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p2 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=2}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p3 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=3}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p4 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=4}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p5 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=5}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p6 = @p[scores={player_input=1..36}] player_input


execute as @e[tag=dhd,scores={dhd_menu=6}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p8 = @p[scores={player_input=1..36}] player_input
execute as @e[tag=dhd,scores={dhd_menu=6}] at @s if entity @p[scores={player_input=100},distance=0..2] run scoreboard players set @s dhd_menu 9

execute as @e[tag=dhd,scores={dhd_menu=7}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players operation @s p9 = @p[scores={player_input=1..36}] player_input
execute as @e[tag=dhd,scores={dhd_menu=7}] at @s if entity @p[scores={player_input=100},distance=0..2] run scoreboard players set @s dhd_menu 9

execute as @e[tag=dhd,scores={dhd_menu=7}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=6}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=5}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=4}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=3}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=2}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=1}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if entity @p[scores={player_input=1..36},distance=0..2] run scoreboard players add @s dhd_menu 1

execute as @e[tag=dhd,scores={dhd_menu=8}] at @s if entity @p[scores={player_input=100},distance=0..2] run scoreboard players set @s dhd_menu 9

execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run scoreboard players set @s dhd_menu 9
execute as @e[tag=dhd,scores={dhd_menu=0}] at @s if block ~ ~-1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set @s dhd_menu 9

execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s1 = @s p1
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s2 = @s p2
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s3 = @s p3
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s4 = @s p4
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s5 = @s p5
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s6 = @s p6
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s8 = @s p8
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s9 = @s p9
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players set @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] stargate_state 1
execute as @e[tag=dhd,scores={dhd_menu=9}] at @s run scoreboard players set @s dhd_menu 10
execute as @e[tag=dhd,scores={dhd_menu=10}] at @s if entity @e[tag=stargate,tag=ctrl,scores={stargate_state=0},limit=1,sort=nearest,distance=0..10] run scoreboard players set @s dhd_menu 0



scoreboard players set @a player_input 0
