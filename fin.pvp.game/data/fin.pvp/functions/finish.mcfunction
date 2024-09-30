scoreboard players set #Fpvp_game_style Fpvp_game_style 0
gamemode creative @a
worldborder center 0.0 0.0
worldborder set 300000
scoreboard players reset @a Fpvp_money
scoreboard objectives setdisplay sidebar
kill @e[tag=L_Rescue]
kill @e[type=item]

tag @a remove Destroy
tag @a remove Defence

bossbar set pvp_bomb players
bossbar set pvp_round players
