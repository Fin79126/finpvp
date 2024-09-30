kill @e[tag=zisin_center]

scoreboard players set @s Fpvp_give_damage 0
scoreboard players set @s Fpvp_display_ULT 0
scoreboard players add @s Fpvp_R_ULT 1

clear @s nether_star{Fpvp:Zisin_ULT}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["zisin_center"]}
scoreboard players set @e[tag=zisin_center] Fpvp_T_zisin 55

title @s times 5 20 5
title @s title [{"text": "地震","color": "gold"}]
title @s times 10 30 10