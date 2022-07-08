tag @s add searcher
scoreboard players operation #temp Room = @s Room
execute at @s rotated ~ 0 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[distance=..1,tag=door,tag=frame,tag=!open_door,tag=!barricade,limit=1] run function luigis_mansion_dark_moon:items/interact/try_opening_door
execute at @s[tag=!try_opening_door,tag=!talk] run function luigis_mansion_dark_moon:items/interact/try_searching
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=0},tag=!try_opening_door,tag=!talk] run scoreboard players set @s YellTime 1
scoreboard players reset #temp Room
tag @s remove talk
tag @s remove searcher
scoreboard players set @s UseItem 0