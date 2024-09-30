# ゲームルール
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule sendCommandFeedback true
gamerule doMobLoot false
gamerule doFireTick false

#スコアボード
scoreboard objectives add Fpvp_T_thunder dummy
scoreboard objectives add Fpvp_DeathP deathCount
scoreboard objectives add Fpvp_DeathS deathCount
scoreboard objectives add Fpvp_money dummy "所持金" 
scoreboard objectives add Fpvp_game_style dummy
scoreboard objectives add Fpvp_game_time dummy
scoreboard objectives add Fpvp_keepmoney dummy
scoreboard objectives add Fpvp_health health
scoreboard objectives add Fpvp_cooltime dummy
scoreboard objectives add Fpvp_ROD minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Fpvp_H_ROD dummy
scoreboard objectives add Fpvp_GLOW minecraft.dropped:minecraft.glowstone_dust
scoreboard objectives add Fpvp_HOE minecraft.dropped:minecraft.wooden_hoe
scoreboard objectives add Fpvp_SLIME minecraft.dropped:minecraft.slime_ball
scoreboard objectives add Fpvp_snow_time dummy
scoreboard objectives add Fpvp_bomb_time dummy
scoreboard objectives add Fpvp_S_tyuusya dummy
scoreboard objectives add Fpvp_S_kiddo dummy
scoreboard objectives add Fpvp_S_batte dummy
scoreboard objectives add Fpvp_game_lose dummy
scoreboard objectives add Fpvp_KillP playerKillCount
scoreboard objectives add Fpvp_KillS playerKillCount
scoreboard objectives add Fpvp_P_style dummy
scoreboard objectives add Fpvp_bombenergy dummy
scoreboard objectives add Fpvp_teisuu dummy
scoreboard objectives add Fpvp_round_num dummy
scoreboard objectives add Fpvp_game_win dummy
scoreboard objectives add Fpvp_kill_bonus dummy
scoreboard objectives add Fpvp_detail_B dummy [{"text": "詳細","color": "gold"}]
scoreboard objectives add Fpvp_detail_G dummy [{"text": "詳細","color": "gold"}]


#チーム
team add Red
team add Blue
team add Green
team modify Red color red
team modify Blue color aqua
team modify Green color green
team modify Red nametagVisibility hideForOtherTeams
team modify Blue nametagVisibility hideForOtherTeams
team modify Green nametagVisibility hideForOtherTeams

#ボスバー
bossbar add pvp_blue "ブルーの勝利数"
bossbar add pvp_green "グリーンの勝利数"
bossbar add pvp_round "ラウンド準備中"
bossbar add pvp_bomb "エネルギーチャージ量"
bossbar set pvp_blue color blue
bossbar set pvp_green color green
bossbar set pvp_round color yellow
bossbar set pvp_bomb color pink
bossbar set pvp_round max 400
bossbar set pvp_bomb max 80





#整頓



# フォースロード
forceload add 0 0




#宣言
say ロード完了






