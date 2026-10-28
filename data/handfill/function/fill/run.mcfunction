$execute store result score @s hf_have run clear @s $(block) 0
tellraw @s [{"text":"HandFill inventory check: required "},{"score":{"name":"@s","objective":"hf_need"}},{"text":", available "},{"score":{"name":"@s","objective":"hf_have"}},{"text":"."}]
execute if score @s hf_have < @s hf_need run function handfill:fill/not_enough
execute if score @s hf_have >= @s hf_need run function handfill:fill/place with storage handfill:args