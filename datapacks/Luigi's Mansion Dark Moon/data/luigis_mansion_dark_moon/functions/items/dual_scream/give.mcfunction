execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}} 0
execute if score #temp ActionTime matches 0 run give @s[scores={ScreenType=0}] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.dual_scream.unnamed"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream",named:0b,kill:1b}}
execute if score #temp ActionTime matches 0 run give @s[scores={ScreenType=1}] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.dual_scream.unnamed"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream",named:0b,kill:1b}}
execute if score #temp ActionTime matches 0 run give @s[scores={ScreenType=2}] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion_dark_moon:item.dual_scream.unnamed"}'},luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream",named:0b,kill:1b}}
scoreboard players reset #temp ActionTime