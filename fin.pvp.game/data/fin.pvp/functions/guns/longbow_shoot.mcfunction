execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_longbow_arrow"],damage:6.5d,life:1200s}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["Fpvp_longbow_Motion"],Marker:1b}
execute as @e[tag=Fpvp_longbow_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_longbow_Motion,limit=1] Pos
scoreboard players set @s Fpvp_cooltime 0
kill @e[tag=Fpvp_longbow_Motion]
tag @e[tag=Fpvp_longbow_arrow] remove Fpvp_longbow_arrow
playsound minecraft:item.trident.return master @a ~ ~ ~ 0.8 0 0.1
scoreboard players set @s Fpvp_ROD 0


