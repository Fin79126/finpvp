# ゲーム終了ボタン
tellraw @s [{"text": "PVE中断","underlined": true,"bold": true,"color": "red","clickEvent": {"action" : "run_command","value": "/function fin.pvp:pve/finish"}}]

# スコアボード
scoreboard objectives add Fpvp_J_Warrior dummy {"text": "戦士","color": "gray"}
scoreboard objectives add Fpvp_J_Tank dummy {"text": "タンク","color": "dark_aqua"}
scoreboard objectives add Fpvp_J_Hunter dummy {"text": "狩人","color": "dark_green"}
scoreboard objectives add Fpvp_J_Healer dummy {"text": "ヒーラー","color": "light_purple"}
scoreboard objectives add Fpvp_J_Assashin dummy {"text": "アサシン","color": "dark_red"}

scoreboard objectives add Fpvp_T dummy
scoreboard objectives add Fpvp_T_arrow dummy
scoreboard objectives add Fpvp_T_heal dummy
scoreboard objectives add Fpvp_T_zisin dummy
scoreboard objectives add Fpvp_T_Hunter dummy
scoreboard objectives add Fpvp_T_Assashin dummy
scoreboard objectives add Fpvp_T_ULT_Warr dummy
scoreboard objectives add Fpvp_T_ULT_Assa dummy
scoreboard objectives add Fpvp_T_holy dummy
scoreboard objectives add Fpvp_Health dummy
scoreboard objectives add Fpvp_Damage dummy
scoreboard objectives add Fpvp_CT dummy
scoreboard objectives add Fpvp_display_CT dummy
scoreboard objectives add Fpvp_display_ULT dummy
scoreboard objectives add Fpvp_Rotation dummy
scoreboard objectives add Fpvp_C_heal dummy
scoreboard objectives add Fpvp_Phase dummy
scoreboard objectives add Fpvp_give_damage custom:damage_dealt

scoreboard objectives add Fpvp_R_taken custom:damage_taken
scoreboard objectives add Fpvp_R_kill totalKillCount
scoreboard objectives add Fpvp_R_death deathCount
scoreboard objectives add Fpvp_R_ULT dummy
scoreboard objectives add Fpvp_R_heal dummy

scoreboard players set @a Fpvp_C_heal 0
scoreboard players set @a Fpvp_give_damage 0
scoreboard players set #Fpvp_teisuu_20 Fpvp_teisuu 20
scoreboard players set @a Fpvp_CT 0
scoreboard players set #Fpvp_teisuu_80 Fpvp_teisuu 80
scoreboard players set #Fpvp_teisuu_12 Fpvp_teisuu 12


# チーム作成
team add Warrior "戦士"
team add Tank "タンク"
team add Hunter "狩人"
team add Healer "ヒーラー"
team add Assashin "アサシン"
team modify Warrior color gray
team modify Tank color dark_aqua
team modify Hunter color dark_green
team modify Healer color light_purple
team modify Assashin color dark_red
team modify Warrior prefix "戦士["
team modify Tank prefix "タンク["
team modify Hunter prefix "狩人["
team modify Healer prefix "ヒーラー["
team modify Assashin prefix "アサシン["
team modify Warrior suffix "]"
team modify Tank suffix "]"
team modify Hunter suffix "]"
team modify Healer suffix "]"
team modify Assashin suffix "]"
team modify Assashin seeFriendlyInvisibles true

# スコアボード表示
scoreboard objectives setdisplay sidebar.team.gray Fpvp_J_Warrior
scoreboard objectives setdisplay sidebar.team.dark_aqua Fpvp_J_Tank
scoreboard objectives setdisplay sidebar.team.dark_green Fpvp_J_Hunter
scoreboard objectives setdisplay sidebar.team.light_purple Fpvp_J_Healer
scoreboard objectives setdisplay sidebar.team.dark_red Fpvp_J_Assashin

scoreboard players set ～能力～～～～～ Fpvp_J_Warrior -3
scoreboard players set ～能力～～～～～ Fpvp_J_Tank -3
scoreboard players set ～能力～～～～～ Fpvp_J_Hunter -3
scoreboard players set ～能力～～～～～ Fpvp_J_Healer -3
scoreboard players set ～能力～～～～～ Fpvp_J_Assashin -3
scoreboard players set ～技～～～～～～ Fpvp_J_Warrior -5
scoreboard players set ～技～～～～～～ Fpvp_J_Tank -5
scoreboard players set ～技～～～～～～ Fpvp_J_Hunter -5
scoreboard players set ～技～～～～～～ Fpvp_J_Healer -5
scoreboard players set ～技～～～～～～ Fpvp_J_Assashin -5


scoreboard players set 攻撃力UP Fpvp_J_Warrior -5
scoreboard players set 火炎 Fpvp_J_Warrior -6
scoreboard players set CT：20秒 Fpvp_J_Warrior -7
scoreboard players set ULT：召雷剣 Fpvp_J_Warrior -8
scoreboard players set ダメージ Fpvp_J_Warrior -9

scoreboard players set 防御力UP Fpvp_J_Tank -5
scoreboard players set 地震 Fpvp_J_Tank -6
scoreboard players set CT：20秒 Fpvp_J_Tank -7
scoreboard players set ULT：吹き飛ばし Fpvp_J_Tank -8
scoreboard players set ダメージ Fpvp_J_Tank -9

scoreboard players set スピードUP Fpvp_J_Hunter -5
scoreboard players set 連射 Fpvp_J_Hunter -6
scoreboard players set CT：15秒 Fpvp_J_Hunter -7

scoreboard players set 回復力UP Fpvp_J_Healer -5
scoreboard players set ピュア Fpvp_J_Healer -6
scoreboard players set CT：7秒 Fpvp_J_Healer -7
scoreboard players set ULT：ホーリー Fpvp_J_Healer -8
scoreboard players set ロッド使用 Fpvp_J_Healer -9

scoreboard players set 透明化 Fpvp_J_Assashin -5
scoreboard players set ブリンク Fpvp_J_Assashin -6
scoreboard players set CT：8秒 Fpvp_J_Assashin -7
scoreboard players set ULT：大爆発 Fpvp_J_Assashin -8
scoreboard players set TP使用 Fpvp_J_Assashin -9



# 部屋へTP
tp @a @e[tag=Prepare,limit=1]

# 役職選択
tellraw @a [{"text": "なりたい役職をクリック!!!","color": "gold"}]
tellraw @a [{"text": "戦士","color": "gray","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Warrior @s"}}]
tellraw @a [{"text": "タンク","color": "dark_aqua","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Tank @s"}}]
tellraw @a [{"text": "狩人","color": "dark_green","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Hunter @s"}}]
tellraw @a [{"text": "ヒーラー","color": "light_purple","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Healer @s"}}]
tellraw @a [{"text": "アサシン","color": "dark_red","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Assashin @s"}}]
tellraw @a [{"text": "観戦","color": "red","bold" : true,"clickEvent": {"action":"run_command","value": "/team join Red @s"}}]

