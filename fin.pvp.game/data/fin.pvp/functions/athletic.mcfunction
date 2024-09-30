scoreboard players set #Fpvp_game_style Fpvp_game_style 3
tp @a @e[tag=Asure,limit=1]
scoreboard players set #Fpvp_game_time Fpvp_game_time 0


tellraw @p [{"text" : "くじ","color" : "yellow","bold" : true,"clickEvent": {"action": "run_command","value": "/tell @s 大吉"}}]