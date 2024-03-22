# Operation @s setup_address += (.sgmad p1 * .sgmad p2), then % .global sg.num_addresses
# Prereq: 0 ≤ @s setup_address < sg.num_addresses
# Prereq: 0 < .sgmad p1 < sg.num_addresses
# Prereq: 0 < .sgmad p2 < sg.num_addresses
# Note: .sgmad * is not considered stable; this function will change it.

# Using technique from https://www.geeksforgeeks.org/multiply-large-integers-under-large-modulo/
# In theory Barrett reduction would be better but I donʼt want.

# To avoid overflow issues where we mod by both sg.num_addresses and 2^32, we
# subtract as our mod operation.  With the calculations we do, this should need
# only one iteration.
# execute unless score @s setup_address matches 0..1168675199 run scoreboard players operation @s setup_address -= .global sg.num_addresses
# (where 1168675199 = sg.num_addresses - 1)

# Using .sgmad p1 and .sgmad p2 as *p*arameters
# Using p3 as a register, for calculations.  Its value is set to whether p2 is odd.
execute if score .sgmad p2 matches 0 run return 0
scoreboard players operation .sgmad p3 = .sgmad p2
scoreboard players operation .sgmad p3 %= .global 2

# Handle p2 odd
execute if score .sgmad p3 matches 1 run scoreboard players operation @s setup_address += .sgmad p1
execute unless score @s setup_address matches 0..1168675199 run scoreboard players operation @s setup_address -= .global sg.num_addresses

# Halve p2; double p1 mod num_addresses
scoreboard players operation .sgmad p2 /= .global 2
scoreboard players operation .sgmad p1 += .sgmad p1
execute unless score .sgmad p1 matches 0..1168675199 run scoreboard players operation .sgmad p1 -= .global sg.num_addresses

# Recurse
function constructor:address/multiply_add_mod
