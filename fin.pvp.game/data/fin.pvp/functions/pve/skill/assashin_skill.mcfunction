scoreboard players set @s Fpvp_CT 160
execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_TP_arrow"],damage:0.1d,PierceLevel:5b}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^0.5 ^1.2 {Tags:["Fpvp_TP_Motion"],Marker:1b}
execute as @e[tag=Fpvp_TP_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_TP_Motion,limit=1] Pos
kill @e[tag=Fpvp_TP_Motion]
tag @e[tag=Fpvp_TP_arrow] add Fpvp_TP
tag @e[tag=Fpvp_TP_arrow] remove Fpvp_TP_arrow
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.5 1.5 0.1
effect give @s strength 4 1 true
scoreboard players set @e[tag=Fpvp_TP] Fpvp_T_Assashin 15



