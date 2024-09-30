scoreboard players set @s Fpvp_cooltime 0
scoreboard players add @s Fpvp_C_heal 2

effect give @s instant_health 1 0 true
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["heal_shot","L_heal_shot"]}
execute store result entity @e[tag=heal_shot,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=heal_shot,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=heal_shot] Fpvp_T_heal 40
tag @e[tag=heal_shot] remove heal_shot
