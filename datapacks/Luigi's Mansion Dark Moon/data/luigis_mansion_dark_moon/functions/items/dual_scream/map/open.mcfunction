execute store result score @s HomeX run data get entity @s Pos[0] 100
execute store result score @s HomeY run data get entity @s Pos[1] 100
execute store result score @s HomeZ run data get entity @s Pos[2] 100
execute store result score @s HomeRotX run data get entity @s Rotation[0] 1
execute store result score @s HomeRotY run data get entity @s Rotation[1] 1
execute rotated as @s run function luigis_mansion_dark_moon:spawn_entities/map_location
execute unless entity @a[tag=looking_at_map,limit=1] rotated as @s run function luigis_mansion:spawn_entities/map_marker
execute unless entity @a[tag=looking_at_map,limit=1] rotated as @s as @e[distance=..1,tag=map_marker,limit=1] positioned as @s run function luigis_mansion:entities/map_marker/tick
execute if data storage luigis_mansion_dark_moon:data {selected_map:1} run function luigis_mansion_dark_moon:items/dual_scream/map/gloomy_manor
execute if data storage luigis_mansion_dark_moon:data {selected_map:2} run function luigis_mansion_dark_moon:items/dual_scream/map/haunted_towers
execute if data storage luigis_mansion_dark_moon:data {selected_map:3} run function luigis_mansion_dark_moon:items/dual_scream/map/old_clockworks
execute if data storage luigis_mansion_dark_moon:data {selected_map:4} run function luigis_mansion_dark_moon:items/dual_scream/map/secret_mine
execute if data storage luigis_mansion_dark_moon:data {selected_map:5} run function luigis_mansion_dark_moon:items/dual_scream/map/treacherous_mansion
execute if data storage luigis_mansion_dark_moon:data {selected_map:6} run function luigis_mansion_dark_moon:items/dual_scream/map/king_boos_illusion
execute if data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:items/dual_scream/map/scarescraper
tag @s add looking_at_map
tag @s add stop_model
function luigis_mansion:entities/player/animation/set/dual_scream
playsound luigis_mansion:item.dual_scream.map.open player @a[tag=same_room] ~ ~ ~ 1
execute at @s run playsound luigis_mansion:item.dual_scream.map.open player @s ~ ~ ~ 1
title @s times 0 40 40