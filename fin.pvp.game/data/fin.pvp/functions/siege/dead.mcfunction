# スペクテイターモードにする
gamemode spectator @s

# 相方がいたらそいつを観戦
execute if entity @s[team=Siege_attacker] run spectate @s @p[team=Siege_attacker]
execute if entity @s[team=Siege_defender] run spectate @s @p[team=Siege_defender]

# ナイトビジョン
effect give @s night_vision infinite 1 true