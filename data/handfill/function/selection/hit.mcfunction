execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["handfill.temp"]}
execute store result score @s hf_tx run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[0]
execute store result score @s hf_ty run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[1]
execute store result score @s hf_tz run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[2]
kill @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest]
tellraw @s [{"text":"[HF] RAY HIT: steps="},{"score":{"name":"@s","objective":"hf_ray"}},{"text":" target=("},{"score":{"name":"@s","objective":"hf_tx"}},{"text":", "},{"score":{"name":"@s","objective":"hf_ty"}},{"text":", "},{"score":{"name":"@s","objective":"hf_tz"}},{"text":") mode="},{"score":{"name":"@s","objective":"hf_mode"}}]
execute if score @s hf_mode matches 1 run function handfill:selection/first
execute if score @s hf_mode matches 2 run function handfill:selection/second
execute if score @s hf_mode matches 3 run function handfill:fill/start
scoreboard players set @s hf_mode 0