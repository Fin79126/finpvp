# 壁のぼり
execute unless score #Fpvp_game_style Fpvp_game_style matches 3 anchored eyes unless block ^ ^ ^0.5 air run effect give @s levitation 5 8 true
execute unless score #Fpvp_game_style Fpvp_game_style matches 3 anchored eyes if block ^ ^ ^0.5 air run effect clear @s levitation

# 注射器
execute if data entity @s SelectedItem{id:"minecraft:paper"} run function fin.pvp:items/tyuusya
# キッド
execute if data entity @s SelectedItem{id:"minecraft:book"} run function fin.pvp:items/kiddo
# バッテリー
execute if data entity @s SelectedItem{id:"minecraft:nether_star"} run function fin.pvp:items/batte

# NOT回復
execute unless data entity @s SelectedItem{id:"minecraft:paper"} run scoreboard players set @s Fpvp_S_tyuusya 0
execute unless data entity @s SelectedItem{id:"minecraft:book"} run scoreboard players set @s Fpvp_S_kiddo 0
execute unless data entity @s SelectedItem{id:"minecraft:nether_star"} run scoreboard players set @s Fpvp_S_batte 0




