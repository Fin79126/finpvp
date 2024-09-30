# チーム個別コマンド
execute as @a[team=Siege_attacker] run function fin.pvp:siege/attacker
execute as @a[team=Siege_defender] run function fin.pvp:siege/defender

# キャラクター別コマンド
execute as @a[tag=Montagne] run function fin.pvp:siege/op/atk/montagne
execute as @a[tag=Sledge] run function fin.pvp:siege/op/atk/sledge
execute as @a[tag=Thatcher] run function fin.pvp:siege/op/atk/thatcher
execute as @a[tag=Thermite] run function fin.pvp:siege/op/atk/thermite
execute as @a[tag=Bandit] run function fin.pvp:siege/op/def/bandit
execute as @a[tag=Doc] run function fin.pvp:siege/op/def/doc
execute as @a[tag=Kapkan] run function fin.pvp:siege/op/def/kapkan
execute as @a[tag=Pulse] run function fin.pvp:siege/op/def/pulse

# ラウンド状態検知
execute if score #Fpvp_siege_style Fpvp_game_style matches 1 run function fin.pvp:siege/round

# 死んだプレイヤー設定
execute as @a[scores ={Fpvp_siege_dead = 1..},team=!Red] run function fin.pvp:siege/dead

# ドローン
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Drone}}}] run function fin.pvp:siege/items/drone/drone
execute as @a[scores={Fpvp_siege_drone_power=1}] run function fin.pvp:siege/items/drone/on

