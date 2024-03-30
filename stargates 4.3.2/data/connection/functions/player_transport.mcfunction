# Executor: something going through the gate; location: that entity (origin)
# Origin gate tagged stargate.origin; destination gate tagged stargate.destination


# “Molecules cannot reconstitute” sounds like a reason for max damage.
execute if entity @e[tag=stargate.destination,scores={iris_state=1..}] run damage @s 340282346638528859811704183484516925440 stargates:iris
tp @s @e[tag=stargate.destination,limit=1,sort=nearest]

scoreboard players set @s travel_cooldown 1