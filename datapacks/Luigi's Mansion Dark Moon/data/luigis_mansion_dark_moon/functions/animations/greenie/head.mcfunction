teleport @s ^ ^-1 ^

# ghost container animation
execute if entity @s[tag=!animation_floor_appear,tag=!animation_equipped_appear,tag=!animation_mummy_appear,tag=!animation_punch_attack,tag=!animation_spin_attack,tag=!animation_stab_attack,tag=!animation_shield_attack,tag=!animation_object_attack,tag=!animation_whirlwind_attack,tag=!animation_vulnerable,tag=!animation_shielded_stun,tag=!animation_flee,tag=!animation_scare,tag=!animation_laugh,tag=!animation_cheer,tag=!animation_taunt,tag=!animation_shake_furniture,tag=!animation_glasses_pulled,tag=!animation_glasses_lost,tag=!animation_object_pulled,tag=!animation_object_lost,tag=!animation_object_look_around,tag=!animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/idle/head

# AI animations
execute if entity @s[tag=animation_floor_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/floor/head
execute if entity @s[tag=animation_equipped_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/equipped/head
execute if entity @s[tag=animation_mummy_appear] run function luigis_mansion_dark_moon:animations/greenie/appear/mummy/head
# includes the disappointed part
execute if entity @s[tag=animation_punch_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/punch/head
# includes the disappointed part
execute if entity @s[tag=animation_spin_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/spin/head
execute if entity @s[tag=animation_stab_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/stab/head
execute if entity @s[tag=animation_shield_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/shield/head
execute if entity @s[tag=animation_object_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/object/head
execute if entity @s[tag=animation_whirlwind_attack] run function luigis_mansion_dark_moon:animations/greenie/attack/whirlwind/head
# flee overwrites vulnerable
execute if entity @s[tag=animation_vulnerable,tag=!animation_flee] run function luigis_mansion_dark_moon:animations/greenie/stunned/head
execute if entity @s[tag=animation_shielded_stun] run function luigis_mansion_dark_moon:animations/greenie/shielded_stun/head
execute if entity @s[tag=animation_flee] run function luigis_mansion_dark_moon:animations/greenie/flee/head
execute if entity @s[tag=animation_scare] run function luigis_mansion_dark_moon:animations/greenie/scare/head
execute if entity @s[tag=animation_laugh] run function luigis_mansion_dark_moon:animations/greenie/laugh/head
# laugh after spin hit
execute if entity @s[tag=animation_cheer] run function luigis_mansion_dark_moon:animations/greenie/cheer/head
execute if entity @s[tag=animation_taunt] run function luigis_mansion_dark_moon:animations/greenie/taunt/head
execute if entity @s[tag=animation_shake_furniture] run function luigis_mansion_dark_moon:animations/greenie/shake_furniture/head
execute if entity @s[tag=animation_glasses_pulled] run function luigis_mansion_dark_moon:animations/greenie/glasses_pulled/head
execute if entity @s[tag=animation_glasses_lost] run function luigis_mansion_dark_moon:animations/greenie/glasses_lost/head
execute if entity @s[tag=animation_object_pulled] run function luigis_mansion_dark_moon:animations/greenie/object_pulled/head
execute if entity @s[tag=animation_object_lost] run function luigis_mansion_dark_moon:animations/greenie/object_lost/head
execute if entity @s[tag=animation_object_look_around] run function luigis_mansion_dark_moon:animations/greenie/object_look_around/head
execute if entity @s[tag=animation_helmet_look_around] run function luigis_mansion_dark_moon:animations/greenie/helmet_look_around/head

# Custscene animations