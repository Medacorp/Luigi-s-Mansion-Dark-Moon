data modify storage luigis_mansion_dark_moon:data new_keys set from storage luigis_mansion_dark_moon:data keys
scoreboard players set #temp2 Time 0
execute if data storage luigis_mansion_dark_moon:data new_keys[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/keys_all_index
scoreboard players reset #temp ActionTime
data remove storage luigis_mansion_dark_moon:data new_keys