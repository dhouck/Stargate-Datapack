function connection:redstone

# Outbound
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=1..400}] at @s run function connection:main_stargate_state
# Inbound
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=2000..}] at @s run function connection:main_stargate_state
# Shutdown
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=1000..1040}] at @s run function connection:main_stargate_state

# Transport
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=12..399}] at @s run function connection:outbound_transport
