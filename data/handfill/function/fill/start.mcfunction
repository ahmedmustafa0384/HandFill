execute unless score @s hf_has1 matches 1 run tellraw @s {"text":"[HF] Fill blocked: corner 1 is not selected.","color":"red"}
execute unless score @s hf_has2 matches 1 run tellraw @s {"text":"[HF] Fill blocked: corner 2 is not selected.","color":"red"}
execute if score @s hf_has1 matches 1 if score @s hf_has2 matches 1 run function handfill:fill/prepare