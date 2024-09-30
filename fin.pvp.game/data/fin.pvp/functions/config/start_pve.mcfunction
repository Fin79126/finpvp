tellraw @s [{"text": "ゲームモードがPVEに設定されました","color": "gold","bold": true}]
scoreboard players set #Fpvp_play_style Fpvp_game_style 2
tellraw @s [{"text": "PVEスタート","underlined": true,"bold": true,"color": "green","clickEvent": {"action" : "run_command","value": "/function fin.pvp:pve/prepare"}}]




