execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run tag @s add super_poltergust
execute if entity @s[tag=super_poltergust,nbt={Inventory:[{tag:{CustomModelData:0,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:poltergust_5000"}}}]}] run function luigis_mansion_dark_moon:items/poltergust_5000/set_super_poltergust
execute if entity @s[tag=!super_poltergust,nbt={Inventory:[{tag:{CustomModelData:1,luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:poltergust_5000"}}}]}] run function luigis_mansion_dark_moon:items/poltergust_5000/set_normal_poltergust
tag @s remove super_poltergust

tag @s[tag=!poltergust_selected] remove expelling
tag @s[tag=!poltergust_selected] remove vacuuming
tag @s[tag=!poltergust_selected] remove was_clogged
tag @s[tag=!capturing_ghost] remove poltergust_selected
tag @s[tag=capturing_ghost] add poltergust_selected
tag @s remove is_pulling
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
tag @s[scores={Room=1..},nbt={SelectedItem:{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:poltergust_5000"}}}}] add poltergust_selected
scoreboard players set @s[tag=!poltergust_selected] VacuumErrors 0
scoreboard players set @s[tag=!poltergust_selected] Pull 0
tag @s[tag=!poltergust_selected] remove made_error
tag @s[scores={UseItem=1..},tag=poltergust_selected,tag=!vacuuming_ghost,tag=!vacuuming_object,tag=!expelling] add toggle_expelling
tag @s[scores={UseItem=1..},tag=poltergust_selected,tag=!vacuuming_ghost,tag=!vacuuming_object] remove expelling
tag @s[scores={UseItem=1..},tag=poltergust_selected,tag=!vacuuming_ghost,tag=!vacuuming_object,tag=toggle_expelling] add expelling
tag @s remove toggle_expelling
execute if entity @s[tag=!poltergust_selected,scores={PowerGaugeCharge=1..}] run function luigis_mansion_dark_moon:items/poltergust_5000/reset_power_gauge
scoreboard players set @s[scores={PowerGaugeUsage=1}] PowerGaugeCharge 0
execute at @s[scores={PowerGaugeUsage=1..}] rotated ~ 0 run teleport @s ^ ^ ^-0.1
scoreboard players remove @s[scores={PowerGaugeUsage=1..}] PowerGaugeUsage 1
execute if entity @s[scores={UseItem=1..,PowerGauge=1..,PowerGaugeUsage=0},tag=poltergust_selected] run playsound luigis_mansion_dark_moon:item.poltergust_5000.power_gauge.use hostile @a[tag=same_room] ~ ~ ~ 1 1
scoreboard players set @s[scores={UseItem=1..,PowerGauge=1..,PowerGaugeUsage=0},tag=poltergust_selected] PowerGaugeUsage 20
scoreboard players set @s[scores={UseItem=1..},tag=poltergust_selected] UseItem 0
tag @s remove vacuuming_ghost
tag @s remove vacuuming_object
execute if entity @s[tag=poltergust_selected,tag=!expelling] run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming
execute if entity @s[tag=poltergust_selected,tag=expelling] run function luigis_mansion_dark_moon:items/poltergust_5000/expelling
execute if entity @s[tag=!vacuuming_ghost] run function luigis_mansion_dark_moon:items/poltergust_5000/stop_catching_music
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0
scoreboard players set @s[tag=!vacuuming_ghost] Pull 0