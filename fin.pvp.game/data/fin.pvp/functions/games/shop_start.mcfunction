# スタイル変更
scoreboard players set #Fpvp_game_style Fpvp_game_style 1

# スコアボード
scoreboard players set #Fpvp_game_time Fpvp_game_time 500
scoreboard players add @a[team=!Red] Fpvp_money 450
execute as @a run scoreboard players operation @s Fpvp_keepmoney = @s Fpvp_money
execute as @a[team=!Red,scores={Fpvp_money=2200..}] run scoreboard players set @s Fpvp_money 2200

# ボスバー
bossbar set pvp_blue players @a
bossbar set pvp_green players @a
bossbar set pvp_round players


# ワールドボーダー
worldborder set 300000
worldborder center 0.0 0.0

# その他
tp @a @e[type=armor_stand,tag=SHOP,limit=1]
clear @a
kill @e[type=arrow]
kill @e[tag=Anti_Center]
kill @e[type=chest_minecart,tag=L_Rescue]
kill @e[type=item]

