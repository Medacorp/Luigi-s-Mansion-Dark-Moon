# Move with
teleport @s ^-0.11 ^-2.34 ^ ~ ~
execute at @s run teleport @s[tag=sneak_pos] ^ ^ ^-0.2 ~ ~

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/sneaking/right_leg
execute if entity @s[tag=walking,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/walking/right_leg
execute if entity @s[tag=running,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/running/right_leg
execute if entity @s[tag=swimming,tag=!stop_model] run function luigis_mansion_dark_moon:animations/luigi/swimming/right_leg

execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/right_leg
execute at @s[tag=inspect] run function luigis_mansion_dark_moon:animations/luigi/inspect/right_leg