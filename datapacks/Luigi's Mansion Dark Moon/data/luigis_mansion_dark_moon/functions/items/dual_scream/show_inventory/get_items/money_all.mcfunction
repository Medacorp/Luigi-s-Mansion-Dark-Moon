data modify storage luigis_mansion_dark_moon:data new_money_grabbed set from storage luigis_mansion_dark_moon:data money_grabbed
scoreboard players set #temp2 Time 0
execute if data storage luigis_mansion_dark_moon:data new_money_grabbed[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/money_all_index
scoreboard players reset #temp ActionTime
data remove storage luigis_mansion_dark_moon:data new_money_grabbed
execute if entity @s[tag=someone_has_gold_bone] run scoreboard players remove #temp2 Time 200
tag @s remove someone_has_gold_bone