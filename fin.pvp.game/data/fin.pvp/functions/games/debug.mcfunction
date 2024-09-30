scoreboard players set @a Fpvp_ROD 0
title @a title "!!!"
kill @e[tag=Anti_Center]
kill @e[tag=L_Rescue]
kill @e[type=item]

# ボスバー
bossbar set pvp_round players
bossbar set pvp_blue players @a
bossbar set pvp_green players @a


function fin.pvp:finish

