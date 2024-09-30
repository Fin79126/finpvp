scoreboard players set @s Fpvp_SLIME 0
kill @e[type=item,limit=1,sort=nearest,distance=..5]
execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^1 {Tags:["Fpvp_slime_arrow"],damage:0.1d}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["Fpvp_slime_Motion"],Marker:1b}
execute as @e[tag=Fpvp_slime_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_slime_Motion,limit=1] Pos
kill @e[tag=Fpvp_slime_Motion]
tag @e[tag=Fpvp_slime_arrow] add Fpvp_slime
tag @e[tag=Fpvp_slime_arrow] remove Fpvp_slime_arrow
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.5 1.5 0.1




