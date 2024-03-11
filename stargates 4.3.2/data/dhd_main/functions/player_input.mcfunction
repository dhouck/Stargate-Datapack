# Executor: DHD, position: that DHD
# Preconditions
    # The player with input is tagged stargate.dialer
    # The player is allowed to dial (distance has been checked)
    # Player input is at least 1

# Special operations
execute as @s[scores={dhd_menu=6..8}] if entity @p[tag=stargate.dialer,scores={player_input=100}] run scoreboard players set @s dhd_menu 9
execute if entity @p[tag=stargate.dialer,scores={player_input=101..102}] run scoreboard players set @s dhd_menu 0
execute if entity @p[tag=stargate.dialer,scores={player_input=102}] as @e[tag=stargate,tag=ctrl,distance=0..10,limit=1,sort=nearest] run function deconstructor:stargates/main_destroy 

execute if entity @p[tag=stargate.dialer,scores={player_input=..0}] run return 0
execute if entity @p[tag=stargate.dialer,scores={player_input=37..}] run return 1

# By now the dialer has input 1..36
# Reset dialing
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p1 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p2 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p3 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p4 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p5 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p6 1
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p8 0
execute as @s[scores={dhd_menu=0}] run scoreboard players set @s p9 0

# Player dialing
execute as @s[scores={dhd_menu=0}] run scoreboard players operation @s p1 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=1}] run scoreboard players operation @s p2 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=2}] run scoreboard players operation @s p3 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=3}] run scoreboard players operation @s p4 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=4}] run scoreboard players operation @s p5 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=5}] run scoreboard players operation @s p6 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=6}] run scoreboard players operation @s p8 = @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=7}] run scoreboard players operation @s p9 = @p[tag=stargate.dialer] player_input

execute as @s[scores={dhd_menu=0..7}] run scoreboard players add @s dhd_menu 1
