teleport @s ^-0.25 ^-1 ^

# ghost container animation
execute if entity @s[tag=!animation_floor_appear,tag=!animation_equipped_appear,tag=!animation_mummy_appear,tag=!animation_punch_attack,tag=!animation_spin_attack,tag=!animation_stab_attack,tag=!animation_shield_attack,tag=!animation_object_attack,tag=!animation_whirlwind_attack,tag=!animation_vulnerable,tag=!animation_shielded_stun,tag=!animation_flee,tag=!animation_scare,tag=!animation_laugh,tag=!animation_cheer,tag=!animation_taunt,tag=!animation_shake_furniture,tag=!animation_glasses_pulled,tag=!animation_glasses_lost,tag=!animation_object_pulled,tag=!animation_object_lost,tag=!animation_object_look_around,tag=!animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/idle/right_arm

# AI animations
execute if entity @s[tag=animation_floor_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/floor/right_arm
execute if entity @s[tag=animation_equipped_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/equipped/right_arm
execute if entity @s[tag=animation_mummy_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/mummy/right_arm
# includes the disappointed part
execute if entity @s[tag=animation_punch_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/punch/right_arm
# includes the disappointed part
execute if entity @s[tag=animation_spin_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/spin/right_arm
execute if entity @s[tag=animation_stab_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/stab/right_arm
execute if entity @s[tag=animation_shield_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/shield/right_arm
execute if entity @s[tag=animation_object_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/object/right_arm
execute if entity @s[tag=animation_whirlwind_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/whirlwind/right_arm
# flee overwrites vulnerable
execute if entity @s[tag=animation_vulnerable,tag=!animation_flee] run function luigis_mansion_dark_moon:animations/greenie/stunned/right_arm
execute if entity @s[tag=animation_shielded_stun] run function luigis_mansion_dark_moon:animations/greenie/shielded_stun/right_arm
execute if entity @s[tag=animation_flee] run function luigis_mansion_dark_moon:animations/greenie/flee/right_arm
execute if entity @s[tag=animation_scare] run function luigis_mansion_dark_moon:animations/greenie/scare/right_arm
execute if entity @s[tag=animation_laugh] run function luigis_mansion_dark_moon:animations/greenie/laugh/right_arm
# laugh after spin hit
execute if entity @s[tag=animation_cheer] run function luigis_mansion_dark_moon:animations/greenie/cheer/right_arm
execute if entity @s[tag=animation_taunt] run function luigis_mansion_dark_moon:animations/greenie/taunt/right_arm
execute if entity @s[tag=animation_shake_furniture] run function luigis_mansion_dark_moon:animations/greenie/shake_furniture/right_arm
execute if entity @s[tag=animation_glasses_pulled] run function luigis_mansion_dark_moon:animations/greenie/glasses_pulled/right_arm
execute if entity @s[tag=animation_glasses_lost] run function luigis_mansion_dark_moon:animations/greenie/glasses_lost/right_arm
execute if entity @s[tag=animation_object_pulled] run function luigis_mansion_dark_moon:animations/greenie/object_pulled/right_arm
execute if entity @s[tag=animation_object_lost] run function luigis_mansion_dark_moon:animations/greenie/object_lost/right_arm
execute if entity @s[tag=animation_object_look_around] run function luigis_mansion_dark_moon:animations/greenie/object_look_around/right_arm
execute if entity @s[tag=animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/helmet_look_around/right_arm

# Custscene animations