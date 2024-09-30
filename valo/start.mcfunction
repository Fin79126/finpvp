# ゲーム終了ボタン
tellraw @s [{"text": "VALO中断","underlined": true,"bold": true,"color": "red","clickEvent": {"action" : "run_command","value": "/function fin.pvp:valo/debug"}}]


# スコアボード
scoreboard players set @a Fpvp_KillP 0
scoreboard objectives setdisplay list health
scoreboard players set @a Fpvp_money 200
scoreboard players set #Fpvp_blue_lose Fpvp_game_lose 0
scoreboard players set #Fpvp_green_lose Fpvp_game_lose 0
scoreboard players set #Fpvp_lose_point Fpvp_game_lose 0
scoreboard players set #Fpvp_round_num Fpvp_round_num -1
scoreboard players set #Fpvp_job_change Fpvp_round_num 0
scoreboard players set #Fpvp_blue_win Fpvp_game_win 0
scoreboard players set #Fpvp_green_win Fpvp_game_win 0
scoreboard players reset @a[team=Red]

# ボスバー
bossbar set pvp_blue max 6
bossbar set pvp_green max 6
bossbar set pvp_blue style notched_6
bossbar set pvp_green style notched_6
bossbar set pvp_blue name "ブルーの勝利数"
bossbar set pvp_green name "グリーンの勝利数"

# タグ付け
tag @a[team=Blue] add Destroy
tag @a[team=Green] add Defence

# リスポーン設定
execute at @e[tag=Res_Valo,limit=1] run setworldspawn ~ ~1 ~
execute at @e[tag=Res_Valo,limit=1] run spawnpoint @a ~ ~1 ~

# ショップラウンドスタート
kill @e[type=chest_minecart,tag=L_Rescue]
kill @e[type=item]
kill @e[tag=Anti_Center]

function fin.pvp:valo/shop_start