scoreboard objectives add r dummy
scoreboard objectives add s1 dummy
scoreboard objectives add s2 dummy
scoreboard objectives add s3 dummy
scoreboard objectives add s4 dummy
scoreboard objectives add s5 dummy
scoreboard objectives add s6 dummy
scoreboard objectives add s7 dummy
scoreboard objectives add s8 dummy
scoreboard objectives add s9 dummy
scoreboard objectives add addr1 dummy
scoreboard objectives add addr2 dummy
scoreboard objectives add addr3 dummy
scoreboard objectives add addr4 dummy
scoreboard objectives add addr5 dummy
scoreboard objectives add addr6 dummy
scoreboard objectives add addr7 dummy
scoreboard objectives add addr8 dummy
scoreboard objectives add d_animation_1 dummy
scoreboard objectives add d_animation_2 dummy
scoreboard objectives add d_animation_3 dummy
scoreboard objectives add m_ring_loc dummy
scoreboard objectives add m_rotate_dif dummy
scoreboard objectives add mtply_10 dummy
scoreboard objectives add p_rotate_dest dummy
scoreboard objectives add p_rotate_dif dummy
scoreboard objectives add universe_symbol dummy
scoreboard objectives add u_rotate_dif dummy
scoreboard objectives add selected_slot dummy
scoreboard objectives add u_dhd_page dummy
scoreboard objectives add selected_slot_d dummy
scoreboard objectives add u_selected_glyph dummy
scoreboard objectives add u_selected_slot dummy
scoreboard objectives add used_u_dhd minecraft.used:minecraft.snowball
scoreboard objectives add u_dhd_menu dummy
scoreboard objectives add p1 dummy
scoreboard objectives add p2 dummy
scoreboard objectives add p3 dummy
scoreboard objectives add p4 dummy
scoreboard objectives add p5 dummy
scoreboard objectives add p6 dummy
scoreboard objectives add p7 dummy
scoreboard objectives add p8 dummy
scoreboard objectives add p9 dummy
scoreboard objectives add u_exit_remote minecraft.custom:minecraft.sneak_time
scoreboard objectives add entity_pos_x dummy
scoreboard objectives add entity_pos_z dummy
scoreboard objectives add setup_address dummy
scoreboard objectives add stargate_state dummy
scoreboard objectives add dial1 dummy
scoreboard objectives add dial2 dummy
scoreboard objectives add dial3 dummy
scoreboard objectives add dial4 dummy
scoreboard objectives add dial5 dummy
scoreboard objectives add dial6 dummy
scoreboard objectives add dial8 dummy
scoreboard objectives add connection_id dummy
scoreboard objectives add r_stargate_state dummy
scoreboard objectives add w_animation dummy
scoreboard objectives add p_lightup_pos dummy
scoreboard objectives add m_lightup_i dummy
scoreboard objectives add dhd_menu dummy
scoreboard objectives add player_input trigger
scoreboard objectives add iris_state dummy
scoreboard objectives add travel_cooldown dummy
scoreboard objectives add version dummy
scoreboard objectives add stargate.dhd_id dummy "DHD ID"
scoreboard objectives add stargate.dialing_dhd dummy "Currently Dialing DHD"

# Global constants
scoreboard objectives add 2 dummy
scoreboard players set .global 2 2
scoreboard objectives add 16 dummy
scoreboard players set .global 16 16
# 35*34*33*32*31*30
scoreboard objectives add sg.num_addresses dummy
scoreboard players set .global sg.num_addresses 1168675200

# Initial values
execute unless score .global connection_id matches -2147483648..2147483647 run scoreboard players set .global connection_id 0
execute unless score .global stargate.dhd_id matches -2147483648..2147483647 run scoreboard players set .global stargate.dhd_id 0

# Upgrade old entities
function updates:update
