data modify entity @s Tags append from storage luigis_mansion_dark_moon:data boo.tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
function luigis_mansion_dark_moon:animations/boo/call_part_function
tag @s add found_owner