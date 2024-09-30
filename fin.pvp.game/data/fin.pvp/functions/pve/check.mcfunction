execute if entity @s[team=Warrior] run scoreboard players operation @s Fpvp_display_ULT = @s Fpvp_give_damage
execute if entity @s[team=Tank] run scoreboard players operation @s Fpvp_display_ULT = @s Fpvp_give_damage
execute if entity @s[team=Assashin] run scoreboard players operation @s Fpvp_display_ULT = @s Fpvp_give_damage
execute if entity @s[team=Healer] run scoreboard players operation @s Fpvp_display_ULT = @s Fpvp_C_heal
execute if entity @s[team=Warrior] run scoreboard players operation @s Fpvp_display_ULT /= #Fpvp_teisuu_80 Fpvp_teisuu
execute if entity @s[team=Tank] run scoreboard players operation @s Fpvp_display_ULT /= #Fpvp_teisuu_12 Fpvp_teisuu
execute if entity @s[team=Assashin] run scoreboard players operation @s Fpvp_display_ULT /= #Fpvp_teisuu_12 Fpvp_teisuu
