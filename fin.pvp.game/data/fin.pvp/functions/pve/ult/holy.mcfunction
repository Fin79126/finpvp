kill @e[tag=holy_center]
scoreboard players set @s Fpvp_C_heal 0
scoreboard players set @s Fpvp_display_ULT 0
scoreboard players add @s Fpvp_R_ULT 1

clear @s nether_star{Fpvp:Holy_ULT}
summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["holy_center"]}
scoreboard players set @e[tag=holy_center] Fpvp_T_holy 19
playsound block.end_portal.spawn master @a

execute at @e[tag=holy_center] run function fin.pvp:holy_particle
execute as @e[tag=holy_center] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=holy_center] run function fin.pvp:holy_particle
execute as @e[tag=holy_center] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=holy_center] run function fin.pvp:holy_particle
execute as @e[tag=holy_center] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=holy_center] run function fin.pvp:holy_particle
execute as @e[tag=holy_center] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=holy_center] run function fin.pvp:holy_particle
execute as @e[tag=holy_center] at @s run tp @s ~ ~ ~ ~72 ~





title @s times 0 20 5
title @s title [{"text": "ホーリー","color": "light_purple"}]
title @s times 10 30 10



