# スタイル変更
scoreboard players set #Fpvp_game_style Fpvp_game_style 11

# ジョブチェンジ
execute if score #Fpvp_job_change Fpvp_round_num matches 2 run tag @a[team=Blue] remove Destroy
execute if score #Fpvp_job_change Fpvp_round_num matches 2 run tag @a[team=Blue] add Defence
execute if score #Fpvp_job_change Fpvp_round_num matches 2 run tag @a[team=Green] remove Defence
execute if score #Fpvp_job_change Fpvp_round_num matches 2 run tag @a[team=Green] add Destroy
execute if score #Fpvp_job_change Fpvp_round_num matches 5 run tag @a[team=Green] remove Destroy
execute if score #Fpvp_job_change Fpvp_round_num matches 5 run tag @a[team=Green] add Defence
execute if score #Fpvp_job_change Fpvp_round_num matches 5 run tag @a[team=Blue] remove Defence
execute if score #Fpvp_job_change Fpvp_round_num matches 5 run tag @a[team=Blue] add Destroy



# スコアボード
scoreboard players set #Fpvp_game_time Fpvp_game_time 500
scoreboard players add @a[team=!Red] Fpvp_money 450
execute as @a run scoreboard players operation @s Fpvp_keepmoney = @s Fpvp_money
execute as @a[team=!Red,scores={Fpvp_money=2200..}] run scoreboard players set @s Fpvp_money 2200
scoreboard players add #Fpvp_round_num Fpvp_round_num 1
scoreboard players set @a Fpvp_KillS 0

scoreboard objectives remove Fpvp_detail_B
scoreboard objectives remove Fpvp_detail_G
scoreboard objectives add Fpvp_detail_B dummy [{"text": "詳細","color": "gold"}]
scoreboard objectives add Fpvp_detail_G dummy [{"text": "詳細","color": "gold"}]

scoreboard objectives setdisplay sidebar Fpvp_money
scoreboard objectives setdisplay list Fpvp_KillP
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.green

# ボスバー
bossbar set pvp_blue players @a
bossbar set pvp_green players @a
bossbar set pvp_round players
bossbar set pvp_bomb players

# ワールドボーダー
worldborder set 300000
worldborder center 0.0 0.0

# その他
tp @a[team=Blue] @e[type=armor_stand,tag=SHOP_B,limit=1]
tp @a[team=Green] @e[type=armor_stand,tag=SHOP_G,limit=1]
clear @a
give @r[tag=Destroy] minecraft:iron_ingot{Fpvp:Bombenergy,display:{Name:'"エネルギーボム"'}}
scoreboard players set @a[team=!Red] Fpvp_P_style 2
gamemode adventure @a[team=!Red]
gamemode spectator @a[team=Red]
kill @e[type=arrow]
kill @e[tag=Anti_Center]
kill @e[type=chest_minecart,tag=L_Rescue]
kill @e[type=item]
execute at @e[tag=Bomb_Energy,limit=1] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1 1
kill @e[tag=Bomb_Energy]
