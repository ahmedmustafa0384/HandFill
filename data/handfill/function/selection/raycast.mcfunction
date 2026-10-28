scoreboard players add @s hf_ray 1
execute unless block ~ ~ ~ #minecraft:air run function handfill:selection/hit
execute if block ~ ~ ~ #minecraft:air if score @s hf_ray matches ..23 positioned ^ ^ ^0.25 run function handfill:selection/raycast
execute if block ~ ~ ~ #minecraft:air if score @s hf_ray matches 24 run function handfill:selection/miss