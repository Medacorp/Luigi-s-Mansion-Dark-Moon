tag @s[scores={Dialog=1..}] add skip_dialog
execute unless entity @s[scores={Dialog=1..}] if entity @s[tag=!looking_at_map,tag=showing_menu] run scoreboard players operation @s DualScreamChoice = @s DualScreamDouble
execute unless entity @s[scores={Dialog=1..}] if entity @s[tag=looking_at_map] run function luigis_mansion_dark_moon:items/dual_scream/map/close
execute unless entity @s[scores={Dialog=1..}] if entity @s[tag=!looking_at_map,tag=!showing_menu] run function luigis_mansion_dark_moon:items/dual_scream/menu

scoreboard players set @s UseItem 0