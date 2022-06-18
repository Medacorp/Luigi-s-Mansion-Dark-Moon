execute in minecraft:overworld run setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 1 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 0 0 0 Items[0].tag.value set from entity @a[tag=collector,limit=1] UUID
data modify storage luigis_mansion_dark_moon:data new_money_grabbed set value []
data modify storage luigis_mansion_dark_moon:data my_money set value {uuid:[I;],total:0,money:{}}
data modify storage luigis_mansion_dark_moon:data my_money.uuid set from entity @a[tag=collector,limit=1] UUID
execute in minecraft:overworld if data storage luigis_mansion_dark_moon:data money_grabbed[-1] run function luigis_mansion_dark_moon:items/retreive_player_money/retreive_index
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 0 0 0 1 0 0 minecraft:bedrock
data modify storage luigis_mansion_dark_moon:data money_grabbed set from storage luigis_mansion_dark_moon:data new_money_grabbed
data remove storage luigis_mansion_dark_moon:data new_money_grabbed

execute unless entity @a[tag=collector,limit=1] if score #debug Selected matches 1 run say [DEBUG] The cash couldn't find who collected it; an empty UUID is now present in the money grabbed list, this should never happen!