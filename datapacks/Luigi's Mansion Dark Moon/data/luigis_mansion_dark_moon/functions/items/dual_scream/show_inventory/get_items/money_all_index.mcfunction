execute store result score #temp ActionTime run data get storage luigis_mansion_dark_moon:data new_money_grabbed[-1].total
execute if data storage luigis_mansion_dark_moon:data new_money_grabbed[-1].money.gold_bone run tag @s add someone_has_gold_bone
scoreboard players operation #temp2 Time += #temp ActionTime
data remove storage luigis_mansion_dark_moon:data new_money_grabbed[-1]
execute if data storage luigis_mansion_dark_moon:data new_money_grabbed[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/money_all_index