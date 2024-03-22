# Executor: new stargate; location: that gate
execute as @s[tag=pegasus] as @e[tag=stargate,tag=animation,tag=pegasus,tag=new,limit=1,sort=nearest] run scoreboard players set @s p_lightup_pos 0
execute as @s[tag=milky_way] run scoreboard players set @s m_lightup_i 0
execute as @s run scoreboard players set @s iris_state 0

function constructor:address/main_setup_address

scoreboard players set @s s1 1
scoreboard players set @s s2 1
scoreboard players set @s s3 1
scoreboard players set @s s4 1
scoreboard players set @s s5 1
scoreboard players set @s s6 1
scoreboard players set @s s8 0
scoreboard players set @s s9 0
