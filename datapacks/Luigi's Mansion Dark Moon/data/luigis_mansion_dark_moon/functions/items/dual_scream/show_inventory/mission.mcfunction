function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/money
function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/money_all
tellraw @s {"translate":"chat.type.text","with":[{"nbt":"Inventory[{tag:{luigis_mansion_dark_moon:{id:\"luigis_mansion_dark_moon:dual_scream\"}}}].tag.display.Name","entity":"@s","interpret":true,"color":"green"},{"translate":"luigis_mansion_dark_moon:message.dual_scream.money_count.mission","with":[{"score":{"objective":"Time","name":"#temp2"}},{"score":{"objective":"Time","name":"#temp"}}]}]}
tellraw @s[tag=has_gold_bone] {"translate":"chat.type.text","with":[{"nbt":"Inventory[{tag:{luigis_mansion_dark_moon:{id:\"luigis_mansion_dark_moon:dual_scream\"}}}].tag.display.Name","entity":"@s","interpret":true,"color":"green"},{"translate":"luigis_mansion_dark_moon:message.dual_scream.money_count.gold_bone"}]}
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @s remove has_gold_bone
function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/keys
function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/keys_all
tellraw @s {"translate":"chat.type.text","with":[{"nbt":"Inventory[{tag:{luigis_mansion_dark_moon:{id:\"luigis_mansion_dark_moon:dual_scream\"}}}].tag.display.Name","entity":"@s","interpret":true,"color":"green"},{"translate":"luigis_mansion_dark_moon:message.dual_scream.keys","with":[{"score":{"objective":"Time","name":"#temp2"}},{"score":{"objective":"Time","name":"#temp"}}]}]}
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
function luigis_mansion_dark_moon:items/dual_scream/show_inventory/mission_specific