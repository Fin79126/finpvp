# function
scoreboard players set #Fpvp_round_style Fpvp_game_style 0
function fin.pvp:games/rounds/change

# ラウンドスタイル
scoreboard players set #Fpvp_game_style Fpvp_game_style 2


# エフェクト
effect give @a minecraft:night_vision 100000 1 true
effect give @a minecraft:instant_health 10 10 true
effect give @a minecraft:saturation 1000000 10 true
effect give @a minecraft:resistance 5 100 true
effect clear @a minecraft:absorption

# ボスバー
bossbar set pvp_blue players
bossbar set pvp_green players
bossbar set pvp_round players @a
bossbar set pvp_round name "ラウンド準備中"
bossbar set pvp_round max 400
bossbar remove test

# その他
execute at @e[type=minecraft:armor_stand,tag=Center] run spreadplayers ~ ~ 30 30 false @a
execute as @a[team=!Red] run attribute @s minecraft:generic.max_health base set 40
gamemode adventure @a[team=!Red]
gamemode spectator @a[team=Red]
tp @a[team=Red] @e[tag=Center,limit=1]
give @a[team=!Red] minecraft:arrow 1
execute as @a[team=!Red] at @s run tp @s ~ ~-4 ~
