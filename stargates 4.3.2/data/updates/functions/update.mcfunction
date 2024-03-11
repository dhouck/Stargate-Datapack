execute as @e[tag=stargate,scores={version=1},tag=!universe,tag=ctrl] run tag @s add 7x7
execute as @e[tag=stargate,scores={version=1},tag=universe,tag=ctrl] run tag @s add 5x5
execute as @e[tag=stargate,scores={version=1},tag=ctrl] run scoreboard players set @s version 2

# Should probably move this; Iʼm not making enough update code for everything.
execute as @e[tag=dhd] unless score @s stargate.dhd_id matches -2147483648..2147483647 store result score @s stargate.dhd_id run scoreboard players add .global stargate.dhd_id 1