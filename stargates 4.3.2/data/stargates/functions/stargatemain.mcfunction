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

execute as @e[tag=stargate,tag=ctrl,tag=shutdown] at @s run function stargates:shutdown

execute as @e[tag=r_enabled] store result entity @s Pose.Head[2] float 1 run scoreboard players get @s r

scoreboard players set @e mtply_10 10
