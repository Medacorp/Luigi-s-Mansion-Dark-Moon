tellraw @s[scores={SettingsChoice=-1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_dark_moon:entity.dark_moon","color":"green"},{"translate":"luigis_mansion_dark_moon:settings.game","color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsChoice set -2"}}]}
tellraw @s[scores={SettingsChoice=-1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_dark_moon:entity.dark_moon","color":"green"},{"translate":"luigis_mansion_dark_moon:settings.map","color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsChoice set -3"}}]}
execute if entity @s[scores={SettingsChoice=-2}] run function luigis_mansion_dark_moon:settings/game
execute unless entity @s[scores={SettingsChoice=-2..0}] run function luigis_mansion_dark_moon:settings/map
scoreboard players set @s SettingsChoice 0
scoreboard players enable @s SettingsChoice