execute if score #Fpvp_T Fpvp_T matches 1.. run scoreboard players remove #Fpvp_T Fpvp_T 1

# フェーズ
execute if score #Fpvp_T Fpvp_T matches 0 run function fin.pvp:pve/round

# ボスバー
execute store result bossbar pvp_time value run scoreboard players get #Fpvp_T Fpvp_T
execute store result bossbar pvp_phase value run scoreboard players get #Fpvp_phase Fpvp_Phase


