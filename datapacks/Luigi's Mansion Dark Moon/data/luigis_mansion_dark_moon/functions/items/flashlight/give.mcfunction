execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:flashlight"}} 0
execute if score #temp ActionTime matches 0 run give @s[tag=!charging_strobulb] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.flashlight"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:flashlight",kill:1b}}
execute if score #temp ActionTime matches 0 run give @s[tag=charging_strobulb] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.flashlight"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:flashlight",kill:1b}}
scoreboard players reset #temp ActionTime