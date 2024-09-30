scoreboard players add @a Fpvp_cooltime 1
scoreboard players remove @a[scores={Fpvp_CT=1..}] Fpvp_CT 1
scoreboard players add @a[scores={Fpvp_MP=..499}] Fpvp_MP 1
execute if score #Fpvp_game_style Fpvp_game_style matches 21 run function fin.pvp:pve/game

# 能力効果
effect give @a[team=Warrior] strength 1 0 true
effect give @a[team=Tank] resistance 1 0 true
effect give @a[team=Hunter] speed 1 0 true
effect give @a[team=Assashin] invisibility 1 0 true

# 戦士
scoreboard players remove @a[scores={Fpvp_T_ULT_Warr=1..}] Fpvp_T_ULT_Warr 1
execute as @a[scores={Fpvp_ROD=1,Fpvp_CT=0}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Warrior_Skill}} run function fin.pvp:pve/skill/warrior_skill
execute as @a[predicate=fin.pvp:sneaking] at @s if data entity @s SelectedItem{id:"minecraft:nether_star",tag:{Fpvp:Warrior_ULT}} run function fin.pvp:pve/ult/warrior_ult
clear @a[scores={Fpvp_T_ULT_Warr=0}] wooden_sword{Fpvp:Lightning_Sword}
scoreboard players reset @a[scores={Fpvp_T_ULT_Warr=0}] Fpvp_T_ULT_Warr

# タンク
scoreboard players remove @e[tag=zisin_center] Fpvp_T_zisin 1
execute as @a[scores={Fpvp_ROD=1,Fpvp_CT=0}] at @s positioned ^ ^ ^2 if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Tank_Skill}} run function fin.pvp:pve/skill/tank_skill

execute as @a[predicate=fin.pvp:sneaking] at @s if data entity @s SelectedItem{id:"minecraft:nether_star",tag:{Fpvp:Zisin_ULT}} run function fin.pvp:pve/ult/zisin
execute as @e[scores={Fpvp_T_zisin=1..79}] at @s run function fin.pvp:pve/ult/zisin_l
execute as @e[scores={Fpvp_T_zisin=0}] run kill @s

# 狩人
scoreboard players remove @a Fpvp_T_Hunter 1
scoreboard players remove @a Fpvp_T_arrow 1
execute as @a[scores={Fpvp_T_arrow=1}] run clear @s crossbow
execute as @a[scores={Fpvp_T_arrow=11}] run clear @s crossbow
execute as @a[scores={Fpvp_T_arrow=0}] run function fin.pvp:pve/crossbow_shoot
execute as @a[scores={Fpvp_ROD=1,Fpvp_CT=0}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Hunter_Skill}} run function fin.pvp:pve/skill/hunter_skill

# ヒーラー
scoreboard players remove @e[tag=L_heal_shot] Fpvp_T_heal 1
scoreboard players remove @e[tag=holy_center] Fpvp_T_holy 1
execute as @a[scores={Fpvp_ROD=1,Fpvp_cooltime=35..}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Heal_Rod}} run function fin.pvp:pve/heal
execute as @e[scores={Fpvp_T_heal=..0}] run kill @s
execute as @e[scores={Fpvp_T_heal=1..39}] at @s run function fin.pvp:pve/heal_l
execute as @a[scores={Fpvp_ROD=1,Fpvp_CT=0}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Healer_Skill}} run function fin.pvp:pve/skill/healer_skill
execute as @a[predicate=fin.pvp:sneaking] at @s if data entity @s SelectedItem{id:"minecraft:nether_star",tag:{Fpvp:Holy_ULT}} run function fin.pvp:pve/ult/holy
execute as @e[scores={Fpvp_T_holy=0..19}] at @s run function fin.pvp:pve/ult/holy_l
 
# アサシン
scoreboard players remove @a Fpvp_T_ULT_Assa 1
scoreboard players remove @e[tag=Fpvp_TP] Fpvp_T_Assashin 1
execute as @a[scores={Fpvp_ROD=1,Fpvp_CT=0}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{Fpvp:Assashin_Skill}} run function fin.pvp:pve/skill/assashin_skill
execute as @e[scores={Fpvp_T_Assashin=..0}] at @s run tp @a[team=Assashin,limit=1,sort=nearest] @s
execute as @e[scores={Fpvp_T_Assashin=..0}] run kill @s
execute as @a[predicate=fin.pvp:sneaking] at @s if data entity @s SelectedItem{id:"minecraft:nether_star",tag:{Fpvp:Assashin_ULT}} run function fin.pvp:pve/ult/assashin_ult
execute as @a[scores={Fpvp_T_ULT_Assa=0..44}] at @s run function fin.pvp:pve/ult/assashin_ult_l



# 表示
execute as @a run scoreboard players operation @s Fpvp_display_CT = @s Fpvp_CT

scoreboard players operation @a Fpvp_display_CT /= #Fpvp_teisuu_20 Fpvp_teisuu

execute as @a[scores={Fpvp_display_ULT=..200}] run function fin.pvp:pve/check

execute as @a[scores={Fpvp_display_ULT=..99}] run title @s actionbar [{"text": "CT","color": "green"},{"text": " : ","color": "white"},{"score":{"name": "@s","objective": "Fpvp_display_CT"},"color": "white","bold": true},{"text": " , ","color": "white"},{"text": "ULT","color": "red"},{"text": " : ","color": "white"},{"score":{"name": "@s","objective": "Fpvp_display_ULT"},"color": "white","bold": true}]
execute as @a[scores={Fpvp_display_ULT=100..}] run title @s actionbar [{"text": "CT","color": "green"},{"text": " : ","color": "white"},{"score":{"name": "@s","objective": "Fpvp_display_CT"},"color": "white","bold": true},{"text": " , ","color": "white"},{"text": "ULT","color": "red"},{"text": " : ","color": "white"},{"text": "使用可能","color": "yellow","bold": true}]

# ULT関連
execute as @a[scores={Fpvp_display_ULT=100..200}] run function fin.pvp:pve/ult/ult



execute as @a[scores={Fpvp_ROD=1..}] run scoreboard players set @s Fpvp_ROD 0