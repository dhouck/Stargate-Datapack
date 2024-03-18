execute as @s[tag=milky_way,scores={stargate_state=1}] at @s run scoreboard players set @s d_animation_1 1
execute as @s[tag=pegasus,scores={stargate_state=1}] at @s run scoreboard players set @s d_animation_2 1
execute as @s[tag=universe,scores={stargate_state=1}] at @s run scoreboard players set @s d_animation_3 1

execute as @s[scores={stargate_state=1}] at @s run scoreboard players set @s stargate_state 2

execute as @s[tag=milky_way,scores={stargate_state=2,d_animation_1=340}] at @s run scoreboard players set @s stargate_state 3
execute as @s[tag=pegasus,scores={stargate_state=2,d_animation_2=100}] at @s run scoreboard players set @s stargate_state 3
execute as @s[tag=universe,scores={stargate_state=2,d_animation_3=340}] at @s run scoreboard players set @s stargate_state 3

execute as @s[tag=milky_way,scores={stargate_state=3,d_animation_1=340..}] at @s run scoreboard players set @s d_animation_1 0
execute as @s[tag=pegasus,scores={stargate_state=3,d_animation_2=95..}] at @s run scoreboard players set @s d_animation_2 0
execute as @s[tag=universe,scores={stargate_state=3,d_animation_3=340..}] at @s run scoreboard players set @s d_animation_3 0

#Tollan
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s1 = @s p1
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s2 = @s p2
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s3 = @s p3
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s4 = @s p4
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s5 = @s p5
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s6 = @s p6
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s8 = @s p8
execute as @s[tag=tollan,scores={stargate_state=2},tag=has_dialed] at @s run scoreboard players operation @s s9 = @s p9

execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p1 = @s s1
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p2 = @s s2
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p3 = @s s3
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p4 = @s s4
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p5 = @s s5
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p6 = @s s6
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p8 = @s s8
execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run scoreboard players operation @s p9 = @s s9

execute as @s[tag=tollan,scores={stargate_state=2},tag=!has_dialed] at @s run tag @s add has_dialed

execute as @s[tag=tollan,scores={stargate_state=2}] at @s run scoreboard players set @s stargate_state 3

#Orlin
execute as @s[tag=orlin,scores={stargate_state=2}] at @s run tag @s add damage_gate
execute as @s[tag=orlin,scores={stargate_state=2}] at @s run scoreboard players set @s stargate_state 3

#General
execute as @s[scores={stargate_state=3..5}] at @s run scoreboard players add @s stargate_state 1

execute as @s[scores={stargate_state=4,s9=1..}] at @s run scoreboard players set @s stargate_state 1000

execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial1 = @s s1
execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial2 = @s s2
execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial3 = @s s3
execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial4 = @s s4
execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial5 = @s s5
execute as @s[scores={stargate_state=4}] at @s run scoreboard players operation @s dial6 = @s s6
execute as @s[scores={stargate_state=4,s8=0}] at @s run scoreboard players operation @s dial8 = @s addr8
execute as @s[scores={stargate_state=4,s8=1..}] at @s run scoreboard players operation @s dial8 = @s s8

execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial1 = @s addr1
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial2 = @s addr2
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial3 = @s addr3
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial4 = @s addr4
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial5 = @s addr5
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial6 = @s addr6
execute as @s[scores={stargate_state=4}] at @s as @e[tag=stargate,tag=ctrl,scores={stargate_state=0..3}] run scoreboard players operation @s dial8 = @s addr8

tag @s[scores={stargate_state=5}] add outgoing
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_1
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_2
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_3
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_4
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_5
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_6
execute as @s[scores={stargate_state=5}] at @s run function connection:chevron_8

execute as @s[scores={stargate_state=6}] at @s as @e[tag=stargate,tag=ctrl,scores={dial1=0,dial2=0,dial3=0,dial4=0,dial5=0,dial6=0,dial8=0,stargate_state=0..3},tag=!outgoing,limit=1,sort=nearest] run tag @s add connection
execute as @s[scores={stargate_state=6}] at @s as @e[tag=stargate,tag=ctrl,tag=connection,tag=!outgoing,limit=1,sort=nearest] run tag @s add shutdown

