execute if entity @s[scores={dial2=1..}] as @e[tag=stargate,tag=ctrl,tag=!outgoing] run scoreboard players remove @s dial2 1

execute if entity @s[scores={dial2=1..}] run scoreboard players remove @s dial2 1

execute if entity @s[scores={dial2=1..}] run function connection:cheveron_2