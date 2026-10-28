execute as @a[scores={hf_state=2}] at @s run function handfill:tools/upgrade_fill
execute as @a unless score @s hf_state matches 3 run function handfill:tools/give
execute as @a[scores={hf_use1=1..}] at @s run function handfill:tools/corner_1
execute as @a[scores={hf_use2=1..}] at @s run function handfill:tools/corner_2
execute as @a[scores={hf_use4=1..}] at @s run function handfill:tools/fill