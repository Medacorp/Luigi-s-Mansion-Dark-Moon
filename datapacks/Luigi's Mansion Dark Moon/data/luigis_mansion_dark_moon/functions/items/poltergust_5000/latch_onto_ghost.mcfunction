data modify storage luigis_mansion_dark_moon:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
function luigis_mansion_dark_moon:items/poltergust_3000/search_my_id
data remove storage luigis_mansion_dark_moon:data ghost_list
scoreboard players reset #temp2 ID

execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 0 0 0 minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{Value:0}}]}
execute if entity @s[tag=!already_included] in minecraft:overworld store result block 0 0 0 Items[0].tag.Value int 1 run scoreboard players get #temp ID
execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].tag run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{attacked_by:[]}}]}
execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].tag.attacked_by run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
execute if entity @s[tag=!already_included] in minecraft:overworld run data modify entity @s ArmorItems[3].tag.attacked_by append from block 0 0 0 Items[0].tag.Value
execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 0 0 0 minecraft:barrier

tag @s remove already_included