scoreboard players set #Fpvp_game_time Fpvp_game_time 300
bossbar set pvp_round max 300
bossbar set pvp_round name "アンチ収縮中"
bossbar set pvp_round style notched_10
scoreboard players set #Fpvp_round_style Fpvp_game_style 0
execute at @e[tag=Anti_Center] run worldborder center ~ ~
worldborder set 32 13
worldborder damage buffer 0


