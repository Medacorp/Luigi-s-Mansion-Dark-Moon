data modify storage luigis_mansion_dark_moon:data object_list set from entity @s data.vacuuming_object
execute if data storage luigis_mansion_dark_moon:data object_list[-1] run function luigis_mansion_dark_moon:items/poltergust_5000/search_object_id
data remove storage luigis_mansion_dark_moon:data object_list
scoreboard players reset #temp2 ID
execute if entity @s[tag=being_vacuumed] run tag @a[tag=me,limit=1] add vacuuming_object