execute if entity @s[scores={dial4=1..}] as @e[tag=stargate,tag=ctrl,tag=!outgoing] run scoreboard players remove @s dial4 1

execute if entity @s[scores={dial4=1..}] run scoreboard players remove @s dial4 1

execute if entity @s[scores={dial4=1..}] run function connection:cheveron_4