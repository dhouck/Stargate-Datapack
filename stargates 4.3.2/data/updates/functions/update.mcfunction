execute as @e[tag=stargate,scores={version=1},tag=!universe,tag=ctrl] run tag @s add 7x7
execute as @e[tag=stargate,scores={version=1},tag=universe,tag=ctrl] run tag @s add 5x5
execute as @e[tag=stargate,scores={version=1},tag=ctrl] run scoreboard players set @s version 2