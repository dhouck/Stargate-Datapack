function updates:update

function animations:milky_way
function animations:pegasus
function stargates:milky_way_cheverons
function stargates:pegasus_cheverons
function animations:universe
#function universe_dhd:dhd_main
function constructor:stargates/main
function constructor:address/main
function deconstructor:stargates/main
function connection:main
function inbound_animation:pegasus
function inbound_animation:milky_way
function animations:general

function dhd_main:dhd_main

execute as @e[type=minecraft:armor_stand,tag=stargate,tag=ctrl,tag=milky_way,tag=shutdown] at @s run function stargates:milky_way_shutdown
execute as @e[type=minecraft:armor_stand,tag=stargate,tag=ctrl,tag=pegasus,tag=shutdown] at @s run function stargates:pegasus_shutdown
execute as @e[type=minecraft:armor_stand,tag=stargate,tag=ctrl,tag=universe,tag=shutdown] at @s run function stargates:universe_shutdown
execute as @e[type=minecraft:armor_stand,tag=stargate,tag=ctrl,tag=orlin,tag=shutdown] at @s run function stargates:orlin_shutdown
execute as @e[type=minecraft:armor_stand,tag=stargate,tag=ctrl,tag=tollan,tag=shutdown] at @s run function stargates:tollan_shutdown

execute as @e[tag=r_enabled] store result entity @s Pose.Head[2] float 1 run scoreboard players get @s r

scoreboard players set @e mtply_10 10