# ドローン起動状態にする
scoreboard players set @s Fpvp_siege_drone_power 1

# リンクの値をdummyに置換
scoreboard players operation #Fpvp_dummy Fpvp_link = @s Fpvp_link

# シルバーフィッシュのNoAIを外す
execute as @e[tag=Fpvp_siege_drone] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run data merge entity @s {NoAI:false}

# 自分の分身を作成
summon armor_stand ~ ~0.2 ~ {Tags:["Fpvp_siege_avatar","Fpvp_working"]}
scoreboard players operation @e[tag=Fpvp_working] Fpvp_link = #Fpvp_dummy Fpvp_link
loot replace entity @e[tag=Fpvp_working] armor.head loot fin.pvp:player_head
data modify entity @e[tag=Fpvp_working,limit=1] Rotation set from entity @s Rotation
tag @e[tag=Fpvp_working] remove Fpvp_working

# ドローンに乗る
execute as @e[tag=Fpvp_siege_drone_chair] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run tag @s add Fpvp_working
ride @s mount @e[tag=Fpvp_working,limit=1]
tag @e[tag=Fpvp_working] remove Fpvp_working

# HPの保存

# ダミーの消去
scoreboard players reset #Fpvp_dummy Fpvp_link 

# Fpvp_RODのリセット
scoreboard players set @s Fpvp_ROD 0
