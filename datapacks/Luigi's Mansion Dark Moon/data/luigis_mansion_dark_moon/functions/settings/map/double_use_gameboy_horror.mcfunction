tellraw @s[scores={SettingsCheck=-3,GBHDoubleUse=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.map"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=-3,GBHDoubleUse=2}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.scan"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=-3,GBHDoubleUse=3}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.check_items"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=-3,GBHDoubleUse=4}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.check_caught_ghosts"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}

scoreboard players add @s[scores={SettingsCheck=3}] GBHDoubleUse 1
scoreboard players set @s[scores={SettingsCheck=3,GBHDoubleUse=5}] GBHDoubleUse 1
tellraw @s[scores={SettingsCheck=3,GBHDoubleUse=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.map"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=3,GBHDoubleUse=2}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.scan"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=3,GBHDoubleUse=3}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.check_items"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}
tellraw @s[scores={SettingsCheck=3,GBHDoubleUse=4}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.modified.double_use_gameboy_horror","with":[{"translate":"luigis_mansion:settings.double_use_gameboy_horror.check_caught_ghosts"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"}}]}