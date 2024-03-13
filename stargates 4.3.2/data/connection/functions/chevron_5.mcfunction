execute if entity @s[scores={dial5=1..}] as @e[tag=stargate,tag=ctrl,tag=!outgoing] run scoreboard players remove @s dial5 1

execute if entity @s[scores={dial5=1..}] run scoreboard players remove @s dial5 1

execute if entity @s[scores={dial5=1..}] run function connection:chevron_5