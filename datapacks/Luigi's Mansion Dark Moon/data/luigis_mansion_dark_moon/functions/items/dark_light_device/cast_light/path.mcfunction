scoreboard players add #temp PathStep 1
execute as @e[distance=..1,tag=reacts_to_dark_light_device,tag=same_room] at @s run function luigis_mansion_dark_moon:items/dark_light_device/light
execute unless score #temp PathStep matches 5 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion_dark_moon:flashlight_path run function luigis_mansion_dark_moon:items/dark_light_device/cast_light/path