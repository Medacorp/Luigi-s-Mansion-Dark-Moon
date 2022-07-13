execute store result score #temp ActionTime run data get storage luigis_mansion_dark_moon:data new_keys[-1].amount
scoreboard players operation #temp2 Time += #temp ActionTime
data remove storage luigis_mansion_dark_moon:data new_keys[-1]
execute if data storage luigis_mansion_dark_moon:data new_keys[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/keys_all_index