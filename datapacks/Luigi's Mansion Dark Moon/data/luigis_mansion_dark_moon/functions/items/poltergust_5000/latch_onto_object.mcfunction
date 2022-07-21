data modify storage luigis_mansion_dark_moon:data ghost_list set from entity @s data.vacuuming_object
function luigis_mansion_dark_moon:items/poltergust_5000/search_my_id
data remove storage luigis_mansion_dark_moon:data ghost_list
scoreboard players reset #temp2 ID

execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 0 0 0 minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{Value:0}}]}
execute if entity @s[tag=!already_included] in minecraft:overworld store result block 0 0 0 Items[0].tag.Value int 1 run scoreboard players get #temp ID
execute if entity @s[tag=!already_included] unless data entity @s data run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{vacuuming_object:[]}}]}
execute if entity @s[tag=!already_included] unless data entity @s data.vacuuming_object run data modify entity @s data merge value {vacuuming_object:[]}
execute if entity @s[tag=!already_included] in minecraft:overworld run data modify entity @s data.vacuuming_object append from block 0 0 0 Items[0].tag.Value
execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 0 0 0 minecraft:barrier

tag @s remove already_included