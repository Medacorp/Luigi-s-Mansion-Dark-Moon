execute in minecraft:overworld run setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 1 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 0 0 0 Items[0].tag.value set from entity @s UUID
data modify storage luigis_mansion_dark_moon:data new_money_grabbed set from storage luigis_mansion_dark_moon:data money_grabbed
data modify storage luigis_mansion_dark_moon:data my_money set value {uuid:[I;],total:0}
execute in minecraft:overworld if data storage luigis_mansion_dark_moon:data new_money_grabbed[-1] run function luigis_mansion_dark_moon:items/dual_scream/show_inventory/get_items/money_index
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 0 0 0 1 0 0 minecraft:bedrock
data remove storage luigis_mansion_dark_moon:data new_money_grabbed
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data my_money.total
execute if data storage luigis_mansion_dark_moon:data my_money.money.gold_bone run tag @s add has_gold_bone
execute if entity @s[tag=has_gold_bone] run scoreboard players remove #temp Time 200
data remove storage luigis_mansion_dark_moon:data my_money