setblock ~ ~ ~ minecraft:yellow_shulker_box
	data modify block ~ ~ ~ Items append from entity @s Inventory[{Slot: -106b}]
	function boomber:leash_villager/player/take_item
	loot replace entity @s weapon.offhand 1 mine ~ ~ ~ iron_pickaxe{drop_contents: 1b}
setblock ~ ~ ~ minecraft:air

scoreboard players set #success bb.lv.var 0