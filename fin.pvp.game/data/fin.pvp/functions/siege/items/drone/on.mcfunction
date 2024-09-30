# エフェクト
effect give @s instant_health 1 100 true
effect give @s invisibility 1 1 true

# リンクの値をdummyに置換
scoreboard players operation #Fpvp_dummy Fpvp_link = @s Fpvp_link

# ドローンとその椅子にタグをつける
execute as @e[tag=Fpvp_siege_drone] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run tag @s add Fpvp_working_drone
execute as @e[tag=Fpvp_siege_drone_chair] if score @s Fpvp_link = #Fpvp_dummy Fpvp_link run tag @s add Fpvp_working_chair

# 視点をそろえる
data modify entity @e[tag=Fpvp_working_drone,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=Fpvp_working_chair,limit=1] Rotation set from entity @s Rotation

# ドローンの椅子の位置をセット
execute as @e[tag=Fpvp_working_drone] at @s run tp @e[tag=Fpvp_working_chair] ~ ~-0.9 ~

# ドローンを前に進ませる
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.3 {Tags:["Fpvp_working_motion"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=Fpvp_working_motion,limit=1] at @s run tp ~ -0.3 ~
execute as @e[tag=Fpvp_working_drone] run data modify entity @s Motion set from entity @e[tag=Fpvp_working_motion,limit=1] Pos
kill @e[tag=Fpvp_working_motion]

# アマスタ消えたらプレイヤー死

# 強制騎乗
#execute as @s[predicate = fin.pvp:sneaking] run function fin.pvp:siege/items/drone/ride

# ダミーの消去
scoreboard players reset #Fpvp_dummy Fpvp_link 

# タグを外す
tag @e[tag=Fpvp_working_chair] remove Fpvp_working_chair
tag @e[tag=Fpvp_working_drone] remove Fpvp_working_drone
