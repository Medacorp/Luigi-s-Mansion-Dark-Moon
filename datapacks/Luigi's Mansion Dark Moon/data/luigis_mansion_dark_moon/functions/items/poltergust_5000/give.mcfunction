execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:poltergust_5000"}} 0
execute if score #temp ActionTime matches 0 run give @s minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.poltergust_5000"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:poltergust_5000",kill:1b}}
scoreboard players reset #temp ActionTime