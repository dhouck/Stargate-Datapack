# Executor: newly summoned item display; position: that item display

# Common data
data merge entity @s {Tags:["dhd"],brightness:{sky:15,block:15}}
scoreboard players set @s dhd_menu 0

# DHD type
# Even though CustomName was specified as a string it is stored as a text component
# eg. {"text":"pegasus"}.  Hence the 9, -2.
data modify entity @s Tags append string block ~ ~ ~ CustomName 9 -2

# Rotation
execute if block ~ ~ ~ minecraft:command_block[facing=north] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ minecraft:command_block[facing=east] run data modify entity @s Rotation[0] set value 90f
execute if block ~ ~ ~ minecraft:command_block[facing=south] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ minecraft:command_block[facing=west] run data modify entity @s Rotation[0] set value 270f

# Done with the spawning command block
setblock ~ ~ ~ minecraft:jukebox[has_record=true]{RecordStartTick: -45600L, IsPlaying: false}

# Set appearence
execute as @s[tag=pegasus] run loot replace entity @s container.0 loot stargates:pegasus_dhd
execute as @e[tag=milky_way] run loot replace entity @s container.0 loot stargates:milky_way_dhd
