# ラウンド準備を開始
scoreboard players set #Fpvp_siege_style Fpvp_game_style 1

# 死亡状態リセット
scoreboard players set @a Fpvp_siege_dead 0

# 不要MOB削除

# ドローンを召喚
execute as @a[team=Siege_attacker] at @e[tag=Siege_spawn_atk,limit=1] run function fin.pvp:siege/items/drone/drone_summon

# プレイヤーアイテム削除
clear @a[team=!Red]

# キャラクターへアイテム付与

# スコアボード
scoreboard players set #Fpvp_siege_T Fpvp_siege_T 900

# ゲームモード設定
gamemode adventure @a
gamemode spectator @a[team=Red]

# ボスバー

# マップリセット
place template 



