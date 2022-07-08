summon minecraft:armor_stand ~ 0 ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion_dark_moon.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion_dark_moon.items[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}].tag.CustomModelData set value 8
scoreboard players reset #temp Time
execute as @e[tag=inventory,limit=1] run function luigis_mansion_dark_moon:other/inventory_boxes/set
function luigis_mansion_dark_moon:other/inventory_boxes/load