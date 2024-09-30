summon silverfish ~ ~ ~ {NoAI:true,Tags:["Fpvp_siege_drone","Fpvp_working"]}
scoreboard players operation @e[tag=Fpvp_working] Fpvp_link = @s Fpvp_link
tag @e[tag=Fpvp_working] remove Fpvp_working
summon armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invisible:true,Tags:["Fpvp_siege_drone_chair","Fpvp_working"]}
scoreboard players operation @e[tag=Fpvp_working] Fpvp_link = @s Fpvp_link
tag @e[tag=Fpvp_working] remove Fpvp_working
