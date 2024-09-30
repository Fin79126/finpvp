title @a subtitle [{"text":"破壊側","color": "light_purple"},{"text": "の","color": "white"},{"text": "勝ち","color": "red"}]

scoreboard players operation #Fpvp_job_change Fpvp_round_num = #Fpvp_round_num Fpvp_round_num
scoreboard players set Fpvp_teisuu_6 Fpvp_teisuu 6
scoreboard players operation #Fpvp_job_change Fpvp_round_num %= Fpvp_teisuu_6 Fpvp_teisuu
execute if score #Fpvp_job_change Fpvp_round_num matches 0..2 run function fin.pvp:valo/win_blue
execute if score #Fpvp_job_change Fpvp_round_num matches 3..5 run function fin.pvp:valo/win_green



