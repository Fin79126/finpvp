# ゲーム中断ボタン
tellraw @s [{"text": "Siege中断","underlined": true,"bold": true,"color": "red","clickEvent": {"action" : "run_command","value": "/function fin.pvp:siege/finish"}}]

# エフェクト付与(共通)
effect give @a night_vision infinite 1 true

# チーム作成
team add Red "観戦"
team add Siege_attacker "アタッカー"
team add Siege_defender "ディフェンダー"

team modify Siege_attacker color gold
team modify Siege_defender color blue
team modify Red color red

team modify Siege_attacker nametagVisibility hideForOtherTeams
team modify Siege_defender nametagVisibility hideForOtherTeams

# スコアボード作成
scoreboard objectives add Fpvp_siege_T dummy
scoreboard objectives add Fpvp_siege_dead deathCount
scoreboard objectives add Fpvp_siege_drone_power dummy

# スコアボード初期化
scoreboard players set #Fpvp_siege_style Fpvp_game_style 0
scoreboard players set #Fpvp_siege_T Fpvp_siege_T 0
scoreboard players set @a Fpvp_siege_dead 0
scoreboard players set @a Fpvp_link 0
scoreboard players set @a Fpvp_siege_drone_power 0

# ゲームルール
gamerule naturalRegeneration false

# ゲームモード設定
gamemode adventure @a

# 役職選択フィールドへTP
tp @a @e[type=armor_stand,tag=Roll_select ,limit=1]
