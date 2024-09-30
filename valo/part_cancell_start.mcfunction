# ラウンドスタイル
scoreboard players set #Fpvp_game_style Fpvp_game_style 13

# ボムの設置
execute at @a[tag=Destroy,nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{Fpvp:Bombenergy}}]}] run summon minecraft:iron_golem ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Bomb_Energy"]}
execute at @a[tag=Destroy,nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{Fpvp:Bombenergy}}]}] run playsound block.anvil.use master @a ~ ~ ~
execute at @a[tag=Destroy,nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{Fpvp:Bombenergy}}]}] run scoreboard players add @s Fpvp_money 120
clear @a iron_ingot{Fpvp:Bombenergy}

# スコアボード
scoreboard players set #Fpvp_game_time Fpvp_game_time 1200
scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
scoreboard players set #Fpvp_energy_HP Fpvp_bombenergy 4

# ボスバー
bossbar set pvp_round name "爆破までの残り時間"
bossbar set pvp_bomb players @a[tag=Defence]
bossbar set pvp_bomb name "残りボムHP"
bossbar set pvp_round max 1200
bossbar set pvp_bomb max 4
bossbar set pvp_bomb style notched_12
bossbar set pvp_bomb color purple




