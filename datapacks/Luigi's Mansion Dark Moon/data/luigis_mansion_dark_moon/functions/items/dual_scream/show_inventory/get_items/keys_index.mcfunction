data modify block 1 0 0 Items[0].tag.value set from storage luigis_mansion_dark_moon:data new_keys[-1].uuid
execute store success score #temp ActionTime if blocks 0 0 0 0 0 0 1 0 0 all
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion_dark_moon:data my_keys set from storage luigis_mansion_dark_moon:data new_keys[-1]
data remove storage luigis_mansion_dark_moon:data new_keys[-1]
execute unless score #temp ActionTime matches 1 if data storage luigis_mansion_dark_moon:data new_keys[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/keys_index