scoreboard players set @s hf_use2 0
scoreboard players set @s hf_mode 2
scoreboard players set @s hf_ray 0
tellraw @s {"text":"[HF] EVENT: corner 2 tool used; raycast starts at eye position, step=0.25, max distance=6 blocks."}
execute anchored eyes positioned ^ ^ ^0.25 run function handfill:selection/raycast