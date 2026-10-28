scoreboard players operation @s hf_need = @s hf_area
data modify storage handfill:args x1 set value 0
data modify storage handfill:args y1 set value 0
data modify storage handfill:args z1 set value 0
data modify storage handfill:args x2 set value 0
data modify storage handfill:args y2 set value 0
data modify storage handfill:args z2 set value 0
data modify storage handfill:args need set value 0
execute store result storage handfill:args x1 int 1 run scoreboard players get @s hf_x1
execute store result storage handfill:args y1 int 1 run scoreboard players get @s hf_y1
execute store result storage handfill:args z1 int 1 run scoreboard players get @s hf_z1
execute store result storage handfill:args x2 int 1 run scoreboard players get @s hf_x2
execute store result storage handfill:args y2 int 1 run scoreboard players get @s hf_y2
execute store result storage handfill:args z2 int 1 run scoreboard players get @s hf_z2
execute store result storage handfill:args need int 1 run scoreboard players get @s hf_need
tellraw @s [{"text":"HandFill: needs "},{"score":{"name":"@s","objective":"hf_need"}},{"text":" blocks. Checking your inventory..."}]
execute unless items entity @s weapon.mainhand #handfill:supported_blocks run tellraw @s {"text":"Hold a supported block in your main hand.","color":"red"}
execute if items entity @s weapon.mainhand minecraft:stone run function handfill:items/stone
execute if items entity @s weapon.mainhand minecraft:cobblestone run function handfill:items/cobblestone
execute if items entity @s weapon.mainhand minecraft:dirt run function handfill:items/dirt
execute if items entity @s weapon.mainhand minecraft:grass_block run function handfill:items/grass_block
execute if items entity @s weapon.mainhand minecraft:oak_planks run function handfill:items/oak_planks
execute if items entity @s weapon.mainhand minecraft:spruce_planks run function handfill:items/spruce_planks
execute if items entity @s weapon.mainhand minecraft:birch_planks run function handfill:items/birch_planks
execute if items entity @s weapon.mainhand minecraft:stone_bricks run function handfill:items/stone_bricks
execute if items entity @s weapon.mainhand minecraft:bricks run function handfill:items/bricks
execute if items entity @s weapon.mainhand minecraft:glass run function handfill:items/glass