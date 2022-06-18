summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:item.gold_coin"}',Pose:{Head:[-90.0f,0.0f,0.01f]},NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:0}}],Tags:["item","eternal_gold_coin","gold_coin","bounce","eternal","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion_dark_moon:50_50 run data modify entity @e[tag=this_entity,limit=1] Pose.Head[0] set value 0.0f
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion_dark_moon:item.gold_coin.spawn player @a ~ ~ ~ 1