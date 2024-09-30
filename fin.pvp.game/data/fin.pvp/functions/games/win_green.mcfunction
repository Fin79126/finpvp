scoreboard players set @a Fpvp_DeathS 0
title @a title [{"text":"グリーン","color": "green"},"の",{"text": "勝ち","color": "red"}]
scoreboard players add @a[team=Green] Fpvp_money 380
scoreboard players set #Fpvp_green_lose Fpvp_game_lose 0
scoreboard players add #Fpvp_blue_lose Fpvp_game_lose 1
scoreboard players set #Fpvp_lose_point Fpvp_game_lose 70
scoreboard players operation #Fpvp_lose_point Fpvp_game_lose *= #Fpvp_blue_lose Fpvp_game_lose
scoreboard players operation @a[team=Blue] Fpvp_money += #Fpvp_lose_point Fpvp_game_lose
function fin.pvp:games/shop_start

# マッチポイント
execute as @a[team=Blue,scores={Fpvp_DeathP=6}] run bossbar set pvp_green style progress
execute as @a[team=Blue,scores={Fpvp_DeathP=6}] run title @a title [{"text":"グリーン","color": "green"},"の",{"text": "マッチポイント","color": "yellow"}]
scoreboard players add @a[team=Blue,scores={Fpvp_DeathP=6}] Fpvp_money 300
execute as @a[team=Blue,scores={Fpvp_DeathP=6}] run bossbar set pvp_green name "グリーンのマッチポイント"

# 終了
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run scoreboard players set #Fpvp_game_style Fpvp_game_style 0
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run title @a title [{"text":"グリーン","color": "green"},"の",{"text": "勝利","color": "red"}]
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run bossbar set pvp_green name "グリーンの勝利"
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run bossbar set pvp_blue name "ブルーの敗北"
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
execute as @a[team=Blue,scores={Fpvp_DeathP=7}] run function fin.pvp:finish
