summon minecraft:armor_stand ~ ~-1.3 ~ {CustomName:'{"translate":"luigis_mansion_dark_moon:item.bill"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:1}}],Tags:["item","bill","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion_dark_moon:item.bill.spawn player @a ~ ~ ~ 1