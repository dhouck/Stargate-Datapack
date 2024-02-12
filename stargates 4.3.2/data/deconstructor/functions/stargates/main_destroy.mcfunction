#Milky Way X Positive
execute as @s[tag=milky_way,tag=X_P] at @s run setblock ~-3 ~-2 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:milky_way",rotation: "NONE"}

#Milky Way X Negative
execute as @s[tag=milky_way,tag=X_N] at @s run setblock ~3 ~-2 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:milky_way",rotation: "CLOCKWISE_180"}

#Milky Way Z Positive
execute as @s[tag=milky_way,tag=Z_P] at @s run setblock ~ ~-2 ~-3 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:milky_way",rotation: "CLOCKWISE_90"}

#Milky Way Z Negative
execute as @s[tag=milky_way,tag=Z_N] at @s run setblock ~ ~-2 ~3 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:milky_way",rotation: "COUNTERCLOCKWISE_90"}


#Pegasus X Positive
execute as @s[tag=pegasus,tag=X_P] at @s run setblock ~-3 ~-2 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:pegasus",rotation: "NONE"}

#Pegasus X Negative
execute as @s[tag=pegasus,tag=X_N] at @s run setblock ~3 ~-2 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:pegasus",rotation: "CLOCKWISE_180"}

#Pegasus Z Positive
execute as @s[tag=pegasus,tag=Z_P] at @s run setblock ~ ~-2 ~-3 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:pegasus",rotation: "CLOCKWISE_90"}

#Pegasus Z Negative
execute as @s[tag=pegasus,tag=Z_N] at @s run setblock ~ ~-2 ~3 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:pegasus",rotation: "COUNTERCLOCKWISE_90"}

#Universe X Positive
execute as @s[tag=universe,tag=X_P] at @s run setblock ~-2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:universe",rotation: "NONE"}

#Universe X Negative
execute as @s[tag=universe,tag=X_N] at @s run setblock ~2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:universe",rotation: "CLOCKWISE_180"}

#Universe Z Positive
execute as @s[tag=universe,tag=Z_P] at @s run setblock ~ ~-1 ~-2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:universe",rotation: "CLOCKWISE_90"}

#Universe Z Negative
execute as @s[tag=universe,tag=Z_N] at @s run setblock ~ ~-1 ~2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:universe",rotation: "COUNTERCLOCKWISE_90"}


#Orlin X Positive
execute as @s[tag=orlin,tag=ctrl,tag=X_P] at @s run setblock ~-2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:orlin",rotation: "NONE"}

#Orlin X Negative
execute as @s[tag=orlin,tag=ctrl,tag=X_N] at @s run setblock ~2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:orlin",rotation: "CLOCKWISE_180"}

#Orlin Z Positive
execute as @s[tag=orlin,tag=ctrl,tag=Z_P] at @s run setblock ~ ~-1 ~-2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:orlin",rotation: "CLOCKWISE_90"}

#Orlin Z Negative
execute as @s[tag=orlin,tag=ctrl,tag=Z_N] at @s run setblock ~ ~-1 ~2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:orlin",rotation: "COUNTERCLOCKWISE_90"}

execute as @s[tag=orlin,tag=ctrl,tag=damage_gate_now] at @s run summon tnt ~ ~ ~

#tollan X Positive
execute as @s[tag=tollan,tag=X_P] at @s run setblock ~-2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:tollan",rotation: "NONE"}

#tollan X Negative
execute as @s[tag=tollan,tag=X_N] at @s run setblock ~2 ~-1 ~ minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:tollan",rotation: "CLOCKWISE_180"}

#tollan Z Positive
execute as @s[tag=tollan,tag=Z_P] at @s run setblock ~ ~-1 ~-2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:tollan",rotation: "CLOCKWISE_90"}

#tollan Z Negative
execute as @s[tag=tollan,tag=Z_N] at @s run setblock ~ ~-1 ~2 minecraft:structure_block{mode: "LOAD",powered: 0b,name: "stargates:tollan",rotation: "COUNTERCLOCKWISE_90"}

# Actually place structure
execute as @s[tag=7x7] at @s run setblock ^-3 ^-1 ^ redstone_block
execute as @s[tag=5x5] at @s run setblock ^-1 ^-1 ^ redstone_block

# Cleanup
execute as @s at @s run forceload remove ~ ~
execute as @s at @s run kill @e[tag=stargate,distance=0..0.5]

