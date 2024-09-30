scoreboard players set #Fpvp_game_time Fpvp_game_time 300


execute if score #Fpvp_round_style Fpvp_game_style matches 0 run function fin.pvp:games/rounds/prepare
execute if score #Fpvp_round_style Fpvp_game_style matches 1 if score Fpvp_round_see Fpvp_game_style matches 0 run function fin.pvp:games/rounds/round