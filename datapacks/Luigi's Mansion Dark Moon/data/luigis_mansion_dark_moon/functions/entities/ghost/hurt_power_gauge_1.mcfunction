scoreboard players operation #temp LastHealth = @s Health
scoreboard players remove @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3] Health 50
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
execute unless score #temp LastHealth = #temp Health at @s run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health
scoreboard players set @s[scores={Health=..-1}] Health 0
tag @s remove attack
tag @s remove laugh
tag @s remove complain
tag @s[tag=paranormal_shield_1] add paranormal_shield_broken