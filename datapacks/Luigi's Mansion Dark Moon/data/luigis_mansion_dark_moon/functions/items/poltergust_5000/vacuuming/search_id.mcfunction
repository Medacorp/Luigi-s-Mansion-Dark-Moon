execute store result score #temp2 ID run data get storage luigis_mansion_dark_moon:data ghost_list[0]
execute unless score #temp ID = #temp2 ID run data modify storage luigis_mansion_dark_moon:data new_ghost_list append from storage luigis_mansion_dark_moon:data ghost_list[0]
data remove storage luigis_mansion_dark_moon:data ghost_list[0]
execute if score #temp ID = #temp2 ID run data modify storage luigis_mansion_dark_moon:data new_ghost_list append from storage luigis_mansion_dark_moon:data ghost_list[]
execute unless score #temp ID = #temp2 ID if data storage luigis_mansion_dark_moon:data ghost_list[0] run function luigis_mansion_dark_moon:items/poltergust_5000/search_id