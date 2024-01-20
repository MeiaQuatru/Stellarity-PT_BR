# Count respawn crystals
execute as @e[type=minecraft:end_crystal,tag=!fe.respawn_crystal,distance=..5] at @s run function far_end:structures/exit_portal/respawn/crystal_tag

execute as @e[type=end_crystal,tag=fe.respawn_crystal] at @s run function far_end:structures/exit_portal/respawn/crystal_visuals

execute store result score #respawn_crystal_count stellarity.misc if entity @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal]
execute if score #respawn_crystal_count stellarity.misc matches 4 run tag @s[tag=!fe.respawn] add fe.respawn
