function luigis_mansion_dark_moon:items/dark_light_device/cast_light/path
scoreboard players reset #temp PathStep
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{dark_light_level:1} run scoreboard players add @s DarkLightTime 4
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{dark_light_level:2} run scoreboard players add @s DarkLightTime 2
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{dark_light_level:3} run scoreboard players add @s DarkLightTime 1
tag @s[scores={DarkLightTime=200}] add dark_light_device_cooling_down
execute if entity @s[scores={DarkLightTime=200}] run function luigis_mansion_dark_moon:entities/player/animation/set/dark_light_device_overheating