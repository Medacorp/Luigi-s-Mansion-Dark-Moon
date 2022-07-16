execute if entity @s[tag=!was_punching] if data storage luigis_mansion_dark_moon:data greenie{tags:["punch"]} run function luigis_mansion_dark_moon:animations/greenie/reset_pose
execute if entity @s[tag=was_punching] unless data storage luigis_mansion_dark_moon:data greenie{tags:["punch"]} run function luigis_mansion_dark_moon:animations/greenie/reset_pose
data modify entity @s Tags append from storage luigis_mansion_dark_moon:data greenie.tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
function luigis_mansion_dark_moon:animations/greenie/call_part_function

tag @s[tag=punch] add was_punching
tag @s[tag=!punch] remove was_punching
tag @s[tag=punch] remove punch

tag @s add found_owner