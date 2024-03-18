# Executor: outbound gate, location: that gate

# Prologue
tag @s add stargate.origin
execute as @e[tag=stargate,tag=ctrl,scores={stargate_state=2000..},tag=!outgoing] if score @s connection_id = @e[tag=stargate.origin,limit=1,sort=nearest] connection_id run tag @s add stargate.destination

# Transport players
execute as @s[tag=X,tag=7x7] align xyz positioned ~-2 ~-1 ~ as @e[dx=4,dy=4,dz=0,tag=!stargate,tag=!sg_override] at @s run function connection:player_transport
execute as @s[tag=Z,tag=7x7] align xyz positioned ~ ~-1 ~-2 as @e[dx=0,dy=4,dz=4,tag=!stargate,tag=!sg_override] at @s run function connection:player_transport
execute as @s[tag=X,tag=5x5] align xyz positioned ~-1 ~-1 ~ as @e[dx=2,dy=3,dz=0,tag=!stargate,tag=!sg_override] at @s run function connection:player_transport
execute as @s[tag=Z,tag=5x5] align xyz positioned ~ ~-1 ~-1 as @e[dx=0,dy=3,dz=2,tag=!stargate,tag=!sg_override] at @s run function connection:player_transport

# Epilogue
tag @e remove stargate.origin
tag @e remove stargate.destination