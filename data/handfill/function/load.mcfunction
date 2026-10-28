scoreboard objectives add hf_pos1 trigger
scoreboard objectives add hf_pos2 trigger
scoreboard objectives add hf_fill trigger
scoreboard objectives add hf_state dummy
scoreboard objectives add hf_x1 dummy
scoreboard objectives add hf_y1 dummy
scoreboard objectives add hf_z1 dummy
scoreboard objectives add hf_x2 dummy
scoreboard objectives add hf_y2 dummy
scoreboard objectives add hf_z2 dummy
scoreboard objectives add hf_has1 dummy
scoreboard objectives add hf_has2 dummy
scoreboard objectives add hf_dx dummy
scoreboard objectives add hf_dy dummy
scoreboard objectives add hf_dz dummy
scoreboard objectives add hf_area dummy
scoreboard objectives add hf_need dummy
scoreboard objectives add hf_have dummy
scoreboard objectives add hf_success dummy
scoreboard objectives add hf_const dummy
scoreboard players set #one hf_const 1
scoreboard players set #minus_one hf_const -1
scoreboard players set #limit hf_const 32768
execute as @a run scoreboard players add @s hf_state 0
tellraw @a {"text":"HandFill ready. Use /trigger hf_pos1, /trigger hf_pos2, then /trigger hf_fill.","color":"green"}