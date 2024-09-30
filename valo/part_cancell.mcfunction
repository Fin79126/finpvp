# 時間
scoreboard players remove #Fpvp_game_time Fpvp_game_time 1
execute store result bossbar pvp_round value run scoreboard players get #Fpvp_game_time Fpvp_game_time
execute store result bossbar pvp_bomb value run scoreboard players get #Fpvp_energy_HP Fpvp_bombenergy

# 勝利条件
execute unless entity @e[tag=Defence,scores={Fpvp_P_style=2}] run function fin.pvp:valo/win_destroy

execute if score #Fpvp_game_time Fpvp_game_time matches ..0 run function fin.pvp:valo/win_destroy


# 設置可能範囲
execute as @a[tag=Defence] at @s if entity @e[tag=Bomb_Energy,distance=..2] run title @s actionbar {"text":"爆弾解除可能!","color":"red"}
execute as @a[tag=Defence] at @s unless entity @e[tag=Bomb_Energy,distance=..2] run title @s actionbar {"text":"爆弾解除不可"}

# 金塊
execute as @a[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Fpvp:Money}}]}] run scoreboard players add @s Fpvp_money 20
execute as @a[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Fpvp:Money}}]}] run clear @s gold_nugget{Fpvp:Money} 1

# しゃがみ起動
execute at @e[tag=Bomb_Energy,limit=1] if entity @a[tag=Defence,predicate=fin.pvp:sneaking,distance=..2] run scoreboard players add #Fpvp_energy_time Fpvp_bombenergy 1
execute unless entity @a[tag=Defence,predicate=fin.pvp:sneaking] run scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
execute at @e[tag=Bomb_Energy,limit=1] unless entity @a[tag=Defence,predicate=fin.pvp:sneaking,distance=..2] run scoreboard players add #Fpvp_energy_time Fpvp_bombenergy 1

# ボムのHP
execute if score #Fpvp_energy_time Fpvp_bombenergy matches 80 run function fin.pvp:valo/bomb_operation

# パーティクル
execute at @e[tag=Place_Bomb] run particle minecraft:end_rod ~ ~ ~ 4.1 2 4.1 0.1 3

# 死亡処理
execute at @e[tag=Res_Valo] run scoreboard players set @a[team=!Red,distance=..3] Fpvp_P_style 3

# 救援物資
execute as @e[tag=L_Rescue] at @s if entity @a[distance=..3,team=!Red] run playsound entity.firework_rocket.large_blast master @a[distance=..10] ~ ~ ~
execute as @e[tag=L_Rescue] at @s if entity @a[distance=..3,team=!Red] run kill @s