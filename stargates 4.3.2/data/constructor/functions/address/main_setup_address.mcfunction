execute as @s[scores={setup_address=1}] at @s store result score @s entity_pos_x run data get entity @s Pos[0]
execute as @s[scores={setup_address=1}] at @s store result score @s entity_pos_z run data get entity @s Pos[2]

scoreboard players set @s[scores={setup_address=1}] 16 16

execute as @s[scores={setup_address=1}] at @s run scoreboard players operation @s entity_pos_x /= @s 16
execute as @s[scores={setup_address=1}] at @s run scoreboard players operation @s entity_pos_z /= @s 16

execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr1 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr2 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr3 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr4 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr5 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr6 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s addr8 0

execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s1 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s2 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s3 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s4 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s5 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s6 1
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s8 0
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s s9 0

#setup 2
execute as @s[scores={setup_address=1}] at @s run scoreboard players set @s setup_address 2

execute as @s[scores={setup_address=2,entity_pos_x=..-1}] at @s run scoreboard players add @s entity_pos_x 46656
execute as @s[scores={setup_address=2,entity_pos_z=..-1}] at @s run scoreboard players add @s entity_pos_z 46656

execute as @s[scores={setup_address=2,entity_pos_x=46656..}] at @s run scoreboard players remove @s entity_pos_x 46656
execute as @s[scores={setup_address=2,entity_pos_z=46656..}] at @s run scoreboard players remove @s entity_pos_z 46656

#setup 3
execute as @s[scores={setup_address=2,entity_pos_z=0..46655,entity_pos_x=0..46655}] at @s run scoreboard players set @s setup_address 3

execute as @s[scores={setup_address=3,entity_pos_x=1296..}] at @s run scoreboard players add @s addr5 1
execute as @s[scores={setup_address=3,entity_pos_x=1296..}] at @s run scoreboard players remove @s entity_pos_x 1296

execute as @s[scores={setup_address=3,entity_pos_z=1296..}] at @s run scoreboard players add @s addr6 1
execute as @s[scores={setup_address=3,entity_pos_z=1296..}] at @s run scoreboard players remove @s entity_pos_z 1296

#setup 4
execute as @s[scores={setup_address=3,entity_pos_z=0..1295,entity_pos_x=0..1295}] at @s run scoreboard players set @s setup_address 4

execute as @s[scores={setup_address=4,entity_pos_x=36..}] at @s run scoreboard players add @s addr3 1
execute as @s[scores={setup_address=4,entity_pos_x=36..}] at @s run scoreboard players remove @s entity_pos_x 36

execute as @s[scores={setup_address=4,entity_pos_z=36..}] at @s run scoreboard players add @s addr4 1
execute as @s[scores={setup_address=4,entity_pos_z=36..}] at @s run scoreboard players remove @s entity_pos_z 36

#setup 5
execute as @s[scores={setup_address=4,entity_pos_z=0..35,entity_pos_x=0..35}] at @s run scoreboard players set @s setup_address 5

execute as @s[scores={setup_address=5,entity_pos_x=1..}] at @s run scoreboard players add @s addr1 1
execute as @s[scores={setup_address=5,entity_pos_x=1..}] at @s run scoreboard players remove @s entity_pos_x 1

execute as @s[scores={setup_address=5,entity_pos_z=1..}] at @s run scoreboard players add @s addr2 1
execute as @s[scores={setup_address=5,entity_pos_z=1..}] at @s run scoreboard players remove @s entity_pos_z 1

#setup 6
execute as @s[scores={setup_address=5,entity_pos_z=0,entity_pos_x=0}] at @s run scoreboard players set @s setup_address 6

execute as @s[scores={setup_address=6}] at @s run scoreboard players set @s version 2

execute in minecraft:overworld as @e[scores={setup_address=6},distance=0..] at @s run scoreboard players set @s addr8 2
execute in minecraft:the_nether as @e[scores={setup_address=6},distance=0..] at @s run scoreboard players set @s addr8 1
execute in minecraft:the_end as @e[scores={setup_address=6},distance=0..] at @s run scoreboard players set @s addr8 3

execute as @s[scores={setup_address=6}] at @s run scoreboard players set @s setup_address 0