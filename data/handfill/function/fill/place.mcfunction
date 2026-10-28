$execute store success score @s hf_success run fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block)
tellraw @s [{"text":"[HF] FILL RESULT: success="},{"score":{"name":"@s","objective":"hf_success"}}]
execute if score @s hf_success matches 1 run function handfill:fill/consume with storage handfill:args
execute unless score @s hf_success matches 1 run tellraw @s {"text":"HandFill: Minecraft made no changes; inventory was not charged. The target may already contain that block, or the area may be unavailable.","color":"red"}