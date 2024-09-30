tellraw @s [{"text": "ゲームモードがVALOに設定されました","color": "gold","bold": true}]
tellraw @s [{"text": "チームを選択してください","color": "gold","bold": true}]
scoreboard players set #Fpvp_play_style Fpvp_game_style 1
tellraw @s [{"text": "VALOスタート","underlined": true,"bold": true,"color": "green","clickEvent": {"action" : "run_command","value": "/function fin.pvp:valo/start"}}]
