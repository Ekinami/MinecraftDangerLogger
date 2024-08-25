# プレイヤーの位置座標をストレージに保存する
data modify storage haura_danger_logger:position 001 set from entity @p Pos
tellraw @a [{"text":"TNTを使用したプレイヤーが"},{"nbt":"001","storage":"haura_danger_logger:position"},{"text":"にいます"}]
data get storage haura_danger_logger:position

# 進捗をリセットし、再度達成可能にする
advancement revoke @s only haura_danger_logger:use_tnt
tellraw @a {"text":"HauraDangerLoggerによって、危険行為は記録されます","color":"red"}