scoreboard players set #Fpvp_game_time Fpvp_game_time 400
bossbar set pvp_round max 400
bossbar set pvp_round name "ラウンド準備中"
bossbar set pvp_round style progress
scoreboard players set #Fpvp_round_style Fpvp_game_style 1
worldborder set 80 2
worldborder warning distance 3
worldborder damage amount 0.1
worldborder damage buffer 100
execute at @e[tag=Center] run worldborder center ~ ~ 

execute if score #Fpvp_game_style Fpvp_game_style matches 2 at @e[tag=Anti_Center] run scoreboard players add @p[team=!Red] Fpvp_money 30
kill @e[tag=Anti_Center]
summon armor_stand 0.0 0.0 0.0 {Invulnerable:1b,Tags:["Anti_Center"]}
execute as @e[tag=Center] at @s run spreadplayers ~ ~ 30 30 false @e[tag=Anti_Center]
execute as @e[tag=Anti_Center] at @s run tp ~ ~-4 ~
effect give @e[tag=Anti_Center] glowing 1000 1 true
scoreboard players set Fpvp_round_see Fpvp_game_style 1

# 救援物資

execute at @e[tag=Center] run summon chest_minecart ~ ~ ~ {Tags:["Rescue","L_Rescue"],LootTable:"fin.pvp:rescue"}
execute at @e[type=minecraft:armor_stand,tag=Center] run spreadplayers ~ ~ 30 30 false @e[tag=Rescue]
execute as @e[tag=Rescue] at @s run tp @s ~ ~-4 ~
tag @e[tag=Rescue] remove Rescue




