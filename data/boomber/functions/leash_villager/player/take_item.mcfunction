data modify block ~ ~ ~ Items[0].Slot set value 0b

execute store result score #count bb.lv.var run data get block ~ ~ ~ Items[0].Count
execute store result block ~ ~ ~ Items[].Count byte 1 run scoreboard players remove #count bb.lv.var 1

execute if score #count bb.lv.var matches ..0 run data remove block ~ ~ ~ Items[0]