execute if entity @s[scores={dial1=1..}] as @e[tag=stargate,tag=ctrl,tag=!outgoing] run scoreboard players remove @s dial1 1

execute if entity @s[scores={dial1=1..}] run scoreboard players remove @s dial1 1

execute if entity @s[scores={dial1=1..}] run function connection:cheveron_1