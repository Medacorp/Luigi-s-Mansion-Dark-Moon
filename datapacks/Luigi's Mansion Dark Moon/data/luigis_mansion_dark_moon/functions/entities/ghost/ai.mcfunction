tag @s[scores={StunTime=0}] remove vulnerable
tag @s[scores={StunTime=0}] remove stunned
tag @s[scores={StunTime=1..}] add stunned
scoreboard players remove @s[scores={StunTime=1..}] StunTime 1
execute if entity @s[tag=hurt] run function luigis_mansion_dark_moon:entities/ghost/remove_non_vacuumers

execute if entity @s[tag=flee] unless entity @s[scores={DeathTime=1..}] run function luigis_mansion_dark_moon:entities/ghost/flee

execute unless entity @s[tag=!vulnerable,tag=!spawned_health_display] run function luigis_mansion_dark_moon:entities/ghost/show_health

execute if entity @s[scores={Health=0}] run function luigis_mansion_dark_moon:entities/ghost/death

tag @a remove vacuuming_this_ghost

execute store result score #temp ID if data entity @s data.target run data get entity @s data.target
execute as @a[tag=same_room] if score @s ID matches #temp ID run tag @s add target
execute unless entity @a[tag=target,limit=1] run data remove entity @s data.target
scoreboard players reset #temp ID

execute unless data entity @s data.target run function luigis_mansion_dark_moon:entities/ghost/set_random_target