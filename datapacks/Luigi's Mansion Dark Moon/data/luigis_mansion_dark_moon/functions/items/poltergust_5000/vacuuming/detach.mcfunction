data modify storage luigis_mansion_dark_moon:data ghost_list set from entity @s data.attacked_by
scoreboard players operation #temp ID = @a[tag=me,limit=1] ID
function luigis_mansion_dark_moon:items/poltergust_5000/remove_id
data modify entity @s data.attacked_by set from storage luigis_mansion_dark_moon:data new_ghost_list
scoreboard players reset #temp ID
scoreboard players reset #temp2 ID
data remove storage luigis_mansion_dark_moon:data ghost_list
data remove storage luigis_mansion_dark_moon:data new_ghost_list