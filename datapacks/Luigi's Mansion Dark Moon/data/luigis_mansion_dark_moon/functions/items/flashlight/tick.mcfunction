execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run tag @s add super_poltergust
execute if entity @s[tag=super_poltergust,nbt=!{Inventory:[{tag:{CustomModelData:4,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]},nbt=!{Inventory:[{tag:{CustomModelData:5,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]}] run function luigis_mansion_dark_moon:items/flashlight/set_super_poltergust
execute if entity @s[tag=!super_poltergust,nbt=!{Inventory:[{tag:{CustomModelData:2,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]},nbt=!{Inventory:[{tag:{CustomModelData:3,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]}] run function luigis_mansion_dark_moon:items/flashlight/set_normal_poltergust
tag @s remove super_poltergust

tag @s remove flashlight_selected
tag @s[scores={Room=1..},nbt={SelectedItem:{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:flashlight"}}}}] add flashlight_selected
execute if data storage luigis_mansion_dark_moon:data {got_strobulb:1b} run tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=0}] add charging_strobulb
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=1..}] remove charging_strobulb
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
scoreboard players add @s[tag=flashlight_selected,tag=charging_strobulb,scores={StrobulbCharge=..19}] StrobulbCharge 1
execute if entity @s[tag=flashlight_selected,tag=!charging_strobulb,scores={StrobulbCharge=1..20}] run function luigis_mansion_dark_moon:items/flashlight/effects/small_flash
execute if entity @s[tag=flashlight_selected,tag=!charging_strobulb,scores={StrobulbCharge=20}] run function luigis_mansion_dark_moon:items/flashlight/effects/large_flash
execute if entity @s[tag=!dual_scream_selected,tag=!poltergust_selected,tag=!dark_light_device_selected] unless entity @s[scores={StrobulbCharge=1..20}] run function luigis_mansion_dark_moon:items/flashlight/effects/cast_light
execute if entity @s[scores={StrobulbCharge=1..20}] run function luigis_mansion_dark_moon:items/flashlight/effects/cast_mini_light
scoreboard players set @s[tag=flashlight_selected,tag=!charging_strobulb,scores={StrobulbCharge=1..20}] StrobulbCharge 21
scoreboard players add @s[tag=flashlight_selected,tag=!charging_strobulb,scores={StrobulbCharge=21..}] StrobulbCharge 1
execute unless entity @s[scores={StrobulbCharge=1..40}] run scoreboard players set @s StrobulbCharge 0