scoreboard players operation #temp Room = @s Room
execute as @e if score #temp Room = @s Room run tag @s add same_room
scoreboard players reset #temp Room

tag @s[type=minecraft:item,nbt={Item:{tag:{luigis_mansion_dark_moon:{kill:1b}}}}] add dead
execute if entity @s[tag=flashlight] run function luigis_mansion_dark_moon:entities/flashlight/tick

execute if entity @s[tag=e_gadd] run function luigis_mansion_dark_moon:entities/e_gadd/tick
execute if entity @s[tag=toad] run function luigis_mansion_dark_moon:entities/toad/tick
execute if entity @s[tag=mario] run function luigis_mansion_dark_moon:entities/mario/tick

execute if entity @s[tag=ghost] run function luigis_mansion_dark_moon:entities/ghost/tick
execute if entity @s[tag=greenie] run function luigis_mansion_dark_moon:entities/greenie/tick
execute if entity @s[tag=gold_greenie] run function luigis_mansion_dark_moon:entities/gold_greenie/tick
execute if entity @s[tag=strong_greenie] run function luigis_mansion_dark_moon:entities/strong_greenie/tick
execute if entity @s[tag=paranormal_chain_greenie] run function luigis_mansion_dark_moon:entities/paranormal_chain_greenie/tick
execute if entity @s[tag=slammer] run function luigis_mansion_dark_moon:entities/slammer/tick
execute if entity @s[tag=strong_slammer] run function luigis_mansion_dark_moon:entities/strong_slammer/tick
execute if entity @s[tag=paranormal_chain_slammer] run function luigis_mansion_dark_moon:entities/paranormal_chain_slammer/tick
execute if entity @s[tag=hider] run function luigis_mansion_dark_moon:entities/hider/tick
execute if entity @s[tag=strong_hider] run function luigis_mansion_dark_moon:entities/strong_hider/tick
execute if entity @s[tag=sneaker] run function luigis_mansion_dark_moon:entities/sneaker/tick
execute if entity @s[tag=strong_sneaker] run function luigis_mansion_dark_moon:entities/strong_sneaker/tick
execute if entity @s[tag=creeper] run function luigis_mansion_dark_moon:entities/creeper/tick
execute if entity @s[tag=gobber] run function luigis_mansion_dark_moon:entities/gobber/tick
execute if entity @s[tag=strong_gobber] run function luigis_mansion_dark_moon:entities/strong_gobber/tick
execute if entity @s[tag=paranormal_chain_gobber] run function luigis_mansion_dark_moon:entities/paranormal_chain_gobber/tick
execute if entity @s[tag=poltergeist] run function luigis_mansion_dark_moon:entities/poltergeist/tick
execute if entity @s[tag=ancient_poltergeist] run function luigis_mansion_dark_moon:entities/ancient_poltergeist/tick
execute if entity @s[tag=strong_poltergeist] run function luigis_mansion_dark_moon:entities/strong_poltergeist/tick
execute if entity @s[tag=sister_merlinda] run function luigis_mansion_dark_moon:entities/sister_merlinda/tick
execute if entity @s[tag=sister_berlinda] run function luigis_mansion_dark_moon:entities/sister_berlinda/tick
execute if entity @s[tag=sister_lucinda] run function luigis_mansion_dark_moon:entities/sister_lucinda/tick
execute if entity @s[tag=boo] run function luigis_mansion_dark_moon:entities/boo/tick
execute if entity @s[tag=polterpup] run function luigis_mansion_dark_moon:entities/polterpup/tick
execute if entity @s[tag=big_polterpup] run function luigis_mansion_dark_moon:entities/big_polterpup/tick

execute if entity @s[tag=grouchy_possessor] run function luigis_mansion_dark_moon:entities/grouchy_possessor/tick
execute if entity @s[tag=harsh_possessor] run function luigis_mansion_dark_moon:entities/harsh_possessor/tick
execute if entity @s[tag=overset_possessor] run function luigis_mansion_dark_moon:entities/overset_possessor/tick
execute if entity @s[tag=shrewd_possessor] run function luigis_mansion_dark_moon:entities/shrewd_possessor/tick
execute if entity @s[tag=tough_possessor] run function luigis_mansion_dark_moon:entities/tough_possessor/tick
execute if entity @s[tag=big_boo] run function luigis_mansion_dark_moon:entities/big_boo/tick
execute if entity @s[tag=king_boo] run function luigis_mansion_dark_moon:entities/king_boo/tick

execute if entity @s[tag=greenie_boss] run function luigis_mansion_dark_moon:entities/greenie_boss/tick
execute if entity @s[tag=slammer_boss] run function luigis_mansion_dark_moon:entities/slammer_boss/tick
execute if entity @s[tag=sneaker_boss] run function luigis_mansion_dark_moon:entities/sneaker_boss/tick
execute if entity @s[tag=creeper_boss] run function luigis_mansion_dark_moon:entities/creeper_boss/tick
execute if entity @s[tag=gobber_boss] run function luigis_mansion_dark_moon:entities/gobber_boss/tick
execute if entity @s[tag=the_brain] run function luigis_mansion_dark_moon:entities/the_brain/tick

execute if entity @s[tag=mummy] run function luigis_mansion_dark_moon:entities/mummy/tick
execute if entity @s[tag=living_armor] run function luigis_mansion_dark_moon:entities/living_armor/tick

execute if entity @s[tag=spirit_ball] run function luigis_mansion_dark_moon:entities/spirit_ball/tick
execute if entity @s[tag=mouse] run function luigis_mansion_dark_moon:entities/mouse/tick
execute if entity @s[tag=spider] run function luigis_mansion_dark_moon:entities/spider/tick
execute if entity @s[tag=frog] run function luigis_mansion_dark_moon:entities/frog/tick
execute if entity @s[tag=big_frog] run function luigis_mansion_dark_moon:entities/big_frog/tick
execute if entity @s[tag=beetle] run function luigis_mansion_dark_moon:entities/beetle/tick
execute if entity @s[tag=crow] run function luigis_mansion_dark_moon:entities/crow/tick
execute if entity @s[tag=bat] run function luigis_mansion_dark_moon:entities/bat/tick
execute if entity @s[tag=robomb] run function luigis_mansion_dark_moon:entities/robomb/tick
execute if entity @s[tag=flytrap] run function luigis_mansion_dark_moon:entities/flytrap/tick
execute if entity @s[tag=orange_flower] run function luigis_mansion_dark_moon:entities/orange_flower/tick

tag @a[tag=target,limit=1] remove target

scoreboard players remove @s[scores={Sound=1..}] Sound 1

tag @s remove in_vacuum
tag @s remove newly_stunned
tag @s[tag=remove_from_existence] add dead
scoreboard players reset @s[tag=dead]
teleport @s[tag=dead] ~ ~-1000 ~
kill @s[tag=dead]
tag @e[tag=same_room] remove same_room