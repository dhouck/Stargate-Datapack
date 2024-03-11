# Executor: player who used DHD; location: that player

advancement revoke @s only stargates:dhd_used

# For now, just choose nearest DHD.
# Todo one of:
    # Raycast to block
        # Just make sure Δ is small?  I think 0.1 should be small enough to cut off less than a cubic pixel even at a bad angle.
        # Check ^-1 ^-1 ^ to ^1 ^1 ^ 3x1?  That can have lots of false positives
    # Raycast to entity
    # Find entity thatʼs the closest angle to line of sight?
    # The looking_at predicate doesnʼt work

# Standard block reach is 5 in creative but we use 10 in case reach is extended by mods,
# and because the entity is in the middle of the block not the near edge.
# For example Create mod extend-o-grip has 8 reach in creative.
tag @e[tag=dhd,sort=nearest,limit=1,distance=..10] add stargate.used_dhd

# Link DHD to player
scoreboard players operation @s stargate.dialing_dhd = @e[tag=dhd,tag=stargate.used_dhd] stargate.dhd_id
tag @e[tag=dhd,tag=stargate.used_dhd] remove stargate.used_dhd

# Show menu
function dhd_main:player_io
