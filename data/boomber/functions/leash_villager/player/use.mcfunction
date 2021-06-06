#define tag boomber.leash_villager.target
scoreboard players set #success bb.lv.var 0

tag @s add boomber.leash_villager.target
	execute as @e[type=#boomber:leash_villager/leashable, distance=..5.5, sort=nearest, tag=!global.ignore] unless data entity @s Leash.UUID if score #success bb.lv.var matches 0 at @s run function boomber:leash_villager/villager/leash
tag @s remove boomber.leash_villager.target

execute if score #success bb.lv.var matches 1 if predicate boomber:leash_villager/mainhand run function boomber:leash_villager/player/use/mainhand
execute if score #success bb.lv.var matches 1 if predicate boomber:leash_villager/offhand run function boomber:leash_villager/player/use/offhand