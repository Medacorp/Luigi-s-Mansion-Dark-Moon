playsound luigis_mansion_dark_moon:item.gold_bone.obtain player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion_dark_moon:items/retreive_player_money/retreive
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data my_money.money.gold_bone
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion_dark_moon:data my_money.money.gold_bone int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data my_money.total
scoreboard players add #temp Time 200
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion_dark_moon:data my_money.total int 1 run scoreboard players get #temp Time
data modify storage luigis_mansion_dark_moon:data money_grabbed append from storage luigis_mansion_dark_moon:data my_money
data remove storage luigis_mansion_dark_moon:data my_money
scoreboard players reset #temp Time