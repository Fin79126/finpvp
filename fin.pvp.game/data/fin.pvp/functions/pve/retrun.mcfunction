# エフェクト
effect give @s saturation 100000 100 true
effect give @s instant_health 1 100 true
effect give @s night_vision 100000 100 true

# ステージへTP
tp @s @e[tag=Stage1,limit=1]

# スコアボード初期化
#scoreboard players set @s Fpvp_C_heal 0
#scoreboard players set @s Fpvp_give_damage 0
#scoreboard players set @s Fpvp_display_ULT 0
#clear @s nether_star

# HP設定
execute as @s[team=Warrior] run attribute @s generic.max_health base set 30 
execute as @s[team=Tank] run attribute @s generic.max_health base set 40
execute as @s[team=Hunter] run attribute @s generic.max_health base set 20 
execute as @s[team=Healer] run attribute @s generic.max_health base set 12
execute as @s[team=Assashin] run attribute @s generic.max_health base set 24



