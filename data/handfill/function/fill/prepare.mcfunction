scoreboard players operation @s hf_dx = @s hf_x1
scoreboard players operation @s hf_dx -= @s hf_x2
execute if score @s hf_dx matches ..-1 run scoreboard players operation @s hf_dx *= #minus_one hf_const
scoreboard players add @s hf_dx 1
scoreboard players operation @s hf_dy = @s hf_y1
scoreboard players operation @s hf_dy -= @s hf_y2
execute if score @s hf_dy matches ..-1 run scoreboard players operation @s hf_dy *= #minus_one hf_const
scoreboard players add @s hf_dy 1
scoreboard players operation @s hf_dz = @s hf_z1
scoreboard players operation @s hf_dz -= @s hf_z2
execute if score @s hf_dz matches ..-1 run scoreboard players operation @s hf_dz *= #minus_one hf_const
scoreboard players add @s hf_dz 1
tellraw @s [{"text":"[HF] DIMENSIONS: "},{"score":{"name":"@s","objective":"hf_dx"}},{"text":" x "},{"score":{"name":"@s","objective":"hf_dy"}},{"text":" x "},{"score":{"name":"@s","objective":"hf_dz"}},{"text":" corners=("},{"score":{"name":"@s","objective":"hf_x1"}},{"text":", "},{"score":{"name":"@s","objective":"hf_y1"}},{"text":", "},{"score":{"name":"@s","objective":"hf_z1"}},{"text":") to ("},{"score":{"name":"@s","objective":"hf_x2"}},{"text":", "},{"score":{"name":"@s","objective":"hf_y2"}},{"text":", "},{"score":{"name":"@s","objective":"hf_z2"}},{"text":")"}]
execute if score @s hf_dx matches 1..32768 if score @s hf_dy matches 1..32768 if score @s hf_dz matches 1..32768 run function handfill:fill/calculate
execute unless score @s hf_dx matches 1..32768 run tellraw @s {"text":"HandFill: area dimension exceeds the safe limit.","color":"red"}
execute unless score @s hf_dy matches 1..32768 run tellraw @s {"text":"HandFill: area dimension exceeds the safe limit.","color":"red"}
execute unless score @s hf_dz matches 1..32768 run tellraw @s {"text":"HandFill: area dimension exceeds the safe limit.","color":"red"}