execute store result score #temp2 ID run data get storage luigis_mansion_dark_moon:data ghost_list[-1]
execute if score #temp ID = #temp2 ID run tag @s add already_included
data remove storage luigis_mansion_dark_moon:data ghost_list[-1]
execute if entity @s[tag=!already_included] if data storage luigis_mansion_dark_moon:data ghost_list[-1] run function luigis_mansion_dark_moon:items/poltergust_5000/search_my_id