tag @s[tag=hurt] add flee
scoreboard players add @s[tag=flee,tag=!hurt] ActionTime 1
execute if entity @s[scores={ActionTime=40}] run function luigis_mansion_dark_moon:entities/ghost/set_random_target
tag @s[scores={ActionTime=40}] remove flee
scoreboard players reset @s[tag=!flee] ActionTime

execute rotated ~ 0 positioned ^ ^-1 ^1 at @a[distance=..1.5,tag=same_room,limit=1,sort=nearest] run function luigis_mansion_dark_moon:entities/ghost/set_target_to_attack

execute if entity @s[tag=attack,tag=!holding_spin_weapon,tag=!holding_stab_weapon,tag=!holding_shield,tag=!holding_object] run function luigis_mansion_dark_moon:entities/greenie/punch_attack
execute if entity @s[tag=attack,tag=holding_spin_weapon] run function luigis_mansion_dark_moon:entities/greenie/spin_attack
execute if entity @s[tag=attack,tag=holding_stab_weapon] run function luigis_mansion_dark_moon:entities/greenie/stab_attack
execute if entity @s[tag=attack,tag=!holding_spin_weapon,tag=holding_shield] run function luigis_mansion_dark_moon:entities/greenie/shield_attack
execute if entity @s[tag=attack,tag=holding_object] run function luigis_mansion_dark_moon:entities/greenie/object_attack

tag @s[tag=newly_stunned,tag=!stun_protected] add vulnerable
execute if entity @s[tag=vulnerable] run function luigis_mansion_dark_moon:entities/greenie/drop_equipment
scoreboard players set @s[tag=newly_stunned,tag=stun_protected] StunTime 30
tag @s[tag=newly_stunned,tag=holding_shield] add animation_shielded_stun
tag @s[tag=newly_stunned,tag=stun_protected] add stun_prevented