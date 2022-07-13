tag @s add stunner
execute positioned ^ ^ ^3 as @e[distance=..3,tag=reacts_to_flashlight,tag=!flee,tag=!hurt,tag=!model_piece,tag=same_room] at @s run function luigis_mansion_dark_moon:items/flashlight/effects/flash_charged
tag @s remove stunner
execute positioned ~ ~1.3 ~ run particle minecraft:flash ^ ^ ^2 0 0 0 0 1 force @a[tag=same_room]
execute positioned ~ ~1.3 ~ run particle minecraft:flash ^ ^ ^2 0 0 0 0 1 force @a[tag=same_room]
execute positioned ~ ~1.3 ~ run particle minecraft:flash ^ ^ ^2 0 0 0 0 1 force @a[tag=same_room]