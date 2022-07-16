execute store result score #temp2 ID run data get storage luigis_mansion_dark_moon:data search_list[-1]
execute if score #temp ID = #temp2 ID run tag @s[tag=vacuuming] add vacuuming_this_ghost
execute if score #temp ID = #temp2 ID if entity @s[tag=vacuuming] run data modify storage luigis_mansion_dark_moon:data ghost_list append from storage luigis_mansion_dark_moon:data search_list[-1]
execute if score #temp ID = #temp2 ID run tag @s[tag=!vacuuming] add lost_ghost
data remove storage luigis_mansion_dark_moon:data search_list[-1]
execute unless score #temp ID = #temp2 ID if data storage luigis_mansion_dark_moon:data search_list[-1] run function luigis_mansion_dark_moon:entities/ghost/search_id