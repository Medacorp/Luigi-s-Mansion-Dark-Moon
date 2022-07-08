summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["source","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["head","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:0,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["chest","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:1,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:0,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_arm","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:0,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_arm","held_item","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["right_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:1,display:{color:37129}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["left_leg","luigi_model","model_piece","new","found_owner"],CustomName:'{"translate":"luigis_mansion_dark_moon:entity.luigi"}',ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:1,display:{color:37129}}}]}
scoreboard players operation #temp ID = @s ID
execute at @s as @e[tag=luigi_model,tag=new] run scoreboard players operation @s ID = #temp ID
scoreboard players reset #temp ID
loot spawn ~ ~ ~ loot luigis_mansion_dark_moon:gameplay/get_player_name
setblock 27 0 0 minecraft:oak_sign{Text1:'{"entity":"@e[type=minecraft:item,nbt={Item:{id:\\"minecraft:player_head\\"}},limit=1]","nbt":"Item.tag.SkullOwner.Name"}'}
data modify entity @e[tag=luigi_model,tag=source,tag=new,limit=1] CustomName set from block 27 0 0 Text1
setblock 27 0 0 minecraft:bedrock
kill @e[distance=..0.1,type=minecraft:item,limit=1]
execute if score #global_player_names Selected matches 0 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:0b}
execute if score #global_player_names Selected matches 1 run data merge entity @e[tag=luigi_model,tag=source,tag=new,limit=1] {CustomNameVisible:1b}
function luigis_mansion_dark_moon:other/get_luigi_color
execute as @e[tag=luigi_model,tag=new] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get #temp Time
execute if score #temp2 Time matches 1 run tag @e[tag=luigi_model,tag=new] add model_version_2
execute if score #temp2 Time matches 1 as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:0}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 8
execute if score #temp2 Time matches 1 as @e[tag=luigi_model,tag=new,nbt={ArmorItems:[{tag:{CustomModelData:1}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 9
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @e[tag=luigi_model,tag=new] remove new