execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]

execute if entity @s[scores={InteractionType=1}] run function luigis_mansion_dark_moon:entities/player/animation/set/interact
scoreboard players add @s InteractionTime 1
scoreboard players operation #temp Room = @s Room
tag @s add searcher
execute at @s rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual"]}
execute if entity @s[scores={InteractionType=3}] run tag @e[tag=interact,tag=manual,limit=1] add long_shake
execute if entity @s[scores={InteractionTime=..16}] run tag @e[tag=interact,tag=manual,limit=1] add sound
execute if entity @s[scores={InteractionTime=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion_dark_moon:room/interactions
execute if entity @s[scores={InteractionTime=17}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion_dark_moon:room/interactions
scoreboard players set @s[scores={InteractionTime=2}] Sound 20
scoreboard players reset @s[scores={InteractionTime=20}] InteractionTime
kill @e[tag=interact,tag=manual,limit=1]
tag @s remove searcher
scoreboard players reset #temp Room
scoreboard players reset @s YellTime