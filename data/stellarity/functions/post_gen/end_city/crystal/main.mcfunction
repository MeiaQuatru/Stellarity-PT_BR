execute unless entity @s[tag=stellarity.end_city.crystal_attacked] \
	as @e[type=interaction,limit=1,sort=nearest,tag=stellarity.end_city.crystal] \
	if data entity @s attack run \
	tag @e[type=end_crystal,sort=nearest,tag=stellarity.end_city.crystal,limit=1] add stellarity.end_city.crystal_attacked

execute if entity @s[tag=stellarity.end_city.crystal_attacked] run function stellarity:post_gen/end_city/crystal/destroy
