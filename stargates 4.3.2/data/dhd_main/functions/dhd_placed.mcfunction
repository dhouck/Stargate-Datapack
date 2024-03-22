# Executor: Player who placed DHD; location: that player
advancement revoke @s only stargates:dhd_placed

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=north]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:beehive[facing=north]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.pegasus_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=east]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:beehive[facing=east]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.pegasus_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=south]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:beehive[facing=south]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.pegasus_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=west]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"pegasus"'} replace minecraft:beehive[facing=west]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.pegasus_dhd"]}}]}

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=north]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:beehive[facing=north]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.milky_way_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=east]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:beehive[facing=east]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.milky_way_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=south]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:beehive[facing=south]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.milky_way_dhd"]}}]}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block[facing=west]{auto:true,Command:"function dhd_main:spawn/summon",CustomName:'"milky_way"'} replace minecraft:beehive[facing=west]{Bees:[{EntityData:{id:"minecraft:marker",Tags:["custom_block","sg.milky_way_dhd"]}}]}
