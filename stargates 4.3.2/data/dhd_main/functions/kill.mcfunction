# TODO: Replace next three lines with block loot table change
kill @e[type=minecraft:item,nbt={OnGround: false, Age:0s, Item: {id: "minecraft:jukebox"}},distance=0..1,limit=1,sort=nearest]
execute as @s[tag=pegasus] run loot spawn ~ ~ ~ loot stargates:pegasus_dhd
execute as @s[tag=milky_way] run loot spawn ~ ~ ~ loot stargates:milky_way_dhd
kill @s
