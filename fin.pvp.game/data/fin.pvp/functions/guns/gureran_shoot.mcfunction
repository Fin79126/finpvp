execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_Gureran_arrow"],damage:0.1d}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^0.2 ^1.2 {Tags:["Fpvp_Gureran_Motion"],Marker:1b}
execute as @e[tag=Fpvp_Gureran_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_Gureran_Motion,limit=1] Pos
scoreboard players set @s Fpvp_cooltime 0
kill @e[tag=Fpvp_Gureran_Motion]
tag @e[tag=Fpvp_Gureran_arrow] add Fpvp_Gureran
tag @e[tag=Fpvp_Gureran_arrow] remove Fpvp_Gureran_arrow
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.5 1.5 0.1
scoreboard players set @s Fpvp_ROD 0


