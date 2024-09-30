# エフェクト解除
effect clear @s instant_health
effect clear @s invisibility

# 騎乗解除
ride @s dismount

# ドローンを不起動状態にする
scoreboard players set @s Fpvp_siege_drone_power 0

# リンクの値をdummyに置換
scoreboard players operation #Fpvp_dummy Fpvp_link = @s Fpvp_link

# シルバーフィッシュのにNoAIをつける
execute as @e[tag=Fpvp_siege_drone] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run data merge entity @s {NoAI:true}

# 分身にテレポートして分身消去
execute as @e[tag=Fpvp_siege_avatar] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run tag @s add Fpvp_working
tp @s @e[tag=Fpvp_siege_avatar,tag=Fpvp_working,limit=1]
kill @e[tag=Fpvp_working]

# HPが復活

# ダミーの消去
scoreboard players reset #Fpvp_dummy Fpvp_link 

# Fpvp_RODのリセット
scoreboard players set @s Fpvp_ROD 0
