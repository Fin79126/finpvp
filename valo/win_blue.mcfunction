scoreboard players set @a Fpvp_DeathS 0
scoreboard players add #Fpvp_blue_win Fpvp_game_win 1
title @a title [{"text":"ブルー","color": "blue"},{"text": "の","color": "white"},{"text": "勝ち","color": "red"}]
scoreboard players add @a[team=Blue] Fpvp_money 380

scoreboard players set #Fpvp_blue_lose Fpvp_game_lose 0
scoreboard players add #Fpvp_green_lose Fpvp_game_lose 1
scoreboard players set #Fpvp_lose_point Fpvp_game_lose 70
scoreboard players operation #Fpvp_lose_point Fpvp_game_lose *= #Fpvp_green_lose Fpvp_game_lose
scoreboard players operation @a[team=Green] Fpvp_money += #Fpvp_lose_point Fpvp_game_lose

scoreboard players set @a[team=!Red] Fpvp_kill_bonus 40
execute as @a[team=!Red] run scoreboard players operation @s Fpvp_kill_bonus *= @s Fpvp_KillS
execute as @a[team=!Red] run scoreboard players operation @s Fpvp_money += @s Fpvp_kill_bonus

function fin.pvp:valo/shop_start

# マッチポイント
execute if score #Fpvp_blue_win Fpvp_game_win matches 6 run bossbar set pvp_blue style progress
execute if score #Fpvp_blue_win Fpvp_game_win matches 6 run title @a title [{"text":"ブルー","color": "blue"},"の",{"text": "マッチポイント","color": "yellow"}]
execute if score #Fpvp_blue_win Fpvp_game_win matches 6 run scoreboard players add @a[team=Green] Fpvp_money 300
execute if score #Fpvp_blue_win Fpvp_game_win matches 6 run bossbar set pvp_blue name "ブルーのマッチポイント"

# 終了
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 run scoreboard players set #Fpvp_game_style Fpvp_game_style 0
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 run title @a title [{"text":"ブルー","color": "blue"},"の",{"text": "勝利","color": "red"}]
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 run bossbar set pvp_blue name "ブルーの勝利"
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 run bossbar set pvp_green name "グリーンの敗北"
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
execute if score #Fpvp_blue_win Fpvp_game_win matches 7 run function fin.pvp:finish



