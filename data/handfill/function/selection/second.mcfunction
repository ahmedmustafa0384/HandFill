scoreboard players set @s hf_pos2 0
execute at @s align xyz run summon minecraft:marker ~ ~ ~ {Tags:["handfill.temp"]}
execute at @s store result score @s hf_x2 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[0]
execute at @s store result score @s hf_y2 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[1]
execute at @s store result score @s hf_z2 run data get entity @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest] Pos[2]
execute at @s run kill @e[type=minecraft:marker,tag=handfill.temp,limit=1,sort=nearest]
scoreboard players set @s hf_has2 1
tellraw @s {"text":"HandFill: corner 2 saved at your position.","color":"yellow"}