teleport @s ^0.15 ^-1.375 ^-0.1

# ghost container animation
execute if entity @s[tag=!animation_floor_appear,tag=!animation_equipped_appear,tag=!animation_mummy_appear,tag=!animation_punch_attack,tag=!animation_spin_attack,tag=!animation_stab_attack,tag=!animation_shield_attack,tag=!animation_object_attack,tag=!animation_whirlwind_attack,tag=!animation_vulnerable,tag=!animation_shielded_stun,tag=!animation_flee,tag=!animation_scare,tag=!animation_laugh,tag=!animation_cheer,tag=!animation_taunt,tag=!animation_shake_furniture,tag=!animation_glasses_pulled,tag=!animation_glasses_lost,tag=!animation_object_pulled,tag=!animation_object_lost,tag=!animation_object_look_around,tag=!animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/idle/left_leg

# AI animations
execute if entity @s[tag=animation_floor_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/floor/left_leg
execute if entity @s[tag=animation_equipped_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/equipped/left_leg
execute if entity @s[tag=animation_mummy_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/mummy/left_leg
# includes the disappointed part
execute if entity @s[tag=animation_punch_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/punch/left_leg
# includes the disappointed part
execute if entity @s[tag=animation_spin_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/spin/left_leg
execute if entity @s[tag=animation_stab_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/stab/left_leg
execute if entity @s[tag=animation_shield_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/shield/left_leg
execute if entity @s[tag=animation_object_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/object/left_leg
execute if entity @s[tag=animation_whirlwind_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/whirlwind/left_leg
# flee overwrites vulnerable
execute if entity @s[tag=animation_vulnerable,tag=!animation_flee] run function luigis_mansion_dark_moon:animations/greenie/stunned/left_leg
execute if entity @s[tag=animation_shielded_stun] run function luigis_mansion_dark_moon:animations/greenie/shielded_stun/left_leg
execute if entity @s[tag=animation_flee] run function luigis_mansion_dark_moon:animations/greenie/flee/left_leg
execute if entity @s[tag=animation_scare] run function luigis_mansion_dark_moon:animations/greenie/scare/left_leg
execute if entity @s[tag=animation_laugh] run function luigis_mansion_dark_moon:animations/greenie/laugh/left_leg
# laugh after spin hit
execute if entity @s[tag=animation_cheer] run function luigis_mansion_dark_moon:animations/greenie/cheer/left_leg
execute if entity @s[tag=animation_taunt] run function luigis_mansion_dark_moon:animations/greenie/taunt/left_leg
execute if entity @s[tag=animation_shake_furniture] run function luigis_mansion_dark_moon:animations/greenie/shake_furniture/left_leg
execute if entity @s[tag=animation_glasses_pulled] run function luigis_mansion_dark_moon:animations/greenie/glasses_pulled/left_leg
execute if entity @s[tag=animation_glasses_lost] run function luigis_mansion_dark_moon:animations/greenie/glasses_lost/left_leg
execute if entity @s[tag=animation_object_pulled] run function luigis_mansion_dark_moon:animations/greenie/object_pulled/left_leg
execute if entity @s[tag=animation_object_lost] run function luigis_mansion_dark_moon:animations/greenie/object_lost/left_leg
execute if entity @s[tag=animation_object_look_around] run function luigis_mansion_dark_moon:animations/greenie/object_look_around/left_leg
execute if entity @s[tag=animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/helmet_look_around/left_leg

# Custscene animations