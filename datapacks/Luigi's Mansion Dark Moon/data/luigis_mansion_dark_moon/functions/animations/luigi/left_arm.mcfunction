# Move with
teleport @s[tag=!sneak_pos] ^0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos] ^0.35 ^-1.76 ^ ~ ~

execute run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion_dark_moon:data luigi.offhand

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute if entity @s[tag=!holding_poltergust] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming] run function luigis_mansion_dark_moon:animations/luigi/idle/left_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/sneaking/left_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/walking/left_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/running/left_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/swimming/left_arm

execute unless entity @s[tag=!locked_door,tag=!unlock_door] run data modify entity @s[tag=held_item] ArmorItems[3] set value {}
data modify entity @s[tag=dual_scream,tag=held_item] ArmorItems[3] set value {}
execute at @s[tag=open_door,tag=left_door] run function luigis_mansion_dark_moon:animations/luigi/door/open/left_arm
execute at @s[tag=locked_door,tag=left_door] run function luigis_mansion_dark_moon:animations/luigi/door/locked/left_arm
execute at @s[tag=unlock_door,tag=left_door] run function luigis_mansion_dark_moon:animations/luigi/door/unlock/left_arm
execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/left_arm
execute at @s[tag=interact] run function luigis_mansion_dark_moon:animations/luigi/interact/left_arm