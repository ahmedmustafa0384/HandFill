scoreboard players set @s hf_use4 0
scoreboard players set @s hf_mode 3
scoreboard players set @s hf_ray 0
tellraw @s {"text":"[HF] EVENT: fill tool used; checking targeted block and build-block offhand."}
execute anchored eyes positioned ^ ^ ^0.25 run function handfill:selection/raycast