scoreboard players set @s hf_fill 0
execute unless score @s hf_has1 matches 1 run tellraw @s {"text":"Select corner 1 first: /trigger hf_pos1","color":"red"}
execute unless score @s hf_has2 matches 1 run tellraw @s {"text":"Select corner 2 first: /trigger hf_pos2","color":"red"}
execute if score @s hf_has1 matches 1 if score @s hf_has2 matches 1 run function handfill:fill/prepare