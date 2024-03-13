execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=0..35}] at @s run tp @s ^ ^ ^-0.005
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=0..35}] at @s run scoreboard players add @s p_lightup_pos 1

execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=1}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=1] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=5}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=2] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=9}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=3] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=13}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=4] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=17}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=5] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=21}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=6] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=25}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=7] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=29}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=8] remove off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=on,scores={p_lightup_pos=33}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5,tag=9] remove off

execute as @e[tag=stargate,tag=pegasus,tag=animation,scores={p_lightup_pos=35}] at @s as @e[tag=pegasus,tag=stargate,tag=ctrl,distance=0..0.5] run scoreboard players set @s w_animation 1

execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=!on,scores={p_lightup_pos=36}] at @s run tp @s ^ ^ ^.18
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=!on,scores={p_lightup_pos=36}] at @s run tag @e[tag=stargate,tag=pegasus,tag=chevron,distance=0..0.5] add off
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=!on,scores={p_lightup_pos=36}] at @s run scoreboard players remove @s p_lightup_pos 36