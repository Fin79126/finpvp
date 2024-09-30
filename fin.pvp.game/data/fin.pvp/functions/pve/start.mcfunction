# ゲームルール
time set midnight

# スポーン固定
execute as @e[type=armor_stand,tag=Pve_Restart] at @s run spawnpoint @a ~ ~ ~

# エフェクト
effect give @a saturation 100000 100 true
effect give @a instant_health 1 100 true
effect give @a night_vision 100000 100 true

# ステージへTP
tp @a @e[tag=Stage1,limit=1]

# スコアボード初期化
scoreboard players set #Fpvp_T Fpvp_T 600
scoreboard players set #Fpvp_phase Fpvp_Phase 1
scoreboard players set #Fpvp_game_style Fpvp_game_style 21
scoreboard players set @a Fpvp_C_heal 0
scoreboard players set @a Fpvp_give_damage 0
scoreboard players set @a Fpvp_display_ULT 0
scoreboard players set @a Fpvp_R_death 0
scoreboard players set @a Fpvp_R_kill 0
scoreboard players set @a Fpvp_R_taken 0
scoreboard players set @a Fpvp_R_ULT 0
scoreboard players set @a Fpvp_R_heal 0

# ゲームモード設定
gamemode spectator @a[team=Red]
gamemode adventure @a[team=!Red]

# ボスバー
bossbar set pvp_blue players
bossbar set pvp_green players
bossbar add pvp_time "残り時間"
bossbar set pvp_time color blue
bossbar set pvp_time max 600
bossbar set pvp_time players @a
bossbar add pvp_phase "現在のフェーズ"
bossbar set pvp_phase color purple
bossbar set pvp_phase max 20
bossbar set pvp_phase players @a
bossbar set pvp_phase style notched_20

# HP設定
execute as @a[team=Warrior] run attribute @s generic.max_health base set 30 
execute as @a[team=Tank] run attribute @s generic.max_health base set 40
execute as @a[team=Hunter] run attribute @s generic.max_health base set 20 
execute as @a[team=Healer] run attribute @s generic.max_health base set 12
execute as @a[team=Assashin] run attribute @s generic.max_health base set 24

# 武器付与
clear @a
give @a[team=Warrior] iron_sword{Unbreakable:1b,display:{Name:'"戦士の剣"'},Enchantments:[{id:"sweeping",lvl:5}]}
give @a[team=Tank] iron_axe{Unbreakable:1b,display:{Name:'"守護の斧"'}}
give @a[team=Tank] shield{Unbreakable:1b,display:{Name:'"守護の盾"'}}
give @a[team=Hunter] crossbow{Fpvp: Hunterbow, Charged: 1b, ChargedProjectiles: [{id: "minecraft:arrow", Count: 1b}],display:{Name:'"狩猟弓"'}}
give @a[team=Healer] carrot_on_a_stick{Fpvp:Heal_Rod,display:{Name:'"ヒールロッド"'}}
give @a[team=Healer] stick{Enchantments:[{id:"knockback",lvl:5},{id:"sharpness",lvl:4}],CustomModelData:1}
give @a[team=Assashin] golden_sword{Unbreakable:1b,display:{Name:'"暗殺木刀"'}}

# 技発動道具付与
give @a[team=Warrior] carrot_on_a_stick{Fpvp:Warrior_Skill,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'"ウォリアースキル"'}}
give @a[team=Tank] carrot_on_a_stick{Fpvp:Tank_Skill,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'"タンクスキル"'}}
give @a[team=Hunter] carrot_on_a_stick{Fpvp:Hunter_Skill,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'"ハンタースキル"'}}
give @a[team=Healer] carrot_on_a_stick{Fpvp:Healer_Skill,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'"ヒーラースキル"'}}
give @a[team=Assashin] carrot_on_a_stick{Fpvp:Assashin_Skill,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'"アサシンスキル"'}}

# フェーズ1発動
function fin.pvp:pve/phase/phase1
