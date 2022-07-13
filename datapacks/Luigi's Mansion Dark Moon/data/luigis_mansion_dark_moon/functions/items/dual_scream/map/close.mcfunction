effect clear @s minecraft:speed
summon minecraft:marker ~ ~ ~ {Tags:["me"]}
tag @s add me
execute as @e[type=minecraft:marker,tag=me] run function luigis_mansion_dark_moon:items/dual_scream/map/return
tag @s remove me
tag @s remove looking_at_map
tag @s remove stop_model
function luigis_mansion_dark_moon:entities/player/animation/set/none
tag @s add seen_room_name
title @s subtitle ""
scoreboard players set @s LoadedChunks 0
title @s times 40 40 40
tag @s remove loaded_chunks
execute at @s run function luigis_mansion_dark_moon:entities/player/refresh_model
execute at @s run playsound luigis_mansion_dark_moon:item.gameboy_horror.map.close player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s DualScreamChoice 0
scoreboard players enable @s DualScreamChoice
tag @s add showing_menu