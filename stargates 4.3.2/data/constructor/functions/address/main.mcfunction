execute as @e[tag=stargate,tag=new,tag=ctrl] at @s run scoreboard players set @s setup_address 1
execute as @e[tag=stargate,tag=pegasus,tag=animation,tag=new] at @s run scoreboard players set @s p_lightup_pos 0
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=new] at @s run scoreboard players set @s m_lightup_i 0
execute as @e[tag=stargate,tag=ctrl,tag=new] at @s run scoreboard players set @s iris_state 0

tag @e[tag=stargate,tag=ctrl,tag=new] remove new
tag @e[tag=stargate,tag=animation,tag=pegasus,tag=new] remove new

execute as @e[tag=stargate,tag=ctrl,scores={setup_address=1..}] at @s run function constructor:address/main_setup_address

