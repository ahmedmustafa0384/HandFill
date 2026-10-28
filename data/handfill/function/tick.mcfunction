scoreboard players enable @a hf_pos1
scoreboard players enable @a hf_pos2
scoreboard players enable @a hf_fill
execute as @a[scores={hf_pos1=1..}] run function handfill:selection/first
execute as @a[scores={hf_pos2=1..}] run function handfill:selection/second
execute as @a[scores={hf_fill=1..}] run function handfill:fill/start