function luigis_mansion_dark_moon:items/flashlight
function luigis_mansion_dark_moon:items/dark_light_device
function luigis_mansion_dark_moon:items/poltergust_5000

title @s[gamemode=!creative] actionbar {"translate":"luigis_mansion_dark_moon:message.health","with":[{"score":{"name":"@s","objective":"Health"}}],"color":"red"}

execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health -1
scoreboard players add @s[scores={Health=1..}] Damage 100
execute if entity @s[scores={Damage=1..}] run function luigis_mansion_dark_moon:entities/player/take_damage
execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
scoreboard players set @s[scores={Health=..-1}] Health 0
scoreboard players set @s[scores={Health=101..}] Health 100

tag @s[scores={Health=0},tag=!death_animation,tag=!revive_animation] add death_animation

execute if entity @s[tag=death_animation] run function luigis_mansion_dark_moon:entities/player/death_animation
execute if entity @s[tag=revive_animation] run function luigis_mansion_dark_moon:entities/player/revive_animation
execute at @s[tag=!camera] run function luigis_mansion_dark_moon:animations/luigi
effect give @s minecraft:invisibility 1000000 0 true
effect give @s minecraft:saturation 1000000 0 true