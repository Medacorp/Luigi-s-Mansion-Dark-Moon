tag @s remove try_opening_door
execute if entity @s[scores={UseItem=1..,Room=1..},nbt={SelectedItem:{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:interact"}}}}] unless entity @s[scores={IdleTime=..-1},tag=!idle] unless entity @s[scores={InteractionTime=1..}] run function luigis_mansion_dark_moon:items/interact/trigger
execute if entity @s[scores={InteractionTime=1..}] run function luigis_mansion_dark_moon:items/interact/use
execute if entity @s[scores={YellTime=1..}] run function luigis_mansion_dark_moon:items/interact/yell