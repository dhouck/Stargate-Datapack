# Executor: DHD, position: that DHD
# The player to talk to is tagged stargate.dialer

# Early exit if no gate
execute unless entity @e[tag=stargate,tag=ctrl,distance=0..10] run tellraw @p[tag=stargate.dialer] {"text": "No gate found within range", "color": "red"}
execute unless entity @e[tag=stargate,tag=ctrl,distance=0..10] run return 0

# Clear scrollback for clean UI
execute as @s[scores={dhd_menu=..8}] run tellraw @p[tag=stargate.dialer] {"text":"\n\n\n\n\n\n\n\n\n"}
execute as @s[scores={dhd_menu=9..}] run tellraw @p[tag=stargate.dialer] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

# TODO: Show address in glyphs; hover for numbers
execute as @e[tag=stargate,tag=ctrl,distance=0..10,sort=nearest,limit=1] run tellraw @p[tag=stargate.dialer] [{"text": "Local address: "}, {"translate": "stargates.address.8", "with": [{"score": {"name": "@s", "objective": "addr1"}}, {"score": {"name": "@s", "objective": "addr2"}}, {"score": {"name": "@s", "objective": "addr3"}}, {"score": {"name": "@s", "objective": "addr4"}}, {"score": {"name": "@s", "objective": "addr5"}}, {"score": {"name": "@s", "objective": "addr6"}}, {"score": {"name": "@s", "objective": "addr8"}}, {"translate": "stargates.glyph.mw.origin"}]}]

# Dialing status
execute as @s[scores={dhd_menu=0}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":" [Cheveron 1]: ","color":"gold"}, {"translate": "stargates.address.1", "color": "gold", "with": ["__"]}]
execute as @s[scores={dhd_menu=1}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 2]: ","color":"gold"}, {"translate": "stargates.address.2", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, "__"]}]
execute as @s[scores={dhd_menu=2}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 3]: ","color":"gold"}, {"translate": "stargates.address.3", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, "__"]}]
execute as @s[scores={dhd_menu=3}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 4]: ","color":"gold"}, {"translate": "stargates.address.4", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, "__"]}]
execute as @s[scores={dhd_menu=4}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 5]: ","color":"gold"}, {"translate": "stargates.address.5", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, "__"]}]
execute as @s[scores={dhd_menu=5}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 6]: ","color":"gold"}, {"translate": "stargates.address.6", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, "__"]}]
execute as @s[scores={dhd_menu=6}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 8]: ","color":"gold"}, {"translate": "stargates.address.7", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, "__"]}]
execute as @s[scores={dhd_menu=7}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [Cheveron 9]: ","color":"gold"}, {"translate": "stargates.address.8", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, {"score": {"name": "@s", "objective": "p8"}}, "__"]}]
execute as @s[scores={dhd_menu=8}] run tellraw @p[tag=stargate.dialer] [{"text":"DHD","bold":true,"color":"gold"},{"text":": [All Cheverons Set]: ","color":"gold"}, {"translate": "stargates.address.9", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, {"score": {"name": "@s", "objective": "p8"}}, {"score": {"name": "@s", "objective": "p9"}}, {"translate": "stargates.glyph.mw.origin"}]}]

execute as @s[scores={dhd_menu=9..,p8=0}] run tellraw @p[tag=stargate.dialer] ["",{"text":"DHD","bold":true,"color":"gold"},{"text":": [Dialing]: ","color":"gold"}, {"translate": "stargates.address.7", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, {"translate": "stargates.glyph.mw.origin"}]}]
execute as @s[scores={dhd_menu=9..,p8=1..,p9=0}] run tellraw @p[tag=stargate.dialer] ["",{"text":"DHD","bold":true,"color":"gold"},{"text":": [Dialing]: ","color":"gold"}, {"translate": "stargates.address.8", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, {"score": {"name": "@s", "objective": "p8"}}, {"translate": "stargates.glyph.mw.origin"}]}]
execute as @s[scores={dhd_menu=9..,p8=1..,p9=1..}] run tellraw @p[tag=stargate.dialer] ["",{"text":"DHD","bold":true,"color":"gold"},{"text":": [Dialing]: ","color":"gold"}, {"translate": "stargates.address.9", "color": "gold", "with": [{"score": {"name": "@s", "objective": "p1"}}, {"score": {"name": "@s", "objective": "p2"}}, {"score": {"name": "@s", "objective": "p3"}}, {"score": {"name": "@s", "objective": "p4"}}, {"score": {"name": "@s", "objective": "p5"}}, {"score": {"name": "@s", "objective": "p6"}}, {"score": {"name": "@s", "objective": "p8"}}, {"score": {"name": "@s", "objective": "p9"}}, {"translate": "stargates.glyph.mw.origin"}]}]

