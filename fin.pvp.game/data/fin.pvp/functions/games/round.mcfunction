# 時間
scoreboard players remove #Fpvp_game_time Fpvp_game_time 1
execute store result bossbar pvp_round value run scoreboard players get #Fpvp_game_time Fpvp_game_time


# 勝利条件
execute as @a[team=Blue,scores={Fpvp_DeathS=1..}] run function fin.pvp:games/win_green
execute as @a[team=Green,scores={Fpvp_DeathS=1..}] run function fin.pvp:games/win_blue

# 索敵
execute as @a[team=!Red] at @s run title @a[distance=16..22,team=!Red] actionbar {"text":"敵が近くにいるぞ!","color":"white"}
execute as @a[team=!Red] at @s run title @a[distance=8..15,team=!Red] actionbar {"text":"敵が近くにいるぞ!","color":"yellow"}
execute as @a[team=!Red] at @s run title @a[distance=2..7,team=!Red] actionbar {"text":"敵が近くにいるぞ!","color":"red"}

# ラウンド変更
execute if score #Fpvp_game_time Fpvp_game_time matches 0 run function fin.pvp:games/rounds/change
scoreboard players set Fpvp_round_see Fpvp_game_style 0

# 金塊
execute as @a[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Fpvp:Money}}]}] run scoreboard players add @s Fpvp_money 20
execute as @a[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Fpvp:Money}}]}] run clear @s gold_nugget{Fpvp:Money} 1

# 救援物資
execute as @e[tag=L_Rescue] at @s if entity @a[distance=..3,team=!Red] run playsound entity.firework_rocket.large_blast master @a[distance=..10] ~ ~ ~
execute as @e[tag=L_Rescue] at @s if entity @a[distance=..3,team=!Red] run kill @s