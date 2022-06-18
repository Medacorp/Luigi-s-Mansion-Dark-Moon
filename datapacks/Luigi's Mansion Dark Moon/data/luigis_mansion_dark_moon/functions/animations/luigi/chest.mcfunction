# Move with
teleport @s[tag=!sneak_pos] ^ ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos] ^ ^-1.76 ^ ~ ~

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f

execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/head
execute at @s[tag=inspect] run function luigis_mansion_dark_moon:animations/luigi/inspect/chest