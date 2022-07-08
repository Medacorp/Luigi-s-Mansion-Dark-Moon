scoreboard players add @s IdleTime 1
execute if entity @s[scores={IdleTime=0}] run function luigis_mansion_dark_moon:entities/player/animation/set/none
execute if entity @s[scores={IdleTime=40}] run function luigis_mansion_dark_moon:entities/player/animation/should_trigger_dark_room_idle
execute if entity @s[scores={IdleTime=40},tag=!trigger_dark_room_idle] run function luigis_mansion_dark_moon:entities/player/animation/set/idle_lit_room
execute if entity @s[scores={IdleTime=40},tag=trigger_dark_room_idle] run function luigis_mansion_dark_moon:entities/player/animation/set/idle_dark_room
tag @s remove trigger_dark_room_idle
execute if entity @s[tag=uncomfortable_poltergust] run function luigis_mansion_dark_moon:entities/player/animation/uncomfortable_poltergust
execute if entity @s[tag=scared] run function luigis_mansion_dark_moon:entities/player/animation/scared
execute if entity @s[tag=adjust_nose] run function luigis_mansion_dark_moon:entities/player/animation/adjust_nose
execute if entity @s[tag=scratch_chest] run function luigis_mansion_dark_moon:entities/player/animation/scratch_chest
execute if entity @s[tag=searching_dual_scream] run function luigis_mansion_dark_moon:entities/player/animation/searching_dual_scream
execute if entity @s[tag=dual_scream] run function luigis_mansion_dark_moon:entities/player/animation/dual_scream
execute if entity @s[tag=close_dual_scream] run function luigis_mansion_dark_moon:entities/player/animation/close_dual_scream
execute if entity @s[tag=interact] run function luigis_mansion_dark_moon:entities/player/animation/interact
execute if entity @s[tag=dark_light_device_overheating] run function luigis_mansion_dark_moon:entities/player/animation/dark_light_device_overheating