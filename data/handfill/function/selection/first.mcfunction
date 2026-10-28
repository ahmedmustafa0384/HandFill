scoreboard players operation @s hf_x1 = @s hf_tx
scoreboard players operation @s hf_y1 = @s hf_ty
scoreboard players operation @s hf_z1 = @s hf_tz
scoreboard players set @s hf_has1 1
tellraw @s [{"text":"[HF] SAVED CORNER 1: x="},{"score":{"name":"@s","objective":"hf_x1"}},{"text":" y="},{"score":{"name":"@s","objective":"hf_y1"}},{"text":" z="},{"score":{"name":"@s","objective":"hf_z1"}}]