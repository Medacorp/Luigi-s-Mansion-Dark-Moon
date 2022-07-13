execute if entity @s[tag=was_sneaking,tag=!was_swimming] unless data storage luigis_mansion_dark_moon:data luigi{tags:["sneaking"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_walking,tag=!was_swimming] unless entity @s[tag=was_opening_door,tag=!left_leg,tag=!right_leg] unless data storage luigis_mansion_dark_moon:data luigi{tags:["walking"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_running,tag=!was_swimming] unless data storage luigis_mansion_dark_moon:data luigi{tags:["running"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_swimming] unless data storage luigis_mansion_dark_moon:data luigi{tags:["swimming"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[scores={AnimationProg=0},tag=was_swimming] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s IncreaseAmount
execute if entity @s[tag=!was_swimming] if data storage luigis_mansion_dark_moon:data luigi{tags:["swimming"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_dual_screaming] if data storage luigis_mansion_dark_moon:data luigi{tags:["dual_scream"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_dual_screaming] unless data storage luigis_mansion_dark_moon:data luigi{tags:["dual_scream"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_interacting] if data storage luigis_mansion_dark_moon:data luigi{tags:["interact"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_interacting] unless data storage luigis_mansion_dark_moon:data luigi{tags:["interact"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_scratching_chest] if data storage luigis_mansion_dark_moon:data luigi{tags:["scratch_chest"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_scratching_chest] unless data storage luigis_mansion_dark_moon:data luigi{tags:["scratch_chest"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_adjusting_nose] if data storage luigis_mansion_dark_moon:data luigi{tags:["adjust_nose"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_adjusting_nose] unless data storage luigis_mansion_dark_moon:data luigi{tags:["adjust_nose"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_scared] if data storage luigis_mansion_dark_moon:data luigi{tags:["scared"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_scared] unless data storage luigis_mansion_dark_moon:data luigi{tags:["scared"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_uncomfortable_poltergust] if data storage luigis_mansion_dark_moon:data luigi{tags:["uncomfortable_poltergust"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_uncomfortable_poltergust] unless data storage luigis_mansion_dark_moon:data luigi{tags:["uncomfortable_poltergust"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_opening_door] unless entity @s[tag=!right_arm,tag=!left_arm] if data storage luigis_mansion_dark_moon:data luigi{tags:["open_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_opening_door] unless entity @s[tag=!right_arm,tag=!left_arm] unless data storage luigis_mansion_dark_moon:data luigi{tags:["open_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_lockeding_door] unless entity @s[tag=!right_arm,tag=!left_arm] if data storage luigis_mansion_dark_moon:data luigi{tags:["locked_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_lockeding_door] unless entity @s[tag=!right_arm,tag=!left_arm] unless data storage luigis_mansion_dark_moon:data luigi{tags:["locked_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_unlocking_door] unless entity @s[tag=!right_arm,tag=!left_arm] if data storage luigis_mansion_dark_moon:data luigi{tags:["unlock_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_unlocking_door] unless entity @s[tag=!right_arm,tag=!left_arm] unless data storage luigis_mansion_dark_moon:data luigi{tags:["unlock_door"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=!was_dual_scream_selected] unless entity @s[tag=!right_arm,tag=!left_arm] if data storage luigis_mansion_dark_moon:data luigi{tags:["dual_scream_selected"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
execute if entity @s[tag=was_dual_scream_selected] unless entity @s[tag=!right_arm,tag=!left_arm] unless data storage luigis_mansion_dark_moon:data luigi{tags:["dual_scream_selected"]} run function luigis_mansion_dark_moon:animations/luigi/reset_pose
data modify entity @s Tags append from storage luigis_mansion_dark_moon:data luigi.tags[]
tag @s[tag=dual_scream] remove sneak_pos
tag @s[tag=interact] remove sneak_pos
tag @s[tag=open_door] remove sneak_pos
tag @s[tag=locked_door] remove sneak_pos
tag @s[tag=unlock_door] remove sneak_pos
execute if entity @s[scores={Pull=10..}] run function luigis_mansion_dark_moon:animations/luigi/in_knockback
execute store result score @s Pull run data get storage luigis_mansion_dark_moon:data luigi.pulled
execute if data storage luigis_mansion_dark_moon:data luigi{gliding:1b} run tag @s[tag=walking] remove walking
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s IncreaseAmount
execute unless data storage luigis_mansion_dark_moon:data luigi{gliding:0b,swimming:0b} store result score @s IncreaseAmount run data get entity @e[tag=gooigi,limit=1] Rotation[1]
execute unless data storage luigis_mansion_dark_moon:data luigi{gliding:0b,swimming:0b} run scoreboard players add @s IncreaseAmount 90
execute if data storage luigis_mansion_dark_moon:data luigi{gliding:0b,swimming:0b} run scoreboard players set @s IncreaseAmount 0
scoreboard players reset #temp Time
execute if data storage luigis_mansion_dark_moon:data luigi{gliding:0b,swimming:0b} run function luigis_mansion_dark_moon:animations/luigi/call_part_function
execute unless data storage luigis_mansion_dark_moon:data luigi{gliding:0b,swimming:0b} rotated ~ ~90 run function luigis_mansion_dark_moon:animations/luigi/call_part_function
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s IncreaseAmount
scoreboard players reset #temp Time
execute if data storage luigis_mansion_dark_moon:data luigi{invulnerable:1b} run function luigis_mansion_dark_moon:animations/luigi/invulnerability_blink
execute if data storage luigis_mansion_dark_moon:data luigi{invulnerable:0b} if entity @s[nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_chestplate"
tag @s[tag=sneaking,tag=!stop_model] add was_sneaking
tag @s[tag=!sneaking] remove was_sneaking
tag @s[tag=sneaking] remove sneaking
tag @s[tag=walking,tag=!stop_model] add was_walking
tag @s[tag=!walking] remove was_walking
tag @s[tag=walking] remove walking
tag @s[tag=running,tag=!stop_model] add was_running
tag @s[tag=!running] remove was_running
tag @s[tag=running] remove running
tag @s[tag=swimming,tag=!stop_model] add was_swimming
tag @s[tag=!swimming] remove was_swimming
tag @s[tag=swimming] remove swimming
tag @s[tag=sneak_pos,tag=!stop_model] add was_sneak_posing
tag @s[tag=!sneak_pos] remove was_sneak_posing
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=dual_scream] add was_dual_screaming
tag @s[tag=!dual_scream] remove was_dual_screaming
tag @s[tag=dual_scream] remove dual_scream
tag @s[tag=interact] add was_interacting
tag @s[tag=!interact] remove was_interacting
tag @s[tag=interact] remove interact
tag @s[tag=left_door] remove left_door
tag @s[tag=open_door] add was_opening_door
tag @s[tag=!open_door] remove was_opening_door
tag @s[tag=open_door] remove open_door
tag @s[tag=locked_door] add was_lockeding_door
tag @s[tag=!locked_door] remove was_lockeding_door
tag @s[tag=locked_door] remove locked_door
tag @s[tag=unlock_door] add was_unlocking_door
tag @s[tag=!unlock_door] remove was_unlocking_door
tag @s[tag=unlock_door] remove unlock_door
tag @s[tag=scared] add was_scared
tag @s[tag=!scared] remove was_scared
tag @s[tag=scared] remove scared
tag @s[tag=scratch_chest] add was_scratching_chest
tag @s[tag=!scratch_chest] remove was_scratching_chest
tag @s[tag=scratch_chest] remove scratch_chest
tag @s[tag=adjust_nose] add was_adjusting_nose
tag @s[tag=!adjust_nose] remove was_adjusting_nose
tag @s[tag=adjust_nose] remove adjust_nose
tag @s[tag=uncomfortable_poltergust] add was_uncomfortable_poltergust
tag @s[tag=!uncomfortable_poltergust] remove was_uncomfortable_poltergust
tag @s[tag=uncomfortable_poltergust] remove uncomfortable_poltergust
tag @s[tag=dual_scream_selected] add was_dual_scream_selected
tag @s[tag=!dual_scream_selected] remove was_dual_scream_selected
tag @s[tag=dual_scream_selected] remove dual_scream_selected
tag @s remove death_animation
tag @s remove revive_animation
tag @s remove stop_model
tag @s remove dark_light_device_cooling_down
tag @s remove flashlight_selected
tag @s remove poltergust_selected
tag @s remove dark_light_device_selected
tag @s remove dark_room
tag @s remove flashlight
tag @s remove moved
tag @s add found_owner