execute as @s[scores={stargate_state=6}] at @s unless entity @e[tag=stargate,tag=ctrl,scores={dial1=0,dial2=0,dial3=0,dial4=0,dial5=0,dial6=0,dial8=0,stargate_state=0..3},tag=!outgoing] run scoreboard players set @s stargate_state 1000

execute as @s[scores={stargate_state=8}] at @s run function connection:id

execute as @s[scores={stargate_state=7..11}] at @s run scoreboard players add @s stargate_state 1

execute as @s[scores={stargate_state=6}] at @s if entity @e[tag=stargate,tag=ctrl,scores={dial1=0,dial2=0,dial3=0,dial4=0,dial5=0,dial6=0,dial8=0,stargate_state=0..3},tag=!outgoing] run scoreboard players set @s stargate_state 7

execute as @s[scores={stargate_state=9..400}] at @s run function connection:pier_com

#animation control
execute as @s[scores={stargate_state=9}] at @s run scoreboard players set @s r_stargate_state 2000
execute as @s[scores={stargate_state=2000},tag=pegasus] at @s run tag @e[tag=stargate,tag=pegasus,tag=animation,distance=0..0.5] add on
execute as @s[scores={stargate_state=2000},tag=milky_way] at @s run tag @s add on
execute as @s[scores={stargate_state=2000},tag=universe] at @s run scoreboard players set @s w_animation 1
execute as @s[scores={stargate_state=2000},tag=orlin] at @s run scoreboard players set @s w_animation 1
execute as @s[scores={stargate_state=2000},tag=tollan] at @s run scoreboard players set @s w_animation 1

execute as @s[scores={stargate_state=10}] at @s run scoreboard players set @s r_stargate_state 2001

#animation control
execute as @s[scores={stargate_state=11}] at @s run scoreboard players set @s w_animation 1

execute as @s[scores={stargate_state=12,w_animation=26}] at @s run scoreboard players set @s stargate_state 13


execute as @s[scores={stargate_state=13..399}] at @s run scoreboard players add @s stargate_state 1


tag @s[scores={stargate_state=399}] remove e_off
execute as @s[scores={stargate_state=399}] at @s run scoreboard players set @s r_stargate_state 1020
#animation control
execute as @s[scores={stargate_state=400}] at @s run tag @s remove e_off
execute as @s[scores={stargate_state=400}] at @s run scoreboard players set @s stargate_state 1020


execute as @s[scores={stargate_state=1000..1039}] at @s run scoreboard players add @s stargate_state 1
execute as @s[scores={stargate_state=1040},tag=orlin,tag=damage_gate] at @s run tag @s add damage_gate_now
execute as @s[scores={stargate_state=1040}] at @s run tag @s add shutdown

execute as @s[tag=X,tag=7x7,scores={stargate_state=2000..}] align xyz positioned ~-2 ~-1 ~ as @e[dx=4,dy=4,dz=0,tag=!stargate,tag=!sg_override] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:wrong_way
execute as @s[tag=Z,tag=7x7,scores={stargate_state=2000..}] align xyz positioned ~ ~-1 ~-2 as @e[dx=0,dy=4,dz=4,tag=!stargate,tag=!sg_override] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:wrong_way
execute as @s[tag=X,tag=5x5,scores={stargate_state=2000..}] align xyz positioned ~-1 ~-1 ~ as @e[dx=2,dy=3,dz=0,tag=!stargate,tag=!sg_override] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:wrong_way
execute as @s[tag=Z,tag=5x5,scores={stargate_state=2000..}] align xyz positioned ~ ~-1 ~-1 as @e[dx=0,dy=3,dz=2,tag=!stargate,tag=!sg_override] unless score @s travel_cooldown matches 1.. run damage @s 340282346638528859811704183484516925440 stargates:wrong_way

