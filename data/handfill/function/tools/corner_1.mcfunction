scoreboard players set @s hf_use1 0
scoreboard players set @s hf_mode 1
scoreboard players set @s hf_ray 0
tellraw @s {"text":"[HF] EVENT: corner 1 tool used; raycast starts at eye position, step=0.25, max distance=6 blocks."}
execute anchored eyes positioned ^ ^ ^0.25 run function handfill:selection/raycast