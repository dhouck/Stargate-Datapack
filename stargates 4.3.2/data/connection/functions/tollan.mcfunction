execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s1 = @s p1
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s2 = @s p2
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s3 = @s p3
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s4 = @s p4
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s5 = @s p5
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s6 = @s p6
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s8 = @s p8
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s9 = @s p9

execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p1 = @s s1
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p2 = @s s2
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p3 = @s s3
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p4 = @s s4
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p5 = @s s5
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p6 = @s s6
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p8 = @s s8
execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p9 = @s s9

execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run tag @s add has_dialed

execute as @e[tag=stargate,tag=ctrl,tag=tollan,scores={stargate_state=2}] at @s run scoreboard players set @s stargate_state 3