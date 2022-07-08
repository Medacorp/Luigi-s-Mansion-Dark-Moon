scoreboard players add @s[scores={DeathTime=..60}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1}] run function luigis_mansion_dark_moon:animations/luigi/source
execute if entity @s[scores={DeathTime=1}] rotated as @s run teleport @s ^ ^1.65 ^-.25
execute at @s[scores={DeathTime=1..20}] run teleport @s ~ ~ ~ ~-18 ~
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.125 ^-0.07 ^