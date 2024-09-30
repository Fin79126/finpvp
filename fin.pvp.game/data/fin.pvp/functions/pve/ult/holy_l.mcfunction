execute if score @s Fpvp_T_holy matches 0 run kill @s

execute if score @s Fpvp_T_holy matches 1 as @e[type=!player,type=!armor_stand,distance=..9] run effect give @s wither 1 1 true
execute if score @s Fpvp_T_holy matches 1 as @e[type=!player,type=!armor_stand,distance=..9] run scoreboard players set #Fpvp_Damage Fpvp_Damage 98
execute if score @s Fpvp_T_holy matches 1 as @e[type=!player,type=!armor_stand,distance=..9] store result score @s Fpvp_Health run data get entity @s Health
execute if score @s Fpvp_T_holy matches 1 as @e[type=!player,type=!armor_stand,distance=..9] run scoreboard players operation @s Fpvp_Health -= #Fpvp_Damage Fpvp_Damage
execute if score @s Fpvp_T_holy matches 1 as @e[type=!player,type=!armor_stand,distance=..9] store result entity @s Health float 1 run scoreboard players get @s Fpvp_Health
execute if score @s Fpvp_T_holy matches 1 run playsound block.end_gateway.spawn master @a ~ ~ ~

function fin.pvp:holy_particle_l
tp @s ~ ~ ~ ~18 ~



