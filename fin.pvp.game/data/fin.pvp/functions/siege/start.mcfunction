# ラウンドを開始
function fin.pvp:siege/round/start

# エフェクト付与(共通)
effect give @a night_vision infinite 1 true

# HP設定
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 
execute as @a[tag=Montagne] run attribute @s generic.max_health base set 

# 観戦者設定
team join Red @a[team=!Siege_defender,team=!Siege_attacker]

# リスポーン設定
execute as @e[type=armor_stand,tag=Siege_respawn] run spawnpoint @a ~ ~ ~

# ボスバー

# 全プレイヤーに紐づけ用のナンバーを付与
function fin.pvp:link