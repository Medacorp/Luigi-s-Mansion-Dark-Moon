tag @s add stunner
function luigis_mansion_dark_moon:items/flashlight/effects/small_flash/path
scoreboard players reset #temp PathStep
tag @s remove stunner
execute positioned ~ ~1.3 ~ run particle minecraft:flash ^ ^ ^2 0 0 0 0 1 force @a[tag=same_room]