# 時間(アクションバー)
scoreboard players remove #Fpvp_game_time Fpvp_game_time 1
title @a actionbar [{"text":"残り時間 : ","color":"green"},{"score":{"name":"#Fpvp_game_time","objective":"Fpvp_game_time"}}]
execute if score #Fpvp_game_time Fpvp_game_time matches 200 run title @a title "残り10秒"

# 勝利数(ボスバー)
execute store result bossbar pvp_blue value run scoreboard players get #Fpvp_blue_win Fpvp_game_win
execute store result bossbar pvp_green value run scoreboard players get #Fpvp_green_win Fpvp_game_win

# エフェクト
effect give @a instant_health 1 1 true


# ラウンド終了
execute if score #Fpvp_game_time Fpvp_game_time matches 0 run function fin.pvp:valo/part_install_start


