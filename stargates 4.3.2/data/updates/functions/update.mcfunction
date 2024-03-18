execute as @e[tag=stargate,scores={version=1},tag=!universe,tag=ctrl] run tag @s add 7x7
execute as @e[tag=stargate,scores={version=1},tag=universe,tag=ctrl] run tag @s add 5x5
execute as @e[tag=stargate,scores={version=1},tag=ctrl] run scoreboard players set @s version 2

# Ideally should replace DHD armor stand with DHD item display, but meh
# That would probably allow these two commands to not be duplicated from dhd_main:spawn/setup
execute as @e[tag=dhd] unless score @s stargate.dhd_id matches -2147483648..2147483647 store result score @s stargate.dhd_id run scoreboard players add .global stargate.dhd_id 1
execute as @e[tag=dhd] at @s if block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ minecraft:jukebox[has_record=true]{RecordStartTick: -45600L, IsPlaying: false}