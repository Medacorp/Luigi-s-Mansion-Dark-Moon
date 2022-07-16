summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"∞","color":"light_purple"}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["health_display","this_entity"]}
scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
scoreboard players operation @e[tag=this_entity,limit=1] GhostNr = @s GhostNr
scoreboard players add #temp Health 99
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] Health = #temp Health
execute if entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute if entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] in minecraft:overworld run data modify entity @e[tag=this_entity,limit=1] CustomName set from block 0 0 0 Text1
execute if entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
execute unless entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] run tag @e[tag=this_entity,limit=1] add infinite_health
execute unless entity @s[tag=!paranormal_shield_1,tag=!paranormal_shield_2,tag=!paranormal_shield_3,tag=!infinite_health] run tag @e[tag=this_entity,limit=1] add was_infinite_health
tag @e[tag=this_entity,limit=1] remove this_entity