$execute store success score @s hf_success run fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block)
execute if score @s hf_success matches 1 run function handfill:fill/consume with storage handfill:args
execute unless score @s hf_success matches 1 run tellraw @s {"text":"HandFill: fill failed; inventory was not charged.","color":"red"}