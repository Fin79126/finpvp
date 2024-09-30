# ラウンドスタイル
scoreboard players set #Fpvp_game_style Fpvp_game_style 12

# エフェクト
effect give @a minecraft:night_vision 100000 1 true
effect give @a minecraft:instant_health 10 10 true
effect give @a minecraft:saturation 1000000 10 true
effect give @a minecraft:resistance 5 100 true
effect clear @a minecraft:absorption

# スコアボード
scoreboard players set #Fpvp_game_time Fpvp_game_time 800
scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list Fpvp_health
scoreboard objectives setdisplay sidebar.team.aqua Fpvp_detail_B
scoreboard objectives setdisplay sidebar.team.green Fpvp_detail_G

# 詳細表示
execute if entity @a[team=Blue,tag=Destroy] run scoreboard players set 破壊側 Fpvp_detail_B -1
execute if entity @a[team=Blue,tag=Destroy] run scoreboard players set 防衛側 Fpvp_detail_G -1
execute if entity @a[team=Blue,tag=Defence] run scoreboard players set 防衛側 Fpvp_detail_B -1
execute if entity @a[team=Blue,tag=Defence] run scoreboard players set 破壊側 Fpvp_detail_G -1

# ボスバー
bossbar set pvp_blue players
bossbar set pvp_green players
bossbar set pvp_round players @a
bossbar set pvp_round name "設置可能時間"
bossbar set pvp_round max 800
bossbar set pvp_round style progress
bossbar set pvp_bomb players @a[tag=Destroy]
bossbar set pvp_bomb name "エネルギーチャージ量"
bossbar set pvp_bomb max 120
bossbar set pvp_bomb style progress
bossbar set pvp_bomb color pink
bossbar remove test

# ワールドボーダー
execute at @e[type=minecraft:armor_stand,tag=Center] run worldborder center ~ ~
worldborder set 80 2
worldborder warning distance 3
worldborder damage amount 0.1
worldborder damage buffer 100

# その他
item replace entity @a[team=Blue] armor.head with leather_helmet{display: {color: 1259263}}
item replace entity @a[team=Green] armor.head with leather_helmet{display: {color: 3931914}}
kill @e[type=chest_minecart,tag=L_Rescue]
kill @e[type=item]
execute as @a[team=!Red] run attribute @s minecraft:generic.max_health base set 40
tp @a[team=Red] @e[tag=Center,limit=1]
give @a[team=!Red] minecraft:arrow 1

tp @a[tag=Destroy] @e[tag=Spa_destroy,limit=1]
tp @a[tag=Defence] @e[tag=Spa_defence,limit=1]
