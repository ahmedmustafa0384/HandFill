scoreboard players operation @s hf_area = @s hf_dx
scoreboard players operation @s hf_area *= @s hf_dy
tellraw @s [{"text":"[HF] AREA after X*Y: "},{"score":{"name":"@s","objective":"hf_area"}},{"text":"; Z dimension="},{"score":{"name":"@s","objective":"hf_dz"}}]
execute if score @s hf_area matches 1..32768 run function handfill:fill/set_need
execute if score @s hf_area matches 32769.. run tellraw @s {"text":"HandFill: region exceeds 32768 blocks; nothing was changed.","color":"red"}