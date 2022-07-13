effect give @s minecraft:speed 1000000 8 true
execute if entity @s[scores={Jump=1}] run function luigis_mansion_dark_moon:items/dual_scream/map/move_up_floor
execute if entity @s[scores={SneakTime=1},tag=!was_sneaking] run function luigis_mansion_dark_moon:items/dual_scream/map/move_down_floor
execute as @a[tag=!looking_at_map,scores={Room=1..}] at @s run function luigis_mansion_dark_moon:items/dual_scream/map/ensure_marker_shows