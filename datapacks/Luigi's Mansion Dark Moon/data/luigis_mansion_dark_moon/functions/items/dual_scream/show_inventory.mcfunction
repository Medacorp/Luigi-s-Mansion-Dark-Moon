execute if entity @s[scores={Room=1..}] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/mission
execute unless entity @s[scores={Room=1..}] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/lab
scoreboard players set @s DualScreamChoice 0
scoreboard players enable @s DualScreamChoice