data modify storage luigis_mansion_dark_moon:data ghost_list set from entity @s data.attacked_by
execute if data storage luigis_mansion_dark_moon:data ghost_list[-1] run function luigis_mansion_dark_moon:items/poltergust_5000/search_id
data remove storage luigis_mansion_dark_moon:data ghost_list
scoreboard players reset #temp2 ID
execute if entity @s[tag=being_vacuumed] run scoreboard players add #temp GhostCount 1