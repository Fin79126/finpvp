execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_G7_arrow"],damage:2.5d,life:1200s}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["Fpvp_G7_Motion"],Marker:1b}
execute as @e[tag=Fpvp_G7_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_G7_Motion,limit=1] Pos
scoreboard players set @s Fpvp_cooltime 0
kill @e[tag=Fpvp_G7_Motion]
tag @e[tag=Fpvp_G7_arrow] remove Fpvp_G7_arrow
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.5 1.5 0.1
scoreboard players set @s Fpvp_ROD 0


