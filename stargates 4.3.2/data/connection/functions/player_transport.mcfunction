execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=12..399}] at @s run scoreboard players operation @e[distance=0..2.9,tag=!stargate,tag=!sg_override] connection_id = @s connection_id
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=12..399}] at @s as @e[distance=0..2.9] at @s unless entity @s[tag=stargate] if block ~ ~1 ~ structure_void run tag @s add w_transport

execute as @e[tag=w_transport,scores={connection_id=1}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=1},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=2}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=2},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=3}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=3},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=4}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=4},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=5}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=5},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=6}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=6},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=7}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=7},limit=1,sort=nearest,tag=!outgoing]
execute as @e[tag=w_transport,scores={connection_id=8}] at @s run tp @s @e[tag=stargate,tag=ctrl,scores={connection_id=8},limit=1,sort=nearest,tag=!outgoing]

scoreboard players set @e[tag=w_transport] travel_cooldown 1
tag @e[tag=w_transport] remove w_transport