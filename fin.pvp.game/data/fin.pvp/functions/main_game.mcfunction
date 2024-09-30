# ゲームの状態
execute if score #Fpvp_game_style Fpvp_game_style matches 1 run function fin.pvp:games/shop
execute if score #Fpvp_game_style Fpvp_game_style matches 2 run function fin.pvp:games/round
execute if score #Fpvp_game_style Fpvp_game_style matches 3 run function fin.pvp:main_athletic

execute if score #Fpvp_game_style Fpvp_game_style matches 11 run function fin.pvp:valo/shop
execute if score #Fpvp_game_style Fpvp_game_style matches 12 run function fin.pvp:valo/part_install
execute if score #Fpvp_game_style Fpvp_game_style matches 13 run function fin.pvp:valo/part_cancell


# デバック
execute as @a[scores={Fpvp_ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Debug}}}] run function fin.pvp:games/debug

# 銃に関して
scoreboard players add @a Fpvp_cooltime 1
execute at @e[type=arrow] run particle minecraft:large_smoke ~ ~ ~

# R99
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:R99}}}] run function fin.pvp:guns/r99
# R301
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:R301}}}] run function fin.pvp:guns/r301
# G7
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:G7}}}] run function fin.pvp:guns/g7
# Longbow
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Longbow}}}] run function fin.pvp:guns/longbow
# Supifai
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Supifai}}}] run function fin.pvp:guns/supifai
# Gureran
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Gureran}}}] run function fin.pvp:guns/gureran

# グレラン
execute as @e[tag=Fpvp_Gureran,nbt={life:3s}] at @s run summon creeper ~0 ~0 ~0 {powered:0,ignited:1,ExplosionRadius:3,Fuse:1}
execute as @e[tag=Fpvp_Gureran,nbt={life:3s}] run kill @s

# スピードスター
execute as @a[scores={Fpvp_ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:SpeedStar}}}] run function fin.pvp:items/speedstar

# 爆破桑
execute as @a[scores={Fpvp_HOE=1..}] at @s run function fin.pvp:items/hoe
# 発光粉
execute as @a[scores={Fpvp_GLOW=1..}] at @s run function fin.pvp:items/glow
# スモーク
execute as @a[scores={Fpvp_SLIME=1..}] at @s run function fin.pvp:items/slime
execute at @e[tag=Fpvp_slime,nbt={inGround:1b}] run particle minecraft:lava ~ ~ ~ 2.25 0.5 2.25 0 7 force @a
execute at @e[tag=Fpvp_slime,nbt={inGround:1b}] run effect give @a[distance=..6] blindness 2 1 true
execute at @e[tag=Fpvp_slime,nbt={inGround:1b}] run effect give @a[distance=..6] invisibility 2 1 true
execute as @e[tag=Fpvp_slime,nbt={life:200s}] at @s run kill @s

# 雪玉爆弾
function fin.pvp:items/snowbomb

# しゃがみ起動
execute as @a[predicate=fin.pvp:sneaking] at @s run function fin.pvp:sneak

# しゃがまない起動
execute as @a unless predicate fin.pvp:sneaking at @s run function fin.pvp:sneak_not

# アスレ用
execute as @a[scores={Fpvp_ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Kill}}}] run function fin.pvp:kill

# ボスバー
execute store result bossbar test value run data get entity @e[tag=HPTest,limit=1] Health

# time起動
execute at @a[scores={Fpvp_T_thunder=0..}] run summon lightning_bolt ~ ~ ~
scoreboard players remove @a[scores={Fpvp_T_thunder=0..}] Fpvp_T_thunder 1
execute as @a[scores={Fpvp_T_thunder=0}] run scoreboard players reset @s Fpvp_T_thunder



