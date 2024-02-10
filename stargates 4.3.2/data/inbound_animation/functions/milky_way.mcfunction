execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=0..35}] at @s run scoreboard players add @s m_lightup_i 1

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=1}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=1] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=1}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=5}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=2] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=5}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=9}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=3] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=9}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=13}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=4] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=13}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=17}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=5] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=17}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=21}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=6] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=21}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=25}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=7] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=25}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=29}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=8] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=29}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=33}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5,tag=9] remove off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=33}] at @s run playsound minecraft:stargates.milky_way_inbound_cheveron block @a[distance=0..16]


execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=on,scores={m_lightup_i=35}] at @s run scoreboard players set @s w_animation 1

execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=!on,scores={m_lightup_i=36}] at @s run tag @e[tag=stargate,tag=milky_way,tag=cheveron,distance=0..0.5] add off
execute as @e[tag=stargate,tag=milky_way,tag=ctrl,tag=!on,scores={m_lightup_i=36}] at @s run scoreboard players remove @s m_lightup_i 36