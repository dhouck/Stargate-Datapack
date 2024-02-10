execute as @e[tag=stargate,tag=ctrl] at @s if entity @s[scores={stargate_state=1..999}] run fill ^2 ^-3 ^ ^2 ^-3 ^ lever[face=floor,powered=true] replace lever[face=floor]
execute as @e[tag=stargate,tag=ctrl] at @s unless entity @s[scores={stargate_state=1..999}] run fill ^2 ^-3 ^ ^2 ^-3 ^ lever[face=floor,powered=false] replace lever[face=floor]

execute as @e[tag=stargate,tag=ctrl] at @s if entity @s[scores={stargate_state=2000..}] run fill ^-2 ^-3 ^ ^-2 ^-3 ^ lever[face=floor,powered=true] replace lever[face=floor]
execute as @e[tag=stargate,tag=ctrl] at @s unless entity @s[scores={stargate_state=2000..}] run fill ^-2 ^-3 ^ ^-2 ^-3 ^ lever[face=floor,powered=false] replace lever[face=floor]