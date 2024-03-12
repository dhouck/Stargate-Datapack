# Executor: dialing player; location: that player
tag @s add stargate.dialer
execute as @e[tag=dhd,distance=..10] if score @s stargate.dhd_id = @p[tag=stargate.dialer] stargate.dialing_dhd run tag @s add stargate.dialed_dhd
execute unless entity @e[tag=stargate.dialed_dhd] run tellraw @s {"text": "Unable to find DHD nearby.  Right-click the DHD again.", "color": "red"}

# If the player got here by dialing, handle that
execute if score @s player_input matches 1.. as @e[tag=stargate.dialed_dhd] run function dhd_main:player_input

# Show the menu
execute as @e[tag=stargate.dialed_dhd] at @s run function dhd_main:menu
tag @e[tag=stargate.dialed_dhd] remove stargate.dialed_dhd
tag @s remove stargate.dialer
