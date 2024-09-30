execute as @s anchored eyes run summon minecraft:arrow ^ ^ ^-0.1 {Tags:["Fpvp_supifai_arrow"],damage:1d,life:1200s}
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^8 {Tags:["Fpvp_supifai_Motion"],Marker:1b}
execute as @e[tag=Fpvp_supifai_arrow] run data modify entity @s Motion set from entity @e[tag=Fpvp_supifai_Motion,limit=1] Pos
scoreboard players set @s Fpvp_cooltime 0
kill @e[tag=Fpvp_supifai_Motion]
tag @e[tag=Fpvp_supifai_arrow] remove Fpvp_supifai_arrow
playsound minecraft:item.axe.strip master @a ~ ~ ~ 2.5 2 0.1
scoreboard players set @s Fpvp_ROD 0


