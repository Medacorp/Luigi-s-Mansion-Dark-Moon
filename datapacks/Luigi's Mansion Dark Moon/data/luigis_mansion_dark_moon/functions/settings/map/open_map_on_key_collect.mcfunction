tellraw @s[scores={SettingsCheck=-3},tag=!stop_map_on_key_collect] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.open_map_on_key_collect","with":[{"translate":"luigis_mansion:settings.on"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"}}]}
tellraw @s[scores={SettingsCheck=-3},tag=stop_map_on_key_collect] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.open_map_on_key_collect","with":[{"translate":"luigis_mansion:settings.off"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"}}]}

tellraw @s[scores={SettingsCheck=2},tag=!stop_map_on_key_collect] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.open_map_on_key_collect","with":[{"translate":"luigis_mansion:settings.off"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"}}]}
tellraw @s[scores={SettingsCheck=2},tag=stop_map_on_key_collect] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.open_map_on_key_collect","with":[{"translate":"luigis_mansion:settings.on"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"}}]}
tag @s[scores={SettingsCheck=2},tag=!stop_map_on_key_collect] add toggle_stop_map_on_key_collect
tag @s[tag=toggle_stop_map_on_key_collect] add stop_map_on_key_collect
scoreboard players reset @s[tag=toggle_stop_map_on_key_collect] SettingsCheck
tag @s[tag=toggle_stop_map_on_key_collect] remove toggle_stop_map_on_key_collect
tag @s[scores={SettingsCheck=2},tag=stop_map_on_key_collect] remove stop_map_on_key_collect