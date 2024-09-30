tellraw @s [{"text": "ゲームモードがSiegeに設定されました","color": "gold","bold": true}]
tellraw @s [{"text": "チームを選択してください","color": "gold","bold": true}]
scoreboard players set #Fpvp_play_style Fpvp_game_style 3
tellraw @s [{"text": "Sigeスタート","underlined": true,"bold": true,"color": "green","clickEvent": {"action" : "run_command","value": "/function fin.pvp:siege/roll_select"}}]
