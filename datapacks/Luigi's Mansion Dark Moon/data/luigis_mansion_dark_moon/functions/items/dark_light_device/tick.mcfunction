execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run tag @s add super_poltergust
execute if entity @s[tag=super_poltergust,nbt={Inventory:[{tag:{CustomModelData:10,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]}] run function luigis_mansion_dark_moon:items/dark_light_device/set_super_poltergust
execute if entity @s[tag=!super_poltergust,nbt={Inventory:[{tag:{CustomModelData:11,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]}] run function luigis_mansion_dark_moon:items/dark_light_device/set_normal_poltergust
tag @s remove super_poltergust

tag @s remove dark_light_device_selected
tag @s[tag=!dark_light_device_cooling_down,scores={Room=1..},nbt={SelectedItem:{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}}] add dark_light_device_selected
execute if entity @s[tag=dark_light_device_selected,tag=!dark_light_device_cooling_down] run function luigis_mansion_dark_moon:items/dark_light_device/cast_light
scoreboard players remove @s[tag=!dark_light_device_selected,tag=!dark_light_device_overheating,scores={DarkLightTime=1..}] DarkLightTime 4
tag @s[scores={DarkLightTime=..0}] remove dark_light_device_cooling_down
execute if entity @s[tag=!vacuuming] unless entity @s[nbt={XpP:0.0f},scores={DarkLightTime=0}] run function luigis_mansion_dark_moon:items/dark_light_device/sync_cooldown
scoreboard players set @s[scores={DarkLightTime=..-1}] DarkLightTime 0