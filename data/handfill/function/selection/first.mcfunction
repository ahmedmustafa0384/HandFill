scoreboard players set @s hf_pos1 0
execute at @s align xyz run summon minecraft:marker ~ ~ ~ {Tags:["handfill.temp"]}
execute at @s store result score @s hf_x1 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[0]
execute at @s store result score @s hf_y1 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[1]
execute at @s store result score @s hf_z1 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[2]
execute at @s run kill @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest]
scoreboard players set @s hf_has1 1
tellraw @s {"text":"HandFill: corner 1 saved at your position.","color":"yellow"}