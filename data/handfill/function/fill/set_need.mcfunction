scoreboard players operation @s hf_need = #limit hf_const
scoreboard players operation @s hf_need /= @s hf_dz
scoreboard players set @s hf_valid 0
tellraw @s [{"text":"[HF] LIMIT CHECK: floor(32768/Z)="},{"score":{"name":"@s","objective":"hf_need"}},{"text":"; XY area="},{"score":{"name":"@s","objective":"hf_area"}}]
execute if score @s hf_area <= @s hf_need run scoreboard players set @s hf_valid 1
execute if score @s hf_valid matches 1 run scoreboard players operation @s hf_area *= @s hf_dz
execute if score @s hf_valid matches 1 run function handfill:fill/save_args
execute unless score @s hf_valid matches 1 run tellraw @s {"text":"HandFill: region exceeds 32768 blocks; nothing was changed.","color":"red"}