scoreboard players set @s hf_state 3
scoreboard players set @s hf_use1 0
scoreboard players set @s hf_use2 0
scoreboard players set @s hf_use3 0
scoreboard players set @s hf_use4 0
give @s minecraft:carrot_on_a_stick[minecraft:custom_name='{"text":"HandFill: Corner 1","color":"gold","italic":false}',minecraft:enchantment_glint_override=true]
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_name='{"text":"HandFill: Corner 2","color":"aqua","italic":false}',minecraft:enchantment_glint_override=true]
give @s minecraft:fishing_rod[minecraft:custom_name='{"text":"HandFill: Fill","color":"green","italic":false}',minecraft:enchantment_glint_override=true]
tellraw @s {"text":"HandFill tools added to your inventory.","color":"green"}