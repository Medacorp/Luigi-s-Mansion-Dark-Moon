# Move with
teleport @s[tag=!sneak_pos] ^-0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos] ^-0.35 ^-1.76 ^ ~ ~

data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion_dark_moon:data luigi.mainhand
execute if entity @s[tag=held_item] store result score @s DarkLightTime run data get storage luigis_mansion_dark_moon:data luigi.dark_light_time
execute if entity @s[tag=held_item,tag=!dark_light_device_cooling_down,nbt={ArmorItems:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dark_light_device"}}}]}] run function luigis_mansion_dark_moon:animations/luigi/dark_light_shine


data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f

execute unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming] unless entity @s[tag=held_item,tag=poltergust_selected] unless entity @s[tag=held_item,tag=flashlight_selected] unless entity @s[tag=held_item,tag=dark_light_device_selected] run function luigis_mansion_dark_moon:animations/luigi/idle/right_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] unless entity @s[tag=held_item,tag=poltergust_selected] unless entity @s[tag=held_item,tag=flashlight_selected] unless entity @s[tag=held_item,tag=dark_light_device_selected] run function luigis_mansion_dark_moon:animations/luigi/sneaking/right_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] unless entity @s[tag=held_item,tag=poltergust_selected] unless entity @s[tag=held_item,tag=flashlight_selected] unless entity @s[tag=held_item,tag=dark_light_device_selected] run function luigis_mansion_dark_moon:animations/luigi/walking/right_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] unless entity @s[tag=held_item,tag=poltergust_selected] unless entity @s[tag=held_item,tag=flashlight_selected] unless entity @s[tag=held_item,tag=dark_light_device_selected] run function luigis_mansion_dark_moon:animations/luigi/running/right_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!open_door,tag=!locked_door,tag=!unlock_door] unless entity @s[tag=held_item,tag=poltergust_selected] unless entity @s[tag=held_item,tag=flashlight_selected] unless entity @s[tag=held_item,tag=dark_light_device_selected] run function luigis_mansion_dark_moon:animations/luigi/swimming/right_arm

execute run data modify entity @s[tag=dual_scream,tag=held_item] ArmorItems[3] set from entity @a[tag=this_luigi,nbt={Inventory:[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}]},limit=1] Inventory[{tag:{luigis_mansion_dark_moon:{id:"luigis_mansion_dark_moon:dual_scream"}}}]
execute at @s[tag=open_door,tag=!left_door] run function luigis_mansion_dark_moon:animations/luigi/door/open/right_arm
execute at @s[tag=locked_door,tag=!left_door] run function luigis_mansion_dark_moon:animations/luigi/door/locked/right_arm
execute at @s[tag=unlock_door,tag=!left_door] run function luigis_mansion_dark_moon:animations/luigi/door/unlock/right_arm
execute at @s[tag=dual_scream] run function luigis_mansion_dark_moon:animations/luigi/dual_scream/right_arm
execute at @s[tag=interact] run function luigis_mansion_dark_moon:animations/luigi/interact/right_arm