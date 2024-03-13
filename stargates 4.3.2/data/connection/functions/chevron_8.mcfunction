execute if entity @s[scores={dial8=1..}] as @e[tag=stargate,tag=ctrl,tag=!outgoing] run scoreboard players remove @s dial8 1

execute if entity @s[scores={dial8=1..}] run scoreboard players remove @s dial8 1

execute if entity @s[scores={dial8=1..}] run function connection:chevron_8