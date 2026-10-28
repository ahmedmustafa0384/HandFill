scoreboard objectives add hf_state dummy
scoreboard objectives add hf_mode dummy
scoreboard objectives add hf_ray dummy
scoreboard objectives add hf_use1 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hf_use2 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hf_use3 minecraft.used:minecraft.spyglass
scoreboard objectives add hf_use4 minecraft.used:minecraft.fishing_rod
scoreboard objectives add hf_x1 dummy
scoreboard objectives add hf_y1 dummy
scoreboard objectives add hf_z1 dummy
scoreboard objectives add hf_x2 dummy
scoreboard objectives add hf_y2 dummy
scoreboard objectives add hf_z2 dummy
scoreboard objectives add hf_tx dummy
scoreboard objectives add hf_ty dummy
scoreboard objectives add hf_tz dummy
scoreboard objectives add hf_has1 dummy
scoreboard objectives add hf_has2 dummy
scoreboard objectives add hf_dx dummy
scoreboard objectives add hf_dy dummy
scoreboard objectives add hf_dz dummy
scoreboard objectives add hf_area dummy
scoreboard objectives add hf_need dummy
scoreboard objectives add hf_have dummy
scoreboard objectives add hf_valid dummy
scoreboard objectives add hf_success dummy
scoreboard objectives add hf_consumed dummy
scoreboard objectives add hf_const dummy
scoreboard players set #one hf_const 1
scoreboard players set #minus_one hf_const -1
scoreboard players set #limit hf_const 32768
execute as @a run scoreboard players add @s hf_state 0
tellraw @a {"text":"HandFill tools are ready. Right-click blocks with the corner tools; use the fill tool with a supported block in your offhand.","color":"green"}