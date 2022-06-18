data modify block 0 1 0 Items[0].tag.value set from storage luigis_mansion_dark_moon:data these_colors[-1].uuid
execute store result score #matches Time if blocks 0 0 0 0 0 0 0 1 0 all
execute if score #matches Time matches 1 run data modify storage luigis_mansion_dark_moon:data this_color set from storage luigis_mansion_dark_moon:data these_colors[-1]
execute unless score #matches Time matches 1 run data modify storage luigis_mansion_dark_moon:data new_colors append from storage luigis_mansion_dark_moon:data these_colors[-1]
data remove storage luigis_mansion_dark_moon:data these_colors[-1]
execute if score #matches Time matches 1 run data modify storage luigis_mansion_dark_moon:data new_colors append from storage luigis_mansion_dark_moon:data these_colors[]
execute unless score #matches Time matches 1 if data storage luigis_mansion_dark_moon:data these_colors[-1] run function luigis_mansion_dark_moon:other/get_my_color