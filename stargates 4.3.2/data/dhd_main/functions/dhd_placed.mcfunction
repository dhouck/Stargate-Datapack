# Executor: Player who placed DHD; location: that player
advancement revoke @s only stargates:dhd_placed

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=north]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:lectern[facing=north]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:pegasus_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=east]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:lectern[facing=east]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:pegasus_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=south]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:lectern[facing=south]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:pegasus_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=west]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:lectern[facing=west]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:pegasus_dhd"}}}}

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=north]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:lectern[facing=north]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:milky_way_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=east]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:lectern[facing=east]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:milky_way_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=south]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:lectern[facing=south]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:milky_way_dhd"}}}}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=west]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:lectern[facing=west]{Book:{id:"minecraft:redstone",Count:1b,tag:{x_custom_block: {"type": "stargates:milky_way_dhd"}}}}
