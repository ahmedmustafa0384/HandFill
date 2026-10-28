scoreboard players set @s hf_state 3
scoreboard players set @s hf_use4 0
give @s minecraft:fishing_rod[minecraft:custom_name='{"text":"HandFill: Fill","color":"green","italic":false}',minecraft:enchantment_glint_override=true]
tellraw @s {"text":"[HF] Fill tool updated: use the new fishing-rod tool in your main hand.","color":"green"}
