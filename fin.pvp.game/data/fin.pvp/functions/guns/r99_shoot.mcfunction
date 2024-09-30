execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_R99_arrow"],damage:3.2d,life:1200s}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1.2 {Tags:["Fpvp_R99_Motion"],Marker:1b}
execute as @e[tag=Fpvp_R99_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_R99_Motion,limit=1] Pos
scoreboard players add @s Fpvp_H_ROD 1
scoreboard players set @s Fpvp_cooltime 0

tp @s ~ ~ ~ ~ ~-5

kill @e[tag=Fpvp_R99_Motion]
tag @e[tag=Fpvp_R99_arrow] remove Fpvp_R99_arrow
playsound minecraft:block.stone.break master @a ~ ~ ~ 2 2 0.1
execute as @a[scores={Fpvp_H_ROD=4..}] run scoreboard players set @s Fpvp_ROD 0
execute as @a[scores={Fpvp_H_ROD=4..}] run scoreboard players set @s Fpvp_H_ROD 0


