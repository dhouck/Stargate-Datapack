# Killing
# TODO: Replace with a predicate check
execute as @e[tag=dhd] at @s unless block ~ ~ ~ minecraft:jukebox[has_record=true]{RecordStartTick: -45600L, IsPlaying: false} run function dhd_main:kill
execute as @e[tag=dhd] at @s if data block ~ ~ ~ RecordItem run function dhd_main:kill

# Dialing
execute as @a[scores={player_input=1..}] at @s run function dhd_main:player_io
execute as @e[tag=dhd] at @s run function dhd_main:dial
scoreboard players set @a player_input 0
