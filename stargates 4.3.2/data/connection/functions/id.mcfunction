execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=1}] run scoreboard players set @s connection_id 1

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=2}] run scoreboard players set @s connection_id 2

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=3}] run scoreboard players set @s connection_id 3

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=4}] run scoreboard players set @s connection_id 4

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=5}] run scoreboard players set @s connection_id 5

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=6}] run scoreboard players set @s connection_id 6

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=7}] run scoreboard players set @s connection_id 7

execute as @s[scores={connection_id=0}] unless entity @e[tag=stargate,tag=ctrl,scores={connection_id=8}] run scoreboard players set @s connection_id 8

execute as @s run scoreboard players operation @e[tag=stargate,tag=ctrl,tag=connection,limit=1] connection_id = @s connection_id

tag @e[tag=stargate,tag=ctrl,tag=connection] remove connection