# Get chunk, but with origin at somewhere past the -x,-z corner
# Not far enough to need to mod by sg.num_addresses no matter where you are
# Must be at least 1875000 to move the corner off the map and ensure it's
# in range
execute store result score @s entity_pos_x run data get entity @s Pos[0]
execute store result score @s entity_pos_z run data get entity @s Pos[2]
scoreboard players operation @s entity_pos_x /= .global 16
scoreboard players operation @s entity_pos_z /= .global 16
scoreboard players add @s entity_pos_x 17233842
scoreboard players add @s entity_pos_z 1875113

scoreboard players set @s setup_address 0
# Hash in x; prime closest to sg.num_addresses/2
scoreboard players operation .sgmad p1 = @s entity_pos_x
scoreboard players set .sgmad p2 584337613
function constructor:address/multiply_add_mod

# Hash in z; randomly chosen prime less than sg.num_addresses
scoreboard players operation .sgmad p1 = @s entity_pos_z
scoreboard players set .sgmad p2 505141529
function constructor:address/multiply_add_mod

# Final hash: spread out addresses; prime closest to sg.num_addresses / phi
scoreboard players operation .sgmad p1 = @s setup_address
scoreboard players set .sgmad p2 722281003
scoreboard players set @s setup_address 0
function constructor:address/multiply_add_mod

# Turn setup_address into actual address
function constructor:address/number_to_address

# Chevron 8
execute store result score @s addr8 run function #stargates:chevron_8
