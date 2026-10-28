scoreboard players operation @s hf_x2 = @s hf_tx
scoreboard players operation @s hf_y2 = @s hf_ty
scoreboard players operation @s hf_z2 = @s hf_tz
scoreboard players set @s hf_has2 1
tellraw @s [{"text":"[HF] SAVED CORNER 2: x="},{"score":{"name":"@s","objective":"hf_x2"}},{"text":" y="},{"score":{"name":"@s","objective":"hf_y2"}},{"text":" z="},{"score":{"name":"@s","objective":"hf_z2"}}]