# Keypad
scoreboard players enable @p[tag=stargate.dialer] player_input
execute as @s[scores={dhd_menu=0..5}] run tellraw @p[tag=stargate.dialer] [{"text":"[01]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 1"}},{"text":"[02]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 2"}},{"text":"[03]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 3"}},{"text":"[04]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 4"}},{"text":"[05]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 5"}},{"text":"[06]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 6"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[07]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 7"}},{"text":"[08]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 8"}},{"text":"[09]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 9"}},{"text":"[10]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 10"}},{"text":"[11]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 11"}},{"text":"[12]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 12"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[13]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 13"}},{"text":"[14]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 14"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[15]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 15"}},{"text":"[16]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 16"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[17]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 17"}},{"text":"[18]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 18"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[19]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 19"}},{"text":"[20]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 20"}},{"text":"\n","bold":true},{"text":"[21]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 21"}},{"text":"[22]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 22"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[23]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 23"}},{"text":"[24]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 24"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[25]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 25"}},{"text":"[26]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 26"}},{"text":"[27]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 27"}},{"text":"[28]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 28"}},{"text":"[29]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 29"}},{"text":"[30]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 30"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[31]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 31"}},{"text":"[32]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 32"}},{"text":"[33]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 33"}},{"text":"[34]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 34"}},{"text":"[35]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 35"}},{"text":"[36]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 36"}}]
execute as @s[scores={dhd_menu=6..8}] run tellraw @p[tag=stargate.dialer] [{"text":"[01]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 1"}},{"text":"[02]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 2"}},{"text":"[03]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 3"}},{"text":"[04]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 4"}},{"text":"[05]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 5"}},{"text":"[06]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 6"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[07]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 7"}},{"text":"[08]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 8"}},{"text":"[09]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 9"}},{"text":"[10]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 10"}},{"text":"[11]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 11"}},{"text":"[12]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 12"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[13]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 13"}},{"text":"[14]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 14"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[15]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 15"}},{"text":"[16]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 16"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[17]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 17"}},{"text":"[18]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 18"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[19]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 19"}},{"text":"[20]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 20"}},{"text":"\n","bold":true},{"text":"[21]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 21"}},{"text":"[22]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 22"}},{"text":"\u2589\u2589\u2589\u2589\u2589","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger player_input set 100"}},{"text":" ","bold":true,"color":"dark_red"},{"text":"[23]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 23"}},{"text":"[24]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 24"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[25]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 25"}},{"text":"[26]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 26"}},{"text":"[27]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 27"}},{"text":"[28]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 28"}},{"text":"[29]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 29"}},{"text":"[30]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 30"}},{"text":"\n","bold":true,"color":"blue"},{"text":"[31]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 31"}},{"text":"[32]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 32"}},{"text":"[33]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 33"}},{"text":"[34]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 34"}},{"text":"[35]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 35"}},{"text":"[36]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger player_input set 36"}}]

tellraw @p[tag=stargate.dialer] ["",{"text":"[Reset DHD]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_input set 101"}},{"text": " "},{"text":"[Remove Gate]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_input set 102"}}]
