# Auto dialing
execute as @s[scores={dhd_menu=0}] if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run scoreboard players set @s dhd_menu 9
execute as @s[scores={dhd_menu=0}] if block ~ ~-1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set @s dhd_menu 9

# Dial the stargate
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s1 = @s p1
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s2 = @s p2
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s3 = @s p3
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s4 = @s p4
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s5 = @s p5
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s6 = @s p6
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s8 = @s p8
execute as @s[scores={dhd_menu=9}] run scoreboard players operation @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] s9 = @s p9
execute as @s[scores={dhd_menu=9}] run scoreboard players set @e[tag=stargate,tag=ctrl,scores={stargate_state=0},distance=0..10,limit=1,sort=nearest] stargate_state 1
execute as @s[scores={dhd_menu=9}] run scoreboard players set @s dhd_menu 10

# Reset when gate shut down
execute as @s[scores={dhd_menu=10}] if entity @e[tag=stargate,tag=ctrl,scores={stargate_state=0},limit=1,sort=nearest,distance=0..10] run scoreboard players set @s dhd_menu 0
