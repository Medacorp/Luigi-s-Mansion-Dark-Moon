execute in minecraft:overworld run setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 1 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 0 0 0 Items[0].tag.value set from entity @a[tag=killer,limit=1] UUID
data modify storage luigis_mansion_dark_moon:data new_ghosts_caught set value []
data modify storage luigis_mansion_dark_moon:data ghost_caught set value {uuid:[I;],total:0,total_mass:0,ghosts:{}}
data modify storage luigis_mansion_dark_moon:data ghost_caught.uuid set from entity @a[tag=killer,limit=1] UUID
execute in minecraft:overworld if data storage luigis_mansion_dark_moon:data ghosts_caught[-1] run function luigis_mansion_dark_moon:entities/ghost/capture_index
function luigis_mansion_dark_moon:entities/ghost/capture_ghost
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 0 0 0 1 0 0 minecraft:bedrock
data modify storage luigis_mansion_dark_moon:data new_ghosts_caught append from storage luigis_mansion_dark_moon:data ghost_caught
data modify storage luigis_mansion_dark_moon:data ghosts_caught set from storage luigis_mansion_dark_moon:data new_ghosts_caught
data remove storage luigis_mansion_dark_moon:data ghost_caught
data remove storage luigis_mansion_dark_moon:data new_ghosts_caught

execute unless entity @a[tag=killer,limit=1] if score #debug Selected matches 1 run say [DEBUG] The ghost couldn't find who killed it; an empty UUID is now present in the ghosts caught list, this should never happen!

scoreboard players reset #mass Time