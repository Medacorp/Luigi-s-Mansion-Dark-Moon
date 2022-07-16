summon minecraft:marker ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Tags:["greenie","ghost","reacts_to_flashlight","stunnable","reacts_to_dark_light_device","reacts_to_vacuum","this_entity"]}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:19}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:19}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:19}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","left_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:20}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:20}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","right_leg","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:entity.greenie"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:20}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","found_owner","greenie_model","left_leg","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] run teleport @s ~ ~1 ~ ~ ~
execute as @e[tag=this_entity,tag=greenie,limit=1] store result score @s GhostNr run data get storage luigis_mansion_dark_moon:data ghost_nr
execute as @e[tag=this_entity,tag=greenie,limit=1] store result storage luigis_mansion_dark_moon:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=greenie,limit=1] GhostNr
execute if data storage luigis_mansion_dark_moon:data {selected_map:7} store result score @e[tag=this_entity,tag=greenie,limit=1] Health run data get storage luigis_mansion_dark_moon:data scarescraper.enemy_health_boost
scoreboard players add @e[tag=this_entity,tag=greenie,limit=1] Health 1000
tag @e[tag=this_entity] remove this_entity