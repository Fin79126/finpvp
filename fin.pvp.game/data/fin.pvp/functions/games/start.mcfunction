gamerule naturalRegeneration false

# ゲーム終了ボタン
tellraw @s [{"text": "PVP中断","underlined": true,"bold": true,"color": "red","clickEvent": {"action" : "run_command","value": "/function fin.pvp:games/debug"}}]

# スコアボード
scoreboard players set @a Fpvp_DeathP 0
scoreboard players set @a Fpvp_DeathS 0
scoreboard objectives setdisplay list Fpvp_health
scoreboard players set @a Fpvp_money 200
scoreboard players set #Fpvp_blue_lose Fpvp_game_lose 0
scoreboard players set #Fpvp_green_lose Fpvp_game_lose 0
scoreboard players set #Fpvp_lose_point Fpvp_game_lose 0
scoreboard objectives setdisplay sidebar Fpvp_money
scoreboard players reset @a[team=Red]

# ボスバー
bossbar set pvp_blue max 6
bossbar set pvp_green max 6
bossbar set pvp_blue style notched_6
bossbar set pvp_green style notched_6
bossbar set pvp_blue name "ブルーの勝利数"
bossbar set pvp_green name "グリーンの勝利数"
bossbar set pvp_bomb players

# リスポーン設定
execute at @e[tag=SHOP,limit=1] run setworldspawn ~ ~1 ~
execute at @e[tag=SHOP,limit=1] run spawnpoint @a ~ ~1 ~

# ショップラウンドスタート
scoreboard players set Fpvp_round_see Fpvp_game_style 0
function fin.pvp:games/shop_start
