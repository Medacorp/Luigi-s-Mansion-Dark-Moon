scoreboard players set #temp Time 0
scoreboard players add #temp Health 99
scoreboard players operation #temp Health /= #100 Constants
execute if entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] remove infinite_health
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute unless score @s Health = #temp Health in minecraft:overworld run data modify entity @s CustomName set from block 0 0 0 Text1
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run data modify entity @s CustomName set from block 0 0 0 Text1
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
tag @s[tag=was_infinite_health,tag=!infinite_health] remove was_infinite_health
teleport @s ^2 ^2 ^ ~ ~
scoreboard players operation @s Health = #temp Health
scoreboard players reset #temp Health
scoreboard players reset #temp Time
tag @s add spawned_health_display