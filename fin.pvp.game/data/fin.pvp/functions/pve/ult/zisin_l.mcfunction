scoreboard players set #Fpvp_Damage Fpvp_Damage 5

execute if score @s Fpvp_T_zisin matches 45 as @e[type=!player,type=!armor_stand,distance=..10] run effect give @s wither 1 1 true
execute if score @s Fpvp_T_zisin matches 45 as @e[type=!player,type=!armor_stand,distance=..10] run effect give @s weakness 10 10
execute if score @s Fpvp_T_zisin matches 45 run particle crit ~ ~ ~ 3.5 0.5 3.5 0 500
execute if score @s Fpvp_T_zisin matches 45 run playsound minecraft:entity.ender_dragon.flap master @a

execute if score @s Fpvp_T_zisin matches 25 run particle crit ~ ~ ~ 3.5 0.5 3.5 0 500
execute if score @s Fpvp_T_zisin matches 25 run particle witch ~ ~ ~ 3.5 0.5 3.5 3 500
execute if score @s Fpvp_T_zisin matches 25 as @e[type=!player,type=!armor_stand,distance=..10] run effect give @s wither 1 1 true
execute if score @s Fpvp_T_zisin matches 25 run playsound minecraft:entity.ender_dragon.flap master @a

execute if score @s Fpvp_T_zisin matches 5 as @e[type=!player,type=!armor_stand,distance=..10] store result score @s Fpvp_Health run data get entity @s Health
execute if score @s Fpvp_T_zisin matches 5 as @e[type=!player,type=!armor_stand,distance=..10] run scoreboard players operation @s Fpvp_Health -= #Fpvp_Damage Fpvp_Damage
execute if score @s Fpvp_T_zisin matches 5 as @e[type=!player,type=!armor_stand,distance=..10] store result entity @s Health float 1 run scoreboard players get @s Fpvp_Health
execute if score @s Fpvp_T_zisin matches 5 as @e[type=!player,type=!armor_stand,distance=..10] run effect give @s wither 1 1 true
execute if score @s Fpvp_T_zisin matches 5 run particle sweep_attack ~ ~ ~ 3.5 0.5 3.5 1 100
execute if score @s Fpvp_T_zisin matches 5 run particle crit ~ ~ ~ 3.5 0.5 3.5 0 500
execute if score @s Fpvp_T_zisin matches 5 run particle witch ~ ~ ~ 3.5 0.5 3.5 3 500
execute if score @s Fpvp_T_zisin matches 5 run playsound minecraft:entity.ender_dragon.flap master @a






