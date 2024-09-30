# 共通スコアボード設定
 # ゲームの状態
 scoreboard objectives add Fpvp_game_style dummy
 # プレイヤー紐づけ用ナンバー作成
 scoreboard objectives add Fpvp_link dummy
 # にんじん棒使用検知
 scoreboard objectives add Fpvp_ROD used:carrot_on_a_stick

# ゲーム終了

# ゲーム選択
tellraw @s [{"text": "--------ゲームモード設定--------","color": "gold","bold": true}]
tellraw @s [{"text": "PVP","underlined": true,"clickEvent": {"action" : "run_command","value": "/function fin.pvp:config/start_pvp"}}]
tellraw @s [{"text": "PVE","underlined": true,"clickEvent": {"action" : "run_command","value": "/function fin.pvp:config/start_pve"}}]
tellraw @s [{"text": "VALO","underlined": true,"clickEvent": {"action" : "run_command","value": "/function fin.pvp:config/start_valo"}}]
tellraw @s [{"text": "Siege","underlined": true,"clickEvent": {"action" : "run_command","value": "/function fin.pvp:config/start_siege"}}]
tellraw @s [{"text": "無","underlined": true,"clickEvent": {"action" : "run_command","value": "/scoreboard players set #Fpvp_play_style Fpvp_game_style 0"}}]




