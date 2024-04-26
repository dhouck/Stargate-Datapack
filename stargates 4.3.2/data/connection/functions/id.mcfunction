execute as @s[scores={connection_id=0}] store result score @s connection_id run scoreboard players add .global connection_id 1
execute as @s run scoreboard players operation @e[tag=stargate,tag=ctrl,tag=connection,limit=1] connection_id = @s connection_id
tag @e[tag=stargate,tag=ctrl,tag=connection] remove connection