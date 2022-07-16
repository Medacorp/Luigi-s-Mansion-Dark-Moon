scoreboard players operation #temp ID = @s ID
data modify storage luigis_mansion_dark_moon:data search_list set from entity @e[tag=me,limit=1] data.attacked_by
function luigis_mansion_dark_moon:entities/ghost/search_id
data remove storage luigis_mansion_dark_moon:data search_list
scoreboard players reset #temp ID
scoreboard players reset #temp2 ID