execute as @e[tag=stargate,tag=ctrl,scores={w_animation=1..}] run function animations:general_wormhole_animation

#Milky Way Iris

execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] run function animations:milky_way_close_iris
execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=0..38}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run function animations:milky_way_close_iris

execute as @e[tag=stargate,tag=ctrl,tag=milky_way,scores={iris_state=1..39}] at @s unless block ^ ^-3 ^ minecraft:redstone_torch[lit=true] unless block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run function animations:milky_way_open_iris

execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2..},tag=milky_way] at @s as @e[tag=iris,distance=0..0.5,tag=milky_way,tag=stargate] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s Rotation[1]


#Pegasus Shield Animation



execute as @e[tag=stargate,tag=ctrl,scores={iris_state=2},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 1
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=3},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 2
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=4},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 3
execute as @e[tag=stargate,tag=ctrl,scores={iris_state=5},tag=pegasus] at @s run data modify entity @e[tag=iris,tag=pegasus,tag=stargate,limit=1,distance=0..0.5] ArmorItems[3].tag.CustomModelData set value 4

execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=0..5}] at @s if block ^ ^-3 ^ minecraft:redstone_torch[lit=true] run function animations:pegasus_raise_shield
execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=0..5}] at @s if block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run function animations:pegasus_raise_shield
execute as @e[tag=stargate,tag=ctrl,tag=pegasus,scores={iris_state=1..6}] at @s unless block ^ ^-3 ^ minecraft:redstone_torch[lit=true] unless block ^ ^-3 ^ minecraft:redstone_wall_torch[lit=true] run function animations:pegasus_lower_shield

# Tollan gate
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=0},tag=!stargate.autodialed] at @s positioned ~ ~-3 ~ if predicate stargates:active_redstone at @s run function animations:tollan_autodial
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=0},tag=stargate.autodialed] at @s positioned ~ ~-3 ~ unless predicate stargates:active_redstone run tag @s remove stargate.autodialed