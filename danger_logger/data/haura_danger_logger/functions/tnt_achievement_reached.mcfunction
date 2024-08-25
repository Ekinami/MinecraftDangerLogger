# プレイヤーの位置座標をストレージに保存する
data modify storage haura_danger_logger:position 001 set from entity @p Pos

#着火済みのTNTがあったら
execute if entity @e[type=minecraft:tnt] run advancement grant @p only haura_danger_logger:use_tnt_disp
execute if entity @e[type=minecraft:tnt] run tellraw @a [{"text":"TNTの起爆に関与したプレイヤーが"},{"nbt":"001","storage":"haura_danger_logger:position"},{"text":"にいます"}]
execute if entity @e[type=minecraft:tnt] run data get storage haura_danger_logger:position

#tellraw @a {"text":"HauraDangerLoggerによって、危険状態はログイン中の全プレイヤーに報告されます","color":"red"}

#function haura_danger_logger:reset_use_tnt
execute unless entity @e[type=minecraft:tnt] run function haura_danger_logger:reset_use_tnt