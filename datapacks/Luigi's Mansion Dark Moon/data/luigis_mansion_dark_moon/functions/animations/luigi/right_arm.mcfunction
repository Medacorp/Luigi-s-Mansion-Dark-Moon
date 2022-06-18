# Move with
teleport @s[tag=!sneak_pos] ^-0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos] ^-0.35 ^-1.76 ^ ~ ~

execute if data storage luigis_mansion_dark_moon:data luigi.mainhand.tag.luigis_mansion_dark_moon.poltergust_model_data if entity @s[tag=held_item,tag=!was_holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if data storage luigis_mansion_dark_moon:data luigi.mainhand.tag.luigis_mansion_dark_moon.poltergust_model_data run tag @s add holding_poltergust
execute run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion_dark_moon:data luigi.mainhand

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f

execute if entity @s[tag=!holding_poltergust] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming] run function luigis_mansion_dark_moon:animations/luigi/idle/right_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!holding_poltergust,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/sneaking/right_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!holding_poltergust,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/walking/right_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!holding_poltergust,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/running/right_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!holding_poltergust,tag=!open_door,tag=!locked_door,tag=!unlock_door] run function luigis_mansion_dark_moon:animations/luigi/swimming/right_arm

execute unless entity @s[tag=!locked_door,tag=!unlock_door] run data modify entity @s[tag=held_item] ArmorItems[3] set value {}
execute run data modify entity @s[tag=dual_scream,tag=held_item] ArmorItems[3] set from entity @a[tag=this_luigi,nbt={Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}]},limit=1] Inventory[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}]
execute at @s[tag=open_door,tag=!left_door] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/door/open/right_arm
execute at @s[tag=locked_door,tag=!left_door] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/door/locked/right_arm
execute at @s[tag=unlock_door,tag=!left_door] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/door/unlock/right_arm
execute at @s[tag=dual_scream] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/right_arm
execute at @s[tag=inspect] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_dark_moon:animations/luigi/inspect/right_arm