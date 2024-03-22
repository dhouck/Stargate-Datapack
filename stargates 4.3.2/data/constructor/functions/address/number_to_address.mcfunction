# Executor: new stargate with setup_address

# Use addr8 as a register for what to mod by
# It should get reset later but also reset it now
# Also use s1–s6

# This uses a variant Fisher-Yates which does not need the whole array
# Let the array be 1-indexed.  Then once it exists, addri = array[36-i],
# and si = array[addri].
# Important invariant: every array[i] not yet removed is at least i.  This is
# trivially true at the start.  As a corallary, sj ≥ addrj if addrj <= (36-i),
# where i is the to-be-removed element.
# 
# General algorithm for each addri:
# addri <- max remaining index (36-i)
# for j < i, if addri = addrj, addri = sj
## Already swapped with this index; get new value.
## By the corallary, this increases addri.
## At this point addrj is greater than all future addri, so swaps in j wonʼt
## happen again and sj does not matter.  In theory it should have the same value
## as eventual addri, but who cares.
# si = setup_address % max remaining index
# for j < i, if si = addrj, addri <-> sj
## We chose this value before; swap with the thing at that index (sj).
## Here si must never be used because itʼs the same as addrj, and it wonʼt be
## because sj was made by swapping with a previous addrk, which is higher than
## any addri in the future.
# If for no j < i, si = addrj, addri <-> si
## We did not choose this value before; swap with the value equal to that index

tellraw @a ["New stargate address as int: ", {"score": {"name": "@s", "objective": "setup_address"}}]
scoreboard players set @s addr8 35

# addr1
scoreboard players operation @s addr1 = @s addr8
scoreboard players operation @s s1 = @s setup_address
scoreboard players operation @s s1 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s1"}}]
scoreboard players add @s s1 1
scoreboard players operation @s addr1 >< @s s1
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr1"}}]
scoreboard players operation @s setup_address /= @s addr8

# addr2
scoreboard players remove @s addr8 1
scoreboard players operation @s addr2 = @s addr8
execute if score @s addr2 = @s addr1 run scoreboard players operation @s addr2 = @s s1
scoreboard players operation @s s2 = @s setup_address
scoreboard players operation @s s2 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s2"}}]
scoreboard players add @s s2 1
execute if score @s s2 = @s addr1 run scoreboard players operation @s addr2 >< @s s1
execute unless score @s s2 = @s addr1 run scoreboard players operation @s addr2 >< @s s2
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr2"}}]
scoreboard players operation @s setup_address /= @s addr8

# addr3
scoreboard players remove @s addr8 1
scoreboard players operation @s addr3 = @s addr8
execute if score @s addr3 = @s addr1 run scoreboard players operation @s addr3 = @s s1
execute if score @s addr3 = @s addr2 run scoreboard players operation @s addr3 = @s s2
scoreboard players operation @s s3 = @s setup_address
scoreboard players operation @s s3 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s3"}}]
scoreboard players add @s s3 1
execute if score @s s3 = @s addr1 run scoreboard players operation @s addr3 >< @s s1
execute if score @s s3 = @s addr2 run scoreboard players operation @s addr3 >< @s s2
execute unless score @s s3 = @s addr1 unless score @s s3 = @s addr2 run scoreboard players operation @s addr3 >< @s s3
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr3"}}]
scoreboard players operation @s setup_address /= @s addr8

# addr4
scoreboard players remove @s addr8 1
scoreboard players operation @s addr4 = @s addr8
execute if score @s addr4 = @s addr1 run scoreboard players operation @s addr4 = @s s1
execute if score @s addr4 = @s addr2 run scoreboard players operation @s addr4 = @s s2
execute if score @s addr4 = @s addr3 run scoreboard players operation @s addr4 = @s s3
scoreboard players operation @s s4 = @s setup_address
scoreboard players operation @s s4 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s4"}}]
scoreboard players add @s s4 1
execute if score @s s4 = @s addr1 run scoreboard players operation @s addr4 >< @s s1
execute if score @s s4 = @s addr2 run scoreboard players operation @s addr4 >< @s s2
execute if score @s s4 = @s addr3 run scoreboard players operation @s addr4 >< @s s3
execute unless score @s s4 = @s addr1 unless score @s s4 = @s addr2 unless score @s s4 = @s addr3 run scoreboard players operation @s addr4 >< @s s4
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr4"}}]
scoreboard players operation @s setup_address /= @s addr8

# addr5
scoreboard players remove @s addr8 1
scoreboard players operation @s addr5 = @s addr8
execute if score @s addr5 = @s addr1 run scoreboard players operation @s addr5 = @s s1
execute if score @s addr5 = @s addr2 run scoreboard players operation @s addr5 = @s s2
execute if score @s addr5 = @s addr3 run scoreboard players operation @s addr5 = @s s3
execute if score @s addr5 = @s addr4 run scoreboard players operation @s addr5 = @s s4
scoreboard players operation @s s5 = @s setup_address
scoreboard players operation @s s5 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s5"}}]
scoreboard players add @s s5 1
execute if score @s s5 = @s addr1 run scoreboard players operation @s addr5 >< @s s1
execute if score @s s5 = @s addr2 run scoreboard players operation @s addr5 >< @s s2
execute if score @s s5 = @s addr3 run scoreboard players operation @s addr5 >< @s s3
execute if score @s s5 = @s addr4 run scoreboard players operation @s addr5 >< @s s4
execute unless score @s s5 = @s addr1 unless score @s s5 = @s addr2 unless score @s s5 = @s addr3 unless score @s s5 = @s addr4 run scoreboard players operation @s addr5 >< @s s5
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr5"}}]
scoreboard players operation @s setup_address /= @s addr8

# addr6
scoreboard players remove @s addr8 1
scoreboard players operation @s addr6 = @s addr8
execute if score @s addr6 = @s addr1 run scoreboard players operation @s addr6 = @s s1
execute if score @s addr6 = @s addr2 run scoreboard players operation @s addr6 = @s s2
execute if score @s addr6 = @s addr3 run scoreboard players operation @s addr6 = @s s3
execute if score @s addr6 = @s addr4 run scoreboard players operation @s addr6 = @s s4
execute if score @s addr6 = @s addr5 run scoreboard players operation @s addr6 = @s s5
scoreboard players operation @s s6 = @s setup_address
scoreboard players operation @s s6 %= @s addr8
tellraw @a [{"score": {"name": "@s", "objective": "setup_address"}}, "%", {"score": {"name": "@s", "objective": "addr8"}}, "=", {"score": {"name": "@s", "objective": "s6"}}]
scoreboard players add @s s6 1
execute if score @s s6 = @s addr1 run scoreboard players operation @s addr6 >< @s s1
execute if score @s s6 = @s addr2 run scoreboard players operation @s addr6 >< @s s2
execute if score @s s6 = @s addr3 run scoreboard players operation @s addr6 >< @s s3
execute if score @s s6 = @s addr4 run scoreboard players operation @s addr6 >< @s s4
execute if score @s s6 = @s addr5 run scoreboard players operation @s addr6 >< @s s5
execute unless score @s s6 = @s addr1 unless score @s s6 = @s addr2 unless score @s s6 = @s addr3 unless score @s s6 = @s addr4 unless score @s s6 = @s addr5 run scoreboard players operation @s addr6 >< @s s6
tellraw @a ["Glyph value:", {"score": {"name": "@s", "objective": "addr6"}}]

scoreboard players reset @s setup_address
scoreboard players reset @s addr8