# 結果表示
tellraw @a {"text": "受けたダメージ"}
execute as @a[team=Warrior] run tellraw @a ["",{"text":"戦士","color": "gray"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")の受けたダメージ","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_taken"}}]
execute as @a[team=Tank] run tellraw @a ["",{"text":"タンク","color": "dark_aqua"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")の受けたダメージ","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_taken"}}]
execute as @a[team=Hunter] run tellraw @a ["",{"text":"狩人","color": "dark_green"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")の受けたダメージ","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_taken"}}]
execute as @a[team=Healer] run tellraw @a ["",{"text":"ヒーラー","color": "light_purple"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")の受けたダメージ","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_taken"}}]
execute as @a[team=Assashin] run tellraw @a ["",{"text":"アサシン","color": "dark_red"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")の受けたダメージ","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_taken"}}]
tellraw @a {"text": "キル数"}
execute as @a[team=Warrior] run tellraw @a ["",{"text":"戦士","color": "gray"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のキル数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_kill"}}]
execute as @a[team=Tank] run tellraw @a ["",{"text":"タンク","color": "dark_aqua"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のキル数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_kill"}}]
execute as @a[team=Hunter] run tellraw @a ["",{"text":"狩人","color": "dark_green"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のキル数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_kill"}}]
execute as @a[team=Healer] run tellraw @a ["",{"text":"ヒーラー","color": "light_purple"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のキル数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_kill"}}]
execute as @a[team=Assashin] run tellraw @a ["",{"text":"アサシン","color": "dark_red"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のキル数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_kill"}}]
tellraw @a {"text": "デス数"}
execute as @a[team=Warrior] run tellraw @a ["",{"text":"戦士","color": "gray"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のデス数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_death"}}]
execute as @a[team=Tank] run tellraw @a ["",{"text":"タンク","color": "dark_aqua"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のデス数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_death"}}]
execute as @a[team=Hunter] run tellraw @a ["",{"text":"狩人","color": "dark_green"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のデス数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_death"}}]
execute as @a[team=Healer] run tellraw @a ["",{"text":"ヒーラー","color": "light_purple"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のデス数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_death"}}]
execute as @a[team=Assashin] run tellraw @a ["",{"text":"アサシン","color": "dark_red"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のデス数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_death"}}]
tellraw @a {"text": "ULT使用回数"}
execute as @a[team=Warrior] run tellraw @a ["",{"text":"戦士","color": "gray"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のULT使用回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_ULT"}}]
execute as @a[team=Tank] run tellraw @a ["",{"text":"タンク","color": "dark_aqua"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のULT使用回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_ULT"}}]
execute as @a[team=Hunter] run tellraw @a ["",{"text":"狩人","color": "dark_green"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のULT使用回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_ULT"}}]
execute as @a[team=Healer] run tellraw @a ["",{"text":"ヒーラー","color": "light_purple"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のULT使用回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_ULT"}}]
execute as @a[team=Assashin] run tellraw @a ["",{"text":"アサシン","color": "dark_red"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のULT使用回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_ULT"}}]
tellraw @a {"text": "ヒール回数"}
execute as @a[team=Healer] run tellraw @a ["",{"text":"ヒーラー","color": "light_purple"},{"text": "(","color": "white"},{"selector":"@s","color": "white"},{"text":")のヒール回数","color": "white"},{"text": " : ","color": "white"},{"score":{"name":"@s","objective":"Fpvp_R_heal"}}]


# チーム脱退
team empty Warrior
team empty Tank
team empty Hunter
team empty Healer
team empty Assashin


# ゲームルール
gamerule naturalRegeneration false

# ボスバー
bossbar remove pvp_time
bossbar remove pvp_phase

# キル
kill @e[tag=Enemy]
kill @e[type=vex]








# スコアボード除去
scoreboard objectives remove Fpvp_J_Warrior
scoreboard objectives remove Fpvp_J_Tank
scoreboard objectives remove Fpvp_J_Hunter
scoreboard objectives remove Fpvp_J_Healer
scoreboard objectives remove Fpvp_J_Assashin

scoreboard objectives remove Fpvp_R_death
scoreboard objectives remove Fpvp_R_taken
scoreboard objectives remove Fpvp_R_kill


scoreboard players set #Fpvp_game_style Fpvp_game_style 0






