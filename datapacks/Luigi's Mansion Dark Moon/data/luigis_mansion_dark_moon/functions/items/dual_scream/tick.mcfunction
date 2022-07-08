execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream",named:0b}}}]}] if data storage luigis_mansion_dark_moon:data {dual_scream_named:1b} run function luigis_mansion_dark_moon:items/dual_scream/set_name

tag @s remove dual_scream_selected
tag @s[nbt={SelectedItem:{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}}] add dual_scream_selected

execute if entity @s[scores={ScreenType=0},nbt=!{Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"},CustomModelData:3}}]}] run function luigis_mansion_dark_moon:items/dual_scream/set_screen_normal
execute if entity @s[scores={ScreenType=1},nbt=!{Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"},CustomModelData:4}}]}] run function luigis_mansion_dark_moon:items/dual_scream/set_screen_call
execute if entity @s[scores={ScreenType=2},nbt=!{Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"},CustomModelData:5}}]}] run function luigis_mansion_dark_moon:items/dual_scream/set_screen_call_bad_reception
scoreboard players set @s ScreenType 0