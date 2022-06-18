summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players operation #temp ID = @s ID
execute as @e[tag=revive_detection] if score @s ID = #temp ID run tag @s add detect_exists
scoreboard players reset #temp ID
scoreboard players add @s[scores={DeathTime=..120}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound luigis_mansion_dark_moon:entity.player.death player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=120..121}] unless entity @a[scores={Health=1..}] run scoreboard players set #mission_ends Selected 1
execute if entity @s[scores={DeathTime=60..}] unless score #mission_ends Selected matches 1 unless entity @e[tag=detect_exists,limit=1] positioned ^0.9 ^ ^ run function luigis_mansion_dark_moon:spawn_entities/revive_detection
execute if entity @s[scores={DeathTime=120}] unless score #mission_ends Selected matches 1 run function luigis_mansion_dark_moon:other/music/set/non_overwritten_silence
execute if score #mission_ends Selected matches 1 run scoreboard players reset @s DeathTime
execute if score #mission_ends Selected matches 1 run tag @s remove death_animation
tag @e[tag=detect_exists,limit=1] remove detect_exists