# Move with
teleport @s[tag=!sneak_pos] ^ ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos] ^ ^-1.76 ^ ~ ~

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f

execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run tag @s add super_poltergust
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:0b} run data modify entity @s[tag=!model_version_2] ArmorItems[3].tag merge value {Damage:1,CustomModelData:1}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:0b} run data modify entity @s[tag=model_version_2] ArmorItems[3].tag merge value {Damage:1,CustomModelData:9}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:0b} unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:2}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:0b} unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:10}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:0b} if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:3}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:0b} if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:11}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:1b} unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:4}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:1b} unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:12}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:1b} if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:5}
execute if data storage luigis_mansion_dark_moon:data {got_poltergust:1b,got_strobulb:1b} if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=!super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:13}
execute unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:6}
execute unless entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:14}
execute if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=!model_version_2,tag=super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:7}
execute if entity @s[tag=!flashlight_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] run data modify entity @s[tag=model_version_2,tag=super_poltergust] ArmorItems[3].tag merge value {Damage:2,CustomModelData:15}
tag @s remove super_poltergust

execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/head
execute at @s[tag=interact] run function luigis_mansion_dark_moon:animations/luigi/interact/chest