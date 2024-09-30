execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_R301_arrow"],damage:2.5d,life:1200s}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^2.4 {Tags:["Fpvp_R301_Motion"],Marker:1b}
execute as @e[tag=Fpvp_R301_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_R301_Motion,limit=1] Pos
scoreboard players set @s Fpvp_cooltime 0
kill @e[tag=Fpvp_R301_Motion]
tag @e[tag=Fpvp_R301_arrow] remove Fpvp_R301_arrow
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.2 0 0.1
scoreboard players set @s Fpvp_ROD 0


