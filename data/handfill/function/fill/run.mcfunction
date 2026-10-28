$tellraw @s {"text":"[HF] FILL REQUEST: block=$(block), volume=$(need), from=($(x1),$(y1),$(z1)) to=($(x2),$(y2),$(z2))."}
$execute store result score @s hf_have run clear @s $(block) 0
tellraw @s [{"text":"[HF] INVENTORY: required="},{"score":{"name":"@s","objective":"hf_need"}},{"text":" available="},{"score":{"name":"@s","objective":"hf_have"}}]
execute if score @s hf_have < @s hf_need run function handfill:fill/not_enough
execute if score @s hf_have >= @s hf_need run function handfill:fill/place with storage handfill:args