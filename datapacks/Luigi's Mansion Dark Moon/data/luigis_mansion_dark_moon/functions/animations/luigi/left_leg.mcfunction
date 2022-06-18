# Move with
teleport @s ^0.11 ^-2.34 ^ ~ ~
execute at @s run teleport @s[tag=sneak_pos] ^ ^ ^-0.2 ~ ~

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/sneaking/left_leg
execute if entity @s[tag=walking,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/walking/left_leg
execute if entity @s[tag=running,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/running/left_leg
execute if entity @s[tag=swimming,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/swimming/left_leg

execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/left_leg
execute at @s[tag=inspect] run function luigis_mansion_dark_moon:animations/luigi/inspect/left_leg