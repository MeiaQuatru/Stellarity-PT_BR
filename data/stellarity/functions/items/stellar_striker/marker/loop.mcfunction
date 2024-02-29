scoreboard players add @s stellarity.misc 1
execute at @p[predicate=stellarity:items/holding/stellar_striker] rotated as @s positioned ~ ~0.2 ~ run function stellarity:items/stellar_striker/marker/teleport
scoreboard players reset @s[scores={stellarity.misc=50..}] stellarity.misc

#particle block_marker barrier

execute unless score @s stellarity.items.stellar_striker.stars.amount matches 5.. run scoreboard players add @s stellarity.items.stellar_striker.stars.collect_time 1

execute if score @s stellarity.items.stellar_striker.stars.collect_time matches 100 run function stellarity:items/stellar_striker/star/add

execute if score @s stellarity.items.stellar_striker.stars.amount matches 1.. rotated ~ ~ positioned ^ ^0.8 ^1.3 run function stellarity:items/stellar_striker/star/particles
execute if score @s stellarity.items.stellar_striker.stars.amount matches 2.. rotated ~-72 ~ positioned ^ ^0.8 ^1.3 run function stellarity:items/stellar_striker/star/particles
execute if score @s stellarity.items.stellar_striker.stars.amount matches 3.. rotated ~-144 ~ positioned ^ ^0.8 ^1.3 run function stellarity:items/stellar_striker/star/particles
execute if score @s stellarity.items.stellar_striker.stars.amount matches 4.. rotated ~-216 ~ positioned ^ ^0.8 ^1.3 run function stellarity:items/stellar_striker/star/particles
execute if score @s stellarity.items.stellar_striker.stars.amount matches 5.. rotated ~-288 ~ positioned ^ ^0.8 ^1.3 run function stellarity:items/stellar_striker/star/particles
