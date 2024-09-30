scoreboard players set @a Fpvp_ROD 0
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.green

title @a title "!!!"
kill @e[tag=Bomb_Energy]

# ボスバー
bossbar set pvp_bomb players
bossbar set pvp_round players
bossbar set pvp_blue players @a
bossbar set pvp_green players @a



function fin.pvp:finish

